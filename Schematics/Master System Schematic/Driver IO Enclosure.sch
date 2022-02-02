EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 25
Title "Driver IO Dashboard"
Date "2020-11-01"
Rev "2"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NER:Arduino_UNO_rev3 A401
U 1 1 5F848DBE
P 5250 2850
F 0 "A401" H 5250 2965 50  0000 C CNN
F 1 "Arduino_UNO_rev3" H 5250 2874 50  0000 C CNN
F 2 "" H 5250 3000 50  0001 C CNN
F 3 "" H 5250 3000 50  0001 C CNN
	1    5250 2850
	1    0    0    -1  
$EndComp
$Comp
L NER:KY-019 U401
U 1 1 5F8416AD
P 5200 2150
F 0 "U401" H 5478 2171 50  0000 L CNN
F 1 "KY-019" H 5478 2080 50  0000 L CNN
F 2 "" H 5150 1850 50  0001 C CNN
F 3 "" H 5150 1850 50  0001 C CNN
	1    5200 2150
	0    1    1    0   
$EndComp
Text HLabel 6000 1800 1    50   Input ~ 0
GLV+
Wire Wire Line
	6000 3000 5850 3000
Wire Wire Line
	6000 2200 5450 2200
Connection ~ 6000 2200
Wire Wire Line
	6000 2200 6000 3000
Wire Wire Line
	4350 4000 4650 4000
Wire Wire Line
	4900 1950 4150 1950
Wire Wire Line
	4150 1950 4150 5550
Wire Wire Line
	4150 5550 6200 5550
Wire Wire Line
	6200 5550 6200 4000
Wire Wire Line
	6200 4000 5850 4000
Text HLabel 3300 3000 0    50   Input ~ 0
GLV_GND
NoConn ~ 5450 2050
Wire Wire Line
	4050 2050 4900 2050
NoConn ~ 4650 3150
NoConn ~ 4650 3250
NoConn ~ 4650 3350
NoConn ~ 4650 3450
NoConn ~ 4650 3700
NoConn ~ 4650 3600
NoConn ~ 4650 3800
NoConn ~ 4650 4300
NoConn ~ 4650 3900
NoConn ~ 4650 4450
NoConn ~ 4650 4550
NoConn ~ 4650 4650
NoConn ~ 4650 4750
NoConn ~ 4650 4850
NoConn ~ 4650 4950
NoConn ~ 5850 4950
NoConn ~ 5850 3200
NoConn ~ 5850 3300
NoConn ~ 5850 3400
Text HLabel 7050 4650 2    50   Input ~ 0
LED(+)
Text HLabel 3300 4200 0    50   Input ~ 0
Button_GND
Text HLabel 7050 4550 2    50   Input ~ 0
Button_Input
Text HLabel 7050 4350 2    50   Input ~ 0
Button_+5V
Text HLabel 5550 2350 2    50   Input ~ 0
Speaker+
Text HLabel 3300 4300 0    50   Input ~ 0
Speaker-
Wire Wire Line
	5450 2350 5550 2350
$Comp
L Device:R R401
U 1 1 5F8C0C28
P 5100 5950
F 0 "R401" V 5307 5950 50  0000 C CNN
F 1 "6.8MΩ" V 5216 5950 50  0000 C CNN
F 2 "" V 5030 5950 50  0001 C CNN
F 3 "~" H 5100 5950 50  0001 C CNN
	1    5100 5950
	0    -1   -1   0   
$EndComp
NoConn ~ 7600 3500
Wire Wire Line
	9000 3650 8750 3650
Text HLabel 9000 3650 2    50   Input ~ 0
CAN_H
Wire Wire Line
	9000 3900 8750 3900
Text HLabel 9000 3900 2    50   Input ~ 0
CAN_L
$Comp
L NER:CAN_Bus_Module U402
U 1 1 5F847676
P 8150 3350
F 0 "U402" H 8175 3465 50  0000 C CNN
F 1 "CAN_Bus_Module" H 8175 3374 50  0000 C CNN
F 2 "" H 8150 3350 50  0001 C CNN
F 3 "" H 8150 3350 50  0001 C CNN
	1    8150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R403
U 1 1 5F8BB898
P 6750 4450
F 0 "R403" V 6543 4450 50  0000 C CNN
F 1 "10MΩ" V 6634 4450 50  0000 C CNN
F 2 "" V 6680 4450 50  0001 C CNN
F 3 "~" H 6750 4450 50  0001 C CNN
	1    6750 4450
	0    1    1    0   
$EndComp
Text HLabel 7050 4450 2    50   Input ~ 0
StartEnable
Wire Wire Line
	5850 4450 6300 4450
Wire Wire Line
	6300 4450 6300 5950
Wire Wire Line
	6300 5950 5250 5950
Connection ~ 6300 4450
Wire Wire Line
	6300 4450 6600 4450
Wire Wire Line
	6000 1800 6000 2200
