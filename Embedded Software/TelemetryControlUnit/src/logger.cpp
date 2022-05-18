#include "logger.h"
#include <Arduino.h>
#include <TimeLib.h>
#include <SD.h>

#define MAX_BUFFERED_MESSAGES 50 // max number of buffered CAN messages before logging to SD card
#define MAX_LOG_FILE_SIZE 100000000U // 100 Megabytes

File logFile; // file logging object

// Logging information (use 2 buffers to prevent overwrites during logging delays)
int buf1Length = 0;
int buf2Length = 0;
message_format_t messageBuf1[MAX_BUFFERED_MESSAGES]; 
message_format_t messageBuf2[MAX_BUFFERED_MESSAGES]; 
bool usingBuf1 = true; // true when using buf1, false when using buf2
char fileName[19]; // format is log-1652888997.txt (19 digits as 10 for timestamp, 8 for text, 1 for termination)

// Timing information
uint32_t lastLogTime;
uint32_t minLogFrequency;
uint32_t startUpTimeMillis;
uint32_t startUpTimeRTC;
bool useRTC = false; // Default is to use system millis() time


/**
 * @brief Wrapper function to pass to time sync function
 * 
 * @return time_t 
 */
static time_t getTeensy3Time()
{
  return Teensy3Clock.get();
}


/**
 * @brief Sets the logging file name using the format log-NUM.txt, where NUM is either the current 
 *        unix time if using the RTC or a valid numeric index starting from 0.
 * 
 */
static void setFileName() {
  uint32_t fileNum = 0;
  if (useRTC) {
      fileNum = now();
  }

  sprintf(fileName, "log-%d.txt\0", fileNum);

  while (SD.exists(fileName)) {
    if (useRTC) {
        delay(500);
        fileNum = now();
    }
    else {
        fileNum++;
    }

    sprintf(fileName, "log-%d.txt\0", fileNum); 
  }
}


/**
 * @brief Resets the buffers and the RTC when an error is detected
 * 
 */
static void reset() {
    buf1Length = 0;
    buf2Length = 0;
    memset((void *)messageBuf1, 0, MAX_BUFFERED_MESSAGES * sizeof(message_format_t));
    memset((void *)messageBuf2, 0, MAX_BUFFERED_MESSAGES * sizeof(message_format_t));
    usingBuf1 = true;
    lastLogTime = millis();

    // TODO: Add code to reset RTC
    // TODO: Add delay
}


/**
 * @brief Get the real date/time in the format YYYY-MM-DDT00:00:00.000Z
 * 
 * @param timestamp Pointer to return to
 */
static int getRealTimestamp(char *timestamp) {
  time_t currentTime = now();
  
  // calculate millisecond precisions
  uint32_t millisSinceStart = millis() - startUpTimeMillis;
  uint32_t millisSinceStartRTC = (currentTime - startUpTimeRTC) * 1000;
  
  uint32_t millisDifference = 0;
  if (millisSinceStart - millisSinceStartRTC > 0) {
    currentTime += (millisSinceStart - millisSinceStartRTC) / 1000; // update currentTime if the millis go over a second
    millisDifference = (millisSinceStart - millisSinceStartRTC) % 1000; // set to be in range of 0-999 
  }

  sprintf(timestamp, "%.4d-%.2d-%.2dT%.2d:%.2d:%.2d.%.3luZ", year(currentTime), month(currentTime), 
          day(currentTime), hour(currentTime), minute(currentTime), second(currentTime), millisDifference);

  timestamp[24] = '\0'; // terminate string with NULL character

  if (year(currentTime) > 3000) {
    return -1;
  }

  return 0;
}


/**
 * @brief Get the time since startup of the car in the format YYYY-MM-DDT00:00:00.000Z.
 *        The year, month, and day values are irrelevant (hardcoded at 2021-1-1)
 * 
 * @param timestamp Pointer to return to
 */
