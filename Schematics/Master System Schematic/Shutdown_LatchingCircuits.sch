EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 10
Title "Shutdown Latching Circuits"
Date "2020-09-17"
Rev "2"
Comp "Northeastern Electric Racing"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 7800 3800
NoConn ~ 7800 3250
NoConn ~ 7800 2900
NoConn ~ 4600 2800
NoConn ~ 4600 3150
NoConn ~ 4600 3700
Wire Wire Line
	4350 4000 4350 4450
Wire Wire Line
	4350 4450 4600 4450
Wire Wire Line
	4450 4000 4450 4350
Wire Wire Line
	4600 4350 4450 4350
Text HLabel 4600 4450 2    50   Output ~ 0
IMDErrorIndicatorControl_OUT
Text HLabel 4600 4350 2    50   Output ~ 0
IMDErrorIndicatorControl_IN
Wire Wire Line
	7550 4550 7800 4550
Wire Wire Line
	7650 4450 7800 4450
Wire Wire Line
	7550 4100 7550 4550
Wire Wire Line
	7650 4100 7650 4450
Text HLabel 7800 4450 2    50   Output ~ 0
BMSErrorIndicatorControl_IN
Text HLabel 7800 4550 2    50   Output ~ 0
BMSErrorIndicatorControl_OUT
Connection ~ 6200 2700
Text HLabel 5850 1500 0    50   Input ~ 0
BMS_Status
Connection ~ 3000 2600
Text HLabel 2650 1500 0    50   Input ~ 0
IMD_Status
Text Notes 7100 1900 2    39   ~ 0
Active-High Output Relay Latch
Wire Notes Line
	8300 1800 6100 1800
Wire Notes Line
	6100 4200 6100 1800
Wire Notes Line
	8300 1800 8300 4200
Wire Wire Line
	5950 2700 6200 2700
Wire Notes Line
	8300 4200 6100 4200
Wire Wire Line
	6800 1950 8050 1950
Wire Wire Line
	8100 4100 7650 4100
Wire Wire Line
	6750 4100 7550 4100
Wire Wire Line
	6750 3700 6750 4100
Wire Wire Line
	6900 3700 6750 3700
Wire Wire Line
	8100 3600 8100 4100
Wire Wire Line
	7800 3600 8100 3600
Wire Wire Line
	7900 2700 7800 2700
Wire Wire Line
	7900 2250 7900 2700
Wire Wire Line
	7500 2250 7900 2250
Wire Wire Line
	8050 1950 8050 3100
Wire Wire Line
	6800 2250 6800 2700
Connection ~ 6800 2250
Wire Wire Line
	6800 2250 7200 2250
Wire Wire Line
	6800 1950 6800 2250
$Comp
L Diode:1N4001 D2
U 1 1 5DE0D338
P 7350 2250
F 0 "D2" H 7350 2466 50  0000 C CNN
F 1 "1N4001" H 7350 2375 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7350 2075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7350 2250 50  0001 C CNN
	1    7350 2250
	1    0    0    -1  
$EndComp
Connection ~ 6800 2700
Wire Wire Line
	6800 2700 6900 2700
Wire Wire Line
	6800 2700 6700 2700
Wire Wire Line
	7800 3100 8050 3100
Wire Wire Line
	6200 3000 6900 3000
Wire Wire Line
	6200 2700 6200 3000
Wire Wire Line
	6300 2700 6200 2700
$Comp
L Switch:SW_Push SW6
U 1 1 5DE0D32A
P 6500 2700
F 0 "SW6" H 6500 2985 50  0000 C CNN
F 1 "BMS_LatchReset" H 6500 2894 50  0000 C CNN
F 2 "" H 6500 2900 50  0001 C CNN
F 3 "~" H 6500 2900 50  0001 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
$Comp
L NER:3PoleSwitchingRelay K2
U 1 1 5DE0D324
P 7350 2500
AR Path="/5DE0D324" Ref="K2"  Part="1" 
AR Path="/5F45AFB3/5DE0D324" Ref="K2"  Part="1" 
F 0 "K2" H 7350 2615 50  0000 C CNN
F 1 "3PoleSwitchingRelay" H 7350 2524 50  0000 C CNN
F 2 "" H 7350 2500 50  0001 C CNN
F 3 "" H 7350 2500 50  0001 C CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
Text Notes 3900 1800 2    39   ~ 0
Active-High Output Relay Latch
Wire Notes Line
	5100 1700 2900 1700