Wire Wire Line
	3300 3000 3350 3000
Wire Wire Line
	5850 3900 7600 3900
Wire Wire Line
	7600 3700 6650 3700
Wire Wire Line
	6650 3700 6650 3800
Wire Wire Line
	6650 3800 5850 3800
Wire Wire Line
	7600 3600 5850 3600
Wire Wire Line
	7600 3800 6800 3800
Wire Wire Line
	6800 3750 6800 3800
Wire Wire Line
	6500 3750 6500 3700
Wire Wire Line
	6500 3700 5850 3700
Wire Wire Line
	6500 3750 6800 3750
Wire Wire Line
	7150 3500 7150 4000
Wire Wire Line
	5850 3500 7150 3500
Wire Wire Line
	7600 4100 7600 5450
Wire Wire Line
	4350 5450 7600 5450
$Comp
L Device:R R402
U 1 1 5F8E0B40
P 6500 4650
F 0 "R402" V 6293 4650 50  0000 C CNN
F 1 "10kΩ" V 6384 4650 50  0000 C CNN
F 2 "" V 6430 4650 50  0001 C CNN
F 3 "~" H 6500 4650 50  0001 C CNN
	1    6500 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R404
U 1 1 5F8E3DF1
P 6800 5150
F 0 "R404" H 6730 5104 50  0000 R CNN
F 1 "15kΩ" H 6730 5195 50  0000 R CNN
F 2 "" V 6730 5150 50  0001 C CNN
F 3 "~" H 6800 5150 50  0001 C CNN
	1    6800 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 4450 7050 4450
Wire Wire Line
	5850 4550 7050 4550
Wire Wire Line
	7150 4000 7600 4000
Wire Wire Line
	5850 4350 7050 4350
Wire Wire Line
	6650 4650 6800 4650
Wire Wire Line
	5850 4650 6350 4650
Wire Wire Line
	6800 4650 6800 5000
Connection ~ 6800 4650
Wire Wire Line
	6800 4650 7050 4650
Wire Wire Line
	6800 5300 6800 6100
Wire Wire Line
	6800 6100 4700 6100
Wire Wire Line
	4700 6100 4700 5950
Connection ~ 4700 5950
Wire Wire Line
	4700 5950 4950 5950
Text HLabel 5850 900  2    50   Input ~ 0
IMD_Indicator(+)
Text HLabel 3300 4050 0    50   Input ~ 0
IMD_Indicator(-)
Text HLabel 5850 800  2    50   Input ~ 0
BMS_Indicator(+)
Text HLabel 3300 3950 0    50   Input ~ 0
BMS_Indicator(-)
Text HLabel 7050 4100 2    50   Input ~ 0
Toggle(+)
Text HLabel 3300 4400 0    50   Input ~ 0
Toggle(-)
Wire Wire Line
	4350 4000 4350 4150
Wire Wire Line
	3300 3950 3350 3950
Wire Wire Line
	3350 3950 3350 3000
Connection ~ 3350 3000
Wire Wire Line
	3350 3000 3400 3000
Wire Wire Line
	3300 4050 3400 4050
Wire Wire Line
	3400 4050 3400 3000
Connection ~ 3400 3000
Wire Wire Line
	3400 3000 3450 3000
Wire Wire Line
	3300 4200 3450 4200
Wire Wire Line
	3450 4200 3450 3000
Connection ~ 3450 3000
Wire Wire Line
	3450 3000 3500 3000
Wire Wire Line
	3300 4300 3500 4300
Wire Wire Line
	3500 4300 3500 3000
Connection ~ 3500 3000
Wire Wire Line
	3600 2150 3600 3000
Wire Wire Line
	3600 2150 4900 2150
Connection ~ 3600 3000
Wire Wire Line
	3600 3000 3650 3000
NoConn ~ 4650 4100
Wire Wire Line
	3650 5950 3650 3000
Wire Wire Line
	3650 5950 4700 5950
Connection ~ 3650 3000
Wire Wire Line
	3650 3000 4650 3000
NoConn ~ 4650 4200
Text HLabel 4900 800  0    50   Input ~ 0
BMS_Fault
Text HLabel 4900 900  0    50   Input ~ 0
IMD_Fault
Connection ~ 4350 4400
Wire Wire Line
	4350 4400 4350 5450
Wire Wire Line
	3300 4400 4350 4400
Wire Wire Line
	3500 3000 3600 3000
Wire Wire Line
	5850 4100 7050 4100
Wire Wire Line
	4900 800  5850 800 
Wire Wire Line
	4900 900  5850 900 
NoConn ~ 5850 4250
Wire Wire Line
	4050 2050 4050 4150
Wire Wire Line
	4050 4150 4350 4150
Connection ~ 4350 4150
Wire Wire Line
	4350 4150 4350 4400
NoConn ~ 5850 4750
NoConn ~ 5850 4850
$EndSCHEMATC
