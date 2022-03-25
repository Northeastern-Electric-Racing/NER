#include <Arduino.h>
#include <FlexCAN_T4.h> // header file to use the library

// IO pins
#define ACCEL1_PIN A0
#define ACCEL2_PIN A1
#define BRAKE_PIN 10
#define LED4_PIN 3
#define LED5_PIN 5
#define SS_BUTT_PIN 29
#define SS_LED_PIN 32
#define SPEAKER_PIN 7
#define REVERSE_SW_PIN 9

// motor torque constants
#define MAXIMUM_TORQUE 180 // in Nm x 10 (ex: 123 = 12.3Nm)
#define POT_LOWER_BOUND 35 // a pot value from 0 to 1023
#define POT_UPPER_BOUND 1023 // a pot value from 0 to 1023

// regen braking constants
#define START_TIME 0   // delay from when brake is pressed to when regen starts
#define MAX_REGEN_TORQUE -180 // maximum regen torque value
#define RAMP_TIME  10  // time until the maximum regen torque is reached (in seconds)
 
// CAN info  
#define CAN_MOTOR 0xC0
#define BAUD_RATE 250000U // 250 kbps 
#define MAX_MB_NUM 16 // maximum number of CAN mailboxes to use 


FlexCAN_T4<CAN1, RX_SIZE_256, TX_SIZE_16> myCan; // main CAN object

static CAN_message_t msg; // can message

const unsigned char MOTOR_OFF[8] = {0, 0, 0, 0, 0, 0, 0, 0}; // message to turn motor off

bool isForward = true;
bool isOn = false;
uint8_t accelTorqueLow = 0;
uint8_t accelTorqueHigh = 0;

// timing variables
uint32_t lastPedalRead = 0; // the time the pedal actuation was last read
uint32_t lastBrakeMessage = 0; // the time the last brake message was sent
uint32_t lastCommand = 0; // the time the last command message was sent
uint32_t lastSendMessage = 0; 

// breaking variables
bool brakePressed = false;
uint32_t timeBrake = 0;   // the time at which the brake was last pressed


// prototype for the CAN receive callback
void testCallback(const CAN_message_t &msg);
void readBrake();
void readAccel();
int sendMessage(uint32_t id, uint8_t len, const uint8_t *buf);


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
  lastSendMessage = millis(); // set initial timeout to current time

  pinMode(LED_BUILTIN, OUTPUT);
  delay(100);
  digitalWrite(LED_BUILTIN, HIGH);

  pinMode(BRAKE_PIN, INPUT_PULLUP);

  pinMode(SS_LED_PIN, OUTPUT);
  digitalWrite(SS_LED_PIN, HIGH);
  pinMode(LED4_PIN, OUTPUT);
  digitalWrite(LED4_PIN, LOW);
  pinMode(LED5_PIN, OUTPUT);
  digitalWrite(LED5_PIN, LOW);
  pinMode(SPEAKER_PIN, OUTPUT);
  digitalWrite(SPEAKER_PIN, LOW);

  Serial.println(F("CAN BUS Shield Init OK!"));
}


// put your main code here, to run repeatedly:
void loop() {
  myCan.events(); // enable CAN messages to be received (trigger interrupts to the callbacks)
  
  if ((millis() - lastBrakeMessage) > 50) { // Adds delay between brake switch readings
    readBrake();
    lastBrakeMessage = millis(); // reset brake message time
  }

  // add a delay between pedal actuation reads
  if (millis() - lastPedalRead > 50) {
    readAccel();
    lastPedalRead = millis();
  }

  //send a CAN message every 200 ms
  // if ( millis() - lastSendMessage > 200 ) {
  //   Serial.println("Writing CAN message");
  //   msg.id = 0x3;
  //   msg.len = 8;
  //   for ( uint8_t i = 0; i < 8; i++ ) {
  //     msg.buf[i] = 1;
  //   }
  //   myCan.write(msg);
  //   lastSendMessage = millis();
  // }

  String serialIn = "";
  while (Serial.available() > 0) {
    serialIn = Serial.readStringUntil('\r');
  }

  // Handle Dashboard IO


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

/**
 * @brief Read the accel pedal and set the toqrue bytes to send to the MC
 * 
 */
void readAccel() {
  int16_t appliedTorque = 0; // applied motor torque

  // send a regen torque if the brake button is pressed, otherwise send a normal torque
  if (brakePressed) {
    int totalBrakeTime = (millis() - timeBrake) / 1000; // length of time in seconds that the brake has been held down
    
    if (totalBrakeTime - START_TIME > RAMP_TIME) { // max regen torque is allowed
      appliedTorque = MAX_REGEN_TORQUE;
    } 
    else if (totalBrakeTime - START_TIME > 0) {
      appliedTorque = totalBrakeTime * (MAX_REGEN_TORQUE / RAMP_TIME); // regen torque depends on how long the brake has been held
    }
    else {
      // do nothing
    }

  }
  else {
    int reading = analogRead(ACCEL1_PIN); // value from 0 to 1023 (need to reverse)
    int16_t flippedVal = (reading * -1) + 1023; // reverse it so 0 is when pedal not pressed, and 1023 is at full press

    if (flippedVal < POT_LOWER_BOUND) { // Set low point to prevent a positive torque in the resting pedal position
      flippedVal = 0;
    }

    double multiplier = (double)flippedVal / 1023; // torque multiplier from 0 to 1;

    appliedTorque = multiplier * MAXIMUM_TORQUE;
  }

  accelTorqueHigh = appliedTorque >> 8;
  accelTorqueLow = appliedTorque & 0x00FF;

  Serial.println(appliedTorque / 10); // prints out applied torque
}


/**
 * @brief Simulate a brake press through the "regen button"
 * 
 */
void readBrake() {
  int brakeVal = digitalRead(BRAKE_PIN);

  // if the brake is being pressed
  if (brakeVal == LOW) {
    if (!brakePressed) { // if brake was not already being pressed, set new press time
      timeBrake = millis();
    }
    brakePressed = true;
  }
  // if brake is not being pressed, toggle brakePressed variable
  else {
    brakePressed = false;
  }
}

// callback that runs for received data
void testCallback(const CAN_message_t &msg)
{
   //return;
  if (msg.id != 0xA0)
  {
    return;
  }
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

