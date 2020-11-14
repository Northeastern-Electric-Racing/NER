EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "BMS Control Board"
Date "2020-11-14"
Rev "2"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 "Connections for CAN, Power, Ground. Quick connect ground to chassis."
Comment4 "Relays to control BMS charge power, GLV charge power and pump."
$EndDescr
Text GLabel 1400 1950 2    50   Input ~ 0
BMSFault
Text GLabel 1400 2250 2    50   Input ~ 0
CANS_Main
Text GLabel 1400 2150 2    50   Input ~ 0
CANL_Main
Text GLabel 1400 1600 2    50   Input ~ 0
GLV_BMSContainer
Text GLabel 1400 2950 2    50   Input ~ 0
ChargerGND
Text GLabel 1400 3050 2    50   Input ~ 0
ChargerSupply12V
Text GLabel 1400 3400 2    50   Input ~ 0
ChargerSafety
Text GLabel 1400 3500 2    50   Input ~ 0
CANH_Chrg
Text GLabel 1400 3600 2    50   Input ~ 0
CANL_Chrg
Text GLabel 1400 3700 2    50   Input ~ 0
CANS_Chrg
Text GLabel 1400 4400 2    50   Input ~ 0
GLV_PreBRB
Text GLabel 1400 4500 2    50   Input ~ 0
ToPump
Text GLabel 1400 5300 2    50   Input ~ 0
ThermExIn12V
Text GLabel 1400 5200 2    50   Input ~ 0
ThermExGND
Text GLabel 1400 5650 2    50   Input ~ 0
CANH_Thrm
Text GLabel 1400 5750 2    50   Input ~ 0
CANL_Thrm
Text GLabel 1400 5850 2    50   Input ~ 0
CANS_Thrm
Text GLabel 1400 2050 2    50   Input ~ 0
CANH_Main
Text GLabel 9750 2350 0    50   Input ~ 0
CANS_BMS
Text GLabel 9750 2250 0    50   Input ~ 0
CANL_BMS
Text GLabel 9750 2150 0    50   Input ~ 0
CANH_BMS
Text GLabel 9750 1400 0    50   Input ~ 0
BMSGND
Text GLabel 9750 2450 0    50   Input ~ 0
Charge_Safety
Text GLabel 9750 1500 0    50   Input ~ 0
PWR_Ready
Text GLabel 9750 1600 0    50   Input ~ 0
PWR_Charge
Wire Notes Line
	1250 1000 1250 6250
Wire Notes Line
	9950 1000 9950 6250
Text GLabel 9750 1950 0    50   Input ~ 0
MP_EN
Text Notes 4550 850  0    118  Italic 24
BMS Relay and Control PCB\n
Wire Notes Line
	1250 1000 9950 1000
Wire Notes Line
	1250 6250 9950 6250
$Comp
L Relay:G5Q-1A K2
U 1 1 5FB1F228
P 4150 4700
F 0 "K2" V 4550 4700 50  0000 C CNN
F 1 "Relay_NO" V 4650 4700 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 4500 4650 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 4150 4700 50  0001 C CNN
	1    4150 4700
	0    1    1    0   
$EndComp
Text GLabel 8350 5850 2    50   Input ~ 0
CANS_Main
Text GLabel 8350 5700 2    50   Input ~ 0
CANL_Main
Text GLabel 8350 5550 2    50   Input ~ 0
CANH_Main
Text GLabel 8350 4900 2    50   Input ~ 0
CANH_Thrm
Text GLabel 8350 5050 2    50   Input ~ 0
CANL_Thrm
Text GLabel 8350 5200 2    50   Input ~ 0
CANS_Thrm
Text GLabel 8350 4200 2    50   Input ~ 0
CANH_Chrg
Text GLabel 8350 4350 2    50   Input ~ 0
CANL_Chrg
Text GLabel 8350 4500 2    50   Input ~ 0
CANS_Chrg
Text GLabel 8350 3850 2    50   Input ~ 0
CANS_BMS
Text GLabel 8350 3700 2    50   Input ~ 0
CANL_BMS
Text GLabel 8350 3550 2    50   Input ~ 0
CANH_BMS
Wire Wire Line
	8350 3850 8150 3850
Wire Wire Line
	8150 3850 8150 4500
Wire Wire Line
	8150 4500 8350 4500
Wire Wire Line
	8150 4500 8150 5200
Wire Wire Line
	8150 5200 8350 5200
Connection ~ 8150 4500
Wire Wire Line
	8150 5200 8150 5850
