EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BMS Control Board"
Date "2020-11-11"
Rev "1.0"
Comp ""
Comment1 "Various connections for CAN, Power, Ground"
Comment2 "Relays to control charge power, pump and fan"
Comment3 "Diode connecting power supplied by charger and GLV"
Comment4 ""
$EndDescr
Text GLabel 1900 1450 2    50   Input ~ 0
BMSFault
Text GLabel 1900 2200 2    50   Input ~ 0
CANS_Main
Text GLabel 1900 2050 2    50   Input ~ 0
CANL_Main
Text GLabel 1900 1750 2    50   Input ~ 0
GLV_BMSContainer
Text GLabel 1900 1600 2    50   Input ~ 0
ChassisGND
Text GLabel 1900 2750 2    50   Input ~ 0
ChargerGND
Text GLabel 1900 2900 2    50   Input ~ 0
ChargerSupply12V
Text GLabel 1900 3050 2    50   Input ~ 0
ChargerSafety
Text GLabel 1900 3200 2    50   Input ~ 0
CANH_Chrg
Text GLabel 1900 3350 2    50   Input ~ 0
CANL_Chrg
Text GLabel 1900 3500 2    50   Input ~ 0
CANS_Chrg
Text GLabel 1900 4400 2    50   Input ~ 0
GLV_PreBRB
Text GLabel 1900 4550 2    50   Input ~ 0
ToPump
Text GLabel 1900 5450 2    50   Input ~ 0
ThermExIn12V
Text GLabel 1900 5300 2    50   Input ~ 0
ThermExGND
Text GLabel 1900 5600 2    50   Input ~ 0
CANH_Thrm
Text GLabel 1900 5750 2    50   Input ~ 0
CANL_Thrm
Text GLabel 1900 5900 2    50   Input ~ 0
CANS_Thrm
Text GLabel 1900 1900 2    50   Input ~ 0
CANH_Main
Text GLabel 10000 1700 0    50   Input ~ 0
CANS_BMS
Text GLabel 10000 1550 0    50   Input ~ 0
CANL_BMS
Text GLabel 10000 1400 0    50   Input ~ 0
CANH_BMS
Text GLabel 10000 1850 0    50   Input ~ 0
BMSIn12V
Text GLabel 10000 2000 0    50   Input ~ 0
BMSGND
Text GLabel 10000 2150 0    50   Input ~ 0
Charge_Safety
Text GLabel 10000 2300 0    50   Input ~ 0
PWR_Ready
Text GLabel 10000 2450 0    50   Input ~ 0
PWR_Charge
Wire Notes Line
	1600 1000 1600 6250
Wire Notes Line
	10300 1000 10300 6250
Text GLabel 10000 2600 0    50   Input ~ 0
MP_EN
Text Notes 4900 850  0    118  Italic 24
BMS Relay and Control PCB\n
Entry Wire Line
	1700 1550 1800 1450
Entry Wire Line
	1700 1700 1800 1600
Entry Wire Line
	1700 1850 1800 1750
Entry Wire Line
	1700 2000 1800 1900
Entry Wire Line
	1700 2150 1800 2050
Entry Wire Line
	1700 2300 1800 2200
Wire Wire Line
	1800 1450 1900 1450
Wire Wire Line
	1800 1600 1900 1600
Wire Wire Line
	1800 1750 1900 1750
Wire Wire Line
	1800 1900 1900 1900
Wire Wire Line
	1800 2050 1900 2050
Wire Wire Line
	1800 2200 1900 2200
Wire Bus Line
	1700 2300 1100 2300
Text HLabel 1100 2300 0    50   Input ~ 0
GLV+CAN
Entry Wire Line
	1700 2850 1800 2750
Entry Wire Line
	1700 3000 1800 2900
Entry Wire Line
	1700 3150 1800 3050
Entry Wire Line
	1700 3300 1800 3200
Entry Wire Line
	1700 3450 1800 3350
Entry Wire Line
	1700 3600 1800 3500
Wire Wire Line
	1800 2750 1900 2750
