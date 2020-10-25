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
	4700 2100 4700 3900
Wire Wire Line
	4700 4050 4850 4050
Wire Wire Line
	4750 4150 4850 4150
Wire Wire Line
	4750 1750 4750 4150
Wire Wire Line
<<<<<<< Updated upstream
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
=======
	4550 5400 4550 4400
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
NoConn ~ 6050 4300
NoConn ~ 6050 4400
NoConn ~ 6050 4700
NoConn ~ 6050 4800
NoConn ~ 6050 4900
=======
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
$Comp
L Device:R R6
U 1 1 5F8C0C28
P 5300 5900
F 0 "R6" V 5507 5900 50  0000 C CNN
F 1 "6.8MΩ" V 5416 5900 50  0000 C CNN
F 2 "" V 5230 5900 50  0001 C CNN
F 3 "~" H 5300 5900 50  0001 C CNN
	1    5300 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 5900 4650 4150
Wire Wire Line
	4650 5900 4900 5900
Connection ~ 4650 4150
Wire Wire Line
	4650 4150 4750 4150
NoConn ~ 7800 3450
Wire Wire Line
	9200 3600 8950 3600
Text HLabel 9200 3600 2    50   Input ~ 0
CAN_H
Wire Wire Line
	9200 3850 8950 3850
Text HLabel 9200 3850 2    50   Input ~ 0
CAN_L
$Comp
L NER:CAN_Bus_Module U11
U 1 1 5F847676
P 8350 3300
F 0 "U11" H 8375 3415 50  0000 C CNN
F 1 "CAN_Bus_Module" H 8375 3324 50  0000 C CNN
F 2 "" H 8350 3300 50  0001 C CNN
F 3 "" H 8350 3300 50  0001 C CNN
	1    8350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F8BB898
P 6950 4400
F 0 "R7" V 6743 4400 50  0000 C CNN
F 1 "10MΩ" V 6834 4400 50  0000 C CNN
F 2 "" V 6880 4400 50  0001 C CNN
F 3 "~" H 6950 4400 50  0001 C CNN
	1    6950 4400
	0    1    1    0   
$EndComp
Text HLabel 7250 4400 2    50   Input ~ 0
StartEnable
Wire Wire Line
	6050 4400 6500 4400
Wire Wire Line
	6500 4400 6500 5900
Wire Wire Line
	6500 5900 5450 5900
Connection ~ 6500 4400
Wire Wire Line
	6500 4400 6800 4400
Wire Wire Line
	6200 1750 6200 2150
Wire Wire Line
	3500 2950 4850 2950
Wire Wire Line
	6050 3850 7800 3850
Wire Wire Line
	7800 3650 6850 3650
Wire Wire Line
	6850 3650 6850 3750
Wire Wire Line
	6850 3750 6050 3750
Wire Wire Line
	7800 3550 6050 3550
Wire Wire Line
	7800 3750 7000 3750
Wire Wire Line
	7000 3700 7000 3750
Wire Wire Line
	6700 3700 6700 3650
Wire Wire Line
	6700 3650 6050 3650
Wire Wire Line
	6700 3700 7000 3700
Wire Wire Line
	7350 3450 7350 3950
Wire Wire Line
	6050 3450 7350 3450
Wire Wire Line
	7800 4050 7800 5400
Wire Wire Line
	4550 5400 7800 5400
$Comp
L Device:R R8
U 1 1 5F8E0B40
P 6700 4600
F 0 "R8" V 6493 4600 50  0000 C CNN
F 1 "10kΩ" V 6584 4600 50  0000 C CNN
F 2 "" V 6630 4600 50  0001 C CNN
F 3 "~" H 6700 4600 50  0001 C CNN
	1    6700 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F8E3DF1
P 7000 5100
F 0 "R9" H 6930 5054 50  0000 R CNN
F 1 "15kΩ" H 6930 5145 50  0000 R CNN
F 2 "" V 6930 5100 50  0001 C CNN
F 3 "~" H 7000 5100 50  0001 C CNN
	1    7000 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 4400 7250 4400
Wire Wire Line
	6050 4500 7250 4500
Wire Wire Line
	7350 3950 7800 3950
Wire Wire Line
	6050 4300 7250 4300
Wire Wire Line
	6850 4600 7000 4600
Wire Wire Line
	6050 4600 6550 4600
Wire Wire Line
	7000 4600 7000 4950
Connection ~ 7000 4600
Wire Wire Line
	7000 4600 7250 4600
Wire Wire Line
	7000 5250 7000 6050
Wire Wire Line
	7000 6050 4900 6050
Wire Wire Line
	4900 6050 4900 5900
Connection ~ 4900 5900
Wire Wire Line
	4900 5900 5150 5900
Text HLabel 6600 4050 2    50   Input ~ 0
IMD_Indicator(+)
Text HLabel 3500 4000 0    50   Input ~ 0
IMD_Indicator(-)
Text HLabel 7900 4700 2    50   Input ~ 0
BMS_Indicator(+)
Text HLabel 3500 3900 0    50   Input ~ 0
BMS_Indicator(-)
Wire Wire Line
	6600 4050 6050 4050
Wire Wire Line
	7900 4700 6050 4700
Wire Wire Line
	4700 3900 3500 3900
Connection ~ 4700 3900
Wire Wire Line
	4700 3900 4700 4000
Wire Wire Line
	4700 4000 3500 4000
Connection ~ 4700 4000
Wire Wire Line
	4700 4000 4700 4050
Text HLabel 7300 4800 2    50   Input ~ 0
Toggle(+)
Text HLabel 3450 4400 0    50   Input ~ 0
Toggle(-)
Wire Wire Line
	7300 4800 6050 4800
Wire Wire Line
	3450 4400 4550 4400
Connection ~ 4550 4400
Wire Wire Line
	4550 4400 4550 3950
>>>>>>> Stashed changes
$EndSCHEMATC