Wire Wire Line
	8150 5850 8350 5850
Connection ~ 8150 5200
Wire Wire Line
	8350 3700 8000 3700
Wire Wire Line
	8000 3700 8000 4350
Wire Wire Line
	8000 4350 8350 4350
Wire Wire Line
	8000 4350 8000 5050
Wire Wire Line
	8000 5050 8350 5050
Connection ~ 8000 4350
Wire Wire Line
	8000 5050 8000 5700
Wire Wire Line
	8000 5700 8350 5700
Connection ~ 8000 5050
Wire Wire Line
	8350 3550 7850 3550
Wire Wire Line
	7850 3550 7850 4200
Wire Wire Line
	7850 4200 8350 4200
Wire Wire Line
	7850 4200 7850 4900
Wire Wire Line
	7850 4900 8350 4900
Connection ~ 7850 4200
Wire Wire Line
	7850 4900 7850 5550
Wire Wire Line
	7850 5550 8350 5550
Connection ~ 7850 4900
Text GLabel 5700 5650 0    50   Input ~ 0
ChargerSafety
Text GLabel 5850 5650 2    50   Input ~ 0
Charge_Safety
Wire Wire Line
	5700 5650 5850 5650
Text GLabel 5850 5750 2    50   Input ~ 0
MP_EN
Text GLabel 5700 5750 0    50   Input ~ 0
BMSFault
Wire Wire Line
	5700 5750 5850 5750
Text GLabel 6900 4450 0    50   Input ~ 0
GLV_BMSContainer
Text GLabel 7100 4600 2    50   Input ~ 0
ThermExIn12V
Wire Wire Line
	6900 4450 7000 4450
Wire Wire Line
	7100 4600 7000 4600
Wire Wire Line
	7000 4600 7000 4450
Text GLabel 6550 4800 0    50   Input ~ 0
ChassisGND
Text GLabel 6750 4950 2    50   Input ~ 0
ChargerGND
Text GLabel 6750 5100 2    50   Input ~ 0
ThermExGND
Text GLabel 6750 5250 2    50   Input ~ 0
BMSGND
$Comp
L power:GND #PWR04
U 1 1 5FB0F301
P 6650 5750
F 0 "#PWR04" H 6650 5500 50  0001 C CNN
F 1 "GND" H 6655 5577 50  0000 C CNN
F 2 "" H 6650 5750 50  0001 C CNN
F 3 "" H 6650 5750 50  0001 C CNN
	1    6650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4800 6650 4800
Wire Wire Line
	6650 4800 6650 4950
Wire Wire Line
	6750 5250 6650 5250
Wire Wire Line
	6750 5100 6650 5100
Connection ~ 6650 5100
Wire Wire Line
	6650 5100 6650 5250
Wire Wire Line
	6750 4950 6650 4950
Connection ~ 6650 4950
Wire Wire Line
	6650 4950 6650 5100
Connection ~ 8150 5850
Wire Notes Line
	2500 1250 2500 6000
Text GLabel 3850 4900 0    50   Input ~ 0
ChargerSupply12V
Text GLabel 4450 4900 2    50   Input ~ 0
PWR_Charge
$Comp
L power:GND #PWR02
U 1 1 5FB4371C
P 4500 4500
F 0 "#PWR02" H 4500 4250 50  0001 C CNN
F 1 "GND" H 4505 4327 50  0000 C CNN
F 2 "" H 4500 4500 50  0001 C CNN
F 3 "" H 4500 4500 50  0001 C CNN
	1    4500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5FB45EBE
P 4150 4150
F 0 "D3" H 4150 4367 50  0000 C CNN
F 1 "D" H 4150 4276 50  0000 C CNN
F 2 "" H 4150 4150 50  0001 C CNN
F 3 "~" H 4150 4150 50  0001 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
Text GLabel 3700 4500 0    50   Input ~ 0
GLV_BMSContainer
$Comp
L Relay:G5Q-1A K3
U 1 1 5FB7BEBD
P 4750 2550
F 0 "K3" V 5150 2550 50  0000 C CNN
F 1 "Relay_NO" V 5250 2550 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 5100 2500 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 4750 2550 50  0001 C CNN
	1    4750 2550
	0    1    1    0   
$EndComp
Text GLabel 3450 1950 0    50   Input ~ 0
ChargerSupply12V
Wire Wire Line
	4150 1950 4200 1950