Wire Wire Line
	1800 2900 1900 2900
Wire Wire Line
	1800 3050 1900 3050
Wire Wire Line
	1800 3200 1900 3200
Wire Wire Line
	1800 3350 1900 3350
Wire Wire Line
	1800 3500 1900 3500
Wire Bus Line
	1700 3600 1100 3600
Entry Wire Line
	1700 4500 1800 4400
Entry Wire Line
	1700 4650 1800 4550
Wire Wire Line
	1800 4400 1900 4400
Wire Wire Line
	1800 4550 1900 4550
Text HLabel 1100 3600 0    50   Input ~ 0
ChargerIO
Wire Bus Line
	1700 4650 1100 4650
Text HLabel 1100 4650 0    50   Input ~ 0
PumpIO
Entry Wire Line
	1700 5400 1800 5300
Entry Wire Line
	1700 5550 1800 5450
Entry Wire Line
	1700 5700 1800 5600
Entry Wire Line
	1700 5850 1800 5750
Entry Wire Line
	1700 6000 1800 5900
Wire Wire Line
	1800 5300 1900 5300
Wire Wire Line
	1800 5450 1900 5450
Wire Wire Line
	1800 5600 1900 5600
Wire Wire Line
	1800 5750 1900 5750
Wire Wire Line
	1800 5900 1900 5900
Wire Bus Line
	1700 6000 1100 6000
Text HLabel 1100 6000 0    50   Input ~ 0
ThermEx
Entry Wire Line
	10200 1950 10100 1850
Entry Wire Line
	10200 2100 10100 2000
Entry Wire Line
	10200 2250 10100 2150
Entry Wire Line
	10200 2400 10100 2300
Entry Wire Line
	10200 2550 10100 2450
Entry Wire Line
	10200 2700 10100 2600
Wire Wire Line
	10100 1850 10000 1850
Wire Wire Line
	10100 2000 10000 2000
Wire Wire Line
	10100 2150 10000 2150
Wire Wire Line
	10100 2300 10000 2300
Wire Wire Line
	10100 2450 10000 2450
Wire Wire Line
	10100 2600 10000 2600
Wire Bus Line
	10200 2700 10800 2700
Entry Wire Line
	10200 1500 10100 1400
Entry Wire Line
	10200 1650 10100 1550
Entry Wire Line
	10200 1800 10100 1700
Wire Wire Line
	10100 1400 10000 1400
Wire Wire Line
	10100 1550 10000 1550
Wire Wire Line
	10100 1700 10000 1700
Text HLabel 10800 2700 2    50   Input ~ 0
BMS
Wire Notes Line
	1600 1000 10300 1000
Wire Notes Line
	1600 6250 10300 6250
$Comp
L Relay:G5Q-1A K2
U 1 1 5FB1F228
P 4400 4600
F 0 "K2" V 4800 4600 50  0000 C CNN
F 1 "Relay_NO" V 4900 4600 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 4750 4550 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 4400 4600 50  0001 C CNN
	1    4400 4600
	0    1    1    0   
$EndComp
Text GLabel 8700 5850 2    50   Input ~ 0
CANS_Main
Text GLabel 8700 5700 2    50   Input ~ 0
CANL_Main
Text GLabel 8700 5550 2    50   Input ~ 0
CANH_Main
Text GLabel 8700 4900 2    50   Input ~ 0
CANH_Thrm
Text GLabel 8700 5050 2    50   Input ~ 0
CANL_Thrm
Text GLabel 8700 5200 2    50   Input ~ 0
CANS_Thrm
Text GLabel 8700 4200 2    50   Input ~ 0
CANH_Chrg
Text GLabel 8700 4350 2    50   Input ~ 0
CANL_Chrg
Text GLabel 8700 4500 2    50   Input ~ 0
CANS_Chrg
Text GLabel 8700 3850 2    50   Input ~ 0
CANS_BMS
Text GLabel 8700 3700 2    50   Input ~ 0
CANL_BMS
Text GLabel 8700 3550 2    50   Input ~ 0
CANH_BMS
Wire Wire Line
	8700 3850 8500 3850
