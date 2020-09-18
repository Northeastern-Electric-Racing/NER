EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 9
Title "NER FH 2020-2021 Master Electrical Schematic"
Date "2020-09-17"
Rev "2"
Comp "Northeastern Electric Racing"
Comment1 "Dylan Gardner, Matthew McCauley"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery_Cell BT?
U 1 1 5F633A5B
P 650 7100
AR Path="/5F45AFB3/5F633A5B" Ref="BT?"  Part="1" 
AR Path="/5F633A5B" Ref="BT1"  Part="1" 
F 0 "BT1" H 1000 7200 50  0000 L CNN
F 1 "12V GLV Battery" H 800 7100 50  0000 L CNN
F 2 "" V 650 7160 50  0001 C CNN
F 3 "~" V 650 7160 50  0001 C CNN
	1    650  7100
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5F633A62
P 650 6550
AR Path="/5F45AFB3/5F633A62" Ref="F?"  Part="1" 
AR Path="/5F633A62" Ref="F1"  Part="1" 
F 0 "F1" H 300 6500 50  0000 L CNN
F 1 "GLV Main Fuse" H 50  6600 50  0000 L CNN
F 2 "" V 580 6550 50  0001 C CNN
F 3 "~" H 650 6550 50  0001 C CNN
	1    650  6550
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push_Open SW?
U 1 1 5F633A68
P 650 5200
AR Path="/5F45AFB3/5F633A68" Ref="SW?"  Part="1" 
AR Path="/5F633A68" Ref="SW2"  Part="1" 
F 0 "SW2" V 600 5750 50  0000 R CNN
F 1 "SideMounted (BRB)" V 700 6050 50  0000 R CNN
F 2 "" H 650 5400 50  0001 C CNN
F 3 "~" H 650 5400 50  0001 C CNN
	1    650  5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push_Open SW?
U 1 1 5F633A6E
P 650 4450
AR Path="/5F45AFB3/5F633A6E" Ref="SW?"  Part="1" 
AR Path="/5F633A6E" Ref="SW3"  Part="1" 
F 0 "SW3" V 600 5000 50  0000 R CNN
F 1 "SideMounted (BRB)" V 700 5300 50  0000 R CNN
F 2 "" H 650 4650 50  0001 C CNN
F 3 "~" H 650 4650 50  0001 C CNN
	1    650  4450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F633A74
P 650 5850
AR Path="/5F45AFB3/5F633A74" Ref="SW?"  Part="1" 
AR Path="/5F633A74" Ref="SW1"  Part="1" 
F 0 "SW1" V 650 5450 50  0000 L CNN
F 1 "GLVMS" V 750 5400 50  0000 L CNN
F 2 "" H 650 5850 50  0001 C CNN
F 3 "~" H 650 5850 50  0001 C CNN
	1    650  5850
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F633AC3
P 2100 2500
AR Path="/5F45AFB3/5F633AC3" Ref="SW?"  Part="1" 
AR Path="/5F633AC3" Ref="SW?"  Part="1" 
F 0 "SW?" H 2100 2350 50  0000 C CNN
F 1 "Brake Over-Travel Switch" H 2100 2250 50  0000 C CNN
F 2 "" H 2100 2500 50  0001 C CNN
F 3 "~" H 2100 2500 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
$Sheet
S 2600 1250 1700 1000
U 5F45AFB3
F0 "Shutdown Latching Circuits" 50
F1 "Shutdown_LatchingCircuits.sch" 50
F2 "IMDErrorIndicatorControl_IN" O L 2600 1300 50 
F3 "IMDErrorIndicatorControl_OUT" O L 2600 1450 50 
F4 "BMSErrorIndicatorControl_OUT" O L 2600 1650 50 
F5 "BMSErrorIndicatorControl_IN" O L 2600 1800 50 
F6 "BMS_Status" I R 4300 1550 50 
F7 "IMD_Status" I R 4300 1300 50 
F8 "ShutdownLatch_Control_OUT" O R 4300 2100 50 
F9 "ShutdownLatch_Control_IN" O R 4300 2200 50 
$EndSheet
$Comp
L Switch:SW_Push_Open SW?
U 1 1 5F67997D
P 2900 4200
AR Path="/5F45AFB3/5F67997D" Ref="SW?"  Part="1" 
AR Path="/5F67997D" Ref="SW?"  Part="1" 
F 0 "SW?" V 2946 4147 50  0000 R CNN
F 1 "Cockpit Shutdown (BRB)" V 2855 4147 50  0000 R CNN
F 2 "" H 2900 4400 50  0001 C CNN
F 3 "~" H 2900 4400 50  0001 C CNN
	1    2900 4200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F67998A
