#include <Arduino.h>
#include <FlexCAN_T4.h> // header file to use the library

#define BAUD_RATE 500000U // 500 kbps 


FlexCAN_T4<CAN2, RX_SIZE_256, TX_SIZE_16> myCan; // main CAN object

static CAN_message_t msg; // can message

static uint32_t timeout; // timeout value for sending CAN messages


// prototype for the CAN receive callback
void testCallback(const CAN_message_t &msg);


// put your setup code here, to run once:
void setup() {
  Serial.begin(115200); 
  delay(400);
  
  myCan.begin(); // needed to initialize the CAN object (must be first method called)
  myCan.setBaudRate(BAUD_RATE); // sets baud rate

  myCan.setMaxMB(16);
  myCan.enableFIFO(); // enables the FIFO operation mode, where all received messages are received and accessed via a queue
  myCan.enableFIFOInterrupt(); // enables interrupts to be used with FIFO
  myCan.onReceive(testCallback); // sets the callback for received messages
  myCan.mailboxStatus(); // prints out mailbox config information

  timeout = millis(); // set initial timeout to current time
}

// put your main code here, to run repeatedly:
void loop() {
  myCan.events(); // enable CAN messages to be received (trigger interrupts to the callbacks)

  // send a CAN message every 200 ms
  if ( millis() - timeout > 200 ) {
    msg.id = 0x1;
    msg.len = 8;
    for ( uint8_t i = 0; i < 8; i++ ) {
      msg.buf[i] = i + 1;
    }
    myCan.write(msg);
    timeout = millis();
  }

}

// callback that runs for received data
void testCallback(const CAN_message_t &msg)
{
  Serial.print("MB "); Serial.print(msg.mb);
  Serial.print("  OVERRUN: "); Serial.print(msg.flags.overrun);
  Serial.print("  LEN: "); Serial.print(msg.len);
  Serial.print(" EXT: "); Serial.print(msg.flags.extended);
  Serial.print(" TS: "); Serial.print(msg.timestamp);
  Serial.print(" ID: "); Serial.print(msg.id, HEX);
  Serial.print(" Buffer: ");
  for ( uint8_t i = 0; i < msg.len; i++ ) {
    Serial.print(msg.buf[i], HEX); Serial.print(" ");
  } Serial.println();
}