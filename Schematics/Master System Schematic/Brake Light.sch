EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 17 27
Title "Brake Light CAN Box"
Date "2020-11-01"
Rev "2"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NER:KY-019 U15
U 1 1 5F8C06C7
P 4700 1950
F 0 "U15" V 4275 1925 50  0000 C CNN
F 1 "KY-019" V 4366 1925 50  0000 C CNN
F 2 "" H 4650 1650 50  0001 C CNN
F 3 "" H 4650 1650 50  0001 C CNN
	1    4700 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 5300 3450 3850
Text HLabel 5800 2850 2    50   Input ~ 0
GLV+
Text HLabel 3350 2850 0    50   Input ~ 0
GLV_GND
Wire Wire Line
	5550 2850 5550 2000
Wire Wire Line
	5550 2000 4950 2000
Connection ~ 5550 2850
Wire Wire Line
	4400 1750 3600 1750
Wire Wire Line
	3600 1750 3600 5150
Text HLabel 6000 2350 2    50   Input ~ 0
Brake_Light_1+
Text HLabel 6000 2150 2    50   Input ~ 0
Brake_Light_2+
Text HLabel 3350 3050 0    50   Input ~ 0
Brake_Light_GND
Wire Wire Line
	4400 1850 3800 1850
Wire Wire Line
	4400 1950 4000 1950
Wire Wire Line
	5550 2850 5650 2850
Wire Wire Line
	4950 2150 6000 2150
Wire Wire Line
	6000 2350 5650 2350
Wire Wire Line
	5650 2350 5650 2850
Connection ~ 5650 2850
Wire Wire Line
	5650 2850 5800 2850
NoConn ~ 4950 1850
Wire Wire Line
	5700 3850 5700 3350
Wire Wire Line
	3450 5300 6100 5300
NoConn ~ 5300 4500
NoConn ~ 4100 4150
NoConn ~ 4100 3200
NoConn ~ 4100 3300
NoConn ~ 4100 3100
NoConn ~ 4100 3000
NoConn ~ 4100 3650
Wire Wire Line
	5550 2850 5300 2850
NoConn ~ 4100 3450
NoConn ~ 4100 3550
Wire Wire Line
	5700 3350 5300 3350
NoConn ~ 5300 4600
NoConn ~ 5300 3050
NoConn ~ 5300 3150
NoConn ~ 5300 4700
NoConn ~ 5300 4800
NoConn ~ 5300 3250
NoConn ~ 4100 4800
NoConn ~ 4100 4700
NoConn ~ 4100 4600
NoConn ~ 4100 4500
NoConn ~ 4100 4400
NoConn ~ 4100 4300
Wire Wire Line
	3450 3850 3800 3850
NoConn ~ 4100 3750
$Comp
L NER:Arduino_UNO_rev3 A3
U 1 1 5F8BEBC7
P 4700 2700
F 0 "A3" H 4700 2815 50  0000 C CNN
F 1 "Arduino_UNO_rev3" H 4700 2724 50  0000 C CNN
F 2 "" H 4700 2850 50  0001 C CNN
F 3 "" H 4700 2850 50  0001 C CNN
	1    4700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3550 5600 3550
Wire Wire Line
	5600 3550 5600 3600
Wire Wire Line
	5800 3600 5800 3650
Wire Wire Line
	5600 3600 5800 3600
Wire Wire Line
	5750 3550 5750 3650
Wire Wire Line
	5750 3650 5300 3650
Wire Wire Line
	3600 5150 5500 5150
Wire Wire Line
	5500 5150 5500 3850
Wire Wire Line
	5500 3850 5300 3850
NoConn ~ 5300 4400
NoConn ~ 5300 4100
Wire Wire Line
	3800 1850 3800 3850
Connection ~ 3800 3850
Wire Wire Line
	3800 3850 4100 3850
Wire Wire Line
	3350 3050 3450 3050
Wire Wire Line
	4000 1950 4000 2850
Connection ~ 4000 2850
Wire Wire Line
	4000 2850 4100 2850
Wire Wire Line
	3350 2850 3450 2850
Wire Wire Line
	3450 3050 3450 2850
Connection ~ 3450 2850
Wire Wire Line
	3450 2850 4000 2850
NoConn ~ 4100 4050
Wire Wire Line
	4100 3950 3350 3950
Text HLabel 3350 3950 0    50   Input ~ 0
CAN_SHIELD
$Comp
L NER:CAN_Bus_Module U13
U 1 1 5F8C522E
P 7450 3200
F 0 "U13" H 7475 3315 50  0000 C CNN
F 1 "CAN_Bus_Module" H 7475 3224 50  0000 C CNN
F 2 "" H 7450 3200 50  0001 C CNN
F 3 "" H 7450 3200 50  0001 C CNN
	1    7450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5300 6100 3950
Wire Wire Line
	8450 3500 8050 3500
Wire Wire Line
	8450 3750 8050 3750
NoConn ~ 6900 3350
Text HLabel 8450 3750 2    50   Input ~ 0
CAN_L
Text HLabel 8450 3500 2    50   Input ~ 0
CAN_H
Wire Wire Line
	5300 3450 6700 3450
Wire Wire Line
	5750 3550 6600 3550
Wire Wire Line
	5800 3650 6500 3650
Wire Wire Line
	5700 3850 6300 3850
Wire Wire Line
	6100 3950 6400 3950
Wire Wire Line
	6900 4550 6700 4550
Connection ~ 6700 3450
Wire Wire Line
	6700 3450 6900 3450
Wire Wire Line
	6900 4650 6600 4650
Connection ~ 6600 3550
Wire Wire Line
	6600 3550 6900 3550
Wire Wire Line
	6900 4750 6500 4750
Connection ~ 6500 3650
Wire Wire Line
	6500 3650 6900 3650
Wire Wire Line
	6900 4850 6400 4850
Connection ~ 6400 3950
Wire Wire Line
	6400 3950 6900 3950
Wire Wire Line
	6900 4950 6300 4950
Connection ~ 6300 3850
Wire Wire Line
	6300 3850 6900 3850
Wire Wire Line
	5300 3750 6900 3750
Wire Wire Line
	5900 3950 5300 3950
Wire Wire Line
	5900 4450 6900 4450
$Comp
L NER:SD_Card_Module U8
U 1 1 6053C07D
P 7400 4250
F 0 "U8" H 7400 4300 50  0000 C CNN
F 1 "SD_Card_Module" H 7400 4200 50  0000 C BNN
F 2 "" H 7400 4250 50  0001 C CNN
F 3 "" H 7400 4250 50  0001 C CNN
	1    7400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3950 5900 4450
Wire Wire Line
	6300 3850 6300 4950
Wire Wire Line
	6400 3950 6400 4850
Wire Wire Line
	6500 3650 6500 4750
Wire Wire Line
	6600 3550 6600 4650
Wire Wire Line
	6700 3450 6700 4550
$EndSCHEMATC