Text GLabel 5050 2750 2    50   Input ~ 0
ToPump
$Comp
L Device:D D2
U 1 1 5FBB2634
P 3850 1650
F 0 "D2" H 3850 1867 50  0000 C CNN
F 1 "D" H 3850 1776 50  0000 C CNN
F 2 "" H 3850 1650 50  0001 C CNN
F 3 "~" H 3850 1650 50  0001 C CNN
	1    3850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1650 3500 1650
Wire Wire Line
	3500 1650 3500 1950
Wire Wire Line
	3500 1950 3550 1950
Wire Wire Line
	4200 1950 4200 1650
Wire Wire Line
	4200 1650 4000 1650
$Comp
L Device:D D4
U 1 1 5FBB8ED4
P 4750 2050
F 0 "D4" H 4750 2267 50  0000 C CNN
F 1 "D" H 4750 2176 50  0000 C CNN
F 2 "" H 4750 2050 50  0001 C CNN
F 3 "~" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2050 4400 2050
Wire Wire Line
	4400 2050 4400 2350
Wire Wire Line
	4400 2350 4450 2350
Wire Wire Line
	4900 2050 5100 2050
Wire Wire Line
	5100 2050 5100 2350
Wire Wire Line
	5100 2350 5050 2350
Connection ~ 4400 2350
$Comp
L power:GND #PWR03
U 1 1 5FBDA779
P 5100 2350
F 0 "#PWR03" H 5100 2100 50  0001 C CNN
F 1 "GND" H 5105 2177 50  0000 C CNN
F 2 "" H 5100 2350 50  0001 C CNN
F 3 "" H 5100 2350 50  0001 C CNN
	1    5100 2350
	1    0    0    -1  
$EndComp
Connection ~ 5100 2350
$Comp
L power:GND #PWR01
U 1 1 5FBDAEA2
P 4200 1950
F 0 "#PWR01" H 4200 1700 50  0001 C CNN
F 1 "GND" H 4205 1777 50  0000 C CNN
F 2 "" H 4200 1950 50  0001 C CNN
F 3 "" H 4200 1950 50  0001 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
Connection ~ 4200 1950
Wire Wire Line
	4000 4150 3800 4150
Wire Wire Line
	3800 4150 3800 4500
Wire Wire Line
	3800 4500 3850 4500
Connection ~ 3800 4500
Wire Wire Line
	4450 4500 4500 4500
Wire Wire Line
	4500 4500 4500 4150
Wire Wire Line
	4500 4150 4300 4150
Wire Wire Line
	3700 4500 3800 4500
Connection ~ 4500 4500
Text GLabel 7100 4750 2    50   Input ~ 0
PWR_Ready
Wire Wire Line
	7300 5850 8150 5850
Connection ~ 6650 5250
Wire Wire Line
	4150 2350 4400 2350
Text GLabel 3450 2750 0    50   Input ~ 0
GLV_PreBRB
Text GLabel 9750 2050 0    50   Input ~ 0
MPOut3
$Comp
L Relay:MSxx-1Bxx-75 K1
U 1 1 5FB8381E
P 3850 2150
F 0 "K1" V 4250 2150 50  0000 C CNN
F 1 "Relay_NC" V 4350 2150 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 4200 2100 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 3850 2150 50  0001 C CNN
	1    3850 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 5250 6650 5400
Text GLabel 6750 5400 2    50   Input ~ 0
FanGND
Wire Wire Line
	6750 5400 6650 5400
Connection ~ 6650 5400
Wire Wire Line
	6650 5400 6650 5550
Wire Wire Line
	7300 5550 6650 5550
Wire Wire Line
	7300 5550 7300 5850
Connection ~ 6650 5550
Wire Wire Line
	6650 5550 6650 5750
$Comp
L Device:Fuse F1
U 1 1 5FC0FA27
P 4250 2750
F 0 "F1" V 4447 2750 50  0000 C CNN
F 1 "Fuse" V 4356 2750 50  0000 C CNN
F 2 "" V 4180 2750 50  0001 C CNN
F 3 "~" H 4250 2750 50  0001 C CNN
	1    4250 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 2750 4450 2750
Text Notes 1300 6650 0    79   ~ 16
Notes
Wire Notes Line
	1250 6500 5750 6500
Wire Notes Line
	5750 6500 5750 7850
Wire Notes Line
	5750 7850 1250 7850
Wire Notes Line
	1250 7850 1250 6500
