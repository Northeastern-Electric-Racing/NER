#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>

// sensor pins
const int ACCEL_PIN1 = A0; 
const int ACCEL_PIN2 = A1; 
const int BRAKE_PIN1 = 2;
const int BRAKE_PIN2 = 3;

// brake switch and potentiometer values
int accelPin1Val; 
int accelPin2Val;
int brakePin1Val;
int brakePin2Val;

// state variables
bool invertorOn = false;
bool isForward = true;
bool brakePressed = false;
bool dischargeEnabled = false; // true when torque can be given to motor
bool chargeEnabled = false;    // true when regen torque is allowed
unsigned long timeBrake = 0;   // the time at which the brake was last pressed

// message timing values
const int COMMAND_MESSAGE_DELAY = 50; // in milliseconds
const int BRAKE_MESSAGE_DELAY = 50; // in milliseconds
unsigned long lastCommandMessage = 0; // the time the last command message was sent
unsigned long lastBrakeMessage = 0; // the time the last brake message was sent

// regen braking constants
const int START_TIME = 0;   // delay from when brake is pressed to when regen starts
const int MAX_TORQUE = 255; // maximum regen torque value
const int RAMP_TIME =  10;  // time until the maximum regen torque is reached (in seconds)
 
// CAN IDs  
const int CAN_START_MOTOR = 0x01;
const int CAN_DIRECTION = 0x02;
const int CAN_BRAKE = 0x03;
const int CAN_BRAKE_ERROR = 0x04;
const int CAN_ACCEL_ERROR = 0x05;
const int CAN_BMS_SHUTDOWN = 0x09;
const int CAN_MC_FAULTS = 0xAB;
const int CAN_BMS_STATES = 0x6B0;
const int CAN_MOTOR = 0xC0;

// CAN info
unsigned char len = 0; // length of incoming data
unsigned char buf[8];  // received data
unsigned long canId;   // CAN id of incoming message
const unsigned char MOTOR_OFF[8] = {0,0,0,0,0,0,0,0}; // message to turn motor off
const unsigned char ACCEL_ERROR[4] = {'P', 0, 5, 00}; // error message of "Vehicle Speed Sensor Malfunction" 
const unsigned char BRAKE_ERROR[4] = {'P', 0, 5, 04}; // error message of "Brake Switch A / B Correlation"
const unsigned char BMS_ERROR[8] = {0,1,0,0,0,0,0,0}; // error message for BMS to activate shutdown circuit

const int SPI_CS_PIN = 10; // base CAN pin

// function declarations
void readStates();
void readPotentiometers();
void readSwitches();

MCP_CAN CAN(SPI_CS_PIN); // setup can device

/**
 * Start CAN and initialize digital pins
 */
void setup() {
  Serial.begin(115200); // Initializes Serial communication

  while (CAN_OK != CAN.begin(CAN_250KBPS, MCP_8MHz)) { // specify 8MHz crystal
    Serial.println("CAN BUS init Failed"); // failure message
    delay(250); // delay, retry
  }
  Serial.println("CAN BUS Shield Init OK!"); // success message

  // Set brake light digital pins to act as inputs with built in pull-up resistors
  pinMode(BRAKE_PIN1, INPUT_PULLUP);
  pinMode(BRAKE_PIN2, INPUT_PULLUP);
}

/**
 * Continuoulsy read incoming CAN messages and the values of the accelerator potentiometers and brake switches
 */
void loop() {
  readStates();
  
  if ((millis() - lastCommandMessage) > COMMAND_MESSAGE_DELAY) { // Adds delay between pedal potentiometer readings
    if (invertorOn) { // only read potentiometers when the inverter is on
      readPotentiometers();
      lastCommandMessage = millis(); // reset command message time
    }
  }

  if ((millis() - lastBrakeMessage) > BRAKE_MESSAGE_DELAY) { // Adds delay between brake switch readings
    readSwitches();
    lastBrakeMessage = millis(); // reset brake message time
  }
}

/*
 * readStates() reads the CAN messages from other parts of the car to set the following states:
 *  - CAN_START_MOTOR message is used to set the inverterOn state
 *  - CAN_DIRECTION message is used to set the isForward state
 *  - CAN_BMS_STATES message is used to set the dischargeEnabled and chargeEnabled states
 * and also reads fault messages from the motor controller in order to trigger the shutdown circuit via BMS
 */
