#include <Arduino.h>
#include "mcp_can.h"

#define DELAY1 2000 // ms
#define ID1    0x3


MCP_CAN CAN(10);                                            // Set CS to pin 10

unsigned char len = 0;
unsigned char buf[8];


void setup() {
  Serial.begin(9600);

  while (CAN_OK != CAN.begin(CAN_250KBPS)) {
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");
}


void loop()
{
  static unsigned long main_timeout = millis();
  static unsigned long send_timeout1 = millis();
  static int message_count = 0;
  

  if (millis() - send_timeout1 > DELAY1) {
    byte buf[1] = {1};
    CAN.sendMsgBuf(ID1, 0, 1, buf);
    message_count++;
    send_timeout1 = millis();
  }

  if (millis() - main_timeout > 1000 ) {
    Serial.print("Sent ");
    Serial.print(message_count);
    Serial.print(" last second");
    Serial.print("\n");
    main_timeout = millis();
    message_count = 0;
  }
}
