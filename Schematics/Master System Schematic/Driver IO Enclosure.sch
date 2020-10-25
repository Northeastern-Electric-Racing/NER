EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 13
Title ""
Date "2020-10-12"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NER:CAN_Bus_Module U11
U 1 1 5F847676
P 7250 2900
F 0 "U11" H 7275 3015 50  0000 C CNN
F 1 "CAN_Bus_Module" H 7275 2924 50  0000 C CNN
F 2 "" H 7250 2900 50  0001 C CNN
F 3 "" H 7250 2900 50  0001 C CNN
	1    7250 2900
	1    0    0    -1  
$EndComp
$Comp
L NER:Arduino_UNO_rev3 A3
U 1 1 5F848DBE
P 5450 2800
F 0 "A3" H 5450 2915 50  0000 C CNN
F 1 "Arduino_UNO_rev3" H 5450 2824 50  0000 C CNN
F 2 "" H 5450 2950 50  0001 C CNN
F 3 "" H 5450 2950 50  0001 C CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
$Comp
L NER:KY-019 U12
U 1 1 5F8416AD
P 5400 2100
F 0 "U12" H 5678 2121 50  0000 L CNN
F 1 "KY-019" H 5678 2030 50  0000 L CNN
F 2 "" H 5350 1800 50  0001 C CNN
F 3 "" H 5350 1800 50  0001 C CNN
	1    5400 2100
	0    1    1    0   
$EndComp
Text HLabel 8100 3450 2    50   Input ~ 0
CAN_L
Wire Wire Line
	8100 3450 7850 3450
Text HLabel 8100 3200 2    50   Input ~ 0
CAN_H
Wire Wire Line
	8100 3200 7850 3200
Text HLabel 6200 1950 1    50   Input ~ 0
GLV+
Wire Wire Line
	6200 2950 6050 2950
NoConn ~ 6700 3050
Wire Wire Line
	6700 3150 6350 3150
Wire Wire Line
	6350 3150 6350 3550
Wire Wire Line
	6350 3550 6050 3550
Wire Wire Line
	6200 1950 6200 2150
Wire Wire Line
	6200 2150 5650 2150
Connection ~ 6200 2150
Wire Wire Line
	6200 2150 6200 2950
Wire Wire Line
	5100 2100 4700 2100
Wire Wire Line
	4700 2100 4700 4050
Wire Wire Line
	4700 4050 4850 4050
Wire Wire Line
	4750 4150 4850 4150
Wire Wire Line
	4750 1750 4750 4150
Wire Wire Line
	6700 3250 6400 3250
Wire Wire Line
	6400 3250 6400 3750
Wire Wire Line
	6400 3750 6050 3750
Wire Wire Line
	6700 3350 6450 3350
Wire Wire Line
	6450 3350 6450 3650
Wire Wire Line
	6450 3650 6050 3650
Wire Wire Line
	6700 3450 6500 3450
Wire Wire Line
	6500 3450 6500 3850
Wire Wire Line
	6500 3850 6050 3850
Wire Wire Line
	6700 3550 6600 3550
Wire Wire Line
	6600 3550 6600 3400
Wire Wire Line
	6600 3400 6250 3400
Wire Wire Line
	6250 3400 6250 3450
Wire Wire Line
	6250 3450 6050 3450
Wire Wire Line
	6700 3650 6700 5400
Wire Wire Line
	6700 5400 4550 5400
Wire Wire Line
	4550 5400 4550 3950
Wire Wire Line
	4550 3950 4850 3950
Wire Wire Line
	5100 1900 4350 1900
Wire Wire Line
	4350 1900 4350 5500
Wire Wire Line
	4350 5500 6400 5500
Wire Wire Line
	6400 5500 6400 3950
Wire Wire Line
	6400 3950 6050 3950
Text HLabel 3800 2950 0    50   Input ~ 0
GLV_GND
Wire Wire Line
	4850 2950 3800 2950
NoConn ~ 5650 2000
Wire Wire Line
	4250 2000 4250 5650
Wire Wire Line
	4250 5650 6300 5650
Wire Wire Line
	4250 2000 5100 2000
Wire Wire Line
	6300 4200 6050 4200
Wire Wire Line
	6300 4200 6300 5650
NoConn ~ 4850 3100
NoConn ~ 4850 3200
NoConn ~ 4850 3300
NoConn ~ 4850 3400
NoConn ~ 4850 3650
NoConn ~ 4850 3550
NoConn ~ 4850 3750
NoConn ~ 4850 4250
NoConn ~ 4850 3850
Connection ~ 4750 4150
NoConn ~ 4850 4400
NoConn ~ 4850 4500
NoConn ~ 4850 4600
NoConn ~ 4850 4700
NoConn ~ 4850 4800
NoConn ~ 4850 4900
NoConn ~ 6050 4300
NoConn ~ 6050 4400
NoConn ~ 6050 4700
NoConn ~ 6050 4800
NoConn ~ 6050 4900
NoConn ~ 6050 3150
NoConn ~ 6050 3250
NoConn ~ 6050 3350
Wire Wire Line
	6050 4600 7200 4600
Text HLabel 7200 4600 2    50   Input ~ 0
LED(+)
Wire Wire Line
	3500 4150 4750 4150
Text HLabel 3500 4150 0    50   Input ~ 0
Button_GND
Text HLabel 7200 4500 2    50   Input ~ 0
Button_Input
Wire Wire Line
	6050 4500 7200 4500
Text HLabel 7200 4050 2    50   Input ~ 0
Button_+5V
Wire Wire Line
	6050 4050 7200 4050
Text HLabel 5750 2300 2    50   Input ~ 0
Speaker+
Text HLabel 4750 1750 1    50   Input ~ 0
Speaker-
Wire Wire Line
	5650 2300 5750 2300
$EndSCHEMATC
