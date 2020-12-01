/*
 * Author: Joshua Cheng
 * Date: December 1, 2020
 * 
 * Pinouts:
 * MOSI - pin 11
 * MISO - pin 12
 * CLK - pin 13
 * 
 * SD card module:
 * SS - pin 10
 * 
 * CAN module:
 * SS - pin 9
 * 
 * Note: This program keeps the CAN module activated by default, but deactivates it when writing to the SD card. 
 * This Arduino may miss CAN messages if it recieves a message while writing to the SD card.
 */

#include <mcp_can.h> // Uses Seeed-studio's CAN_BUS_Shield library.
#include <mcp_can_dfs.h>
#include <SPI.h>
#include <SD.h>

#define SD_SS_PIN 10
#define CAN_SS_PIN 9
#define BRAKE_LIGHT_PIN 6 // Does not have to be PWM pin.

File myFile;
MCP_CAN CAN(CAN_SS_PIN);

const String filename = "log.txt"; // Name of file to be written to on SD card.

unsigned char len = 0; // Length of incoming message
unsigned char buf[8]; // Memory for incoming message
int canId; // Sender's ID

/**
 * Sets relavent pins to output or input, initializes serial for debugging, initializes CAN.
 */
void setup() {
  Serial.begin(9600);

  pinMode(SD_SS_PIN, OUTPUT);
  pinMode(CAN_SS_PIN, OUTPUT);

  digitalWrite(SD_SS_PIN, HIGH); // disable SD module
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");

  pinMode(BRAKE_LIGHT_PIN, OUTPUT);
}

bool SDWrite(String error);

/**
 * Deals with incoming CAN messages, if an error is recieved, it is logged.
 */
void loop() {
  if (CAN_MSGAVAIL == CAN.checkReceive()) //if a new message has been recieved.
  {
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID

    if (canId == 0x03) { // from pedal box
      digitalWrite(BRAKE_LIGHT_PIN, buf[0]); // either 0 or 1
    } else if (canId == 0x04) { // brake light error msg
      SDWrite(buf);
    } else if (canId == 0x05) { // forward/backward error msg
      SDWrite(buf);
    }
  }
}

/**
 * Logs error to SD card.
 * 
 * @param error the error to be logged
 * @returns true if logging was successful, false if it failed
 */
bool SDWrite(String error) {
  digitalWrite(CAN_SS_PIN, HIGH); // disable CAN module
  digitalWrite(SD_SS_PIN, LOW); // enable SD module

  if (!SD.begin(SD_SS_PIN)) {
    Serial.println("initialization failed!");
    digitalWrite(SD_SS_PIN, HIGH); // disable SD module
    digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
    return false;
  }

  myFile = SD.open(filename, FILE_WRITE);

  if (myFile) {
    myFile.println(s);
    myFile.close();
  } else {
    Serial.println("error opening " + filename);
    digitalWrite(SD_SS_PIN, HIGH); //disable SD module
    digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
    return false;
  }

  digitalWrite(SD_SS_PIN, HIGH); // disable SD module
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
  return true;
}