Wire Wire Line
	8500 3850 8500 4500
Wire Wire Line
	8500 4500 8700 4500
Wire Wire Line
	8500 4500 8500 5200
Wire Wire Line
	8500 5200 8700 5200
Connection ~ 8500 4500
Wire Wire Line
	8500 5200 8500 5850
Wire Wire Line
	8500 5850 8700 5850
Connection ~ 8500 5200
Wire Wire Line
	8700 3700 8350 3700
Wire Wire Line
	8350 3700 8350 4350
Wire Wire Line
	8350 4350 8700 4350
Wire Wire Line
	8350 4350 8350 5050
Wire Wire Line
	8350 5050 8700 5050
Connection ~ 8350 4350
Wire Wire Line
	8350 5050 8350 5700
Wire Wire Line
	8350 5700 8700 5700
Connection ~ 8350 5050
Wire Wire Line
	8700 3550 8200 3550
Wire Wire Line
	8200 3550 8200 4200
Wire Wire Line
	8200 4200 8700 4200
Wire Wire Line
	8200 4200 8200 4900
Wire Wire Line
	8200 4900 8700 4900
Connection ~ 8200 4200
Wire Wire Line
	8200 4900 8200 5550
Wire Wire Line
	8200 5550 8700 5550
Connection ~ 8200 4900
Wire Notes Line
	9300 3200 9300 6000
Wire Notes Line
	6300 6000 6300 3200
Text Notes 8100 3350 2    79   ~ 0
Simple Connects\n
Text GLabel 7000 3550 0    50   Input ~ 0
ChargerSafety
Text GLabel 7150 3550 2    50   Input ~ 0
Charge_Safety
Wire Wire Line
	7000 3550 7150 3550
Text GLabel 7150 3700 2    50   Input ~ 0
MP_EN
Text GLabel 7000 3700 0    50   Input ~ 0
BMSFault
Wire Wire Line
	7000 3700 7150 3700
Text GLabel 7150 4200 0    50   Input ~ 0
GLV_BMSContainer
Text GLabel 7350 4350 2    50   Input ~ 0
ThermExIn12V
Text GLabel 7350 4500 2    50   Input ~ 0
BMSIn12V
Wire Wire Line
	7150 4200 7250 4200
Wire Wire Line
	7350 4350 7250 4350
Wire Wire Line
	7250 4350 7250 4200
Wire Wire Line
	7350 4500 7250 4500
Wire Wire Line
	7250 4500 7250 4350
Connection ~ 7250 4350
Text GLabel 6900 4800 0    50   Input ~ 0
ChassisGND
Text GLabel 7100 4950 2    50   Input ~ 0
ChargerGND
Text GLabel 7100 5100 2    50   Input ~ 0
ThermExGND
Text GLabel 7100 5250 2    50   Input ~ 0
BMSGND
$Comp
L power:GND #PWR04
U 1 1 5FB0F301
P 7000 5750
F 0 "#PWR04" H 7000 5500 50  0001 C CNN
F 1 "GND" H 7005 5577 50  0000 C CNN
F 2 "" H 7000 5750 50  0001 C CNN
F 3 "" H 7000 5750 50  0001 C CNN
	1    7000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4800 7000 4800
Wire Wire Line
	7000 4800 7000 4950
Wire Wire Line
	7100 5250 7000 5250
Wire Wire Line
	7100 5100 7000 5100
Connection ~ 7000 5100
Wire Wire Line
	7000 5100 7000 5250
Wire Wire Line
	7100 4950 7000 4950
Connection ~ 7000 4950
Wire Wire Line
	7000 4950 7000 5100
Connection ~ 8500 5850
Wire Notes Line
	2850 1250 2850 6000
Wire Notes Line
	2850 6000 5950 6000