Text Notes 1300 6800 0    50   ~ 0
>Battery --> GLVMS --> GLV_PreBRB --> BRB1 --> BRB2 --> Fusebox --> GLV_BMSContainer\n
Text GLabel 3450 2350 0    50   Input ~ 0
GLV_BMSContainer
Text GLabel 7700 2600 2    50   Input ~ 0
GLV_PreBRB
Text Notes 1300 6900 0    50   ~ 0
> When charger is plugged in, GLV battery is removed\n
Text Notes 1300 7100 0    50   ~ 0
> When charger is plugged in, ChargerSupply12V connects to \nGLV_PreBRB through the charger lockout relay.\n
Text Notes 2550 3850 0    50   Italic 0
> If 12v is present on GLV and car is not charging, \npower is connected to ToPump.\n\n> If 12v is present on GLV and car is charging, \npower is not connected to ToPump.\n\n> If 12v is not present on GLV (BRB's pressed),\npower is not connected to ToPump.
Text Notes 2550 5900 0    50   ~ 0
> If 12v is present on GLV (not in shutdown), \npower from charger is connected to PWR_Charge.\n^(power here may or may not be present)\n\n> If 12v is not present on GLV (shutdown),\npower from charger is not connected to PWR_Charge.
Wire Wire Line
	7000 4600 7000 4750
Wire Wire Line
	7000 4750 7100 4750
Connection ~ 7000 4600
$Comp
L Relay:G5Q-1A K4
U 1 1 5FB0A0C4
P 7400 2400
F 0 "K4" V 7800 2400 50  0000 C CNN
F 1 "Relay_NO" V 7900 2400 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 7750 2350 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 7400 2400 50  0001 C CNN
	1    7400 2400
	0    1    1    0   
$EndComp
Text GLabel 6950 2400 0    50   Input ~ 0
ChargerSupply12V
$Comp
L power:GND #PWR05
U 1 1 5FB0ABB6
P 7850 2200
F 0 "#PWR05" H 7850 1950 50  0001 C CNN
F 1 "GND" H 7855 2027 50  0000 C CNN
F 2 "" H 7850 2200 50  0001 C CNN
F 3 "" H 7850 2200 50  0001 C CNN
	1    7850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2200 7750 2200
$Comp
L Device:D D1
U 1 1 5FB0FB9C
P 7400 1900
F 0 "D1" H 7400 2117 50  0000 C CNN
F 1 "D" H 7400 2026 50  0000 C CNN
F 2 "" H 7400 1900 50  0001 C CNN
F 3 "~" H 7400 1900 50  0001 C CNN
	1    7400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2200 7050 1900
Wire Wire Line
	7050 1900 7250 1900
Connection ~ 7050 2200
Wire Wire Line
	7050 2200 7100 2200
Wire Wire Line
	7550 1900 7750 1900
Connection ~ 7750 2200
Wire Wire Line
	7750 2200 7850 2200
Wire Wire Line
	7750 1900 7750 2200
Wire Notes Line
	2500 1250 8950 1250
Text Notes 5750 3650 0    50   ~ 0
> If car is charging, GLV_PreBRB\n will be driven by ChargerSupply12V\n\n> If car is not charging, GLV_PreBRB \nwill be disconnected from the \ncharger supply
Wire Wire Line
	3450 1950 3500 1950
Connection ~ 3500 1950
Wire Wire Line
	3450 2350 3550 2350
Wire Wire Line
	3450 2750 4100 2750
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FBA649D
P 800 1600
F 0 "J1" H 692 1275 50  0000 C CNN
F 1 "GLV_PWR" H 692 1366 50  0000 C CNN
F 2 "" H 800 1600 50  0001 C CNN
F 3 "~" H 800 1600 50  0001 C CNN
	1    800  1600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5FBD5D22
P 800 2150
F 0 "J2" H 692 1725 50  0000 C CNN
F 1 "GLV_Signal" H 692 1816 50  0000 C CNN
F 2 "" H 800 2150 50  0001 C CNN
F 3 "~" H 800 2150 50  0001 C CNN
	1    800  2150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5FC1125D
P 800 3600
F 0 "J4" H 692 3175 50  0000 C CNN
F 1 "Charge_Signal" H 692 3266 50  0000 C CNN
F 2 "" H 800 3600 50  0001 C CNN
F 3 "~" H 800 3600 50  0001 C CNN
	1    800  3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1600 1400 1600
Wire Wire Line
	1000 1950 1400 1950
Wire Wire Line
	1000 2050 1400 2050
Wire Wire Line
	1000 2150 1400 2150
Wire Wire Line
	1000 2250 1400 2250
Wire Wire Line
	1000 2950 1400 2950
Wire Wire Line
	1000 3050 1400 3050
Wire Wire Line
	1000 3400 1400 3400
Wire Wire Line
	1000 3500 1400 3500
Wire Wire Line
	1000 3600 1400 3600
Wire Wire Line
	1000 3700 1400 3700
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5FBEEFCE
P 800 3050
F 0 "J3" H 692 2725 50  0000 C CNN
F 1 "Charge_PWR" H 692 2816 50  0000 C CNN
F 2 "" H 800 3050 50  0001 C CNN
F 3 "~" H 800 3050 50  0001 C CNN
	1    800  3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5FC5C590
P 800 4500
F 0 "J5" H 692 4175 50  0000 C CNN
F 1 "PumpIO" H 692 4266 50  0000 C CNN
F 2 "" H 800 4500 50  0001 C CNN
F 3 "~" H 800 4500 50  0001 C CNN
	1    800  4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 4400 1400 4400
Wire Wire Line
	1000 4500 1400 4500
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5FC6E9A5
P 800 5300
F 0 "J6" H 692 4975 50  0000 C CNN
F 1 "Therm_PWR" H 692 5066 50  0000 C CNN
F 2 "" H 800 5300 50  0001 C CNN
F 3 "~" H 800 5300 50  0001 C CNN
	1    800  5300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 5FC7CBDE
P 800 5850
F 0 "J7" H 692 5425 50  0000 C CNN
F 1 "Therm_Signal" H 692 5516 50  0000 C CNN
F 2 "" H 800 5850 50  0001 C CNN
F 3 "~" H 800 5850 50  0001 C CNN
	1    800  5850
	-1   0    0    1   
$EndComp
NoConn ~ 1000 5950
Wire Wire Line
	1000 5200 1400 5200
Wire Wire Line
	1000 5300 1400 5300
Wire Wire Line
	1000 5650 1400 5650
Wire Wire Line
	1000 5750 1400 5750
Wire Wire Line
	1000 5850 1400 5850
Text Notes 1300 7450 0    50   ~ 0
> If the battery is connected to the GLV system before the\ncharger disconnects, the charger lockout relay will become stuck\nopen. This will not be an issue if the GLVMS is always switched off\nwhile charging.
Wire Wire Line
	7050 2200 7050 2400
Wire Wire Line
	7050 2600 7100 2600
Wire Wire Line
	6950 2400 7050 2400
Connection ~ 7050 2400
Wire Wire Line
	7050 2400 7050 2600
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 5FD0C7AC
P 10350 1500
F 0 "J8" H 10242 1175 50  0000 C CNN
F 1 "BMS_PWR" H 10242 1266 50  0000 C CNN
F 2 "" H 10350 1500 50  0001 C CNN
F 3 "~" H 10350 1500 50  0001 C CNN
	1    10350 1500
	1    0    0    1   
$EndComp
Wire Notes Line
	8950 1250 8950 6000
Wire Notes Line
	2500 6000 8950 6000
$Comp
L Connector:Conn_01x06_Female J9
U 1 1 5FDAC8DD
P 10350 2250
F 0 "J9" H 10242 1725 50  0000 C CNN
F 1 "BMS_Signal" H 10242 1816 50  0000 C CNN
F 2 "" H 10350 2250 50  0001 C CNN
F 3 "~" H 10350 2250 50  0001 C CNN
	1    10350 2250
	1    0    0    1   
$EndComp
Text GLabel 9750 2700 0    50   Input ~ 0
ChassisGND
Wire Wire Line
	10150 2700 9750 2700
Wire Wire Line
	9750 2450 10150 2450
Wire Wire Line
	9750 2350 10150 2350
Wire Wire Line
	9750 2250 10150 2250
Wire Wire Line
	9750 2150 10150 2150
Wire Wire Line
	9750 2050 10150 2050
Wire Wire Line
	9750 1950 10150 1950
Wire Wire Line
	9750 1600 10150 1600
Wire Wire Line
	9750 1500 10150 1500
Wire Wire Line
	9750 1400 10150 1400
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 5FDFEF4C
P 10350 2700
F 0 "J10" H 10500 2600 50  0000 R CNN
F 1 "GND_QC" H 10650 2500 50  0000 R CNN
F 2 "" H 10350 2700 50  0001 C CNN
F 3 "~" H 10350 2700 50  0001 C CNN
	1    10350 2700
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
