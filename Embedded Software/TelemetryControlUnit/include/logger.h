/**
 * @file logger.h
 * @author Peter Rydzynski
 * @brief Defines logging utility functions for the Nerduino SD card
 * @date 2022-05-18
 * 
 */

#include <stdint.h>

typedef struct {
  char timestamp[25]; // timestamp in YYYY-MM-DDT00:00:00.000Z format
  uint32_t id;
  uint8_t length;
  uint8_t dataBuf[8]; // max number of bytes is 8
} message_format_t;



void LoggerInit(uint32_t logFrequency);


/**
 * @brief Adds the given data plus a generated timestamp to the message buffer.
 *        Uses a time since startup if the RTC is not in use, or the real time otherwise.
 * 
 * @param id  Message id
 * @param len Message length
 * @param buf Data bytes (Array of length 'len')
 */
void LoggerBufferMessage(uint32_t id, uint8_t len, const uint8_t *buf);


/**
 * @brief Writes the messages currently buffered in messageBuf to the SD card
 * 
 * @return true true on a successful write 
 * @return false when the write fails
 */
bool LoggerWrite();
