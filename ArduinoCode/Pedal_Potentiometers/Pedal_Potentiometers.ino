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
 
// CAN IDs  
const int CAN_POWER = 0x01;
const int CAN_DIRECTION = 0x02;
const int CAN_BRAKE = 0x03;
const int CAN_BRAKE_ERROR = 0x04;
const int CAN_ACCEL_ERROR = 0x05;
const int CAN_BMS_STATES = 0x07;
const int CAN_MOTOR = 0xC0;

// CAN info
unsigned char len = 0; // length of incoming data
unsigned char buf1[1]; // received data (1 byte)
unsigned char buf2[2]; // received data (2 bytes)
unsigned long canId;   // CAN id of incoming message
const unsigned char MOTOR_OFF[8] = {0,0,0,0,0,0,0,0}; // message to turn motor off
const unsigned char ACCEL_ERROR[4] = {'P', 0, 5, 00}; // error message of "Vehicle Speed Sensor Malfunction" 
const unsigned char BRAKE_ERROR[4] = {'P', 0, 5, 04}; // error message of "Brake Switch A / B Correlation"

const int SPI_CS_PIN = 10; // base CAN pin

// function declarations
void readPotentiometers();
void readSwitches();
void readStates();
void commandMessage(unsigned char message[8]);

MCP_CAN CAN(SPI_CS_PIN); // setup can device

/**
 * Start CAN and initialize digital pins
 */
void setup() {
  Serial.begin(115200); // Initializes Serial communication

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) { // specify 8MHz crystal
    Serial.println("CAN BUS init Failed"); // failure message
    delay(250); // delay, retry
  }
  Serial.println("CAN BUS Shield Init OK!"); // success message

  // Set brake light digital pins to act as inputs with built in pull-up resistors
  pinMode(BRAKE_PIN1, INPUT_PULLUP);
  pinMode(BRAKE_PIN2, INPUT_PULLUP);
}

/**
 * Continuoulsy read values of potentiometers, switches, and the dashboard
 */
void loop() {
  readStates();
  if (invertorOn) { // only read potentiometers when the inverter is on
    readPotentiometers();
  }
  readSwitches();
}

/**
 * Read the values of the two potentiometers
 * Compare them to make sure the values agree and send value to CAN
 */
void readPotentiometers() {
  accelPin1Val = analogRead(ACCEL_PIN1); 
  accelPin2Val = analogRead(ACCEL_PIN2);

  if (abs(accelPin1Val - accelPin2Val) <= (1024 * 0.1)) {
    int averageReading = (accelPin1Val + accelPin2Val) / 2;
    unsigned char byteReading = averageReading / 4;
    unsigned char message[8] = {byteReading,0,0,0,isForward,1,0,0};
    commandMessage(message); // send message to motor with torque and direction
  } else {  // turn off motor and send error message
    commandMessage(MOTOR_OFF);
    CAN.sendMsgBuf(CAN_ACCEL_ERROR, 0, 4, ACCEL_ERROR);
  }
}

/**
 * Read the values of the two switches
 * Compare them to make sure the values agree and send value to CAN
 */
void readSwitches() {
  brakePin1Val = digitalRead(BRAKE_PIN1);
  brakePin2Val = digitalRead(BRAKE_PIN2);

  if ((brakePin1Val == LOW) && (brakePin2Val == LOW)) {  // both switches are on
    CAN.sendMsgBuf(CAN_BRAKE, 0, 1, {1});
  } else if ((brakePin1Val == HIGH) && (brakePin2Val == HIGH)) { // both switches are off
    CAN.sendMsgBuf(CAN_BRAKE, 0, 1, {0});
  } else {  // error due to switches having different values
    CAN.sendMsgBuf(CAN_BRAKE_ERROR, 0, 4, BRAKE_ERROR);
  }
}

/*
 * readStates() reads the CAN messages from other parts of the car to set the following states:
 *  - CAN_POWER message is used to set the inverterOn state
 *  - CAN_DIRECTION message is used to set the isForward state
 *  - CAN_BMS_STATES message is used to set the dischargeEnabled and chargeEnabled states
 */
void readStates() {
  if(CAN_MSGAVAIL == CAN.checkReceive()) {   // if a new message has been recieved.
    canId = CAN.getCanId(); // gets sender ID

    if (canId == CAN_POWER) {
      CAN.readMsgBuf(&len, buf1);
      commandMessage(MOTOR_OFF); // turns motor off to release lockout or because switch is off
      invertorOn = buf1[0]; // set inverter state
    } else if (canId == CAN_DIRECTION) {
      CAN.readMsgBuf(&len, buf1);
      isForward = buf1[0]; // set direction state
    } else if (canId = CAN_BMS_STATES) {
      CAN.readMsgBuf(&len, buf2);
      dischargeEnabled = buf2[0] & 1;     // get first bit of first byte
      chargeEnabled = (buf2[0] >> 1) & 1; // get second bit of first byte 
    }
  }
}

/*
 * commandMessage() sends 8 byte array message to the motor (0xC0)
 */
void commandMessage(unsigned char message[8]) {
  CAN.sendMsgBuf(CAN_MOTOR, 0, 8, message);
}