P 2900 4800
AR Path="/5F45AFB3/5F67998A" Ref="SW?"  Part="1" 
AR Path="/5F67998A" Ref="SW?"  Part="1" 
F 0 "SW?" V 2854 4898 50  0000 L CNN
F 1 "TSMS" V 2945 4898 50  0000 L CNN
F 2 "" H 2900 4800 50  0001 C CNN
F 3 "~" H 2900 4800 50  0001 C CNN
	1    2900 4800
	0    -1   -1   0   
$EndComp
Text GLabel 800  7350 2    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Device:Fuse F?
U 1 1 5F7897C6
P 1000 3500
AR Path="/5F45AFB3/5F7897C6" Ref="F?"  Part="1" 
AR Path="/5F7897C6" Ref="F3"  Part="1" 
F 0 "F3" V 803 3500 50  0000 C CNN
F 1 "Shutdown Fuse" V 894 3500 50  0000 C CNN
F 2 "" V 930 3500 50  0001 C CNN
F 3 "~" H 1000 3500 50  0001 C CNN
	1    1000 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5F7897CC
P 1000 3200
AR Path="/5F45AFB3/5F7897CC" Ref="F?"  Part="1" 
AR Path="/5F7897CC" Ref="F4"  Part="1" 
F 0 "F4" V 803 3200 50  0000 C CNN
F 1 "BMS Fuse" V 894 3200 50  0000 C CNN
F 2 "" V 930 3200 50  0001 C CNN
F 3 "~" H 1000 3200 50  0001 C CNN
	1    1000 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  3500 800  3500
Wire Wire Line
	800  3500 800  3200
Wire Wire Line
	800  3200 850  3200
Connection ~ 800  3500
Text Notes 800  1600 0    28   ~ 0
Fusebox for \nGLV Instruments
$Comp
L Device:Fuse F?
U 1 1 5F7897D7
P 1000 2900
AR Path="/5F45AFB3/5F7897D7" Ref="F?"  Part="1" 
AR Path="/5F7897D7" Ref="F5"  Part="1" 
F 0 "F5" V 803 2900 50  0000 C CNN
F 1 "MC Fuse" V 894 2900 50  0000 C CNN
F 2 "" V 930 2900 50  0001 C CNN
F 3 "~" H 1000 2900 50  0001 C CNN
	1    1000 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5F7897DD
P 1000 2600
AR Path="/5F45AFB3/5F7897DD" Ref="F?"  Part="1" 
AR Path="/5F7897DD" Ref="F6"  Part="1" 
F 0 "F6" V 803 2600 50  0000 C CNN
F 1 "Fuse" V 894 2600 50  0000 C CNN
F 2 "" V 930 2600 50  0001 C CNN
F 3 "~" H 1000 2600 50  0001 C CNN
	1    1000 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5F7897E3
P 1000 2300
AR Path="/5F45AFB3/5F7897E3" Ref="F?"  Part="1" 
AR Path="/5F7897E3" Ref="F7"  Part="1" 
F 0 "F7" V 803 2300 50  0000 C CNN
F 1 "Fuse" V 894 2300 50  0000 C CNN
F 2 "" V 930 2300 50  0001 C CNN
F 3 "~" H 1000 2300 50  0001 C CNN
	1    1000 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5F7897E9
P 1000 2000
AR Path="/5F45AFB3/5F7897E9" Ref="F?"  Part="1" 
AR Path="/5F7897E9" Ref="F8"  Part="1" 
F 0 "F8" V 803 2000 50  0000 C CNN
F 1 "Fuse" V 894 2000 50  0000 C CNN
F 2 "" V 930 2000 50  0001 C CNN
F 3 "~" H 1000 2000 50  0001 C CNN
	1    1000 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	800  3200 800  2900
Wire Wire Line
	800  2000 850  2000
Connection ~ 800  3200
Wire Wire Line
	850  2300 800  2300
Connection ~ 800  2300
Wire Wire Line
	800  2300 800  2000
