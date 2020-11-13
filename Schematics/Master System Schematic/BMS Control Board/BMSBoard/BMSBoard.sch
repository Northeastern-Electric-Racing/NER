EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "BMS Control Board"
Date "2020-11-12"
Rev "1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Diode connecting power supplied by charger and GLV. Connections for CAN, Power, Ground."
Comment4 "Relays to control charge power, pump and fan."
$EndDescr
Text GLabel 1550 1450 2    50   Input ~ 0
BMSFault
Text GLabel 1550 2200 2    50   Input ~ 0
CANS_Main
Text GLabel 1550 2050 2    50   Input ~ 0
CANL_Main
Text GLabel 1550 1750 2    50   Input ~ 0
GLV_BMSContainer
Text GLabel 1550 1600 2    50   Input ~ 0
ChassisGND
Text GLabel 1550 2750 2    50   Input ~ 0
ChargerGND
Text GLabel 1550 2900 2    50   Input ~ 0
ChargerSupply12V
Text GLabel 1550 3050 2    50   Input ~ 0
ChargerSafety
Text GLabel 1550 3200 2    50   Input ~ 0
CANH_Chrg
Text GLabel 1550 3350 2    50   Input ~ 0
CANL_Chrg
Text GLabel 1550 3500 2    50   Input ~ 0
CANS_Chrg
Text GLabel 1550 4400 2    50   Input ~ 0
GLV_PreBRB
Text GLabel 1550 4550 2    50   Input ~ 0
ToPump
Text GLabel 1550 5450 2    50   Input ~ 0
ThermExIn12V
Text GLabel 1550 5300 2    50   Input ~ 0
ThermExGND
Text GLabel 1550 5600 2    50   Input ~ 0
CANH_Thrm
Text GLabel 1550 5750 2    50   Input ~ 0
CANL_Thrm
Text GLabel 1550 5900 2    50   Input ~ 0
CANS_Thrm
Text GLabel 1550 1900 2    50   Input ~ 0
CANH_Main
Text GLabel 9650 1700 0    50   Input ~ 0
CANS_BMS
Text GLabel 9650 1550 0    50   Input ~ 0
CANL_BMS
Text GLabel 9650 1400 0    50   Input ~ 0
CANH_BMS
Text GLabel 9650 1850 0    50   Input ~ 0
BMSIn12V
Text GLabel 9650 2000 0    50   Input ~ 0
BMSGND
Text GLabel 9650 2150 0    50   Input ~ 0
Charge_Safety
Text GLabel 9650 2300 0    50   Input ~ 0
PWR_Ready
Text GLabel 9650 2450 0    50   Input ~ 0
PWR_Charge
Wire Notes Line
	1250 1000 1250 6250
Wire Notes Line
	9950 1000 9950 6250
Text GLabel 9650 2600 0    50   Input ~ 0
MP_EN
Text Notes 4550 850  0    118  Italic 24
BMS Relay and Control PCB\n
Entry Wire Line
	1350 1550 1450 1450
Entry Wire Line
	1350 1700 1450 1600
Entry Wire Line
	1350 1850 1450 1750
Entry Wire Line
	1350 2000 1450 1900
Entry Wire Line
	1350 2150 1450 2050
Entry Wire Line
	1350 2300 1450 2200
Wire Wire Line
	1450 1450 1550 1450
Wire Wire Line
	1450 1600 1550 1600
Wire Wire Line
	1450 1750 1550 1750
Wire Wire Line
	1450 1900 1550 1900
Wire Wire Line
	1450 2050 1550 2050
Wire Wire Line
	1450 2200 1550 2200
Text HLabel 1100 2300 0    50   Input ~ 0
GLV+CAN
Entry Wire Line
	1350 2850 1450 2750
Entry Wire Line
	1350 3000 1450 2900
Entry Wire Line
	1350 3150 1450 3050
Entry Wire Line
	1350 3300 1450 3200
Entry Wire Line
	1350 3450 1450 3350