Text GLabel 4100 4800 0    50   Input ~ 0
ChargerSupply12V
Text GLabel 4700 4800 2    50   Input ~ 0
PWR_Charge
$Comp
L power:GND #PWR02
U 1 1 5FB4371C
P 4750 4400
F 0 "#PWR02" H 4750 4150 50  0001 C CNN
F 1 "GND" H 4755 4227 50  0000 C CNN
F 2 "" H 4750 4400 50  0001 C CNN
F 3 "" H 4750 4400 50  0001 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5FB45EBE
P 4400 4050
F 0 "D3" H 4400 4267 50  0000 C CNN
F 1 "D" H 4400 4176 50  0000 C CNN
F 2 "" H 4400 4050 50  0001 C CNN
F 3 "~" H 4400 4050 50  0001 C CNN
	1    4400 4050
	1    0    0    -1  
$EndComp
Text GLabel 3950 4400 0    50   Input ~ 0
GLV_BMSContainer
$Comp
L Relay:G5Q-1A K3
U 1 1 5FB7BEBD
P 5150 2650
F 0 "K3" V 5550 2650 50  0000 C CNN
F 1 "Relay_NO" V 5650 2650 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 5500 2600 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 5150 2650 50  0001 C CNN
	1    5150 2650
	0    1    1    0   
$EndComp
Text GLabel 3650 2050 0    50   Input ~ 0
ChargerSupply12V
Wire Wire Line
	4550 2050 4600 2050
Text GLabel 5450 2850 2    50   Input ~ 0
ToPump
$Comp
L Device:D D2
U 1 1 5FBB2634
P 4250 1750
F 0 "D2" H 4250 1967 50  0000 C CNN
F 1 "D" H 4250 1876 50  0000 C CNN
F 2 "" H 4250 1750 50  0001 C CNN
F 3 "~" H 4250 1750 50  0001 C CNN
	1    4250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1750 3900 1750
Wire Wire Line
	3900 1750 3900 2050
Connection ~ 3900 2050
Wire Wire Line
	3900 2050 3950 2050
Wire Wire Line
	4600 2050 4600 1750
Wire Wire Line
	4600 1750 4400 1750
$Comp
L Device:D D4
U 1 1 5FBB8ED4
P 5150 2150
F 0 "D4" H 5150 2367 50  0000 C CNN
F 1 "D" H 5150 2276 50  0000 C CNN
F 2 "" H 5150 2150 50  0001 C CNN
F 3 "~" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2150 4800 2150
Wire Wire Line
	4800 2150 4800 2450
Wire Wire Line
	4800 2450 4850 2450
Wire Wire Line
	5300 2150 5500 2150
Wire Wire Line
	5500 2150 5500 2450
Wire Wire Line
	5500 2450 5450 2450
Connection ~ 4800 2450
$Comp
L power:GND #PWR03
U 1 1 5FBDA779
P 5500 2450
F 0 "#PWR03" H 5500 2200 50  0001 C CNN
F 1 "GND" H 5505 2277 50  0000 C CNN
F 2 "" H 5500 2450 50  0001 C CNN
F 3 "" H 5500 2450 50  0001 C CNN
	1    5500 2450
	1    0    0    -1  
$EndComp
Connection ~ 5500 2450
$Comp
L power:GND #PWR01
U 1 1 5FBDAEA2
P 4600 2050
F 0 "#PWR01" H 4600 1800 50  0001 C CNN
F 1 "GND" H 4605 1877 50  0000 C CNN
F 2 "" H 4600 2050 50  0001 C CNN
F 3 "" H 4600 2050 50  0001 C CNN
	1    4600 2050
	1    0    0    -1  
$EndComp
Connection ~ 4600 2050
Wire Wire Line
	4250 4050 4050 4050
Wire Wire Line
	4050 4050 4050 4400
Wire Wire Line
	4050 4400 4100 4400
Connection ~ 4050 4400
Wire Wire Line
	4700 4400 4750 4400
Wire Wire Line
	4750 4400 4750 4050
Wire Wire Line
	4750 4050 4550 4050
Wire Wire Line
	3950 4400 4050 4400
