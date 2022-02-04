#include <Arduino.h>
#include <FlexCAN_T4.h> // header file to use the library

#define BAUD_RATE 250000U // 250 kbps 
#define MAX_MB_NUM 16

FlexCAN_T4<CAN1, RX_SIZE_256, TX_SIZE_16> myCan; // main CAN object

static CAN_message_t msg; // can message

static uint32_t timeout; // timeout value for sending CAN messages



#define HARD_TORQUE_LIMIT 1000
#define CAN_MOTOR 0xC0 // canID for msg to send to motor controller
const unsigned char MOTOR_OFF[8] = {0, 0, 0, 0, 0, 0, 0, 0}; // message to turn motor off

bool isForward = true;
bool isOn = false;
unsigned int accelTorqueLow = 0;
unsigned int accelTorqueHigh = 0;
unsigned long lastCommand = 0;



// prototype for the CAN receive callback
void testCallback(const CAN_message_t &msg);

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




// put your setup code here, to run once:
void setup() {
  Serial.begin(9600); 
  delay(400);
  
  myCan.begin(); // needed to initialize the CAN object (must be first method called)
  myCan.setBaudRate(BAUD_RATE); // sets baud rate

  myCan.setMaxMB(MAX_MB_NUM);
  myCan.enableFIFO(); // enables the FIFO operation mode, where all received messages are received and accessed via a queue
  myCan.enableFIFOInterrupt(); // enables interrupts to be used with FIFO
  myCan.onReceive(testCallback); // sets the callback for received messages
  myCan.mailboxStatus(); // prints out mailbox config information
  timeout = millis(); // set initial timeout to current time

  pinMode(LED_BUILTIN, OUTPUT);
  delay(100);
  digitalWrite(LED_BUILTIN, HIGH);

  Serial.println(F("CAN BUS Shield Init OK!"));

}

// put your main code here, to run repeatedly:
void loop() {
  myCan.events(); // enable CAN messages to be received (trigger interrupts to the callbacks)


  int MAX_TORQUE = 180;
  int LOWER_BOUND = 35; 
  
  static unsigned long timeout = millis();
  if (millis() - timeout > 50) {
    timeout = millis();
    int averageReading = analogRead(A0); // value from 0 to 1023 (need to reverse)

    int midValue = (averageReading * -1) + 1023; // reverse it so 0 is when pedal not pressed, and 1023 is at full press

    if (midValue < LOWER_BOUND) { // does nothing for first 50 of potentiometer values on 0 to 1023 scale
      midValue = 0;
    }

    double multiplier = (double)midValue/1023; // value from 0 to 1;

    int actualTorque = multiplier * MAX_TORQUE *10;

    accelTorqueLow = actualTorque % 256;
    accelTorqueHigh = actualTorque / 256;

    //Serial.println(actualTorque / 10); // prints out applied torque

  }




  //send a CAN message every 200 ms
  // if ( millis() - timeout > 100 ) {
  //   Serial.println("Writing CAN message");
  //   msg.id = 0x3;
  //   msg.len = 8;
  //   for ( uint8_t i = 0; i < 8; i++ ) {
  //     msg.buf[i] = 1;
  //   }
  //   myCan.write(msg);
  //   timeout = millis();
  // }

  String serialIn = "";
  while (Serial.available() > 0) {
    serialIn = Serial.readStringUntil('\r');
  }

  // handle user input
  if (serialIn.length() > 0) {
    if (serialIn.equals("status")) {
      Serial.println(F("Direction: "));
      if (isForward) {
        Serial.println(F("forward"));
      } else {
        Serial.println(F("reverse"));
      }

      Serial.println(F("State: "));
      if (isOn) {
        Serial.println(F("on"));
      } else {
        Serial.println(F("off"));
      }
    }
    if (serialIn.equals("reverse")) {
      isForward = !isForward;
      Serial.print(F("Reversing... Direction is now: "));
      if (isForward) {
        Serial.println(F("forward"));
      } else{
        Serial.println(F("backwards"));
      }
    } else if (serialIn.equals("on")) {
      Serial.println(F("Turning on motor controller"));
      sendMessage(CAN_MOTOR, 8, MOTOR_OFF); // release lockout
      accelTorqueLow = 0;
      accelTorqueHigh = 0;
      isOn = true;
    } else if (serialIn.equals("off") && isOn) {
      Serial.println(F("Turning off motor controller"));
      sendMessage(CAN_MOTOR, 8, MOTOR_OFF);
      isOn = false;
    } 
  }

  // send command message if MC is on and its been 50ms
  if ((millis() - lastCommand) > 50) {
    lastCommand = millis();
    unsigned char message[8] = {accelTorqueLow,accelTorqueHigh,0,0,isForward,isOn,0,0};
    sendMessage(CAN_MOTOR, 8, message);
  }
  
  // send command message if MC is off and its been 50ms
  if (!isOn && (millis() - lastCommand) > 50) {
    lastCommand = millis();
    sendMessage(CAN_MOTOR, 8, MOTOR_OFF);
  }
}

// callback that runs for received data
void testCallback(const CAN_message_t &msg)
{
  // return;
  // if (msg.id != 0x00)
  // {
  //   return;
  // }
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