Wire Wire Line
	850  2600 800  2600
Connection ~ 800  2600
Wire Wire Line
	800  2600 800  2300
Wire Wire Line
	850  2900 800  2900
Connection ~ 800  2900
Wire Notes Line
	750  4100 1200 4100
$Comp
L Device:Fuse F?
U 1 1 5F7897FC
P 1000 3800
AR Path="/5F45AFB3/5F7897FC" Ref="F?"  Part="1" 
AR Path="/5F7897FC" Ref="F2"  Part="1" 
F 0 "F2" V 803 3800 50  0000 C CNN
F 1 "IMD Fuse" V 894 3800 50  0000 C CNN
F 2 "" V 930 3800 50  0001 C CNN
F 3 "~" H 1000 3800 50  0001 C CNN
	1    1000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	800  3500 800  3800
Wire Wire Line
	800  3800 850  3800
Wire Notes Line
	1200 1500 750  1500
Text Label 3150 5100 0    50   ~ 0
LatchingStartStopController
$Comp
L Device:LED D?
U 1 1 5F8332A2
P 2050 1300
F 0 "D?" H 2050 1550 50  0000 C CNN
F 1 "IMD_STATUS_OK LED" H 2050 1450 50  0000 C CNN
F 2 "" H 2050 1300 50  0001 C CNN
F 3 "~" H 2050 1300 50  0001 C CNN
	1    2050 1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F835552
P 2050 1800
F 0 "D?" H 2050 1650 50  0000 C CNN
F 1 "BMS_STATUS_OK LED" H 2050 1550 50  0000 C CNN
F 2 "" H 2050 1800 50  0001 C CNN
F 3 "~" H 2050 1800 50  0001 C CNN
	1    2050 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2600 1650 2500 1650
Wire Wire Line
	2600 1450 2500 1450
Wire Wire Line
	2500 1450 2500 1550
Text GLabel 2300 1550 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	2300 1550 2500 1550
Connection ~ 2500 1550
Wire Wire Line
	2500 1550 2500 1650
Wire Wire Line
	2200 1800 2600 1800
Wire Wire Line
	2600 1300 2200 1300
$Comp
L Device:Fuse F?
U 1 1 5F8C9B02
P 1000 1700
AR Path="/5F45AFB3/5F8C9B02" Ref="F?"  Part="1" 
AR Path="/5F8C9B02" Ref="F9"  Part="1" 
F 0 "F9" V 803 1700 50  0000 C CNN
F 1 "Fuse" V 894 1700 50  0000 C CNN
F 2 "" V 930 1700 50  0001 C CNN
F 3 "~" H 1000 1700 50  0001 C CNN
	1    1000 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  1700 800  1700
Wire Wire Line
	800  1700 800  2000
Connection ~ 800  2000
Wire Notes Line
	750  1500 750  4100
Wire Notes Line
	1200 1500 1200 4100
Wire Wire Line
	4300 2100 4500 2100
Text GLabel 2200 3300 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	2300 3100 2300 3300
Wire Wire Line
	2500 3500 2300 3500
$Comp
L Device:LED D?
U 1 1 5F67996F
P 2650 3100
AR Path="/5F45AFB3/5F67996F" Ref="D?"  Part="1" 
AR Path="/5F67996F" Ref="D?"  Part="1" 
F 0 "D?" H 2643 2845 50  0000 C CNN
F 1 "SSOK1" H 2643 2936 50  0000 C CNN
F 2 "" H 2650 3100 50  0001 C CNN
F 3 "~" H 2650 3100 50  0001 C CNN
	1    2650 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F679969
P 2650 3500
AR Path="/5F45AFB3/5F679969" Ref="D?"  Part="1" 
AR Path="/5F679969" Ref="D?"  Part="1" 
F 0 "D?" H 2643 3245 50  0000 C CNN
F 1 "SSOK2" H 2643 3336 50  0000 C CNN
F 2 "" H 2650 3500 50  0001 C CNN
F 3 "~" H 2650 3500 50  0001 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2200 4450 2200
$Comp
L NER:Emrax228HV_Motor U?
U 1 1 5F972C2B
P 10650 5800
F 0 "U?" H 10600 5950 50  0000 L CNN
F 1 "Emrax228HV_Motor" H 10300 5850 50  0000 L CNN
F 2 "" H 10650 5800 50  0001 C CNN
F 3 "" H 10650 5800 50  0001 C CNN
	1    10650 5800
	-1   0    0    -1  
