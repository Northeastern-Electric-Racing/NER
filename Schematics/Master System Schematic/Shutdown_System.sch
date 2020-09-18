EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L Shutdown-rescue:3PoleSwitchingRelay-FSAE_Components K1
U 1 1 5DDDA065
P 4550 1450
F 0 "K1" H 4550 1565 50  0000 C CNN
F 1 "3PoleSwitchingRelay" H 4550 1474 50  0000 C CNN
F 2 "" H 4550 1450 50  0001 C CNN
F 3 "" H 4550 1450 50  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5DDDF7AD
P 3700 1650
F 0 "SW5" H 3700 1935 50  0000 C CNN
F 1 "IMD_LatchReset" H 3700 1844 50  0000 C CNN
F 2 "" H 3700 1850 50  0001 C CNN
F 3 "~" H 3700 1850 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1650 3400 1650
Wire Wire Line
	3400 1650 3400 1950
Wire Wire Line
	3400 1950 4100 1950
Wire Wire Line
	5000 2050 5250 2050
Wire Wire Line
	4000 1650 3900 1650
Wire Wire Line
	4000 1650 4100 1650
Connection ~ 4000 1650
$Comp
L Diode:1N4001 D1
U 1 1 5DDE3BD5
P 4550 1200
F 0 "D1" H 4550 1416 50  0000 C CNN
F 1 "1N4001" H 4550 1325 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4550 1025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4550 1200 50  0001 C CNN
	1    4550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 900  4000 1200
Wire Wire Line
	4000 1200 4400 1200
Connection ~ 4000 1200
Wire Wire Line
	4000 1200 4000 1650
Wire Wire Line
	5250 900  5250 2050
Wire Wire Line
	4700 1200 5100 1200
Wire Wire Line
	5100 1200 5100 1650
Wire Wire Line
	5100 1650 5000 1650
Wire Wire Line
	5100 1200 5100 1150
Connection ~ 5100 1200
$Comp
L power:GND #PWR?
U 1 1 5DDEE3D1
P 5100 1150
F 0 "#PWR?" H 5100 900 50  0001 C CNN
F 1 "GND" H 5105 977 50  0000 C CNN
F 2 "" H 5100 1150 50  0001 C CNN
F 3 "" H 5100 1150 50  0001 C CNN
	1    5100 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2400 5350 2400
Wire Wire Line
	5350 2400 5350 2300
Wire Wire Line
	5000 2550 5300 2550
Wire Wire Line
	5300 2550 5300 3050
Wire Wire Line
	4100 2650 3950 2650
Wire Wire Line
	3950 2650 3950 3050
Wire Wire Line
	3950 3050 4750 3050
Wire Wire Line
	5300 3050 4850 3050
Wire Wire Line
	4000 900  5250 900 
Wire Notes Line
	5500 3150 3300 3150
Wire Wire Line
	3150 1650 3400 1650
Wire Notes Line
	5500 750  5500 3150
Wire Notes Line
	3300 3150 3300 750 
Wire Notes Line
	5500 750  3300 750 
Text Notes 4300 850  2    39   ~ 0
Active-High Output Relay Latch
$Comp
L Shutdown-rescue:3PoleSwitchingRelay-FSAE_Components K2
U 1 1 5DE0D324
P 7350 1450
F 0 "K2" H 7350 1565 50  0000 C CNN
F 1 "3PoleSwitchingRelay" H 7350 1474 50  0000 C CNN
F 2 "" H 7350 1450 50  0001 C CNN
F 3 "" H 7350 1450 50  0001 C CNN
	1    7350 1450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5DE0D32A
P 6500 1650
F 0 "SW6" H 6500 1935 50  0000 C CNN
F 1 "BMS_LatchReset" H 6500 1844 50  0000 C CNN
F 2 "" H 6500 1850 50  0001 C CNN
F 3 "~" H 6500 1850 50  0001 C CNN
	1    6500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1650 6200 1650
Wire Wire Line
	6200 1650 6200 1950
Wire Wire Line
	6200 1950 6900 1950
Wire Wire Line
	7800 2050 8050 2050
Wire Wire Line
	6800 1650 6700 1650
Wire Wire Line
	6800 1650 6900 1650
Connection ~ 6800 1650
$Comp
L Diode:1N4001 D2
U 1 1 5DE0D338
P 7350 1200
F 0 "D2" H 7350 1416 50  0000 C CNN
F 1 "1N4001" H 7350 1325 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7350 1025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7350 1200 50  0001 C CNN
	1    7350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 900  6800 1200
Wire Wire Line
	6800 1200 7200 1200
Connection ~ 6800 1200
Wire Wire Line
	6800 1200 6800 1650
Wire Wire Line
	8050 900  8050 2050
Wire Wire Line
	7500 1200 7900 1200
Wire Wire Line
	7900 1200 7900 1650
Wire Wire Line
	7900 1650 7800 1650
Wire Wire Line
	7900 1200 7900 1150
Connection ~ 7900 1200
$Comp
L power:GND #PWR?
U 1 1 5DE0D348
P 7900 1150
F 0 "#PWR?" H 7900 900 50  0001 C CNN
F 1 "GND" H 7905 977 50  0000 C CNN
F 2 "" H 7900 1150 50  0001 C CNN
F 3 "" H 7900 1150 50  0001 C CNN
	1    7900 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 2550 8100 2550
