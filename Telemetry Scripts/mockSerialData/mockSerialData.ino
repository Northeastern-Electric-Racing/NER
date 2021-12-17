
unsigned long startTime;
unsigned long currentTime;
int potValue;


void setup() {
  Serial.begin(9600);
  startTime = millis();
  
}

void loop() {
  currentTime = millis() - startTime;
  potValue    = analogRead(A0); 
  
  
  Serial.print(potValue);
  Serial.print(",");
  Serial.print(currentTime);
  Serial.print("\n");

  delay(150); // send every 50 ms

}