$EndComp
$Comp
L NER:RinehartPM100DX_MotorController U?
U 1 1 5F97D518
P 10100 5500
F 0 "U?" H 10100 5665 50  0000 C CNN
F 1 "RinehartPM100DX_MotorController" H 10100 5574 50  0000 C CNN
F 2 "" H 10100 5500 50  0001 C CNN
F 3 "" H 10100 5500 50  0001 C CNN
	1    10100 5500
	1    0    0    1   
$EndComp
$Comp
L NER:Bender_Isometer_IR155-3204 U?
U 1 1 5F94A015
P 4100 3650
F 0 "U?" H 4100 3765 50  0000 C CNN
F 1 "Bender_Isometer_IR155-3204" H 4100 3674 50  0000 C CNN
F 2 "" H 4100 3650 50  0001 C CNN
F 3 "" H 4100 3650 50  0001 C CNN
	1    4100 3650
	-1   0    0    -1  
$EndComp
Text GLabel 3350 4350 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	800  7350 650  7350
Wire Wire Line
	2200 3300 2300 3300
Connection ~ 2300 3300
Wire Wire Line
	2300 3300 2300 3500
$Comp
L Device:R R?
U 1 1 5F4E06AE
P 4100 3350
F 0 "R?" V 4307 3350 50  0000 C CNN
F 1 "2.2k" V 4216 3350 50  0000 C CNN
F 2 "" V 4030 3350 50  0001 C CNN
F 3 "~" H 4100 3350 50  0001 C CNN
	1    4100 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 4000 3350 4000
Wire Wire Line
	3400 3900 3350 3900
Wire Wire Line
	3350 3900 3350 4000
Connection ~ 3350 4000
Wire Wire Line
	3350 4000 3400 4000
Wire Wire Line
	3350 4000 3350 4100
Wire Wire Line
	3350 4100 3400 4100
Wire Wire Line
	3350 3900 3350 3350
Wire Wire Line
	3350 3350 3950 3350
Connection ~ 3350 3900
Wire Wire Line
	650  7200 650  7350
Wire Wire Line
	2300 3100 2500 3100
Wire Wire Line
	650  6700 650  6900
Wire Wire Line
	650  6050 650  6400
Wire Wire Line
	650  5400 650  5650
Wire Wire Line
	650  4650 650  5000
Wire Wire Line
	1600 1300 1600 1800
Wire Wire Line
	1600 1800 1900 1800
Connection ~ 1600 1800
Wire Wire Line
	1600 1800 1600 2500
Wire Wire Line
	1600 1300 1900 1300
Wire Wire Line
	800  2600 800  2900
Connection ~ 800  3800
Wire Wire Line
	1150 3500 1600 3500
Wire Wire Line
	1600 3500 1600 2500
Wire Wire Line
	4450 2200 4450 2500
Wire Wire Line
	3150 5100 2900 5100
Wire Wire Line
	2900 5000 2900 5100
Wire Wire Line
	2900 5350 3200 5350
Wire Wire Line
	2900 4600 2900 4400
Wire Wire Line
	2900 2550 4500 2550
Text GLabel 2250 7050 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Notes Line
	2150 7350 2150 7650
Wire Notes Line
	3050 7350 2150 7350
Wire Notes Line
	3050 7650 3050 7350
Wire Notes Line
	2150 7650 3050 7650
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5FB0713A
P 2800 7600
F 0 "J3" V 2700 7450 50  0000 L CNN
F 1 "TS-" V 2600 7400 50  0000 L CNN
F 2 "" H 2800 7600 50  0001 C CNN
F 3 "~" H 2800 7600 50  0001 C CNN
	1    2800 7600
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5FB022E4
P 2550 7600
F 0 "J2" V 2450 7450 50  0000 L CNN
F 1 "TS+" V 2350 7400 50  0000 L CNN
F 2 "" H 2550 7600 50  0001 C CNN
F 3 "~" H 2550 7600 50  0001 C CNN
	1    2550 7600
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5FAE402D
P 2300 7600
F 0 "J1" V 2200 7450 50  0000 L CNN
F 1 "GND" V 2100 7400 50  0000 L CNN
F 2 "" H 2300 7600 50  0001 C CNN
F 3 "~" H 2300 7600 50  0001 C CNN
	1    2300 7600
	0    -1   1    0   
