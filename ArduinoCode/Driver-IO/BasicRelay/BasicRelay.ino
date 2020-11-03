#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>

const int RELAY_PIN = 9;

const int CAN_ID = 0x03; // device's CAN id
const int SPI_CS_PIN = 10; // base CAN pin

unsigned char len = 0; // length of incoming message
unsigned char buf[1]; // memory for incoming message
unsigned long canId; // CAN id of incoming message

MCP_CAN CAN(SPI_CS_PIN); // setup can device

/**
 * Start CAN and intialize digital pin
 */
void setup() {
  Serial.begin(115200); // baud rate for CAN
  
  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) { // specify 8MHz crystal
    Serial.println("CAN BUS init Failed"); // failure message
    delay(250); // delay, retry
  }
  Serial.println("CAN BUS Shield Init OK!");

  pinMode(RELAY_PIN, OUTPUT); // sets the relay pin to be an output
}

/**
 * Checks if a new brake light CAN message has been received
 *  - message of 1 is to turn light on
 *  - message of 0 is to turn light off
 */
void loop() {
  if(CAN_MSGAVAIL == CAN.checkReceive()) {
    CAN.readMsgBuf(&len, buf); // enters message into program
    canId = CAN.getCanId(); // gets sender ID

    // sets the brake light if the message has an id of 0x03
    if(canId == 0x03){
      if(buf[0] == 1) {
        digitalWrite(RELAY_PIN, HIGH);
      } else {
        digitalWrite(RELAY_PIN, LOW);
      }
    }
  }
}