Wire Notes Line
	2900 4100 2900 1700
Wire Notes Line
	5100 1700 5100 4100
Wire Wire Line
	2750 2600 3000 2600
Wire Notes Line
	5100 4100 2900 4100
Wire Wire Line
	3600 1850 4850 1850
Wire Wire Line
	4900 4000 4450 4000
Wire Wire Line
	3550 4000 4350 4000
Wire Wire Line
	3550 3600 3550 4000
Wire Wire Line
	3700 3600 3550 3600
Wire Wire Line
	4900 3500 4900 4000
Wire Wire Line
	4600 3500 4900 3500
Wire Wire Line
	4700 2600 4600 2600
Wire Wire Line
	4700 2150 4700 2600
Wire Wire Line
	4300 2150 4700 2150
Wire Wire Line
	4850 1850 4850 3000
Wire Wire Line
	3600 2150 3600 2600
Connection ~ 3600 2150
Wire Wire Line
	3600 2150 4000 2150
Wire Wire Line
	3600 1850 3600 2150
$Comp
L Diode:1N4001 D1
U 1 1 5DDE3BD5
P 4150 2150
F 0 "D1" H 4150 2366 50  0000 C CNN
F 1 "1N4001" H 4150 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4150 1975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4150 2150 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
Connection ~ 3600 2600
Wire Wire Line
	3600 2600 3700 2600
Wire Wire Line
	3600 2600 3500 2600
Wire Wire Line
	4600 3000 4850 3000
Wire Wire Line
	3000 2900 3700 2900
Wire Wire Line
	3000 2600 3000 2900
Wire Wire Line
	3100 2600 3000 2600
$Comp
L Switch:SW_Push SW5
U 1 1 5DDDF7AD
P 3300 2600
F 0 "SW5" H 3300 2885 50  0000 C CNN
F 1 "IMD_LatchReset" H 3300 2794 50  0000 C CNN
F 2 "" H 3300 2800 50  0001 C CNN
F 3 "~" H 3300 2800 50  0001 C CNN
	1    3300 2600
	1    0    0    -1  
$EndComp
$Comp
L NER:3PoleSwitchingRelay K1
U 1 1 5DDDA065
P 4150 2400
AR Path="/5DDDA065" Ref="K1"  Part="1" 
AR Path="/5F45AFB3/5DDDA065" Ref="K1"  Part="1" 
F 0 "K1" H 4150 2515 50  0000 C CNN
F 1 "3PoleSwitchingRelay" H 4150 2424 50  0000 C CNN
F 2 "" H 4150 2400 50  0001 C CNN
F 3 "" H 4150 2400 50  0001 C CNN
	1    4150 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3450 9200 3450
Wire Wire Line
	2500 3250 2500 5450
Wire Wire Line
	2500 3250 3700 3250
Wire Wire Line
	9200 3450 9200 5450
Text HLabel 6100 5900 2    50   Output ~ 0
ShutdownLatch_Control_IN
Text HLabel 6100 6000 2    50   Output ~ 0
ShutdownLatch_Control_OUT
Wire Wire Line
	5850 5450 5850 6000
Wire Wire Line
	5850 6000 6100 6000
Wire Wire Line
	6000 5450 6000 5900
Wire Wire Line
	6000 5900 6100 5900
Wire Wire Line
	6000 5450 9200 5450
Text GLabel 8400 2250 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	8400 2250 7900 2250
Connection ~ 7900 2250
Text GLabel 5200 2150 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	4700 2150 5200 2150
Connection ~ 4700 2150
Wire Wire Line
	4600 3350 6900 3350
Wire Wire Line
	2500 5450 5850 5450
Wire Wire Line
	2650 1500 2750 1500
Wire Wire Line
	2750 1500 2750 2600
Wire Wire Line
	5850 1500 5950 1500
Wire Wire Line
	5950 1500 5950 2700
$EndSCHEMATC
