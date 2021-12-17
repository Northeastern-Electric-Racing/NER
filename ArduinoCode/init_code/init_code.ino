#include <mcp_can.h>
#include <EEPROM.h>


#define SPI_CS_PIN 10  // base CAN pin

// set addresses for EEPROM values
#define DELAY_1_ADDRESS           0
#define DELAY_2_ADDRESS           1
#define MAX_REGEN_TORQUE_ADDRESS  2

// EEPROM values to set
int delay1 = 0;
int delay2 = 0;
int maxRegenTorque = 0;

// CAN info
unsigned char len = 0; // length of incoming data
unsigned char buf[8];  // received data
unsigned long canId;   // CAN id of incoming messages


MCP_CAN CAN(SPI_CS_PIN); // setup can device


// Function prototypes
void readCANMessages();


/**
 * Initialize CAN, pins, and EEPROM
 */
void setup() {
  Serial.begin(115200); // Initializes Serial communication

  while (CAN_OK != CAN.begin(CAN_250KBPS, MCP_8MHz)) { // specify 8MHz crystal
    Serial.println("CAN BUS init Failed"); // failure message
    delay(250); // delay, retry
  }
  Serial.println("CAN BUS Shield Init OK!"); // success message

  delay1 = EEPROM.read(DELAY_1_ADDRESS);
  delay2 = EEPROM.read(DELAY_2_ADDRESS);
  maxRegenTorque = EEPROM.read(MAX_REGEN_TORQUE_ADDRESS);
}


void loop() {
  readCANMessages()
}


void readCANMessages() 
{
  if(CAN_MSGAVAIL == CAN.checkReceive())  // if a new message has been recieved.
  {  
    CAN.readMsgBuf(&len, buf);
    canId = CAN.getCanId(); // gets sender ID

    if (canId == 0x01) // mock address for the EEPROM CAN message
    {
      unsigned char address = buf[0];
      unsigned char value = buf[1];
      
      resetEEPROM();
    } 
    else if (canId == 0x02) // mock address for the CAN timestamp initialization
    {
      
    }
  }
  
}
