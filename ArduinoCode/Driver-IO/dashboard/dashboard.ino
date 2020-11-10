// Author: Joshua Cheng
// Date: November 3, 2020

#include <mcp_can.h> // uses seeed-studio's CAN_BUS_Shield library
#include <mcp_can_dfs.h>
#include <SPI.h>

const int spiCSPin = 10; // Base CAN pin
MCP_CAN CAN(spiCSPin); // Set CS pin

const unsigned char ON[] = {1}; // Message for turning inverter on
const unsigned char OFF[] = {0}; // Message for turning inverter off
const unsigned char FORWARD[] = {1}; // Message for setting inverter to forward
const unsigned char REVERSE[] = {0}; // Message for setting inverter to reverse

const int SHUTDOWN_DETECTION_PIN = 2; // Pin for detecting shutdown system voltage.
const int BUTTON_PIN = 3; // Pin for on/off button.
const int GEAR_SELECTOR_PIN = 4; // Pin for forward/reverse selector
const int IMD_INPUT_PIN = 5; // Pin for detecting IMD status
const int BMS_INPUT_PIN = 6; // Pin for detecting BMS status

const int IMD_INDICATOR_PIN = 8; // Pin for IMD indicator
const int BMS_INDICATOR_PIN = 9; // Pin for BMS indicator
const int BUTTON_LED_PIN = 11; // Pin for integrated LED on the button.
const int SPEAKER_PIN = 10; // Pin for speaker or relay for speaker (must be pwm pin).

bool shutdownVoltage = false;
unsigned long speakerCooldown = 0; // Use unsigned long to match millis() function. Will overflow in around 50 days.
unsigned long buttonCooldown = 0; // Use unsigned long to match millis() function. Will overflow in around 50 days.
bool state = false;
bool prevDirection = false;

/**
    Sets relavent pins to output or input, initializes serial for debugging, initializes CAN.
*/
void setup() {
  Serial.begin(115200);

  pinMode(BUTTON_PIN, INPUT_PULLUP); // Uses built-in pullup resistor.
  pinMode(GEAR_SELECTOR_PIN, INPUT_PULLUP); // Uses built-in pullup resistor.

  pinMode(IMD_INDICATOR_PIN, OUTPUT);
  pinMode(BMS_INDICATOR_PIN, OUTPUT);
  pinMode(SPEAKER_PIN, OUTPUT);
  pinMode(BUTTON_LED_PIN, OUTPUT);

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");
}

void imdDetection();

void bmsDetection();

bool forwardReverse();

void onOff();

void changeDireciton();

void loop() {
  imdDetection();
  bmsDetection();
  onOff();
  changeDirection();
}

/**
   Turns IMD indicator on or off depending on if IMD_INPUT_PIN detects a voltage.
*/
void imdDetection() {
  if (digitalRead(IMD_INPUT_PIN)) {
    digitalWrite(IMD_INDICATOR_PIN, HIGH);
  } else {
    digitalWrite(IMD_INDICATOR_PIN, LOW);
  }
}

/**
   Turns BMS indicator on or off depending on if BMS_INPUT_PIN detects a voltage.
*/
void bmsDetection() {
  if (digitalRead(BMS_INPUT_PIN)) {
    digitalWrite(BMS_INDICATOR_PIN, HIGH);
  } else {
    digitalWrite(BMS_INDICATOR_PIN, LOW);
  }
}

/**
   Use the shutdown circuit detection, on/off button, and gear selection pin to determine the car's state (on or off)
   and direction. Car will only be ready to drive if shutdown circuit is detected. Speaker is turned on for 3 seconds
   or until car is turned off (whichever comes first).
*/
void onOff() {
  shutdownVoltage = digitalRead(SHUTDOWN_DETECTION_PIN); // Detects if shutdown circuit is active (5v divided from 12v).

  // If shutdown circuit is active, turn on the LED. Otherwise, turn LED and speaker off, and set state to off
  if (shutdownVoltage) {
    digitalWrite(BUTTON_LED_PIN, HIGH);
  } else {
    digitalWrite(BUTTON_LED_PIN, LOW);
    state = 0;
    speakerCooldown = millis() + 1;
  }

  // Turns speaker off once cooldown is passed or state is false.
  if (speakerCooldown < millis() || !state) {
    analogWrite(SPEAKER_PIN, 0);
  }

  /* If the shutdown circuit is active, button cooldown has passed, and button is pressed,
     toggle state, reset button cooldown. If state is true, turn on speaker and tell pedal box
     to turn on and the drive direction of the vehicle. If car was turned off, tell that to the pedal box.
  */
  if (shutdownVoltage && buttonCooldown < millis() && digitalRead(BUTTON_PIN) == LOW) {
    state = !state;
    buttonCooldown = millis() + 500; // Set cooldown to 500ms (prevents triggering button multiple times with one press).
    if (state) { // Car is turned on.
      analogWrite(SPEAKER_PIN, 128);
      speakerCooldown = millis() + 3000;
      CAN.sendMsgBuf(0x01, 0, 1, ON); // Tell pedal box to turn inverter on
      if (digitalRead(GEAR_SELECTOR_PIN)) { // Send direction to pedal box when car is turned on.
        CAN.sendMsgBuf(0x02, 0, 1, FORWARD);
      } else {
        CAN.sendMsgBuf(0x02, 0, 1, REVERSE);
      }
    } else { // Car is turned off.
      CAN.sendMsgBuf(0x01, 0, 1, OFF); // tell pedal box to turn inverter off
    }
  }
}

/**
   Tells pedal box the forward/reverse direciton. Only sends message when there is a change.
*/
void changeDirection() {
  if (prevDirection != digitalRead(GEAR_SELECTOR_PIN)) {
    if (digitalRead(GEAR_SELECTOR_PIN)) {
      CAN.sendMsgBuf(0x02, 0, 1, FORWARD); // tell pedal box to set inverter to forward
    } else {
      CAN.sendMsgBuf(0x02, 0, 1, REVERSE); // tell pedal box to set inverter to reverse
    }
  }
}
