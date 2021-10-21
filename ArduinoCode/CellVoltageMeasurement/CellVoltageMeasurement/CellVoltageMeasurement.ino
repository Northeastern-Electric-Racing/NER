float sense1;
float sense2;
float voltage1;
float voltage2;
float x;
//const int ainput2 = 10;
void setup()
{
  Serial.begin(9600);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  // pinMode(ainput2, INPUT);
  sense1 = 0;
  sense2 = 0;
  x = 0;
}

void loop()
{
  // put your main code here, to run repeatedly:
  if (millis() >= (x))
  {
    sense1 = analogRead(A0);
    sense2 = analogRead(A1);

    voltage1 = sense1 * (5.0 / 1024.0) + .1;
    voltage2 = sense2 * (5.0 / 1024.0) + .1;

    Serial.print(voltage1);
    Serial.print("\t");
    Serial.print(voltage2);
    Serial.print("\t");
    Serial.print(millis());
    Serial.println("");

    x += 1000;
  }


  //delay(1000);
}
