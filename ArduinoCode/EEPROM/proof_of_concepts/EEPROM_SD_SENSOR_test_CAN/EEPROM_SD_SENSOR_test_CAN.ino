/*
 * Author: Nick DePatie
 * Last Updated: 19 November 2021
 */


#include <EEPROM.h>
#include <SD.h>
#include <mcp_can.h> // uses seeed-studio's CAN_BUS_Shield library

/*
 * Note that seeed-studio's CAN_BUS_Shield library was updated, so the library must be pulled from here
 * https://github.com/Seeed-Studio/Seeed_Arduino_CAN/tree/old
 * Or install version 1.0.0 in the Arduino Library Manager
 */

//EEPROM variables
int address = 0;                           //current address of EEPROM
int sensor_param_location = 1,
    LED_pin_location = 0,
    sensor_param;                          //location of the sensor parameter on EEPROM


//SD card variables
File myFile;                                                      

//Ultrasonic Distance Sensor Variables
float echoTime, calculatedDistance;

//basic pin variables
static const int trig   = 6, 
                 echo   = 5, 
                 SDout  = 3;     //pin numbers
int LED;

//CAN variables
const int spiCSPin = 10; // Base CAN pin
MCP_CAN CAN(spiCSPin);  // Set CS pin

unsigned char len = 0;  // length of incoming data
unsigned char buf[8];   // received data
unsigned long canId;    // CAN id of incoming messages

//Startup bool to only initialize node once
bool startup = 0;

/*****************************************************************************************************/

void setup(){
  if(startup == 0){
     
    //establish a serial connection
    Serial.begin(9600);
    
    //Initializes the SD card and makes sure an SD card is present
      if (!SD.begin(SDout)) {
        Serial.println("initialization failed!");
        while(1){}
      }
      Serial.println("initialization done.");
      SDWrite<String>("SD Card Intitialized!", "intitializing CAN Bus...");        //Gives an indication that the SD Card is ready
    
    
    //Initializes the CAN Bus to make sure a connection can be established
    while (CAN_OK != CAN.begin(CAN_250KBPS, MCP_8MHz)) {                 //specify 8MHz crystal
        Serial.println("CAN BUS init Failed");
        while(1){}
      }
      SDWrite<String>("CAN Bus Intitialized!", "logging data...");                 //Gives an indication that the CAN Bus is ready
    

    startup = 1;
    }

    
  EEPROM.write(sensor_param_location,10);    //write values to EEPROM (Will not be in main code in reality)
  EEPROM.write(LED_pin_location, 7);          

  LED = EEPROM.read(LED_pin_location);                    //reads LED pin value from EEPROM
  sensor_param = EEPROM.read(sensor_param_location);      //reading parameter value from EEPROM
  pinMode(LED,OUTPUT);
  pinMode(SDout,OUTPUT);
  pinMode(trig,OUTPUT);
  pinMode(echo,INPUT);

}

/*****************************************************************************************************/
/*****************************************************************************************************/

void loop(){
  
  //send out an ultrasonic pulse that's 10ms long
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  echoTime = pulseIn(echo, HIGH);                          //use the pulsein command to see how long it takes for the pulse to bounce back to the sensor
  calculatedDistance = echoTime / 148.0;                   //calculate the distance of the object that reflected the pulse (half the bounce time multiplied by the speed of sound)

  SDWrite<int>("Distance",calculatedDistance); 

  if(calculatedDistance<sensor_param){
    digitalWrite(LED,HIGH);
    SDWrite<String>("ALERT!!","Object Detected within specified parameters");
  }else{
    digitalWrite(LED,LOW);
    }

  if(CAN_MSGAVAIL == CAN.checkReceive()) //if a new message has been recieved. 
    {
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID
    
    if(canId == 0x00){
      canNode_configReceive(buf);
      }
    }
  
  delay(500);
}

/*****************************************************************************************************/

//This section writes to the SD card the data received

template <class T> void SDWrite(String SDdata_label,T SDdata) {
  
  myFile = SD.open("data.txt", FILE_WRITE);                       //create data file
 
  // if the file opened okay, write to it:
  
  if (myFile) {
    
    //printing the longitude
    myFile.print(SDdata_label+":    ");
    myFile.println(SDdata);

  // close the file:
    myFile.close();
    
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening test.txt");
  }
  
}

/*****************************************************************************************************/

//This section sends out a test configuration message that configures the parameters of other CAN nodes

void canNode_configSend(char configmsg[8]){
  
  CAN.sendMsgBuf(0x01, CAN_STDID, 8, configmsg); //send config message
  delay(100);
  
}

void canNode_configReceive(char configmsg[8]){

  SDWrite<String>("Reconfiguring Node", "saving data to EEPROM");
  EEPROM.write(LED_pin_location, configmsg[0]);         //reconfigure EEPROM values
  EEPROM.write(sensor_param_location, configmsg[1]);
  setup();      //restart the setup of the Node, reassigning values as needed
  
}
