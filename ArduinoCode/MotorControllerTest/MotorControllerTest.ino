
/*
   Author: Joshua Cheng
   Date: March 11, 2021

   Pinouts:
   MOSI - pin 11
   MISO - pin 12
   CLK - pin 13
   SS - pin 10

*/
#include <mcp_can.h> // Uses Seeed-studio's CAN_BUS_Shield library.

#define CAN_SS_PIN 10
#define HARD_TORQUE_LIMIT 1000
#define CAN_MOTOR 0xC0 // canID for msg to send to motor controller
const unsigned char MOTOR_OFF[8] = {0, 0, 0, 0, 0, 0, 0, 0}; // message to turn motor off

static uint32_t timeout1; // timeout value for sending CAN messages


MCP_CAN CAN(CAN_SS_PIN);

bool isForward = true;
bool isOn = false;
unsigned int accelTorqueLow = 0;
unsigned int accelTorqueHigh = 0;
unsigned long lastCommand = 0;

/**
   Sets relavent pins to output or input, initializes serial for debugging, initializes CAN module
*/
void setup() {
  Serial.begin(9600);

  while (CAN_OK != CAN.begin(CAN_250KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println(F("CAN BUS init Failed"));
    delay(250);
  }
  Serial.println(F("CAN BUS Shield Init OK!"));
  Serial.println(F("Please set your serial monitor to 'Both NL & CR' near the bottom. "));
  Serial.println(F("Type a numerical value between 0-255 to set the torque or"));
  Serial.println(F("'reverse' to change the direction or 'on'/'off' to turn the MC on or off."));
}

/**
   Prints incoming CAN messages to the Serial Monitor, allows user to send CAN messages via the Serial Monitor.
*/
void loop() {
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
      CAN.sendMsgBuf(CAN_MOTOR, 0, 8, MOTOR_OFF); // release lockout
      accelTorqueLow = 0;
      accelTorqueHigh = 0;
      isOn = true;
    } else if (serialIn.equals("off") && isOn) {
      Serial.println(F("Turning off motor controller"));
      CAN.sendMsgBuf(CAN_MOTOR, 0, 8, MOTOR_OFF); // release lockout
      isOn = false;
    } 
  }

  // send command message if MC is on and its been 50ms
  if ((millis() - lastCommand) > 50) {
    lastCommand = millis();
    unsigned char message[8] = {accelTorqueLow,accelTorqueHigh,0,0,isForward,isOn,0,0};
    CAN.sendMsgBuf(CAN_MOTOR, 0, 8, message);
  }
  
  // send command message if MC is off and its been 50ms
  if (!isOn && (millis() - lastCommand) > 50) {
    lastCommand = millis();
    CAN.sendMsgBuf(CAN_MOTOR, 0, 8, MOTOR_OFF);
  }

  if (CAN_MSGAVAIL == CAN.checkReceive()) { //if a new message has been recieved.
    unsigned char len = 0; // Length of incoming message
    unsigned char buf[8]; // Memory for incoming message
    int canId; // Sender's ID
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID

    Serial.print(F("Message Recieved from CAN ID: "));
    Serial.print(String(canId));
    Serial.print(F("  |  message: "));
    for (int i = 0; i < 8; i ++) {
      Serial.print(String(buf[i]));
      Serial.print(F(" | "));
    }
    Serial.println();
  }
}