Entry Wire Line
	1350 3600 1450 3500
Wire Wire Line
	1450 2750 1550 2750
Wire Wire Line
	1450 2900 1550 2900
Wire Wire Line
	1450 3050 1550 3050
Wire Wire Line
	1450 3200 1550 3200
Wire Wire Line
	1450 3350 1550 3350
Wire Wire Line
	1450 3500 1550 3500
Entry Wire Line
	1350 4500 1450 4400
Entry Wire Line
	1350 4650 1450 4550
Wire Wire Line
	1450 4400 1550 4400
Wire Wire Line
	1450 4550 1550 4550
Text HLabel 1100 3600 0    50   Input ~ 0
ChargerIO
Text HLabel 1100 4650 0    50   Input ~ 0
PumpIO
Entry Wire Line
	1350 5400 1450 5300
Entry Wire Line
	1350 5550 1450 5450
Entry Wire Line
	1350 5700 1450 5600
Entry Wire Line
	1350 5850 1450 5750
Entry Wire Line
	1350 6000 1450 5900
Wire Wire Line
	1450 5300 1550 5300
Wire Wire Line
	1450 5450 1550 5450
Wire Wire Line
	1450 5600 1550 5600
Wire Wire Line
	1450 5750 1550 5750
Wire Wire Line
	1450 5900 1550 5900
Text HLabel 1100 6000 0    50   Input ~ 0
ThermEx
Entry Wire Line
	9850 1950 9750 1850
Entry Wire Line
	9850 2100 9750 2000
Entry Wire Line
	9850 2250 9750 2150
Entry Wire Line
	9850 2400 9750 2300
Entry Wire Line
	9850 2550 9750 2450
Entry Wire Line
	9850 2700 9750 2600
Wire Wire Line
	9750 1850 9650 1850
Wire Wire Line
	9750 2000 9650 2000
Wire Wire Line
	9750 2150 9650 2150
Wire Wire Line
	9750 2300 9650 2300
Wire Wire Line
	9750 2450 9650 2450
Wire Wire Line
	9750 2600 9650 2600
Entry Wire Line
	9850 1500 9750 1400
Entry Wire Line
	9850 1650 9750 1550
Entry Wire Line
	9850 1800 9750 1700
Wire Wire Line
	9750 1400 9650 1400
Wire Wire Line
	9750 1550 9650 1550
Wire Wire Line
	9750 1700 9650 1700
Text HLabel 10100 2700 2    50   Input ~ 0
BMS
Wire Notes Line
	1250 1000 9950 1000
Wire Notes Line
	1250 6250 9950 6250
$Comp
L Relay:G5Q-1A K2
U 1 1 5FB1F228
P 4050 4600
F 0 "K2" V 4450 4600 50  0000 C CNN
F 1 "Relay_NO" V 4550 4600 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 4400 4550 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 4050 4600 50  0001 C CNN
	1    4050 4600
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
Wire Notes Line
	8950 3200 8950 6000
Wire Notes Line
	5950 6000 5950 3200
Text Notes 7750 3350 2    79   ~ 0
Simple Connects\n
Text GLabel 6650 3550 0    50   Input ~ 0
ChargerSafety
Text GLabel 6800 3550 2    50   Input ~ 0
Charge_Safety
Wire Wire Line
	6650 3550 6800 3550
Text GLabel 6800 3700 2    50   Input ~ 0
MP_EN
Text GLabel 6650 3700 0    50   Input ~ 0
BMSFault
Wire Wire Line
	6650 3700 6800 3700
Text GLabel 6800 4200 0    50   Input ~ 0
GLV_BMSContainer
Text GLabel 7000 4350 2    50   Input ~ 0
ThermExIn12V
Text GLabel 7000 4500 2    50   Input ~ 0
BMSIn12V
Wire Wire Line
	6800 4200 6900 4200
Wire Wire Line
	7000 4350 6900 4350
