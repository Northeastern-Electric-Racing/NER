/**
 * File names are logged in the format "log-0.txt", where the 0 is an incremented number for
 * each operation session.
 * 
 * The standard block size for SD card transfers is 512 bytes. Each write operation to the SD card should
 * be as close to this size as possible, as the remaining space will be padded and used anyway.
 *  - each message is a max of 49 bytes, so a buffer size of 10 is ideal
 * 
 * The Teensy Loader automatically syncs the RTC to the PCs system time on upload, so the time library
 * can be used for real time access if a coin cell is connected to VBAT on the teensy.
 * 
 * All RTC times are in units of seconds since Jan 1st 1970, which is an unsigned long.
 *   - We also keep track of the millis() of the car for extra precision on time stamps
 * 
 * The format for each CAN message logged to the SD card will be:
 *   - time canId length [dataBytes]
 *   - time is in RFC339 format: YYYY-MM-DDT00:00:00.000Z 
 *   - Example Format: 2022-01-12T14:32:21.657Z 123 6 [123,9,12,0,3,15]
 * 
 * 
 * FUTURE WORK/CONSIDERATIONS
 *   - increase the buffer size if only writing 512 bytes at a time is too slow
 *   - create an additional receive buffer to prevent overwrites/eratic behavior
 *   - see if CAN interrupts cause bad behavior with SD writes
 *       - do we need to disable interrupts during a write to the SD card?
 *   - Create a way to update filtered IDs without hardcoding
 *       - Potentially a CAN message to alter it
 *       - Look into storing list in EEPROM 
 */

#include <Arduino.h>
#include <FlexCAN_T4.h>
#include <SD.h>
#include <TimeLib.h>

#define LOG_ALL 1 // set to 1 to log all CAN messages, 0 to filter

#define BAUD_RATE 250000U // 250 kbps 
#define MAX_MB_NUM 16 // maximum number of CAN mailboxes to use 

#define MAX_BUFFERED_MESSAGES 10 // max number of buffered CAN messages before logging to SD card
#define MIN_LOG_FREQUENCY 1000 // the max time length between logs (in ms)

typedef struct {
  char timestamp[25]; // timestamp in YYYY-MM-DDT00:00:00.000Z format
  uint32_t id;
  uint8_t length;
  uint8_t dataBuf[8]; // max number of bytes is 8
} message_format_t;

FlexCAN_T4<CAN1, RX_SIZE_256, TX_SIZE_16> myCan; // main CAN object

File logFile; // file logging object

// CAN Ids of the messages to log to SD card (only considered if LOG_ALL is 0)
const uint32_t LOG_IDS[] = {0x01, 0x02, 0x03, 0x04};
const int NUM_IDS = 4;

// Logging information
int bufLength = 0;
message_format_t messageBuf[MAX_BUFFERED_MESSAGES]; 
uint32_t lastLogTime = 0;
int fileNum = 0; // current file number
char fileName[16]; // format is log-0.txt (can support files up to number 99999999 as there can be 16 chars)

uint32_t startUpTimeMillis;
uint32_t startUpTimeRTC;


// function declarations
int sendMessage(uint32_t id, uint8_t len, const uint8_t *buf); 
void incomingCANCallback(const CAN_message_t &msg);
bool SDWrite();
int getTimestamp(char *timestamp);


/**
 * @brief Init serial console, CAN bus, and brake switch digital pins
 * 
 */
void setup() {
  Serial.begin(9600); 
  delay(400);


  // init startup times
  startUpTimeMillis = millis();
  //startUpTimeRTC = now();

  // init CAN 
  myCan.begin();
  myCan.setBaudRate(BAUD_RATE);
  myCan.setMaxMB(MAX_MB_NUM);
  myCan.enableFIFO(); 
  myCan.enableFIFOInterrupt(); 
  myCan.onReceive(incomingCANCallback);
  
  // init SD card
  while (!SD.begin(BUILTIN_SDCARD)) {
    Serial.println(F("SD Init Failed!"));
    delay(250);
  }

  sprintf(fileName, "log-%d.txt", fileNum); // create the next file name in the fileName variable

  while (SD.exists(fileName)) { // find correct file number to log data to on this session
    Serial.print(F("log-"));
    Serial.print(fileNum);
    Serial.println(F(".txt exists..."));
    fileNum++;
    sprintf(fileName, "log-%d.txt", fileNum); // create the next file name in the fileName variable
  }

  Serial.print(F("setup complete. fileNum is "));
  Serial.println(String(fileNum));


}

/**
 * @brief Continuously read incoming CAN messages and the values of the 
 *        accelerator potentiometers and brake switches
 * 
 */