static int getRelativeTimestamp(char *timestamp) {
  uint32_t millisSinceStart = millis() - startUpTimeMillis;
  
  // parse millisecond time value
  int minutes = millisSinceStart / 60000; 
  int seconds = (millisSinceStart - minutes*60000) / 1000; 
  unsigned long milliseconds = millisSinceStart - minutes*60000 - seconds*1000; 
  
  // get the total hours from minutes value
  int hours = minutes / 60;
  minutes = minutes % 60;
  
  sprintf(timestamp, "%.4d-%.2d-%.2dT%.2d:%.2d:%.2d.%.3luZ", 2021, 1, 1, hours, minutes, seconds, milliseconds);
  
  timestamp[24] = '\0'; // terminate string with NULL character

  return 0;
}


/**
 * @brief Initilizes SD logging
 * 
 */
void LoggerInit(uint32_t logFrequency) {
  // Init the RTC
  setSyncProvider(getTeensy3Time);   // the function to get the time from the RTC
  
  if (timeStatus() == timeSet) {
    Serial.println("RTC has set the system time");  
    useRTC = true; 
  } else {
    Serial.println("Unable to sync with the RTC");
  }

  // Init startup times
  startUpTimeMillis = millis();
  startUpTimeRTC = now();

  // Start built-in SD card
  while (!SD.begin(BUILTIN_SDCARD)) {
    Serial.println("Error initializing SD card logging");
    delay(250);
  }

  // set the file name 
  setFileName();
  Serial.print(F("setup complete. fileName is "));
  Serial.println(fileName);

  logFrequency = minLogFrequency;
  lastLogTime = millis();
}


/**
 * @brief Writes the messages currently buffered in messageBuf to the SD card
 * 
 * @return true true on a successful write 
 * @return false when the write fails
 */
bool LoggerWrite() {
  // find appropriate buffer to use
  message_format_t *messageBuf = usingBuf1 ? messageBuf1 : messageBuf2; 
  int bufLength = usingBuf1 ? buf1Length : buf2Length;

  // only write on certain conditions
  if ((millis() - lastLogTime) <= minLogFrequency && bufLength < MAX_BUFFERED_MESSAGES) {
      return false;
  }

  usingBuf1 = !usingBuf1; // Switch main log buffer during write process

  logFile = SD.open(fileName, FILE_WRITE);

  // create a new file if current one is too large
  if (logFile.size() > MAX_LOG_FILE_SIZE) {
    logFile.close();
    setFileName();
    logFile = SD.open(fileName, FILE_WRITE);
  }

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
        if (j != messageBuf[i].length - 1) {
          logFile.print(",");
        }
      }
      logFile.print("]\n");
    }

    lastLogTime = millis();
    
    // clear bufLength variables (must clear the opposite of whatever one is in use)
    if (usingBuf1) {
      buf2Length = 0;
    } else {
      buf1Length = 0;
    }
    logFile.close();
    return true;
  } 
  else {
    Serial.println("Could not open file on SD card");
    return false;
  }
}


/**
 * @brief Adds the given data plus a generated timestamp to the message buffer.
 *        Uses a time since startup if the RTC is not in use, or the real time otherwise.
 * 
 * @param id  Message id
 * @param len Message length
 * @param buf Data bytes (Array of length 'len')
 */
void LoggerBufferMessage(uint32_t id, uint8_t len, const uint8_t *buf) {
  message_format_t *messageBuf = usingBuf1 ? messageBuf1 : messageBuf2; 
  int bufLength = usingBuf1 ? buf1Length : buf2Length;

  if (bufLength > MAX_BUFFERED_MESSAGES) {
    return; // TODO: add buffer switch
  }

  int timeStatus;
  // find time stamps
  if (useRTC) {
    timeStatus = getRealTimestamp(messageBuf[bufLength].timestamp);
  }
  else {
    timeStatus = getRelativeTimestamp(messageBuf[bufLength].timestamp);
  }

  // reset buffers on an error
  if (timeStatus < 0 || len > 8) {
    reset();
    return;
  }

  // add data to message buffer
  messageBuf[bufLength].id = id;
  messageBuf[bufLength].length = len;
  memcpy(messageBuf[bufLength].dataBuf, buf, len);

  if (usingBuf1) {
    buf1Length++;
  } else {
    buf2Length++;
  }
}

