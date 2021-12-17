// Author: Joshua Cheng
// Date: November 3, 2020

#include <mcp_can.h> // uses seeed-studio's CAN_BUS_Shield library


#define CAN_FAULT_LED      0
#define GENERAL_LED_2      1 // custom behavior 
#define GENERAL_LED_1      2 // custom behavior
#define ON_OFF_LED         3 // intergrated LED on the ON_OFF button
#define ON_OFF_BUTTON      4
#define SHUTDOWN_DETECTION 5 // shutdown circuit enable for if the car can run
#define DIRECTION_SWITCH   8
#define SPEAKER            9

const int spiCSPin = 10; // Base CAN pin
MCP_CAN CAN(spiCSPin); // Set CS pin

const unsigned char ON[] = {1}; // Message for turning inverter on
const unsigned char OFF[] = {0}; // Message for turning inverter off
const unsigned char FORWARD[] = {1}; // Message for setting inverter to forward
const unsigned char REVERSE[] = {0}; // Message for setting inverter to reverse

unsigned char len = 0; // length of incoming data
unsigned char buf[8];  // received data
unsigned long canId;   // CAN id of incoming messages

bool shutdownVoltage = false;
unsigned long speakerCooldown = 0; // Use unsigned long to match millis() function. Will overflow in around 50 days.
unsigned long buttonCooldown = 0; // Use unsigned long to match millis() function. Will overflow in around 50 days.
bool state = false;
bool prevDirection = false;
bool prechargeComplete = false;

/**
 * Sets relavent pins to output or input, initializes serial for debugging, initializes CAN.
 */
void setup() {
  Serial.begin(115200);

  pinMode(CAN_FAULT_LED, OUTPUT); 
  pinMode(GENERAL_LED_2, OUTPUT); 
  pinMode(GENERAL_LED_1, OUTPUT); 
  pinMode(ON_OFF_LED, OUTPUT); 
  pinMode(ON_OFF_BUTTON, INPUT); 
  pinMode(SHUTDOWN_DETECTION, INPUT); 
  pinMode(DIRECTION_SWITCH, INPUT); 
  pinMode(SPEAKER, OUTPUT);
  
  while (CAN_OK != CAN.begin(CAN_250KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");
}


void checkMCStates();
void onOff();
void changeDirection();

void loop() {
  if (!prechargeComplete) { // Do nothing until precharge has been completed
    checkMCStates();
  } else { // Run normally once precharge completed
    onOff();
    if (state) { // Only update pedal box if car is on.
      changeDirection(false);
    }
  }
}

/**
 * Receives the motor controller state broadcast message in order to recognize when 
 * precharge has been completed and the driver can use the start button
 */
void checkMCStates() {
  if (CAN_MSGAVAIL == CAN.checkReceive()) {
    CAN.readMsgBuf(&len, buf);
    canId = CAN.getCanId(); // gets sender ID

    if (canId == 0xAA) {
      prechargeComplete = (buf[0] >> 4) & 1; // true if MC is in wait state 
    }
  }
}

/**
 * Use the shutdown circuit detection, on/off button, and gear selection pin to determine the car's state (on or off)
 * and direction. Car will only be ready to drive if shutdown circuit is detected. Speaker is turned on for 3 seconds
 * or until car is turned off (whichever comes first).
 */
void onOff() {
  shutdownVoltage = digitalRead(SHUTDOWN_DETECTION); // Detects if shutdown circuit is active (5v divided from 12v).

  // If shutdown circuit is active, turn on the LED. Otherwise, turn LED and speaker off, and set state to off
  if (shutdownVoltage) {
    digitalWrite(ON_OFF_LED, HIGH);
  } else {
    digitalWrite(ON_OFF_LED, LOW);
    state = 0;
    speakerCooldown = millis() + 1;
  }

  // Turns speaker off once cooldown is passed or state is false.
  if (speakerCooldown < millis() || !state) {
    analogWrite(SPEAKER, 0);
  }

  /* If the shutdown circuit is active, button cooldown has passed, and button is pressed,
   * toggle state, reset button cooldown. If state is true, turn on speaker and tell pedal box
   * to turn on and the drive direction of the vehicle. If car was turned off, tell that to the pedal box.
   */
  if (shutdownVoltage && buttonCooldown < millis() && digitalRead(ON_OFF_BUTTON) == LOW) {
    state = !state;
    buttonCooldown = millis() + 500; // Set cooldown to 500ms (prevents triggering button multiple times with one press).
    if (state) { // Car is turned on.
      analogWrite(SPEAKER, 128);
      speakerCooldown = millis() + 3000;
      CAN.sendMsgBuf(0x101, 0, 1, ON); // Tell pedal box to turn inverter on
      changeDirection(true);
    } else { // Car is turned off.
      CAN.sendMsgBuf(0x101, 0, 1, OFF); // tell pedal box to turn inverter off
    }
  }
}

/**
 * Tells pedal box the forward/reverse direction. Only sends message when there is a change or when car is just turned on.
 */
void changeDirection(bool justOn) {
  if (!justOn && prevDirection == digitalRead(DIRECTION_SWITCH)) {
    return;
  }
  if (digitalRead(DIRECTION_SWITCH)) {
    CAN.sendMsgBuf(0x102, 0, 1, FORWARD); // tell pedal box to set inverter to forward
    prevDirection = true;
  } else {
    CAN.sendMsgBuf(0x102, 0, 1, REVERSE); // tell pedal box to set inverter to reverse
    prevDirection = false;
  }
}
