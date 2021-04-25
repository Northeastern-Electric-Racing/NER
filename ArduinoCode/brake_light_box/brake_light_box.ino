/*
   Author: Joshua Cheng
   Date: March 2, 2021

   Pinouts:
   MOSI - pin 11
   MISO - pin 12
   CLK - pin 13

   SD card module:
   SS - pin 4

   CAN module:
   SS - pin 10

   Note: This program keeps the CAN module activated by default, but deactivates it when writing to the SD card.
   This Arduino may miss CAN messages if it recieves 2+ messages while writing to the SD card.
*/
#include <mcp_can.h> // Uses Seeed-studio's CAN_BUS_Shield library.

#include <SD.h>
#define SD_SS_PIN 4

#define CAN_SS_PIN 10
#define BRAKE_LIGHT_PIN 8 // Does not have to be PWM pin.

#define ERRORS_PER_SAVE 5 // Number of errors stored in a chache before saving to the SD card

MCP_CAN CAN(CAN_SS_PIN);

int bufferLength = 0;
String errbuff = "";
long lastLog = 0;
int nextFileName = 1; // Log file names in the format log-0.txt

void switchCANToSD();
void switchSDToCAN();
bool SDWrite(String errors);
void logError(String id, unsigned char error[8]);

void switchCANToSD();
void switchSDToCAN();
void logError(String id, unsigned char error[8]);
bool SDWrite(String errors);

/**
 * Sets relavent pins to output or input, initializes serial for debugging, initializes CAN, SD card reader,
 * determines proper file name for future logs.
 */
void setup() {
  Serial.begin(9600);

  pinMode(SD_SS_PIN, OUTPUT);
  pinMode(CAN_SS_PIN, OUTPUT);
  pinMode(BRAKE_LIGHT_PIN, OUTPUT);

  switchSDToCAN();

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println(F("CAN BUS init Failed"));
    delay(250);
  }
  Serial.println(F("CAN BUS Shield Init OK!"));

  switchCANToSD();

  while (!SD.begin(SD_SS_PIN)) {
    Serial.println(F("initialization failed!"));
    delay(250);
  }

  while (SD.exists("log-" + String(nextFileName) + ".txt")) {
    Serial.print(F("log-"));
    Serial.print(String(nextFileName));
    Serial.println(F(".txt exists..."));
    nextFileName += 1;
  }

  Serial.print(F("setup complete. nextFileName is "));
  Serial.println(String(nextFileName));

  switchSDToCAN();

}

/**
   Deals with incoming CAN messages, if an error is recieved, it is logged. Logs buffer every 30 seconds.
*/

void loop() {
  unsigned char len = 0; // Length of incoming message
  unsigned char buf[8]; // Memory for incoming message
  int canId; // Sender's ID

  switchSDToCAN();

  if (CAN_MSGAVAIL == CAN.checkReceive()) { //if a new message has been recieved.
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID

    Serial.print(F("Message Recieved from CAN ID: "));
    Serial.print(String(canId));
    Serial.print(F("  |  message: "));
    for (int i = 0; i < 8; i ++) {
      Serial.print(String(buf[i]));
      Serial.print(F(" | "));
    }
    Serial.println();

    if (canId == 0x103) { // from pedal box
      digitalWrite(BRAKE_LIGHT_PIN, buf[0]); // either 0 or 1
    } else if (canId == 0x104) { // brake light error msg
      logError("0x104", buf);
    } else if (canId == 0x105) { // forward/backward error msg
      logError("0x105", buf);
    } else if (canId == 0x100) { // BMS DTC Status #1 and #2
      logError("0x100", buf);
    } else if (canId == 0xAB) { // Motor controller fault codes
      logError("0x0AB", buf);
    }
  }

  if (millis() - lastLog > 30000 && bufferLength > 0) { // if 30 seconds since last successful write to SD card and buffer is not empty
    if (SDWrite()) { // if successfully logged to SD card, clear buffer
      errbuff = "";
      bufferLength = 0;
    }
  }
}

/**
   Deactivates SD module and then activates CAN module
*/
void switchSDToCAN() {
  digitalWrite(SD_SS_PIN, HIGH);
  digitalWrite(CAN_SS_PIN, LOW);
}

/**
   Deactivates CAN module and then activates SD module
*/
void switchCANToSD() {
  digitalWrite(CAN_SS_PIN, HIGH);
  digitalWrite(SD_SS_PIN, LOW);
}

/**
 * Compiles errors, writes to SD every 5 errors
 *
 * @param id the sender id of the error
 * @param error the errors to be logged
 */
void logError(String id, unsigned char error[8]) {
  errbuff += "|| millis: ";
  errbuff += String(millis());
  errbuff += "  | id: ";
  errbuff += id;
  errbuff += " |  error: | ";
  for (int i = 0; i < 8; i ++) {
    errbuff += String(int(error[i])) + " | ";  // stores the byte value (0-255) as a string
  }
  errbuff += "\n";
  Serial.print(F("errorBuffer: ("));
  Serial.print(errbuff.length());
  Serial.print(F(") "));
  Serial.println(errbuff);

  bufferLength += 1;
  if (bufferLength >= ERRORS_PER_SAVE) { // more errors in buffer than ERRORS_PER_SAVE
    if (SDWrite()) { // if successfully logged to SD card, clear buffer
      errbuff = "";
      bufferLength = 0;
    } else { // does not clear buffer, the errors already in the buffer will be saved again next time
      Serial.println(F("Error with logging, will try again"));
    }
  }
}

/**
   Logs errors to SD card.

   @returns true if logging was successful, false if it failed
*/
bool SDWrite() {
  File myFile;
  switchCANToSD();
  
  if (!SD.begin(SD_SS_PIN)) {
    Serial.println(F("initialization failed!"));
    switchSDToCAN();
    return false;
  }

  myFile = SD.open("log-" + String(nextFileName) + ".txt", FILE_WRITE);

  if (myFile) {
    Serial.print(F("saving: "));
    Serial.print(errbuff.length());
    Serial.println(F(" bytes"));
    myFile.println(errbuff);
    Serial.println(errbuff);
    myFile.close();
    Serial.print(F("Logged errors at: log-"));
    Serial.print(String(nextFileName));
    Serial.println(F(".txt"));
  } else {
    Serial.print(F("error opening: log-"));
    Serial.print(String(nextFileName));
    Serial.println(F(".txt"));
    switchSDToCAN();
    return false;
  }

  switchSDToCAN();
  lastLog = millis();
  return true;
}