Wire Wire Line
	6900 4350 6900 4200
Wire Wire Line
	7000 4500 6900 4500
Wire Wire Line
	6900 4500 6900 4350
Connection ~ 6900 4350
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
Wire Notes Line
	2500 6000 5600 6000
Text GLabel 3750 4800 0    50   Input ~ 0
ChargerSupply12V
Text GLabel 4350 4800 2    50   Input ~ 0
PWR_Charge
$Comp
L power:GND #PWR02
U 1 1 5FB4371C
P 4400 4400
F 0 "#PWR02" H 4400 4150 50  0001 C CNN
F 1 "GND" H 4405 4227 50  0000 C CNN
F 2 "" H 4400 4400 50  0001 C CNN
F 3 "" H 4400 4400 50  0001 C CNN
	1    4400 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5FB45EBE
P 4050 4050
F 0 "D3" H 4050 4267 50  0000 C CNN
F 1 "D" H 4050 4176 50  0000 C CNN
F 2 "" H 4050 4050 50  0001 C CNN
F 3 "~" H 4050 4050 50  0001 C CNN
	1    4050 4050
	1    0    0    -1  
$EndComp
Text GLabel 3600 4400 0    50   Input ~ 0
GLV_BMSContainer
$Comp
L Relay:G5Q-1A K3
U 1 1 5FB7BEBD
P 4800 2650
F 0 "K3" V 5200 2650 50  0000 C CNN
F 1 "Relay_NO" V 5300 2650 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 5150 2600 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 4800 2650 50  0001 C CNN
	1    4800 2650
	0    1    1    0   
$EndComp
Text GLabel 3300 2050 0    50   Input ~ 0
ChargerSupply12V
Wire Wire Line
	4200 2050 4250 2050
Text GLabel 5100 2850 2    50   Input ~ 0
ToPump
$Comp
L Device:D D2
U 1 1 5FBB2634
P 3900 1750
F 0 "D2" H 3900 1967 50  0000 C CNN
F 1 "D" H 3900 1876 50  0000 C CNN
F 2 "" H 3900 1750 50  0001 C CNN
F 3 "~" H 3900 1750 50  0001 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1750 3550 1750
Wire Wire Line
	3550 1750 3550 2050
Connection ~ 3550 2050
Wire Wire Line
	3550 2050 3600 2050
Wire Wire Line
	4250 2050 4250 1750
Wire Wire Line
	4250 1750 4050 1750
$Comp
L Device:D D4
U 1 1 5FBB8ED4
P 4800 2150
F 0 "D4" H 4800 2367 50  0000 C CNN
F 1 "D" H 4800 2276 50  0000 C CNN
F 2 "" H 4800 2150 50  0001 C CNN
F 3 "~" H 4800 2150 50  0001 C CNN
	1    4800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2150 4450 2150
Wire Wire Line
	4450 2150 4450 2450
Wire Wire Line
	4450 2450 4500 2450
Wire Wire Line
	4950 2150 5150 2150
Wire Wire Line
	5150 2150 5150 2450
Wire Wire Line
	5150 2450 5100 2450
Connection ~ 4450 2450
$Comp
L power:GND #PWR03
U 1 1 5FBDA779
P 5150 2450
F 0 "#PWR03" H 5150 2200 50  0001 C CNN
F 1 "GND" H 5155 2277 50  0000 C CNN
F 2 "" H 5150 2450 50  0001 C CNN
F 3 "" H 5150 2450 50  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
Connection ~ 5150 2450
$Comp
L power:GND #PWR01
U 1 1 5FBDAEA2
P 4250 2050
F 0 "#PWR01" H 4250 1800 50  0001 C CNN
F 1 "GND" H 4255 1877 50  0000 C CNN
F 2 "" H 4250 2050 50  0001 C CNN
F 3 "" H 4250 2050 50  0001 C CNN
	1    4250 2050
	1    0    0    -1  
$EndComp
Connection ~ 4250 2050
Wire Wire Line
	3900 4050 3700 4050
