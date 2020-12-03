EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Vehicle Power Management Board"
Date "2020-12-03"
Rev "3"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 "Connections for CAN, Power, Ground. Quick connect ground to chassis."
Comment4 "Relays to control BMS charge power, GLV charge power and pump."
$EndDescr
$Comp
L Relay:G5Q-1A K2
U 1 1 5FB1F228
P 7800 2600
F 0 "K2" V 8200 2600 50  0000 C CNN
F 1 "Relay_NO" V 8300 2600 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 8150 2550 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 7800 2600 50  0001 C CNN
	1    7800 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FB4371C
P 8150 2400
F 0 "#PWR02" H 8150 2150 50  0001 C CNN
F 1 "GND" H 8155 2227 50  0000 C CNN
F 2 "" H 8150 2400 50  0001 C CNN
F 3 "" H 8150 2400 50  0001 C CNN
	1    8150 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5FB45EBE
P 7800 2050
F 0 "D3" H 7800 2267 50  0000 C CNN
F 1 "D" H 7800 2176 50  0000 C CNN
F 2 "" H 7800 2050 50  0001 C CNN
F 3 "~" H 7800 2050 50  0001 C CNN
	1    7800 2050
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5Q-1A K3
U 1 1 5FB7BEBD
P 6350 3000
F 0 "K3" V 6750 3000 50  0000 C CNN
F 1 "Relay_NO" V 6850 3000 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 6700 2950 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2400 5800 2400
$Comp
L Device:D D2
U 1 1 5FBB2634
P 5450 2100
F 0 "D2" H 5450 2317 50  0000 C CNN
F 1 "D" H 5450 2226 50  0000 C CNN
F 2 "" H 5450 2100 50  0001 C CNN
F 3 "~" H 5450 2100 50  0001 C CNN
	1    5450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2100 5100 2100
Wire Wire Line
	5100 2100 5100 2400
Wire Wire Line
	5100 2400 5150 2400
Wire Wire Line
	5800 2400 5800 2100
Wire Wire Line
	5800 2100 5600 2100
$Comp
L Device:D D4
U 1 1 5FBB8ED4
P 6350 2500
F 0 "D4" H 6350 2717 50  0000 C CNN
F 1 "D" H 6350 2626 50  0000 C CNN
F 2 "" H 6350 2500 50  0001 C CNN
F 3 "~" H 6350 2500 50  0001 C CNN
	1    6350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2500 6000 2500
Wire Wire Line
	6000 2500 6000 2800
Wire Wire Line
	6000 2800 6050 2800
Wire Wire Line
	6500 2500 6700 2500
Wire Wire Line
	6700 2500 6700 2800
Wire Wire Line
	6700 2800 6650 2800
Connection ~ 6000 2800
$Comp
L power:GND #PWR03
U 1 1 5FBDA779
P 6700 2800
F 0 "#PWR03" H 6700 2550 50  0001 C CNN
F 1 "GND" H 6705 2627 50  0000 C CNN
F 2 "" H 6700 2800 50  0001 C CNN
F 3 "" H 6700 2800 50  0001 C CNN
	1    6700 2800
	1    0    0    -1  
$EndComp
Connection ~ 6700 2800
$Comp
L power:GND #PWR01
U 1 1 5FBDAEA2
P 5800 2400
F 0 "#PWR01" H 5800 2150 50  0001 C CNN
F 1 "GND" H 5805 2227 50  0000 C CNN
F 2 "" H 5800 2400 50  0001 C CNN
F 3 "" H 5800 2400 50  0001 C CNN
	1    5800 2400
	1    0    0    -1  
$EndComp
Connection ~ 5800 2400
Wire Wire Line
	7650 2050 7450 2050
Wire Wire Line
	7450 2050 7450 2400
Wire Wire Line
	7450 2400 7500 2400
Wire Wire Line
	8100 2400 8150 2400
Wire Wire Line
	8150 2400 8150 2050
Wire Wire Line
	8150 2050 7950 2050
Connection ~ 8150 2400
Wire Wire Line
	5750 2800 6000 2800
$Comp
L Relay:MSxx-1Bxx-75 K1
U 1 1 5FB8381E
P 5450 2600
F 0 "K1" V 5850 2600 50  0000 C CNN
F 1 "Relay_NC" V 5950 2600 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 5800 2550 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 5450 2600 50  0001 C CNN
	1    5450 2600
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5FC0FA27
P 5850 3200
F 0 "F1" V 6047 3200 50  0000 C CNN
F 1 "12A" V 5956 3200 50  0000 C CNN
F 2 "" V 5780 3200 50  0001 C CNN
F 3 "~" H 5850 3200 50  0001 C CNN
	1    5850 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 3200 6050 3200