Connection ~ 4750 4400
Text GLabel 7350 4650 2    50   Input ~ 0
PWR_Ready
Wire Wire Line
	7250 4500 7250 4650
Wire Wire Line
	7250 4650 7350 4650
Connection ~ 7250 4500
Wire Notes Line
	6300 6000 9300 6000
Wire Wire Line
	7650 5850 8500 5850
Connection ~ 7000 5250
Wire Wire Line
	4550 2450 4800 2450
Text GLabel 3650 2850 0    50   Input ~ 0
GLV_PreBRB
Text GLabel 7400 2050 0    50   Input ~ 0
GLV_BMSContainer
Entry Wire Line
	10200 1350 10100 1250
Wire Wire Line
	10100 1250 10000 1250
Text GLabel 10000 1250 0    50   Input ~ 0
MPOut3
Text GLabel 8400 2050 2    50   Input ~ 0
MPOut3
$Comp
L Relay:MSxx-1Bxx-75 K1
U 1 1 5FB8381E
P 4250 2250
F 0 "K1" V 4650 2250 50  0000 C CNN
F 1 "Relay_NC" V 4750 2250 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 4600 2200 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 4250 2250 50  0001 C CNN
	1    4250 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 2050 7500 2050
$Comp
L Device:R R1
U 1 1 5FB0F084
P 8300 1850
F 0 "R1" H 8370 1896 50  0000 L CNN
F 1 "2.2K" H 8370 1805 50  0000 L CNN
F 2 "" V 8230 1850 50  0001 C CNN
F 3 "~" H 8300 1850 50  0001 C CNN
	1    8300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2050 8150 2050
Text GLabel 8400 1650 2    50   Input ~ 0
GLV_BMSContainer
$Comp
L Relay:G5Q-1A K4
U 1 1 5FB240E6
P 7800 2250
F 0 "K4" V 8200 2250 50  0000 C CNN
F 1 "Relay_NO" V 8300 2250 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 8150 2200 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 7800 2250 50  0001 C CNN
	1    7800 2250
	0    1    1    0   
$EndComp
Text GLabel 7200 2450 0    50   Input ~ 0
GLV_BMSContainer
Text HLabel 10800 2700 2    50   Input ~ 0
BMS
Wire Notes Line
	6300 3200 9300 3200
Entry Wire Line
	10200 3550 10100 3450
Entry Wire Line
	10200 3700 10100 3600
Wire Wire Line
	10100 3450 10000 3450
Wire Wire Line
	10100 3600 10000 3600
Wire Bus Line
	10200 3700 10800 3700
Text HLabel 10800 3700 2    50   Input ~ 0
Fan
Wire Bus Line
	10200 3700 10200 3550
Text GLabel 10000 3450 0    50   Input ~ 0
FanIn12V
Text GLabel 10000 3600 0    50   Input ~ 0
FanGND
Wire Wire Line
	7000 5250 7000 5400
Text GLabel 7100 5400 2    50   Input ~ 0
FanGND
Wire Wire Line
	7100 5400 7000 5400
Connection ~ 7000 5400
Wire Wire Line
	7000 5400 7000 5550
Wire Wire Line
	7650 5550 7000 5550
Wire Wire Line
	7650 5550 7650 5850
Connection ~ 7000 5550
Wire Wire Line
	7000 5550 7000 5750
Text GLabel 8100 2450 2    50   Input ~ 0
FanIn12V
Text Notes 4650 1400 2    79   ~ 16
Relays\n
Text Notes 7900 1500 2    79   ~ 16
Fan?\n\n
Wire Notes Line
	5950 1250 2850 1250
Wire Notes Line
	9300 1250 6300 1250
Wire Notes Line
	6300 2900 9300 2900
Wire Notes Line
	9300 2900 9300 1250
Wire Notes Line
	5950 6000 5950 1250
Wire Notes Line
	6300 1250 6300 2900