$EndComp
Text Notes 2150 7750 0    50   ~ 0
TSMPs
Wire Wire Line
	3200 7050 2800 7050
Wire Wire Line
	2300 7050 2250 7050
Wire Wire Line
	2550 6950 3200 6950
Wire Wire Line
	2550 6950 2550 7400
Wire Wire Line
	2800 7050 2800 7400
Wire Wire Line
	2300 7050 2300 7400
Text GLabel 2650 5450 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	3350 4350 3250 4350
Wire Wire Line
	3250 4350 3250 4000
$Comp
L NER:OrionCurrentSens U?
U 1 1 6111F589
P 5900 7700
F 0 "U?" H 5900 7700 50  0000 C CNN
F 1 "OrionCurrentSens" H 5900 7750 50  0000 C CNN
F 2 "" H 5900 7700 50  0001 C CNN
F 3 "" H 5900 7700 50  0001 C CNN
	1    5900 7700
	-1   0    0    1   
$EndComp
Text GLabel 8100 4100 3    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	1150 3200 1500 3200
Wire Wire Line
	1500 3200 1500 950 
Connection ~ 2900 5100
Wire Wire Line
	2900 5100 2900 5350
Wire Wire Line
	2650 5450 3200 5450
Wire Wire Line
	8550 1550 8550 5850
Wire Wire Line
	650  4250 650  3800
Wire Wire Line
	650  3800 800  3800
Connection ~ 1600 2500
Wire Wire Line
	1600 2500 1900 2500
Wire Wire Line
	2300 2500 4450 2500
$Sheet
S 5500 3150 1000 250 
U 61ECC7CF
F0 "Charger" 50
F1 "Charger.sch" 50
F2 "CHARGER_SAFETY" I R 6500 3300 50 
F3 "+12V" I R 6500 3200 50 
F4 "TS+" O L 5500 3200 50 
F5 "TS-" O L 5500 3300 50 
$EndSheet
Wire Wire Line
	8100 4100 8100 4050
Wire Wire Line
	8100 4050 7950 4050
Wire Wire Line
	5500 3200 5300 3200
Wire Wire Line
	5350 3300 5500 3300
Wire Wire Line
	11000 6000 11050 6000
Wire Wire Line
	11050 6000 11050 5400
Wire Wire Line
	11050 5400 11000 5400
Wire Wire Line
	11000 5300 11100 5300
Wire Wire Line
	11100 5300 11100 6150
Wire Wire Line
	11100 6150 11000 6150
Wire Wire Line
	11000 6300 11150 6300
Wire Wire Line
	11150 6300 11150 5200
Wire Wire Line
	11150 5200 11000 5200
Wire Wire Line
	9050 5300 9200 5300
Wire Wire Line
	6850 6400 9050 6400
Wire Wire Line
	9100 6450 9100 5400
Wire Wire Line
	9100 5400 9200 5400
Wire Wire Line
	6900 6450 9100 6450
Wire Wire Line
	6900 6450 6900 7550
Wire Wire Line
	4950 6950 5350 6950
Wire Wire Line
	6300 7550 6900 7550
Wire Wire Line
	5500 7550 5300 7550
Wire Wire Line
	6850 6400 6850 6950
Wire Wire Line
	9050 5300 9050 6400
Wire Wire Line
	11000 4950 11000 5050
Wire Wire Line
	11000 5050 11150 5050
Wire Wire Line
	11150 5050 11150 850 
Wire Wire Line
	11150 850  1450 850 
Wire Wire Line
	1450 2900 1150 2900
Connection ~ 11000 5050
Wire Wire Line
	11000 4850 11100 4850