void readStates() {
  if(CAN_MSGAVAIL == CAN.checkReceive()) {   // if a new message has been recieved.
    CAN.readMsgBuf(&len, buf);
    canId = CAN.getCanId(); // gets sender ID

    if (canId == CAN_START_MOTOR) {
      CAN.sendMsgBuf(CAN_MOTOR, 0, 8, MOTOR_OFF); // turns motor off to release lockout or because switch is off
      invertorOn = buf[0]; // set inverter state
    } else if (canId == CAN_DIRECTION) {
      isForward = buf[0]; // set direction state
    } else if (canId == CAN_BMS_STATES) {
      dischargeEnabled = buf[5] & 1;     // get first bit of Relay State byte
      chargeEnabled = (buf[5] >> 1) & 1; // get second bit of Relay State byte 
    } else if (canId == CAN_MC_FAULTS) {
      if ((buf[4] != 0) || ((buf[5] >> 3) & 1) || ((buf[5] >> 4) & 1)) { // only send message for fault bits 32-39, 43, 44
        CAN.sendMsgBuf(CAN_BMS_SHUTDOWN, 0, 8, BMS_ERROR); // triggers shutdown circuit through BMS
      }
    }
  }
}

/**
 * Read the values of the two accelerator pedal potentiometers
 * Compare them to make sure the values agree and send value to CAN
 */
void readPotentiometers() {
  accelPin1Val = analogRead(ACCEL_PIN1); 
  accelPin2Val = analogRead(ACCEL_PIN2);

  if(accelPin1Val == 0 || accelPin2Val == 0){
    CAN.sendMsgBuf(CAN_BMS_SHUTDOWN, 0, 8, BMS_ERROR);
    CAN.sendMsgBuf(CAN_MOTOR, 0, 8, MOTOR_OFF);
    CAN.sendMsgBuf(CAN_ACCEL_ERROR, 0, 4, ACCEL_ERROR);
  }

  if(accelPin1Val == 1023 || accelPin2Val == 1023){
    CAN.sendMsgBuf(CAN_BMS_SHUTDOWN, 0, 8, BMS_ERROR);
    CAN.sendMsgBuf(CAN_MOTOR, 0, 8, MOTOR_OFF);
    CAN.sendMsgBuf(CAN_ACCEL_ERROR, 0, 4, ACCEL_ERROR);
  }


  if (abs(accelPin1Val - accelPin2Val) <= (1024 * 0.1)) {
    unsigned char accelTorque = 0;
    unsigned char regenTorque = 0;

    if (dischargeEnabled) {  // acceleration torque is allowed
      int averageReading = (accelPin1Val + accelPin2Val) / 2;
      accelTorque = averageReading / 4;
    } 
    
    if (chargeEnabled && brakePressed) {  // regen torque is allowed 
      int timeDifference = (millis() - timeBrake) / 1000; // length of time the brake has been pressed
      if (timeDifference - START_TIME > RAMP_TIME) { // max regen torque is allowed
        regenTorque = MAX_TORQUE;
      } else if (timeDifference - START_TIME > 0) {
        regenTorque = timeDifference * (MAX_TORQUE / RAMP_TIME); // regen torque depends on how long the brake has been held
      }
    }
    
    unsigned char message[8] = {accelTorque,regenTorque,0,0,isForward,1,0,0};
    CAN.sendMsgBuf(CAN_MOTOR, 0, 8, message); // send message to motor controller with torques and direction
  } else {  // send shutdown message, turn off motor, and send error message
    CAN.sendMsgBuf(CAN_BMS_SHUTDOWN, 0, 8, BMS_ERROR);
    CAN.sendMsgBuf(CAN_MOTOR, 0, 8, MOTOR_OFF);
    CAN.sendMsgBuf(CAN_ACCEL_ERROR, 0, 4, ACCEL_ERROR);
  }
}

/**
 * Read the values of the two brake switches
 * Compare them to make sure the values agree and send value to CAN
 */
void readSwitches() {
  brakePin1Val = digitalRead(BRAKE_PIN1);
  brakePin2Val = digitalRead(BRAKE_PIN2);

  if ((brakePin1Val == LOW) && (brakePin2Val == LOW)) {  // both switches are on
    if (!brakePressed) {  // set the brake time if the brake has just been pressed
      timeBrake = millis();
    } 
    brakePressed = true;
    CAN.sendMsgBuf(CAN_BRAKE, 0, 1, {1});
  } else if ((brakePin1Val == HIGH) && (brakePin2Val == HIGH)) { // both switches are off
    brakePressed = false;
    CAN.sendMsgBuf(CAN_BRAKE, 0, 1, {0});
  } else {  // error due to switches having different values
    brakePressed = false;
    CAN.sendMsgBuf(CAN_BRAKE_ERROR, 0, 4, BRAKE_ERROR);
  }
}
