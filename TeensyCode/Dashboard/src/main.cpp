#include <Arduino.h>
#include <FlexCAN_T4.h>

#define BAUD_RATE 250000U // 250 kbps 
#define MAX_MB_NUM 16 // maximum number of CAN mailboxes to use 

// CAN IDs
#define MC_STATES_ID       0xAA
#define CAN_START_MOTOR_ID 0x101
#define CAN_DIRECTION_ID   0x102

// pin values
#define CAN_FAULT_LED      0
#define GENERAL_LED_2      1 // custom behavior 
#define GENERAL_LED_1      2 // custom behavior
#define ON_OFF_LED         3 // intergrated LED on the ON_OFF button
#define ON_OFF_BUTTON      4
#define SHUTDOWN_DETECTION 5 // shutdown circuit enable for if the car can run
#define DIRECTION_SWITCH   8
#define SPEAKER            9

const uint8_t ON[1] = {1}; // Message for turning inverter on
const uint8_t OFF[1] = {0}; // Message for turning inverter off
const uint8_t FORWARD[1] = {1}; // Message for setting inverter to forward
const uint8_t REVERSE[1] = {0}; // Message for setting inverter to reverse

bool shutdownVoltage = false;
uint32_t speakerCooldown = 0; // Use unsigned long to match millis() function. Will overflow in around 50 days.
uint32_t buttonCooldown = 0; // Use unsigned long to match millis() function. Will overflow in around 50 days.
bool state = false;
bool prevDirection = false;
bool prechargeComplete = false;

FlexCAN_T4<CAN1, RX_SIZE_256, TX_SIZE_16> myCan; // main CAN object


// function declarations
void onOff();
void changeDirection(bool justOn);
int sendMessage(uint32_t id, uint8_t len, const uint8_t *buf); 
void incomingCANCallback(const CAN_message_t &msg);


/**
 * @brief Initializes the serial console, brake light LED pin, and CAN bus
 * 
 */
void setup() {
  Serial.begin(115200); 
  delay(400);

  myCan.begin();
  myCan.setBaudRate(BAUD_RATE);
  myCan.setMaxMB(MAX_MB_NUM);
  myCan.enableFIFO(); 
  myCan.enableFIFOInterrupt(); 
  myCan.onReceive(incomingCANCallback);

  pinMode(CAN_FAULT_LED, OUTPUT); 
  pinMode(GENERAL_LED_2, OUTPUT); 
  pinMode(GENERAL_LED_1, OUTPUT); 
  pinMode(ON_OFF_LED, OUTPUT); 
  pinMode(ON_OFF_BUTTON, INPUT); 
  pinMode(SHUTDOWN_DETECTION, INPUT); 
  pinMode(DIRECTION_SWITCH, INPUT); 
  pinMode(SPEAKER, OUTPUT);
}


/**
 * @brief Continuoulsy reads incoming CAN messages and controls the state of dashboard I/O
 * 
 */
void loop() {
  myCan.events();

  if (prechargeComplete) { // Do nothing until precharge has been completed
    onOff();
    if (state) { // Only update pedal box if car is on.
      changeDirection(false);
    }
  }
}


/**
 * @brief Use the shutdown circuit detection, on/off button, and gear selection pin to determine the car's state (on or off)
 *        and direction. Car will only be ready to drive if shutdown circuit is detected. Speaker is turned on for 3 seconds
 *        or until car is turned off (whichever comes first).
 * 
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

  /* If the shutdown circuit is active, button cooldown has passed, and on/off button is pressed,
   * toggle state, reset button cooldown. If state is true, turn on speaker and tell pedal box
   * to turn on and the drive direction of the vehicle. If car was turned off, tell that to the pedal box. */
  if (shutdownVoltage && buttonCooldown < millis() && digitalRead(ON_OFF_BUTTON) == LOW) {
    state = !state;
    buttonCooldown = millis() + 500; // Set cooldown to 500ms (prevents triggering button multiple times with one press).
    
    if (state) { // When car is initially turned on.
      analogWrite(SPEAKER, 128);
      speakerCooldown = millis() + 3000;
      sendMessage(CAN_START_MOTOR_ID, 0, ON); // Tell pedal box to turn inverter on
      changeDirection(true);
    } else { // Car is turned off.
      sendMessage(CAN_START_MOTOR_ID, 1, OFF); // tell pedal box to turn inverter off
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
    sendMessage(CAN_DIRECTION_ID, 1, FORWARD); // tell pedal box to set inverter to forward
    prevDirection = true;
  } else {
    sendMessage(CAN_DIRECTION_ID, 1, REVERSE);// tell pedal box to set inverter to reverse
    prevDirection = false;
  }
}


/**
 * @brief Handles incoming CAN messages.
 * 
 * @param msg received CAN message
 */
void incomingCANCallback(const CAN_message_t &msg)
{
  if (msg.id == MC_STATES_ID) {
    prechargeComplete = (msg.buf[0] >> 4) & 1; // true if MC is in wait state 
  }
}


/**
 * @brief Sends a CAN message using the given parameters
 * 
 * @param id CAN id (assumed to be 11 bit)
 * @param len Length of message
 * @param buf Data buffer to send
 * @return int - Error code (Negative on failure, other on success)
 */
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