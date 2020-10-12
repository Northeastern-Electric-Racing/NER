EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NER:Arduino_UNO_rev3 A2
U 1 1 5F8BEBC7
P 4700 2700
F 0 "A2" H 4700 2815 50  0000 C CNN
F 1 "Arduino_UNO_rev3" H 4700 2724 50  0000 C CNN
F 2 "" H 4700 2850 50  0001 C CNN
F 3 "" H 4700 2850 50  0001 C CNN
	1    4700 2700
	1    0    0    -1  
$EndComp
$Comp
L NER:KY-019 U10
U 1 1 5F8C06C7
P 4700 1950
F 0 "U10" V 4275 1925 50  0000 C CNN
F 1 "KY-019" V 4366 1925 50  0000 C CNN
F 2 "" H 4650 1650 50  0001 C CNN
F 3 "" H 4650 1650 50  0001 C CNN
	1    4700 1950
	0    1    1    0   
$EndComp
$Comp
L NER:CAN_Bus_Module U13
U 1 1 5F8C522E
P 7300 2950
F 0 "U13" H 7325 3065 50  0000 C CNN
F 1 "CAN_Bus_Module" H 7325 2974 50  0000 C CNN
F 2 "" H 7300 2950 50  0001 C CNN
F 3 "" H 7300 2950 50  0001 C CNN
	1    7300 2950
	1    0    0    -1  
$EndComp
Text Notes 6600 3950 0    50   ~ 0
Is a second CAN Module listed in the BOM?
NoConn ~ 6750 3100
Wire Wire Line
	6750 3200 6100 3200
Wire Wire Line
	6100 3200 6100 3450
Wire Wire Line
	6100 3450 5300 3450
Wire Wire Line
	6750 3300 6150 3300
Wire Wire Line
	6150 3300 6150 3650
Wire Wire Line
	6150 3650 5300 3650
Wire Wire Line
	6750 3400 6250 3400
Wire Wire Line
	6250 3400 6250 3550
Wire Wire Line
	6250 3550 5300 3550
Wire Wire Line
	6750 3700 6400 3700
Wire Wire Line
	6400 3700 6400 5300
Wire Wire Line
	6400 5300 3450 5300
Wire Wire Line
	3450 5300 3450 3850
Wire Wire Line
	3450 3850 4100 3850
Wire Wire Line
	6750 3500 6300 3500
Wire Wire Line
	6300 3500 6300 3750
Wire Wire Line
	6300 3750 5300 3750
Wire Wire Line
	6750 3600 6500 3600
Wire Wire Line
	6500 3600 6500 3100
Wire Wire Line
	6500 3100 6000 3100
Wire Wire Line
	6000 3100 6000 3350
Wire Wire Line
	6000 3350 5300 3350
Text HLabel 8300 3250 2    50   Input ~ 0
CAN_H
Text HLabel 8300 3500 2    50   Input ~ 0
CAN_L
Wire Wire Line
	8300 3250 7900 3250
Wire Wire Line
	8300 3500 7900 3500
Text HLabel 5800 2850 2    50   Input ~ 0
GLV+
Wire Wire Line
	5800 2850 5550 2850
Text HLabel 3350 2850 0    50   Input ~ 0
GLV_GND
Wire Wire Line
	3350 2850 4100 2850
Wire Wire Line
	5550 2850 5550 2000
Wire Wire Line
	5550 2000 4950 2000
Connection ~ 5550 2850
Wire Wire Line
	5550 2850 5300 2850
Wire Wire Line
	4400 1750 3600 1750
Wire Wire Line
	3600 1750 3600 5150
Wire Wire Line
	3600 5150 5550 5150
Wire Wire Line
	5550 5150 5550 3850
Wire Wire Line
	5550 3850 5300 3850
Text HLabel 1950 2000 0    50   Input ~ 0
Brake_Light_1+
Text HLabel 1950 2200 0    50   Input ~ 0
Brake_Light_2+
Text HLabel 1950 2400 0    50   Input ~ 0
Brake_Light_GND
Wire Wire Line
	4400 1850 3800 1850
Wire Wire Line
	3800 1850 3800 5450
Wire Wire Line
	3800 5450 5700 5450
Wire Wire Line
	5700 5450 5700 4100
Wire Wire Line
	5700 4100 5300 4100
Wire Wire Line
	4400 1950 4000 1950
Wire Wire Line
	4000 1950 4000 3950
Wire Wire Line
	4000 3950 4100 3950
Text Notes 6000 1800 0    50   ~ 0
To Do:\nFind component for LEDs (Power, Acc Power, and GND)\nWire LEDs to Relay (LEDS OUTSIDE OF THIS SHEET)\nChange pins to reflect the change of LEDs from inside to outside the sheet
$EndSCHEMATC
