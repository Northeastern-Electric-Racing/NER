#include <Arduino.h>
#include "mcp_can.h"


MCP_CAN CAN(10);                                            // Set CS to pin 10

unsigned char len = 0;
unsigned char buf[8];
unsigned long id;


void printMessageInfo();

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
  static int message_count = 0;

  if (millis() - main_timeout > 1000 ) {
    Serial.print("Received ");
    Serial.print(message_count);
    Serial.print(" last second");
    Serial.print("\n");
    main_timeout = millis();
    message_count = 0;
  }

  if (CAN_MSGAVAIL == CAN.checkReceive()) {
    message_count++;
    CAN.readMsgBuf(&len, buf);
    id = CAN.getCanId(); // gets sender ID
    printMessageInfo();
  }

    
}


void printMessageInfo()
{
  Serial.print("Received id: ");
  Serial.print(id);
  Serial.print("\n");
  Serial.print("Length");
  Serial.print(len);
  Serial.print("\n");
  Serial.print("Message: ");
  for (int i = 0; i < len; i++) {
    Serial.print(buf[i]);
    Serial.print(".");
  }
  Serial.print("\n");
}