// Author: Joshua Cheng
// Date: November 3, 2020

#include <mcp_can.h> // uses seeed-studio's CAN_BUS_Shield library
#include <mcp_can_dfs.h>
#include <SPI.h>

const int spiCSPin = 10; // Base CAN pin
MCP_CAN CAN(spiCSPin); // Set CS pin

const unsigned char ON[1] = {1}; // Message for turning inverter on
const unsigned char OFF[1] = {0}; // Message for turning inverter off
const unsigned char FORWARD[1] = {1}; // Message for setting inverter to forward
const unsigned char REVERSE[1] = {0}; // Message for setting inverter to reverse

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
long speakerCooldown = 0;
long buttonCooldown = 0;
bool state = false;

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

/**
    On/off button with RTDS. IMD, BMS indicators. On/off, forward/reverse signals send to CAN

    Will only set vehicle to "ready to drive" if shutdown circuit is enabled and button is pressed.
    Button LED is activated when shutdown circuit is detected. Speaker will activate for 3 seconds when
    the vehicle becomes "ready to drive".
*/
void loop() {
  // Turns IMD indicator on or off depending on if IMD_INPUT_PIN detects a voltage.
  if (digitalRead(IMD_INPUT_PIN)) {
    digitalWrite(IMD_INDICATOR_PIN, HIGH);
  } else {
    digitalWrite(IMD_INDICATOR_PIN, LOW);
  }
  // Turns BMS indicator on or off depending on if BMS_INPUT_PIN detects a voltage.
  if (digitalRead(BMS_INPUT_PIN)) {
    digitalWrite(BMS_INDICATOR_PIN, HIGH);
  } else {
    digitalWrite(BMS_INDICATOR_PIN, LOW);
  }

  shutdownVoltage = digitalRead(SHUTDOWN_DETECTION_PIN); // Detects if shutdown circuit is active (5v divided from 12v).

  // If shutdown circuit is active, turn on the LED. Otherwise, turn LED and speaker off, and set state to off
  if (shutdownVoltage) {
    digitalWrite(BUTTON_LED_PIN, HIGH);
  } else {
    digitalWrite(BUTTON_LED_PIN, LOW);
    state = 0;
    speakerCooldown = millis();
  }

  // Turns speaker off once cooldown is passed or state is false.
  if (speakerCooldown < millis() || !state) {
    // Serial.println("Speaker Off");
    analogWrite(SPEAKER_PIN, 0);
  }

  /* If the shutdown circuit is active, button cooldown has passed, and button is pressed,
     toggle state, reset button cooldown. If state is true, turn on speaker.
  */
  if (shutdownVoltage && buttonCooldown < millis() && digitalRead(BUTTON_PIN) == LOW) {
    state = !state;
    buttonCooldown = millis() + 500; // Set cooldown to 500ms (prevents triggering button multiple times with one press).
    if (state) {
      analogWrite(SPEAKER_PIN, 128);
      // Serial.println("Speaker On");
      speakerCooldown = millis() + 3000;
    }
  }

  if (state) {
    CAN.sendMsgBuf(0x01, 0, 1, ON); // tell pedal box to turn inverter on
  } else {
    CAN.sendMsgBuf(0x01, 0, 1, OFF); // tell pedal box to turn inverter off
  }

  if (digitalRead(GEAR_SELECTOR_PIN)) {
    CAN.sendMsgBuf(0x02, 0, 1, FORWARD); // tell pedal box to set inverter to forward
  } else {
    CAN.sendMsgBuf(0x02, 0, 1, REVERSE); // tell pedal box to set inverter to reverse
  }

  // - - - - - - - - - - - - - - - Below is debug stuff - - - - - - - - - - - - - - - - - - - -
//  String s = "off";
//  if (state) {
//    s = "on";
//  }
//  Serial.println("STATE: " + s + "  |  Shutdown Circuit Detection: " + String(shutdownVoltage));
}