Wire Wire Line
	3700 4050 3700 4400
Wire Wire Line
	3700 4400 3750 4400
Connection ~ 3700 4400
Wire Wire Line
	4350 4400 4400 4400
Wire Wire Line
	4400 4400 4400 4050
Wire Wire Line
	4400 4050 4200 4050
Wire Wire Line
	3600 4400 3700 4400
Connection ~ 4400 4400
Text GLabel 7000 4650 2    50   Input ~ 0
PWR_Ready
Wire Wire Line
	6900 4500 6900 4650
Wire Wire Line
	6900 4650 7000 4650
Connection ~ 6900 4500
Wire Notes Line
	5950 6000 8950 6000
Wire Wire Line
	7300 5850 8150 5850
Connection ~ 6650 5250
Wire Wire Line
	4200 2450 4450 2450
Text GLabel 3300 2850 0    50   Input ~ 0
GLV_PreBRB
Text GLabel 7050 2050 0    50   Input ~ 0
GLV_BMSContainer
Entry Wire Line
	9850 1350 9750 1250
Wire Wire Line
	9750 1250 9650 1250
Text GLabel 9650 1250 0    50   Input ~ 0
MPOut3
Text GLabel 8050 2050 2    50   Input ~ 0
MPOut3
$Comp
L Relay:MSxx-1Bxx-75 K1
U 1 1 5FB8381E
P 3900 2250
F 0 "K1" V 4300 2250 50  0000 C CNN
F 1 "Relay_NC" V 4400 2250 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 4250 2200 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 3900 2250 50  0001 C CNN
	1    3900 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2050 7150 2050
$Comp
L Device:R R1
U 1 1 5FB0F084
P 7950 1850
F 0 "R1" H 8020 1896 50  0000 L CNN
F 1 "2.2K" H 8020 1805 50  0000 L CNN
F 2 "" V 7880 1850 50  0001 C CNN
F 3 "~" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2050 7800 2050
Text GLabel 8050 1650 2    50   Input ~ 0
GLV_BMSContainer
$Comp
L Relay:G5Q-1A K4
U 1 1 5FB240E6
P 7450 2250
F 0 "K4" V 7850 2250 50  0000 C CNN
F 1 "Relay_NO" V 7950 2250 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 7800 2200 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 7450 2250 50  0001 C CNN
	1    7450 2250
	0    1    1    0   
$EndComp
Text GLabel 6850 2450 0    50   Input ~ 0
GLV_BMSContainer
Text HLabel 10100 2700 2    50   Input ~ 0
BMS
Wire Notes Line
	5950 3200 8950 3200
Entry Wire Line
	9850 3550 9750 3450
Entry Wire Line
	9850 3700 9750 3600
Wire Wire Line
	9750 3450 9650 3450
Wire Wire Line
	9750 3600 9650 3600
Text HLabel 10100 3700 2    50   Input ~ 0
Fan
Wire Bus Line
	9850 3700 9850 3550
Text GLabel 9650 3450 0    50   Input ~ 0
FanIn12V
Text GLabel 9650 3600 0    50   Input ~ 0
FanGND
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
Text GLabel 7750 2450 2    50   Input ~ 0
FanIn12V
Text Notes 4100 1400 2    79   ~ 16
Relays\n
Text Notes 7550 1550 2    79   ~ 16
Fan\n\n
Wire Notes Line
	5600 1250 2500 1250
Wire Notes Line
	8950 1250 5950 1250
Wire Notes Line
	5950 2900 8950 2900
Wire Notes Line
	8950 2900 8950 1250
Wire Notes Line
	5600 6000 5600 1250
Wire Notes Line
	5950 1250 5950 2900
$Comp
L Device:D D5
U 1 1 5FBC48C9
P 7450 1750
F 0 "D5" H 7450 1967 50  0000 C CNN
F 1 "D" H 7450 1876 50  0000 C CNN
F 2 "" H 7450 1750 50  0001 C CNN
F 3 "~" H 7450 1750 50  0001 C CNN
	1    7450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1750 7800 1750
