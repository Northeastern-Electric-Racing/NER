/*
   Author: Joshua Cheng
   Date: December 1, 2020

   Pinouts:
   MOSI - pin 11
   MISO - pin 12
   CLK - pin 13

   SD card module:
   SS - pin 4

   CAN module:
   SS - pin 9

   Note: This program keeps the CAN module activated by default, but deactivates it when writing to the SD card.
   This Arduino may miss CAN messages if it recieves 2 or more messages while writing to the SD card. Also, when
   the CAN module is used, strings longer than about 200-300 characters seem to be broken. It not only make the
   string weird (cannot be appended to) as well as seems to break Serial.print() statements (only some parts of it
   will actually print). I'm not sure if this is a problem with my code or a hardware issue. 
*/

#include <mcp_can.h> // Uses Seeed-studio's CAN_BUS_Shield library.
#include <mcp_can_dfs.h>
#include <SPI.h>
#include <SD.h>

#define SD_SS_PIN 4
#define CAN_SS_PIN 10
#define BRAKE_LIGHT_PIN 6 // Does not have to be PWM pin.

#define ERRORS_PER_WRITE 2 // Number of errors before writing the buffer to the SD card 
                           // anything greater than 2 seems to break the program

File myFile;
MCP_CAN CAN(CAN_SS_PIN);

unsigned char len = 0; // Length of incoming message
unsigned char buf[8]; // Memory for incoming message
int canId; // Sender's ID
String errorBuffer = "";
int bufferLength = 0;
long lastLog = 0; // Time of last successful log to SD

int nextFileName = 1; // Log file names in the format log-0.txt

/**
   Sets relavent pins to output or input, initializes serial for debugging, initializes CAN, SD card reader,
   determines proper file name for future logs.
*/
void setup() {
  Serial.begin(9600);

  pinMode(SD_SS_PIN, OUTPUT);
  pinMode(CAN_SS_PIN, OUTPUT);
  pinMode(BRAKE_LIGHT_PIN, OUTPUT);

  digitalWrite(SD_SS_PIN, HIGH); // disable SD module
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");

  digitalWrite(CAN_SS_PIN, HIGH); // disable CAN module
  digitalWrite(SD_SS_PIN, LOW); // enable SD module

  while (!SD.begin(SD_SS_PIN)) {
    Serial.println("initialization failed!");
    delay(250);
  }

  while(SD.exists("log-" + String(nextFileName) + ".txt")){
    Serial.println("log-" + String(nextFileName) + ".txt exists...");
    nextFileName += 1;
  }
  
  Serial.println("setup complete. nextFileName is " + String(nextFileName));

  digitalWrite(SD_SS_PIN, HIGH); // disable SD module
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
}

bool SDWrite(String errors);
void logError(String id, unsigned char error[8]);

/**
   Deals with incoming CAN messages, if an error is recieved, it is logged. Writes to SD card every 30 seconds.
*/
void loop() {
  if (CAN_MSGAVAIL == CAN.checkReceive()) { //if a new message has been recieved.
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID

    Serial.print("Message Recieved from CAN ID: " + String(canId) + "  |  message: ");
    for(int i = 0; i < 8; i ++){
      Serial.print(String(buf[i]) + " | ");
    }
    Serial.println();

    if (canId == 0x03) { // from pedal box
      digitalWrite(BRAKE_LIGHT_PIN, buf[0]); // either 0 or 1
    } else if (canId == 0x04) { // brake light error msg
      logError("0x04", buf);
    } else if (canId == 0x05) { // forward/backward error msg
      logError("0x05", buf);
    } else if (canId == 0x06) { // BMS DTC Status #1 and #2
      logError("0x06", buf);
    } else if (canId == 0xAB) { // Motor controller fault codes
      logError("0xAB", buf);
    }
  }

  if (millis() - lastLog > 30000 && bufferLength > 0) { // if 30 seconds since last successful write to SD card and buffer is not empty
    if (SDWrite()) { // if successfully logged to SD card, clear buffer
      errorBuffer = "";
      bufferLength = 0;
    }
  }
  
}

/**
   Compiles errors, writes to SD every 5 errors

   @param id the sender id of the error
   @param error the errors to be logged
*/
void logError(String id, unsigned char error[8]) {
  errorBuffer += "millis: ";
  errorBuffer += String(millis());
  errorBuffer += "  | id: ";
  errorBuffer += id;
  errorBuffer += " |  error: | ";
  for (int i = 0; i < 8; i ++) {
    errorBuffer += String(int(error[i])) + " | ";  // stores the byte value (0-255) as a string
  }
  errorBuffer += "\n";
  Serial.println(errorBuffer);
  bufferLength += 1;
  if (bufferLength >= ERRORS_PER_WRITE) {
    if (SDWrite()) { // if successfully logged to SD card, clear buffer
      errorBuffer = "";
      bufferLength = 0;
    }
  }
  
}

/**
   Logs errors to SD card.

   @param errors the error(s) to be logged
   @returns true if logging was successful, false if it failed
*/
bool SDWrite() {
  digitalWrite(CAN_SS_PIN, HIGH); // disable CAN module
  digitalWrite(SD_SS_PIN, LOW); // enable SD module

  if (!SD.begin(SD_SS_PIN)) {
    Serial.println("initialization failed!");
    digitalWrite(SD_SS_PIN, HIGH); // disable SD module
    digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
    return false;
  }

  myFile = SD.open("log-" + String(nextFileName) + ".txt", FILE_WRITE);

  if (myFile) {
    myFile.println(errorBuffer);
    myFile.close();
    Serial.println("Successfully logged " + String(errorBuffer.length()) + " characters at: log-" + String(nextFileName) + ".txt");
  } else {
    Serial.println("error opening: log-" + String(nextFileName) + ".txt");
    digitalWrite(SD_SS_PIN, HIGH); //disable SD module
    digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
    return false;
  }

  digitalWrite(SD_SS_PIN, HIGH); // disable SD module
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
  lastLog = millis();
  return true;
}
