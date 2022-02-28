#include <TinyGPS++.h>
#include <AltSoftSerial.h>

// AltSoftSerial always uses these pins:
// Board          Transmit  Receive   PWM Unusable
// -----          --------  -------   ------------
// Arduino Uno        9         8         10

AltSoftSerial altSerial;
TinyGPSPlus gps;

void setup() {
  Serial.begin(9600);
  while (!Serial) ; // wait for Arduino Serial Monitor to open
  Serial.println("AltSoftSerial Test Begin");
  altSerial.begin(9600);
  altSerial.println("Hello World");
}


void loop() {
  if (altSerial.available()) {
    //Serial.println("Data received");
    gps.encode(altSerial.read());
    //Serial.println();

    //if (gps.location.isUpdated()) {
    static unsigned long curTime = millis();
    if (millis() - curTime > 1000) {
       Serial.print("Lat: ");
      Serial.println(gps.location.lat(), 6);
      Serial.print("Lon: ");
      Serial.println(gps.location.lng(), 6);
       curTime = millis();
    }

    
  }
}
