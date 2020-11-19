#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>

// potentiometer analog pins
int accelPin1 = A0; 
int accelPin2 = A1; 

// brake switch digital pins
int brakePin1 = 2;
int brakePin2 = 3;

// brake switch and potentiometer values
int accelPin1Val = 0; 
int accelPin2Val = 0;
int brakePin1Val;
int brakePin2Val;
 
// CAN stuff
const int CAN_BRAKE = 0x03;        // device's CAN id
const int CAN_MOTOR = 0xC0;        // device's CAN id
const int CAN_ACCEL_BROKE = 0x05;  // device error ID
const int CAN_BRAKE_BROKE = 0x04;  // device error ID

//Dashboard variables
unsigned char len = 0;  //length of the data in the buffer
unsigned char buf[1];  //received data (only 1 byte)
bool invertorOn = false;
bool isForward = true;

// readPotentiometers() variables
unsigned char forward[8] = {0,0,0,0,1,1,0,0};
unsigned char reverse[8] = {0,0,0,0,0,1,0,0};

const int SPI_CS_PIN = 10; // base CAN pin

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
  pinMode(brakePin1, INPUT_PULLUP);
  pinMode(brakePin2, INPUT_PULLUP);
}

/**
 * Continuoulsy read values of potentiometers and switches
 */
void loop() {
  readPotentiometers();
  readSwitches();
  readDashboard();
}

/**
 * Read the values of the two potentiometers
 * Compare them to make sure the values agree and send value to CAN
 */
void readPotentiometers() {
  accelPin1Val = analogRead(accelPin1); 
  accelPin2Val = analogRead(accelPin2);

  if (abs(accelPin1Val - accelPin2Val) <= (1024 * 0.1)) {
    int averageReading = (accelPin1Val + accelPin2Val) / 2;
    unsigned char byteReading = averageReading / 4;
    if (isForward) {     // send motor potentiometer values when going forward
      forward[0] = byteReading;
      CAN.sendMsgBuf(CAN_MOTOR, 0, 8, forward);
    }
    else {    // send motor potentiometer values when in reverse
      reverse[0] = byteReading;
      CAN.sendMsgBuf(CAN_MOTOR, 0, 8, reverse);
    }
  } 
  else {  //turn off motor and send error message
    unsigned char valueMessage[4] = {'P', 0, 5, 00};  //error message of "Vehicle Speed Sensor Malfunction" 
    CAN.sendMsgBuf(CAN_ACCEL_BROKE, 0, 4, valueMessage);
    MotorOff();
  }
}

/**
 * Read the values of the two switches
 * Compare them to make sure the values agree and send value to CAN
 */
void readSwitches() {
  brakePin1Val = digitalRead(brakePin1);
  brakePin2Val = digitalRead(brakePin2);

  if ((brakePin1Val == LOW) && (brakePin2Val == LOW)) {  // switches are on
    unsigned char valueMessage[1] = {1};
    CAN.sendMsgBuf(CAN_BRAKE, 0, 1, valueMessage); // send message that the switches are turned on
  } 
  else if (brakePin1Val != brakePin2Val) {  // sends error message if brake pins don't agree
    unsigned char valueMessage[4] = {'P', 0, 5, 04};  // error message of "Brake Switch A / B Correlation"
    CAN.sendMsgBuf(CAN_BRAKE_BROKE, 0, 4, valueMessage);
  }
  else {    // switches  are off
    unsigned char valueMessage[1] = {0};
    CAN.sendMsgBuf(CAN_BRAKE, 0, 1, valueMessage); // send message that the switches are turned off
  }
}

/*
 * readDashboard() receives two can ID's for motor on/off, and forward/reverse in order to be used in other functions.
 * 0x01 holds the message whether the motor is on/off and stores the value in a global boolean variable - invertorOn.
 * 0x02 holds the message whether in forward/reverse and stores the value in a global boolean variable - isForward.
 */

void readDashboard() {
    if(CAN_MSGAVAIL == CAN.checkReceive()) {   // if a new message has been recieved. 
      CAN.readMsgBuf(&len, buf); // enters message into program
      canId = CAN.getCanId(); // gets sender ID
     if (canID == 0x01) {  // determine whether Dashboard is on or off
      MotorOff();
      if (buf[0] == 0) {  // motor is off
       invertorOn = false;
      } else if (buf[0] == 1) {  // motor is on
       invertorOn = true;
      }
     } else if (canID == 0x02) {  // determine whether forward or reverse
      if (buf[0] == 0) {
       isForward = false;
      } else if (buf[0] == 1) {
       isForward = true;
      }
     }
    }
}

/*
 * MotorOff() sends 8 byte array message to the motor (0xC0) of all zeros turning off the motor
 */

void MotorOff() {
  unsigned char valueMessage[8] = {0,0,0,0,0,0,0,0};
  CAN.sendMsgBuf(CAN_MOTOR, 0, 8, valueMessage);
}
 