Text GLabel 5450 5650 1    50   UnSpc ~ 0
CHASSIS_GND
$Sheet
S 3200 5300 1750 1850
U 5F45B05E
F0 "Accumulator Container" 50
F1 "Accumulator_Container.sch" 50
F2 "MotorController_Precharge_-" I R 4950 5700 50 
F3 "MotorController_Precharge_+" I R 4950 5600 50 
F4 "Shutdown+" I L 3200 5350 50 
F5 "Shutdown-" I L 3200 5450 50 
F6 "TS+" O R 4950 7050 50 
F7 "TS-" O R 4950 6950 50 
F8 "TSAL+" O L 3200 6100 50 
F9 "TSAL-" O L 3200 6200 50 
F10 "IMD_HV_SENSE-" O R 4950 5350 50 
F11 "IMD_HV_SENSE+" O R 4950 5450 50 
F12 "TSMP-" O L 3200 7050 50 
F13 "TSMP+" O L 3200 6950 50 
F14 "Segment1_Thermistors" O R 4950 5950 50 
F15 "Segment2_Thermistors" O R 4950 6050 50 
F16 "Segment3_Thermistors" O R 4950 6150 50 
F17 "Segment4_Thermistors" O R 4950 6250 50 
F18 "Segment1_VoltageTaps" O R 4950 6400 50 
F19 "Segment2_VoltageTaps" O R 4950 6500 50 
F20 "Segment3_VoltageTaps" O R 4950 6600 50 
F21 "Segment4_VoltageTaps" O R 4950 6700 50 
$EndSheet
Wire Wire Line
	4950 5350 5050 5350
Wire Wire Line
	5050 5350 5050 4100
Wire Wire Line
	4950 5450 5100 5450
Wire Wire Line
	5100 5450 5100 4000
Wire Wire Line
	4500 2100 4500 2550
Wire Wire Line
	2800 3100 2900 3100
Wire Wire Line
	2800 3500 2900 3500
Wire Wire Line
	3400 3800 1150 3800
Wire Wire Line
	4800 3350 4800 1300
Wire Wire Line
	5050 4100 4800 4100
Wire Wire Line
	4800 4000 5100 4000
Wire Wire Line
	4800 3800 4800 3350
Connection ~ 4800 3350
Wire Wire Line
	4250 3350 4800 3350
Wire Wire Line
	4300 1300 4800 1300
Connection ~ 2900 3100
Connection ~ 2900 3500
Wire Wire Line
	2900 3500 2900 4000
Wire Wire Line
	2900 2550 2900 3100
Wire Wire Line
	2900 3100 2900 3500
Wire Wire Line
	5350 3300 5350 6950
Connection ~ 5350 6950
Wire Wire Line
	5350 6950 6850 6950
Wire Wire Line
	5300 3200 5300 7050
Connection ~ 5300 7050
Wire Wire Line
	5300 7050 5300 7550
Wire Wire Line
	4950 7050 5300 7050
Wire Wire Line
	11100 2050 5200 2050
Wire Wire Line
	5200 5600 4950 5600
Wire Wire Line
	5200 2050 5200 5600
Wire Wire Line
	11100 2050 11100 4850
Wire Wire Line
	4300 1550 8550 1550
Text GLabel 11000 4400 1    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Device:R_POT RV?
U 1 1 6233DFFE
P 8850 4900
F 0 "RV?" H 8850 4650 50  0000 C CNN
F 1 "ACCEL_POT" H 8850 4550 50  0000 C CNN
F 2 "" H 8850 4900 50  0001 C CNN
F 3 "~" H 8850 4900 50  0001 C CNN
	1    8850 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 6233F5CA
P 8850 4500
F 0 "RV?" H 8850 4850 50  0000 C CNN
F 1 "BRAKE_POT" H 8850 4750 50  0000 C CNN
F 2 "" H 8850 4500 50  0001 C CNN
F 3 "~" H 8850 4500 50  0001 C CNN
	1    8850 4500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 62347AF0
P 9400 3100
F 0 "SW?" H 9400 2875 50  0000 C CNN
F 1 "BRAKE_SWITCH" H 9400 2966 50  0000 C CNN
F 2 "" H 9400 3100 50  0001 C CNN
F 3 "~" H 9400 3100 50  0001 C CNN
	1    9400 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 5050 8850 5050
Wire Wire Line
	9000 4900 9100 4900
Wire Wire Line
	9100 4900 9100 4950
Wire Wire Line
	9100 4950 9200 4950
Wire Wire Line
	9200 4750 8850 4750
Wire Wire Line
	9200 4550 9100 4550
Wire Wire Line
	8850 4350 9200 4350
Wire Wire Line
	9100 4500 9000 4500
Wire Wire Line
	9100 4500 9100 4550
Wire Wire Line
	9200 4650 8850 4650
