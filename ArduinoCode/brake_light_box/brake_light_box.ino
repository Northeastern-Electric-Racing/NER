/*
 ** MOSI - pin 11
 ** MISO - pin 12
 ** CLK - pin 13
 ** SD CARD SS - pin 10
   CAN MODULE SS - pin 9

   keeps CAN module active by default, deactivates it to write to sd card

   an I2C RTC module can be added to log time when logging data to SD card

   SD card may take a few hundred ms to write? CAN module may miss messages during that time. SD card latency depends on how much is being written?
*/
#include <mcp_can.h> // uses seeed-studio's CAN_BUS_Shield library
#include <mcp_can_dfs.h>
#include <SPI.h>
#include <SD.h>

#define SD_SS_PIN 10
#define CAN_SS_PIN 9
#define BRAKE_LIGHT_PIN 6 // does not have to be PWM

File myFile;
MCP_CAN CAN(CAN_SS_PIN);

unsigned char len = 0; //length of incoming message
unsigned char buf[8]; //memory for incoming message
int canId;

void setup() {
  Serial.begin(9600);

  pinMode(SD_SS_PIN, OUTPUT);
  pinMode(CAN_SS_PIN, OUTPUT);

  digitalWrite(SD_SS_PIN, HIGH); // disable SD module
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) { //specify 8MHz crystal
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");

  pinMode(BRAKE_LIGHT_PIN, OUTPUT);

  //  // re-open the file for reading:
  //  myFile = SD.open("test.txt");
  //  if (myFile) {
  //    Serial.println("test.txt:");
  //
  //    // read from the file until there's nothing else in it:
  //    while (myFile.available()) {
  //      Serial.write(myFile.read());
  //    }
  //    // close the file:
  //    myFile.close();
  //  } else {
  //    // if the file didn't open, print an error:
  //    Serial.println("error opening test.txt");
  //  }
}

bool SDWrite(String s) { // unsigned char array converted to a string
  Serial.print("Initializing SD card...");

  digitalWrite(CAN_SS_PIN, HIGH); // disable CAN module
  digitalWrite(SD_SS_PIN, LOW); // enable SD module

  if (!SD.begin(SD_SS_PIN)) {
    Serial.println("initialization failed!");
    digitalWrite(SD_SS_PIN, HIGH); // disable SD module
    digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
    return false;
  }
  Serial.println("initialization done.");

  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  myFile = SD.open("test.txt", FILE_WRITE);

  // if the file opened okay, write to it:
  if (myFile) {
    Serial.print("Writing to test.txt...");
    myFile.println(s);
    // close the file:
    myFile.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening test.txt");
    digitalWrite(SD_SS_PIN, HIGH); //disable SD module
    digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
    return false;
  }

  digitalWrite(SD_SS_PIN, HIGH); // disable SD module
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
}

bool CANWrite(unsigned char msg[]) {
  digitalWrite(SD_SS_PIN, HIGH); // disable sd card
  digitalWrite(CAN_SS_PIN, LOW); // enable CAN module
  CAN.sendMsgBuf(0x02, 0, 1, msg); // send CAN message
}

void loop() {
  if (CAN_MSGAVAIL == CAN.checkReceive()) //if a new message has been recieved.
  {
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID

    if (canId == 0x03) { // from pedal box
      digitalWrite(BRAKE_LIGHT_PIN, buf[0]); // either 0 or 1
    } else if (canId == 0x04) { // brake light error msg
      SDWrite(buf);
    } else if (canId == 0x05) { // pot error msg
      SDWrite(buf);
    }
  }

}