Wire Wire Line
	8100 2550 8100 3050
Wire Wire Line
	6900 2650 6750 2650
Wire Wire Line
	6750 2650 6750 3050
Wire Wire Line
	6750 3050 7550 3050
Wire Wire Line
	8100 3050 7650 3050
Wire Wire Line
	6800 900  8050 900 
Wire Notes Line
	8300 3150 6100 3150
Wire Wire Line
	5950 1650 6200 1650
Wire Notes Line
	8300 750  8300 3150
Wire Notes Line
	6100 3150 6100 750 
Wire Notes Line
	8300 750  6100 750 
Text Notes 7100 850  2    39   ~ 0
Active-High Output Relay Latch
Wire Wire Line
	5350 2300 6900 2300
$Comp
L Device:LED D3
U 1 1 5DE1D84D
P 8950 1750
F 0 "D3" H 8943 1495 50  0000 C CNN
F 1 "SSOK2" H 8943 1586 50  0000 C CNN
F 2 "" H 8950 1750 50  0001 C CNN
F 3 "~" H 8950 1750 50  0001 C CNN
	1    8950 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5DE1EC2E
P 8950 2150
F 0 "D4" H 8943 1895 50  0000 C CNN
F 1 "SSOK1" H 8943 1986 50  0000 C CNN
F 2 "" H 8950 2150 50  0001 C CNN
F 3 "~" H 8950 2150 50  0001 C CNN
	1    8950 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 2400 8650 2150
Wire Wire Line
	8650 2150 8800 2150
Wire Wire Line
	8650 2150 8650 1750
Wire Wire Line
	8650 1750 8800 1750
Connection ~ 8650 2150
Wire Wire Line
	9100 1750 9300 1750
Wire Wire Line
	9100 2150 9300 2150
Wire Wire Line
	9300 2150 9300 1750
$Comp
L Switch:SW_Push_Open SW7
U 1 1 5DE273AC
P 9650 3450
F 0 "SW7" V 9696 3397 50  0000 R CNN
F 1 "Cockpit Shutdown (BRB)" V 9605 3397 50  0000 R CNN
F 2 "" H 9650 3650 50  0001 C CNN
F 3 "~" H 9650 3650 50  0001 C CNN
	1    9650 3450
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW8
U 1 1 5DE2B1DC
P 9650 4500
F 0 "SW8" V 9604 4598 50  0000 L CNN
F 1 "TSMS" V 9695 4598 50  0000 L CNN
F 2 "" H 9650 4500 50  0001 C CNN
F 3 "~" H 9650 4500 50  0001 C CNN
	1    9650 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2400 8650 2400
Connection ~ 8650 2400
Wire Wire Line
	8650 2400 9650 2400
Connection ~ 9300 1750
Wire Wire Line
	9300 1750 9650 1750
Text GLabel 9650 1750 2    50   BiDi ~ 0
CHASSIS_GND
Text HLabel 9700 5400 2    50   Output ~ 0
LatchingStartStopController
Text GLabel 9700 6150 2    50   BiDi ~ 0
CHASSIS_GND
Text HLabel 3150 1650 0    50   Input ~ 0
IMD_Status
Connection ~ 3400 1650
Text HLabel 5950 1650 0    50   Input ~ 0
BMS_Status
Connection ~ 6200 1650
Text HLabel 7800 3500 2    50   Output ~ 0
BMSErrorIndicatorControl_B
Text HLabel 7800 3400 2    50   Output ~ 0
BMSErrorIndicatorControl_A
Wire Wire Line
	7650 3050 7650 3400
Wire Wire Line
	7550 3050 7550 3500
Wire Wire Line
	7650 3400 7800 3400
Wire Wire Line
	7550 3500 7800 3500
Text HLabel 5000 3400 2    50   Output ~ 0
IMDErrorIndicatorControl_A
Text HLabel 5000 3500 2    50   Output ~ 0
IMDErrorIndicatorControl_B
Wire Wire Line
	5000 3400 4850 3400
Wire Wire Line
	4850 3050 4850 3400
Wire Wire Line
	4750 3500 5000 3500
Wire Wire Line
	4750 3050 4750 3500
NoConn ~ 5000 2750
NoConn ~ 5000 2200
NoConn ~ 5000 1850
NoConn ~ 7800 1850
NoConn ~ 7800 2200
NoConn ~ 7800 2750
Text HLabel 9700 5650 2    50   Output ~ 0
AIR_Shutdown+
Text HLabel 9700 5750 2    50   Output ~ 0
AIR_Shutdown-
Wire Wire Line
	9650 5650 9700 5650
Wire Wire Line
	1850 1950 3400 1950
Wire Wire Line
	9700 5750 9650 5750
Wire Wire Line
	9650 6150 9700 6150
Wire Wire Line
	7050 5750 9650 5750
Connection ~ 9650 5750
Wire Wire Line
	9650 5750 9650 6150
Wire Wire Line
	9700 5400 9650 5400
Wire Wire Line
	9650 5400 9650 5650
Wire Wire Line
	9650 2400 9650 3250
Wire Wire Line
	9650 3650 9650 4300
Wire Wire Line
	9650 4700 9650 5400
Connection ~ 9650 5400
Connection ~ 3400 1950
$EndSCHEMATC