Wire Wire Line
	9200 3350 9150 3350
Wire Wire Line
	9150 3350 9150 3100
Wire Wire Line
	9150 3100 9200 3100
Wire Wire Line
	9600 3100 9700 3100
Text GLabel 9700 3100 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	11000 4400 11000 4650
Connection ~ 11000 4650
Wire Wire Line
	11000 4650 11000 4750
Wire Wire Line
	5450 5700 5450 5650
Wire Wire Line
	4950 5700 5450 5700
Wire Wire Line
	1450 850  1450 2900
Wire Notes Line
	8800 1950 10950 1950
Wire Notes Line
	10950 1950 10950 1000
Wire Notes Line
	10950 1000 8800 1000
Wire Notes Line
	8800 1000 8800 1950
Text Notes 8800 1000 0    50   ~ 0
RTDS & LATCHING START
$Comp
L NER:TSAL U?
U 1 1 5F652630
P 2450 5950
F 0 "U?" H 2342 6075 50  0000 C CNN
F 1 "TSAL" H 2342 5984 50  0000 C CNN
F 2 "" H 2450 5950 50  0001 C CNN
F 3 "" H 2450 5950 50  0001 C CNN
	1    2450 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3200 6100 2900 6100
Wire Wire Line
	2900 6100 2900 6050
Wire Wire Line
	2900 6050 2750 6050
Wire Wire Line
	2750 6250 2900 6250
Wire Wire Line
	2900 6250 2900 6200
Wire Wire Line
	2900 6200 3200 6200
Wire Wire Line
	8100 950  8100 3950
Wire Wire Line
	8100 3950 7950 3950
Wire Wire Line
	1500 950  8100 950 
Wire Wire Line
	7950 5850 8550 5850
$Sheet
S 6000 3850 1950 2300
U 60D53BFB
F0 "BMS Container" 50
F1 "BMSContainer.sch" 50
F2 "Segment4_Thermistors" I L 6000 5150 50 
F3 "Segment3_Thermistors" I L 6000 5050 50 
F4 "Segment1_Thermistors" I L 6000 4850 50 
F5 "Segment2_Thermistors" I L 6000 4950 50 
F6 "CAN+" B R 7950 6050 50 
F7 "CAN-" B R 7950 5950 50 
F8 "GLV" I R 7950 3950 50 
F9 "GLV_GND" B R 7950 4050 50 
F10 "C_GND" I L 6000 6050 50 
F11 "C_Pow" I L 6000 5950 50 
F12 "C_High" I L 6000 5850 50 
F13 "C_Low" I L 6000 5750 50 
F14 "BMS_Fault" O R 7950 5850 50 
F15 "Segment1_VoltageTaps" I L 6000 5250 50 
F16 "Segment2_VoltageTaps" I L 6000 5350 50 
F17 "Segment3_VoltageTaps" I L 6000 5450 50 
F18 "Segment4_VoltageTaps" I L 6000 5550 50 
$EndSheet
Wire Bus Line
	6000 5550 5950 5550
Wire Bus Line
	5950 5550 5950 6700
Wire Bus Line
	4950 6700 5950 6700
Wire Bus Line
	4950 6600 5900 6600
Wire Bus Line
	5900 6600 5900 5450
Wire Bus Line
	5900 5450 6000 5450
Wire Bus Line
	6000 5350 5850 5350
Wire Bus Line
	5850 5350 5850 6500
Wire Bus Line
	5850 6500 4950 6500
Wire Bus Line
	4950 6400 5800 6400
Wire Bus Line
	5800 6400 5800 5250
Wire Bus Line
	5800 5250 6000 5250
Wire Bus Line
	6000 5150 5750 5150
Wire Bus Line
	5750 5150 5750 6250
Wire Bus Line
	5750 6250 4950 6250
Wire Bus Line
	4950 6150 5700 6150
Wire Bus Line
	5700 6150 5700 5050
Wire Bus Line
	5700 5050 6000 5050
Wire Bus Line
	6000 4950 5650 4950
Wire Bus Line
	5650 4950 5650 6050
Wire Bus Line
	5650 6050 4950 6050
Wire Bus Line
	4950 5950 5600 5950
Wire Bus Line
	5600 5950 5600 4850
Wire Bus Line
	5600 4850 6000 4850
$EndSCHEMATC
