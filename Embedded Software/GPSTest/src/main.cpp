#include <Arduino.h>
#include <TinyGPSPlus.h>

TinyGPSPlus gps;


void setup() {
  Serial.begin(115200); 
  Serial1.begin(9600); // GPS serial port
  delay(400);

}


void loop() {
  if (Serial1.available()){
    gps.encode(Serial1.read());

    double latitude = gps.location.lat();
    double longtitude = gps.location.lng();
    double speed = gps.speed.mph();

    // TODO: Print data
  }
}