Connection ~ 7800 2050
Wire Wire Line
	7800 2050 7950 2050
Wire Wire Line
	8050 1650 7950 1650
Wire Wire Line
	7950 1650 7950 1700
Wire Wire Line
	8050 2050 7950 2050
Wire Wire Line
	7950 2050 7950 2000
Connection ~ 7950 2050
Wire Wire Line
	7100 1750 7300 1750
Wire Wire Line
	7050 2050 7100 2050
Connection ~ 7100 2050
Wire Wire Line
	7100 1750 7100 2050
Wire Wire Line
	7800 1750 7800 2050
$Comp
L Device:Fuse F2
U 1 1 5FC0DD83
P 7000 2450
F 0 "F2" V 7197 2450 50  0000 C CNN
F 1 "Fuse" V 7106 2450 50  0000 C CNN
F 2 "" V 6930 2450 50  0001 C CNN
F 3 "~" H 7000 2450 50  0001 C CNN
	1    7000 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5FC0FA27
P 4300 2850
F 0 "F1" V 4497 2850 50  0000 C CNN
F 1 "Fuse" V 4406 2850 50  0000 C CNN
F 2 "" V 4230 2850 50  0001 C CNN
F 3 "~" H 4300 2850 50  0001 C CNN
	1    4300 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 2850 4500 2850
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
> GLV_PreBRB --> BRB1 --> BRB2 --> Fusebox --> GLV_BMSContainer\n
Wire Bus Line
	1350 4500 1350 4650
Text GLabel 3300 2450 0    50   Input ~ 0
GLV_BMSContainer
Wire Wire Line
	3300 2450 3600 2450
$Comp
L Device:D D1
U 1 1 5FC96FBA
P 6950 3850
F 0 "D1" H 6950 4067 50  0000 C CNN
F 1 "D" H 6950 3976 50  0000 C CNN
F 2 "" H 6950 3850 50  0001 C CNN
F 3 "~" H 6950 3850 50  0001 C CNN
	1    6950 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 2050 3550 2050
Wire Wire Line
	3300 2850 4150 2850
Text GLabel 7100 3850 2    50   Input ~ 0
GLV_PreBRB
Text GLabel 6800 3850 0    50   Input ~ 0
ChargerSupply12V
Text Notes 1300 6900 0    50   ~ 0
> When Charger is plugged in, GLV battery is removed\n
Text Notes 1300 7100 0    50   ~ 0
> When charger is plugged in, ChargerSupply12V connects to \nGLV_PreBRB through a diode
Text Notes 2550 3700 0    50   Italic 0
> If 12v is present on GLV and car is not charging, \npower is connected to ToPump.\n\n> If 12v is present on GLV and car is charging, \npower is not connected to ToPump.\n\n> If 12v is not present on GLV (BRB's pressed),\npower is not connected to ToPump.
Text Notes 2550 5750 0    50   ~ 0
> If 12v is present on GLV (not in shutdown), \npower from charger is connected to PWR_Charge.\n^(power here may or may not be present)\n\n> If 12v is not present on GLV (shutdown),\npower from charger is not connected to PWR_Charge.
Text Notes 6050 2800 0    50   ~ 0
> Drive fan using MPOut3
Wire Bus Line
	9850 2700 10100 2700
Wire Bus Line
	9850 3700 10100 3700
Wire Bus Line
	1100 2300 1350 2300
Wire Bus Line
	1100 3600 1350 3600
Wire Bus Line
	1100 4650 1350 4650
Wire Bus Line
	1100 6000 1350 6000
Wire Bus Line
	1350 5400 1350 6000
Wire Bus Line
	1350 2850 1350 3600
Wire Bus Line
	1350 1550 1350 2300
Wire Bus Line
	9850 1350 9850 2700
$EndSCHEMATC