void loop() {
  myCan.events();

  // log data at least every second or when the buffer is full
  if ((millis() - lastLogTime > MIN_LOG_FREQUENCY) || (bufLength >= MAX_BUFFERED_MESSAGES)) {
    SDWrite();
  }
 
  static unsigned long writeTime = millis();
  static int writeData = 0;
  if (millis() - writeTime > 20) {
    getTimestamp(messageBuf[bufLength].timestamp);
    messageBuf[bufLength].id = 0x01;
    messageBuf[bufLength].length = 8;
    memset(messageBuf[bufLength].dataBuf, writeData, 8);
    bufLength++;

    writeData++;
    writeData %= 10;
    writeTime = millis();
  }


}

/**
 * @brief Returns a string with the current time in the format YYYY-MM-DDT00:00:00.000Z
 * 
 * @return int - 0 on success, 1 on error
 */
int getTimestamp(char *timestamp) {
  //time_t currentTime = now();
  
  // calculate millisecond precisions
  uint32_t millisSinceStart = millis() - startUpTimeMillis;
  //uint32_t millisSinceStartRTC = (currentTime - startUpTimeRTC) * 1000;
  
  // REMOVED THE BELOW FOR TESTING BEFORE RTC, REPLACE FOR ACTUAL CAR
  //uint32_t millisDifference = 0;
  //if (millisSinceStart - millisSinceStartRTC > 0) {
  //  currentTime += (millisSinceStart - millisSinceStartRTC) / 1000; // update currentTime if the millis go over a second
  //  millisDifference = (millisSinceStart - millisSinceStartRTC) % 1000; // set to be in range of 0-999 
  //}

  //sprintf(timestamp, "%.4d-%.2d-%.2dT%.2d:%.2d:%.2d.%.3luZ", year(currentTime), month(currentTime), 
  //        day(currentTime), hour(currentTime), minute(currentTime), second(currentTime), millisDifference);

  int minutes = millisSinceStart / 60000;
  int seconds = (millisSinceStart - minutes*60000) / 1000;
  unsigned long milliseconds = millisSinceStart - minutes*60000 - seconds*1000;
  sprintf(timestamp, "%.4d-%.2d-%.2dT%.2d:%.2d:%.2d.%.3luZ", 2021, 1, 1, 0, minutes, seconds, milliseconds);
  
  timestamp[24] = '\0'; // terminate string with NULL character

  return 0; // generic success code
}


/**
 * @brief Writes the messages currently buffered in messageBuf to the SD card
 * 
 * @return true on a successful write 
 * @return false when the write fails
 */
bool SDWrite() {
  logFile = SD.open(fileName, FILE_WRITE);
  Serial.print(" -- ");
  Serial.print(bufLength);
  Serial.print(" -- \n");

  if (logFile) {
    Serial.println("Writing to SD card...");

    // write all buffered messages to the SD card
    for (int i = 0; i < bufLength; i++) {
      logFile.print(messageBuf[i].timestamp);
      logFile.print(" ");
      logFile.print(messageBuf[i].id);
      logFile.print(" ");
      logFile.print(messageBuf[i].length);
      logFile.print(" [");
      for (int j = 0; j < messageBuf[i].length; j++) {
        logFile.print(messageBuf[i].dataBuf[j]);
        if ( j != messageBuf[i].length - 1) {
          logFile.print(",");
        }
      }
      logFile.print("]\n");
    }

    lastLogTime = millis();
    bufLength = 0;
    logFile.close();
    return true;
  } 
  else {
    Serial.println("Could not open file on SD card");
    return false;
  }
}


/**
 * @brief Handles incoming CAN messages, adding certain ones to the logging message buffer.
 * 
 * @param msg received CAN message
 */
void incomingCANCallback(const CAN_message_t &msg)
{
  // only log if the message id is in the LOG_IDS list or LOG_ALL is enabled
  int foundId = 0;
  if (LOG_ALL) {
    foundId = 1;
  } else {
    for (int i = 0; i < NUM_IDS; i++) {
      if (LOG_IDS[i] == msg.id) {
        foundId = 1;
        break;
      }
    }
  }

  // exit the function if we shouldn't log message
  if (!foundId) {
    return;
  }

  // add message to log buffer
  getTimestamp(messageBuf[bufLength].timestamp);
  messageBuf[bufLength].id = msg.id;
  messageBuf[bufLength].length = msg.len;
  memcpy(messageBuf[bufLength].dataBuf, msg.buf, msg.len);
  bufLength++;
}


/**
 * @brief Sends a CAN message using the given parameters
 * 
 * @param id CAN id (assumed to be 11 bit)
 * @param len Length of message
 * @param buf Data buffer to send
 * @return int - Error code (Negative on failure, other on success)
 */
int sendMessage(uint32_t id, uint8_t len, const uint8_t *buf)
{
  CAN_message_t msg;
  msg.id = id;
  msg.len = len;
  uint8_t *buf1;

  for (int i = 0; i < 8; i++) {
    if (i < len) {
      buf1 = const_cast<uint8_t*>(buf + i);
      msg.buf[i] = *buf1;
    }
    else {
      msg.buf[i] = 0; // copies buf to message, padding with 0s if length isn't 8
    }
  }

  return myCan.write(msg);
}