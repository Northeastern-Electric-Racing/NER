/*
   Author: Joshua Cheng
   Date: December 1, 2020

   Pinouts:
   MOSI - pin 11
   MISO - pin 12
   CLK - pin 13

   SD card module:
   CS - pin 8

   CAN module:
   CS - pin 10

   Note: This program keeps the CAN module activated by default, but deactivates it when writing to the SD card.
   This Arduino may miss CAN messages if it recieves a message while writing to the SD card.
*/

#include <mcp_can.h> // Uses Seeed-studio's CAN_BUS_Shield library.
#include <mcp_can_dfs.h>
#include <SPI.h>
#include <SD.h>

#define CAN_CS_PIN 10
#define SD_CS_PIN 8
#define BRAKE_LIGHT_PIN 9

File myFile;
MCP_CAN CAN(CAN_CS_PIN);

unsigned char len = 0; // Length of incoming message
unsigned char buf[8]; // Memory for incoming message
int canId; // Sender's ID
String errorBuffer = "";
int bufferLength = 0;
long lastLog = 0; // Time of last successful log to SD

int nextFileName = 0; // Log file names in the format log-0.txt

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

  pinMode(SD_CS_PIN, OUTPUT);
  pinMode(CAN_CS_PIN, OUTPUT);
  pinMode(BRAKE_LIGHT_PIN, OUTPUT);

  switchSDToCAN();

  while (CAN_OK != CAN.begin(CAN_250KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");

  switchCANToSD();

  while (!SD.begin(SD_CS_PIN)) {
    Serial.println("initialization failed!");
    delay(250);
  }

  if (!SD.exists("filenames.txt")) {
    Serial.println("filenames.txt does not exist. Creating filenames.txt...");
    myFile = SD.open("filenames.txt", FILE_WRITE);
    myFile.println("0");
    nextFileName = 1;
    myFile.close();
  } else {
    myFile = SD.open("filenames.txt", FILE_READ); // filenames.txt contains the names of log files already written in the format 0\n1\n2\n etc.
    while (myFile.available()) {
      if (myFile.peek() == '\n') {
        myFile.read();  // moves on to the next byte
      } else {
        nextFileName = (int)myFile.read() + 1; // At the end of the loop, fileName will be the last number in filenames.txt
      }
    }
    myFile.close();
  }
  myFile = SD.open("filenames.txt", FILE_WRITE);
  myFile.println(String(nextFileName)); // record the file number being used this time
  myFile.close();

  switchSDToCAN();
}

/**
 * Deals with incoming CAN messages, if an error is recieved, it is logged. Writes to SD card every 30 seconds.
 */
void loop() {
  if (CAN_MSGAVAIL == CAN.checkReceive()) { //if a new message has been recieved.
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID

    if (canId == 0x03) { // from pedal box
      digitalWrite(BRAKE_LIGHT_PIN, buf[0]); // either 0 or 1
    } else if (canId == 0x04) { // brake light error msg
      logError("0x04", buf);
    } else if (canId == 0x05) { // forward/backward error msg
      logError("0x05", buf);
    } else if (canId == 0x06) { // BMS DTC Status #1 and #2
      logError("0x06", buf);
    } else if (canId == 0x0AB) { // Motor controller fault codes
      logError("0x0AB", buf);
    }
  }

  if (millis() - lastLog > 30000 && bufferLength > 0) { // if 30 seconds since last successful write to SD card and buffer is not empty
    if (SDWrite(errorBuffer)) { // if successfully logged to SD card, clear buffer
      errorBuffer = "";
      bufferLength = 0;
    }
  }
}

/**
 * Deactivates SD module and then activates CAN module
 */
void switchSDToCAN() {
  digitalWrite(SD_CS_PIN, HIGH);
  digitalWrite(CAN_CS_PIN, LOW);
}

/**
 * Deactivates CAN module and then activates SD module
 */
void switchCANToSD() {
  digitalWrite(CAN_CS_PIN, HIGH);
  digitalWrite(SD_CS_PIN, LOW);
}

/**
 * Compiles errors, writes to SD every 5 errors
 *
 * @param id the sender id of the error
 * @param error the errors to be logged
 */
void logError(String id, unsigned char error[8]) {
  errorBuffer += "millis: " + String(millis()) + "  |  ";
  errorBuffer += "id: " + id + "  |  error: | ";
  for (int i = 0; i < 8; i ++) {
    errorBuffer += String(int(error[i])) + " | ";  // stores the byte value (0-255) as a string
  }
  errorBuffer += "\n";
  bufferLength += 1;
  if (bufferLength > 5) {
    if (SDWrite(errorBuffer)) { // if successfully logged to SD card, clear buffer
      errorBuffer = "";
      bufferLength = 0;
    }
  }
}

/**
 * Logs errors to SD card.
 *
 * @param errors the error(s) to be logged
 * @returns true if logging was successful, false if it failed
 */
bool SDWrite(String errors) {
  switchCANToSD();

  if (!SD.begin(SD_CS_PIN)) {
    Serial.println("initialization failed!");
    switchSDToCAN();
    return false;
  }

  myFile = SD.open("log-" + String(nextFileName) + ".txt", FILE_WRITE);

  if (myFile) {
    myFile.println(errors);
    myFile.close();
  } else {
    Serial.println("error opening: log-" + String(nextFileName) + ".txt");
    switchSDToCAN();
    return false;
  }

  switchSDToCAN();
  lastLog = millis();
  return true;
}