Text Notes 6250 5700 0    79   ~ 16
Notes
Text Notes 6250 5850 0    50   ~ 0
>Battery --> GLVMS --> GLV_PreBRB --> BRB1 --> BRB2 --> Fusebox --> GLV_BMSContainer\n
Text Notes 6250 5950 0    50   ~ 0
> When charger is plugged in, GLV battery is removed\n
Text Notes 6250 6150 0    50   ~ 0
> When charger is plugged in, ChargerSupply12V connects to \nGLV_PreBRB through the charger lockout relay.\n
Text Notes 4850 4500 0    50   Italic 0
> If 12v is present on GLV and car is not charging, \npower is connected to ToPump.\n\n> If 12v is present on GLV and car is charging, \npower is not connected to ToPump.\n\n> If 12v is not present on GLV (BRB's pressed),\npower is not connected to ToPump.
Text Notes 7150 4350 0    50   ~ 0
> If 12v is present on GLV (not in shutdown), \npower from charger is connected to PWR_Charge.\n^(power here may or may not be present)\n\n> If 12v is not present on GLV (shutdown),\npower from charger is not connected to PWR_Charge.
Text Notes 2800 4350 0    50   ~ 0
> If car is charging, GLV_PreBRB\n will be driven by ChargerSupply12V\n\n> If car is not charging, GLV_PreBRB \nwill be disconnected from the \ncharger supply
Connection ~ 5100 2400
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5FBD5D22
P 1100 6050
F 0 "J2" H 992 5625 50  0000 C CNN
F 1 "GLV_Signal" H 992 5716 50  0000 C CNN
F 2 "" H 1100 6050 50  0001 C CNN
F 3 "~" H 1100 6050 50  0001 C CNN
	1    1100 6050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5FC1125D
P 1100 5400
F 0 "J4" H 992 4975 50  0000 C CNN
F 1 "Charge_Signal" H 992 5066 50  0000 C CNN
F 2 "" H 1100 5400 50  0001 C CNN
F 3 "~" H 1100 5400 50  0001 C CNN
	1    1100 5400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5FC5C590
P 1100 3300
F 0 "J5" H 992 2975 50  0000 C CNN
F 1 "PumpIO" H 992 3066 50  0000 C CNN
F 2 "" H 1100 3300 50  0001 C CNN
F 3 "~" H 1100 3300 50  0001 C CNN
	1    1100 3300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5FC6E9A5
P 10100 1750
F 0 "J6" H 9992 1425 50  0000 C CNN
F 1 "Therm_PWR" H 9992 1516 50  0000 C CNN
F 2 "" H 10100 1750 50  0001 C CNN
F 3 "~" H 10100 1750 50  0001 C CNN
	1    10100 1750
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 5FC7CBDE
P 1100 6800
F 0 "J7" H 992 6375 50  0000 C CNN
F 1 "Therm_Signal" H 992 6466 50  0000 C CNN
F 2 "" H 1100 6800 50  0001 C CNN
F 3 "~" H 1100 6800 50  0001 C CNN
	1    1100 6800
	-1   0    0    1   
$EndComp
NoConn ~ 1300 6900
$Comp
L Device:Fuse F2
U 1 1 5FB0792D
P 8950 2450
F 0 "F2" V 9147 2450 50  0000 C CNN
F 1 "5A" V 9056 2450 50  0000 C CNN
F 2 "" V 8880 2450 50  0001 C CNN
F 3 "~" H 8950 2450 50  0001 C CNN
	1    8950 2450
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5FC8396E
P 1100 1350
F 0 "J1" H 992 1025 50  0000 C CNN
F 1 "GLV/Charge_PWR" H 992 1116 50  0000 C CNN
F 2 "" H 1100 1350 50  0001 C CNN
F 3 "~" H 1100 1350 50  0001 C CNN
	1    1100 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FCA9C4C
P 1700 1550
F 0 "#PWR04" H 1700 1300 50  0001 C CNN
F 1 "GND" H 1705 1377 50  0000 C CNN
F 2 "" H 1700 1550 50  0001 C CNN
F 3 "" H 1700 1550 50  0001 C CNN
	1    1700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5FB100A8
P 8950 2350
F 0 "F3" V 9147 2350 50  0000 C CNN
F 1 "5A" V 9056 2350 50  0000 C CNN
F 2 "" V 8880 2350 50  0001 C CNN
F 3 "~" H 8950 2350 50  0001 C CNN
	1    8950 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 1350 1300 1350
$Comp
L power:GND #PWR07
U 1 1 5FD5EF12
P 9250 1900
F 0 "#PWR07" H 9250 1650 50  0001 C CNN
F 1 "GND" H 9255 1727 50  0000 C CNN
F 2 "" H 9250 1900 50  0001 C CNN
F 3 "" H 9250 1900 50  0001 C CNN
	1    9250 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 2400 7450 2400
Connection ~ 7450 2400
Wire Wire Line
	7250 1350 7250 2800
Wire Wire Line
	7250 2800 7500 2800
Wire Wire Line
	5000 2400 5000 1350
Wire Wire Line
	5000 2400 5100 2400
Connection ~ 5000 1350
Wire Wire Line
	5000 1350 7250 1350
Wire Wire Line
	1700 2200 1300 2200
$Comp
L power:GND #PWR05
U 1 1 5FCC4D73
P 1700 2350
F 0 "#PWR05" H 1700 2100 50  0001 C CNN
F 1 "GND" H 1705 2177 50  0000 C CNN
F 2 "" H 1700 2350 50  0001 C CNN
F 3 "" H 1700 2350 50  0001 C CNN
	1    1700 2350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FCBC47D
P 9250 2600
F 0 "#PWR08" H 9250 2350 50  0001 C CNN
F 1 "GND" H 9255 2427 50  0000 C CNN
F 2 "" H 9250 2600 50  0001 C CNN
F 3 "" H 9250 2600 50  0001 C CNN
	1    9250 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 5FDFEF4C
P 1100 2200
F 0 "J10" H 1250 2000 50  0000 R CNN
F 1 "GND_QC" H 1400 2100 50  0000 R CNN
F 2 "" H 1100 2200 50  0001 C CNN
F 3 "~" H 1100 2200 50  0001 C CNN
	1    1100 2200
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Female J9
U 1 1 5FDAC8DD
P 4100 6050
F 0 "J9" H 3992 5525 50  0000 C CNN
F 1 "BMS_Signal" H 3992 5616 50  0000 C CNN
F 2 "" H 4100 6050 50  0001 C CNN
F 3 "~" H 4100 6050 50  0001 C CNN
	1    4100 6050
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 5FD0C7AC
P 10100 2350
F 0 "J8" H 9992 2025 50  0000 C CNN
F 1 "BMS_PWR" H 9992 2116 50  0000 C CNN
F 2 "" H 10100 2350 50  0001 C CNN
F 3 "~" H 10100 2350 50  0001 C CNN
	1    10100 2350
	1    0    0    1   
$EndComp
Wire Wire Line
	6650 3200 6750 3200
Wire Wire Line
	6750 3200 6750 3650
Wire Wire Line
	6750 3650 5950 3650
Wire Wire Line
	5950 3650 5950 3300
Wire Wire Line
	8750 1750 8750 2350
Wire Wire Line
	8750 2350 8800 2350
Connection ~ 8750 1750
Wire Wire Line
	8800 2450 8750 2450
Wire Wire Line
	8750 2450 8750 2800
Wire Wire Line
	8100 2800 8750 2800
Wire Wire Line
	1300 5950 2700 5950
Wire Wire Line
	1300 6600 2700 6600
Wire Wire Line
	1300 5300 2700 5300
Connection ~ 2700 5950
Wire Wire Line
	1300 5400 2600 5400
Wire Wire Line
	1300 6700 2600 6700
Wire Wire Line
	1300 5500 2500 5500
Wire Wire Line
	1300 6800 2500 6800
Wire Wire Line
	1300 6050 2600 6050
Connection ~ 2600 6050
Wire Wire Line
	1300 6150 2500 6150
Connection ~ 2500 6150
Wire Wire Line
	2700 5950 3900 5950
Wire Wire Line
	2600 6050 3900 6050
Wire Wire Line
	2500 6150 3900 6150
NoConn ~ 3400 5850
Wire Wire Line
	1700 1350 1700 1550
Wire Wire Line
	1700 2200 1700 2350
Text Notes 6250 6500 0    50   ~ 0
> If the battery is connected to the GLV system before the\ncharger disconnects, the charger lockout relay will become stuck\nopen. This will not be an issue if the GLVMS is always switched off\nwhile charging.
Wire Wire Line
	9250 2250 9900 2250
Wire Wire Line
	9250 1650 9250 1900
Wire Wire Line
	9250 1650 9900 1650
Wire Wire Line
	9250 2250 9250 2600
Wire Wire Line
	1300 1250 7350 1250
Wire Wire Line
	1300 1450 2550 1450
Wire Wire Line
	2550 1450 2550 1350
Text Notes 1750 1250 0    50   ~ 0
GLV_BMSContainer\n
Text Notes 1750 1450 0    50   ~ 0
ChargerSupply12V
Wire Wire Line
	1300 3300 5950 3300
Text Notes 1750 3300 0    50   ~ 0
Pump_PWR\n
Text Notes 1750 3200 0    50   ~ 0
GLV_PreBRB\n
Wire Wire Line
	9100 2350 9900 2350
Wire Wire Line
	9100 2450 9900 2450
Wire Wire Line
	8750 1750 9900 1750
Wire Wire Line
	7350 1750 7350 2400
Wire Wire Line
	7350 1250 7350 1750
Connection ~ 7350 1750
Wire Wire Line
	7350 1750 8750 1750
Wire Wire Line
	3300 5750 3300 5850
Wire Wire Line
	3300 5850 1300 5850
Wire Wire Line
	3300 5750 3900 5750
Wire Wire Line
	3900 6250 2800 6250
Wire Wire Line
	2800 6250 2800 5200
Wire Wire Line
	2800 5200 1300 5200
Text Notes 1750 5200 0    50   ~ 0
ChargerSafety\n
Text Notes 1750 5300 0    50   ~ 0
CANH_Chrg
Text Notes 1750 5400 0    50   ~ 0
CANL_Chrg
Text Notes 1750 5500 0    50   ~ 0
CANS_Chrg
$Comp
L power:GND #PWR06
U 1 1 5FC9259C
P 2500 6900
F 0 "#PWR06" H 2500 6650 50  0001 C CNN
F 1 "GND" H 2505 6727 50  0000 C CNN
F 2 "" H 2500 6900 50  0001 C CNN
F 3 "" H 2500 6900 50  0001 C CNN
	1    2500 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 6800 2500 6900
Connection ~ 2500 6800
Text Notes 1750 5850 0    50   ~ 0
BMS_Fault
Text Notes 1750 5950 0    50   ~ 0
CANH_Main
Text Notes 1750 6050 0    50   ~ 0
CANL_Main
Text Notes 1750 6150 0    50   ~ 0
CANS_Main
Text Notes 1750 6600 0    50   ~ 0
CANH_Thrm
Text Notes 1750 6700 0    50   ~ 0
CANL_Thrm
Text Notes 1750 6800 0    50   ~ 0
CANS_Thrm
Wire Wire Line
	3400 5850 3900 5850
Text Notes 3850 5750 2    50   ~ 0
MP_EN
Text Notes 3850 5850 2    50   ~ 0
MPOut3
Text Notes 3850 5950 2    50   ~ 0
CANH_BMS
Text Notes 3850 6050 2    50   ~ 0
CANL_BMS
Text Notes 3850 6150 2    50   ~ 0
CANS_BMS
Text Notes 3850 6250 2    50   ~ 0
Charge_Safety
Text Notes 9850 1750 2    50   ~ 0
ThermEXIn12V
Text Notes 9850 2350 2    50   ~ 0
PWR_Ready
Text Notes 9850 2450 2    50   ~ 0
PWR_Charge
Wire Wire Line
	2700 5950 2700 6600
Wire Wire Line
	2600 6050 2600 6700
Wire Wire Line
	2500 6150 2500 6800
Wire Wire Line
	2700 5300 2700 5950
Wire Wire Line
	2600 5400 2600 6050
Wire Wire Line
	2500 5500 2500 6150
Wire Wire Line
	2550 1350 3350 1350
Wire Wire Line
	1300 3200 3350 3200
$Comp
L Device:D_Schottky D1
U 1 1 5FCB7799
P 3350 2150
F 0 "D1" V 3396 2070 50  0000 R CNN
F 1 "D_Schottky" V 3305 2070 50  0000 R CNN
F 2 "" H 3350 2150 50  0001 C CNN
F 3 "~" H 3350 2150 50  0001 C CNN
	1    3350 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 2000 3350 1350
Connection ~ 3350 1350
Wire Wire Line
	3350 1350 5000 1350
Wire Wire Line
	3350 2300 3350 3200
Connection ~ 3350 3200
Wire Wire Line
	3350 3200 5700 3200
$EndSCHEMATC