$Comp
L Device:D D5
U 1 1 5FBC48C9
P 7800 1750
F 0 "D5" H 7800 1967 50  0000 C CNN
F 1 "D" H 7800 1876 50  0000 C CNN
F 2 "" H 7800 1750 50  0001 C CNN
F 3 "~" H 7800 1750 50  0001 C CNN
	1    7800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1750 8150 1750
Connection ~ 8150 2050
Wire Wire Line
	8150 2050 8300 2050
Wire Wire Line
	8400 1650 8300 1650
Wire Wire Line
	8300 1650 8300 1700
Wire Wire Line
	8400 2050 8300 2050
Wire Wire Line
	8300 2050 8300 2000
Connection ~ 8300 2050
Wire Wire Line
	7450 1750 7650 1750
Wire Wire Line
	7400 2050 7450 2050
Connection ~ 7450 2050
Wire Wire Line
	7450 1750 7450 2050
Wire Wire Line
	8150 1750 8150 2050
$Comp
L Device:Fuse F2
U 1 1 5FC0DD83
P 7350 2450
F 0 "F2" V 7547 2450 50  0000 C CNN
F 1 "Fuse" V 7456 2450 50  0000 C CNN
F 2 "" V 7280 2450 50  0001 C CNN
F 3 "~" H 7350 2450 50  0001 C CNN
	1    7350 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5FC0FA27
P 4650 2850
F 0 "F1" V 4847 2850 50  0000 C CNN
F 1 "Fuse" V 4756 2850 50  0000 C CNN
F 2 "" V 4580 2850 50  0001 C CNN
F 3 "~" H 4650 2850 50  0001 C CNN
	1    4650 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 2850 4850 2850
Text Notes 1650 6500 0    79   ~ 16
Notes
Wire Notes Line
	1600 6350 6850 6350
Wire Notes Line
	6850 6350 6850 7700
Wire Notes Line
	6850 7700 1600 7700
Wire Notes Line
	1600 7700 1600 6350
Text Notes 1650 6650 0    50   ~ 0
> GLV_PreBRB --> BRB1 --> BRB2 --> Fusebox --> GLV_BMSContainer\n
Wire Bus Line
	1700 4500 1700 4650
Text GLabel 3650 2450 0    50   Input ~ 0
GLV_BMSContainer
Wire Wire Line
	3650 2450 3950 2450
$Comp
L Device:D D1
U 1 1 5FC96FBA
P 7300 3850
F 0 "D1" H 7300 4067 50  0000 C CNN
F 1 "D" H 7300 3976 50  0000 C CNN
F 2 "" H 7300 3850 50  0001 C CNN
F 3 "~" H 7300 3850 50  0001 C CNN
	1    7300 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 2050 3900 2050
Wire Wire Line
	3650 2850 4500 2850
Text GLabel 7450 3850 2    50   Input ~ 0
GLV_PreBRB
Text GLabel 7150 3850 0    50   Input ~ 0
ChargerSupply12V
Text Notes 1650 6750 0    50   ~ 0
> When Charger is plugged in, GLV battery is removed\n
Text Notes 1650 6950 0    50   ~ 0
> When charger is plugged in, ChargerSupply12V connects to \nGLV_PreBRB through a diode
Text Notes 2900 3700 0    50   Italic 0
> If 12v is present on GLV and car is not charging, \npower is connected to ToPump.\n\n> If 12v is present on GLV and car is charging, \npower is not connected to ToPump.\n\n> If 12v is not present on GLV (BRB's pressed),\npower is not connected to ToPump.
Text Notes 2900 5750 0    50   ~ 0
> If 12v is present on GLV (not in shutdown), \npower from charger is connected to PWR_Charge.\n^(power here may or may not be present)\n\n> If 12v is not present on GLV (shutdown),\npower from charger is not connected to PWR_Charge.
Wire Bus Line
	1700 5400 1700 6000
Wire Bus Line
	1700 2850 1700 3600
Wire Bus Line
	1700 1550 1700 2300
Wire Bus Line
	10200 1350 10200 2700
Text Notes 8350 2800 0    50   ~ 0
Drive fan using MPOut3
$EndSCHEMATC
