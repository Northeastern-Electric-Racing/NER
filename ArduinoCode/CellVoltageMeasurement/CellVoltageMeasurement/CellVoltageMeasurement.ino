float sense1;
float sense2;
float sense3;
float voltage1;
float voltage2;
float voltage3;
float t;
float x;

void setup()
{
  Serial.begin(9600);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  sense1 = 0;
  sense2 = 0;
  sense3 = 0;
  x = 0;
  Serial.println("Time\tVolt 1\tVolt 2\tVolt 3");
}

void loop()
{
  // put your main code here, to run repeatedly:
  if (millis() >= (x))
  {
    t = millis();
    sense1 = analogRead(A0);
    sense2 = analogRead(A1);
    sense3 = analogRead(A1);

    voltage1 = sense1 * (5.0 / 1024.0) + .14;
    voltage2 = sense2 * (5.0 / 1024.0) + .14;
    voltage3 = sense3 * (5.0 / 1024.0) + .14;

    Serial.println(String(t / 1000, 0) + "\t" + String(voltage1) + "\t" + String(voltage2) + "\t" + String(voltage3));

    x += 1000;
  }
}
