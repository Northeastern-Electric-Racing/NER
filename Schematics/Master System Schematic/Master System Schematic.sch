EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr D 34000 22000
encoding utf-8
Sheet 1 24
Title "NER FH 2020-2021 Master Electrical Schematic"
Date "2021-03-24"
Rev "14.1"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1650 9250 0    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L NER:Emrax228HV_Motor U103
U 1 1 5F972C2B
P 30750 10850
F 0 "U103" H 30700 11000 50  0000 L CNN
F 1 "Emrax228HV_Motor" H 30400 10900 50  0000 L CNN
F 2 "" H 30750 10850 50  0001 C CNN
F 3 "" H 30750 10850 50  0001 C CNN
	1    30750 10850
	1    0    0    1   
$EndComp
$Comp
L Switch:SW_SPST_Temperature SW108
U 1 1 5F6E407C
P 16050 4450
F 0 "SW108" H 16050 4765 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 16050 4674 50  0000 C CNN
F 2 "" H 16050 4450 50  0001 C CNN
F 3 "~" H 16050 4450 50  0001 C CNN
	1    16050 4450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST_Temperature SW109
U 1 1 5F6E49B5
P 16050 4950
F 0 "SW109" H 16050 5265 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 16050 5174 50  0000 C CNN
F 2 "" H 16050 4950 50  0001 C CNN
F 3 "~" H 16050 4950 50  0001 C CNN
	1    16050 4950
	1    0    0    -1  
$EndComp
$Sheet
S 14200 4350 1450 1400
U 5F6C8190
F0 "Pedal Box" 50
F1 "PedalBox.sch" 50
F2 "GLV+" I L 14200 5650 50 
F3 "GLV_GND" I L 14200 5500 50 
F4 "CAN_L" I R 15650 5400 50 
F5 "CAN_H" I R 15650 5500 50 
F6 "Switch_Input1" I R 15650 4450 50 
F7 "Switch_Input2" I R 15650 4950 50 
F8 "Switch2-" I R 15650 5050 50 
F9 "Switch1-" I R 15650 4550 50 
F10 "POT1+" I L 14200 4450 50 
F11 "POT2+" I L 14200 4950 50 
F12 "POT1_INPUT" I L 14200 4600 50 
F13 "POT1-" I L 14200 4750 50 
F14 "POT2_INPUT" I L 14200 5100 50 
F15 "POT2-" I L 14200 5250 50 
$EndSheet
$Comp
L Device:R_POT RV102
U 1 1 5F71DF92
P 13900 5100
F 0 "RV102" H 13831 5146 50  0000 R CNN
F 1 "R_POT" H 13831 5055 50  0000 R CNN
F 2 "" H 13900 5100 50  0001 C CNN
F 3 "~" H 13900 5100 50  0001 C CNN
	1    13900 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV101
U 1 1 5F71E67B
P 13900 4600
F 0 "RV101" H 13831 4646 50  0000 R CNN
F 1 "R_POT" H 13831 4555 50  0000 R CNN
F 2 "" H 13900 4600 50  0001 C CNN
F 3 "~" H 13900 4600 50  0001 C CNN
	1    13900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 4450 14200 4450
Wire Wire Line
	13900 4750 14200 4750
Wire Wire Line
	13900 4950 14200 4950
Wire Wire Line
	13900 5250 14200 5250
$Comp
L NER:ULV8F2BSS331 S101
U 1 1 5F94EA0B
P 18400 4000
F 0 "S101" H 18400 4485 50  0000 C CNN
F 1 "ULV8F2BSS331" H 18400 4394 50  0000 C CNN
F 2 "" H 18400 4200 50  0001 C CNN
F 3 "~" H 18400 4200 50  0001 C CNN
	1    18400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	18200 4100 18150 4100
Wire Wire Line
	18600 3900 18650 3900
Wire Wire Line
	18100 3800 18200 3800
Wire Wire Line
	18150 4300 18150 4100
Wire Wire Line
	18650 3900 18650 4300
Wire Wire Line
	18650 4300 18150 4300
Wire Wire Line
	15650 5500 15700 5500
Wire Wire Line
	15650 5400 15700 5400
Entry Wire Line
	15700 5400 15800 5500
Entry Wire Line
	15700 5500 15800 5600
Wire Wire Line
	20150 4750 20200 4750
Wire Wire Line
	20150 4650 20200 4650
Entry Wire Line
	20200 4650 20300 4750
Entry Wire Line
	20200 4750 20300 4850
Text GLabel 22650 4550 0    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 18550 4750 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	18100 3800 18100 4400
Wire Wire Line
	22750 4550 22650 4550
$Comp
L NER:ST-R10_LED D107
U 1 1 5F87123F
P 22500 4200
F 0 "D107" H 22475 4431 50  0000 C CNN
F 1 "ST-R10_LED" H 22475 4340 50  0000 C CNN
F 2 "" H 22450 4200 50  0001 C CNN
F 3 "" H 22450 4200 50  0001 C CNN
	1    22500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	22650 4150 22750 4150
Wire Wire Line
	22650 4250 22750 4250
Wire Wire Line
	22750 4350 22200 4350
Wire Wire Line
	22200 4350 22200 4200
Wire Wire Line
	22200 4200 22300 4200
Wire Wire Line
	20150 3150 20300 3150
Wire Wire Line
	20150 3050 20300 3050
Wire Wire Line
	24100 4650 24150 4650
Entry Wire Line
	24150 4650 24250 4750
Wire Wire Line
	24100 4750 24150 4750
$Sheet
S 22750 3950 1350 900 
U 5F890A03
F0 "Brake Light" 50
F1 "Brake Light.sch" 50
F2 "CAN_H" I R 24100 4550 50 
F3 "CAN_L" I R 24100 4650 50 
F4 "GLV+" I L 22750 4750 50 
F5 "GLV_GND" I L 22750 4550 50 
F6 "Brake_Light_1+" I L 22750 4150 50 
F7 "Brake_Light_2+" I L 22750 4250 50 
F8 "Brake_Light_GND" I L 22750 4350 50 
F9 "CAN_SHIELD" I R 24100 4750 50 
$EndSheet
Entry Wire Line
	24150 4750 24250 4850
Text GLabel 14100 5500 0    50   UnSpc ~ 0
CHASSIS_GND
Text Label 4600 9350 3    50   ~ 0
CoolingPumpPower
$Sheet
S 18750 3000 1400 1850
U 5F647A32
F0 "Driver IO Enclosure" 50
F1 "Driver IO Enclosure.sch" 50
F2 "CAN_L" I R 20150 4750 50 
F3 "CAN_H" I R 20150 4650 50 
F4 "GLV+" I L 18750 4600 50 
F5 "GLV_GND" I L 18750 4750 50 
F6 "LED(+)" I L 18750 4100 50 
F7 "Button_GND" I L 18750 4300 50 
F8 "Button_Input" I L 18750 4400 50 
F9 "Button_+5V" I L 18750 3700 50 
F10 "Speaker+" I R 20150 3050 50 
F11 "Speaker-" I R 20150 3150 50 
F12 "StartEnable" I L 18750 3300 50 
F13 "IMD_Indicator(+)" I R 20150 3550 50 
F14 "IMD_Indicator(-)" I R 20150 3650 50 
F15 "BMS_Indicator(+)" I R 20150 4000 50 
F16 "BMS_Indicator(-)" I R 20150 4100 50 
F17 "Toggle(+)" I R 20150 4400 50 
F18 "Toggle(-)" I R 20150 4500 50 
F19 "BMS_Fault" I L 18750 3050 50 
F20 "IMD_Fault" I L 18750 3150 50 
$EndSheet
Entry Wire Line
	20200 5050 20300 5150
Entry Wire Line
	24250 4650 24150 4550
Wire Wire Line
	24150 4550 24100 4550
Wire Wire Line
	20200 5050 18650 5050
Wire Wire Line
	28250 16800 28400 16800
Wire Wire Line
	28400 16700 28250 16700
Wire Wire Line
	28250 16600 28400 16600
Wire Wire Line
	28250 16500 28400 16500
Wire Wire Line
	28250 16400 28400 16400
Text Notes 27200 15900 0    79   ~ 0
Charging System
Text Label 20000 5050 2    50   ~ 0
CAN_Shield
$Comp
L Device:Battery_Cell BT101
U 1 1 5FB68579
P 2100 9250
F 0 "BT101" V 1755 9300 50  0000 C CNN
F 1 "GLV Battery" V 1846 9300 50  0000 C CNN
F 2 "" V 2100 9310 50  0001 C CNN
F 3 "~" V 2100 9310 50  0001 C CNN
F 4 "12V" V 1937 9300 50  0000 C CNN "Voltage"
	1    2100 9250
	0    1    1    0   
$EndComp
$Comp
L Device:CircuitBreaker_1P CB101
U 1 1 5FB82BB8
P 3050 9250
F 0 "CB101" V 2694 9250 50  0000 C CNN
F 1 "GLV Main Breaker" V 2785 9250 50  0000 C CNN
F 2 "" H 3050 9250 50  0001 C CNN
F 3 "~" H 3050 9250 50  0001 C CNN
F 4 "30A" V 2876 9250 50  0000 C CNN "Current"
	1    3050 9250
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW101
U 1 1 5FBB54F3
P 4000 9250
F 0 "SW101" H 4000 9485 50  0000 C CNN
F 1 "GLVMS" H 4000 9394 50  0000 C CNN
F 2 "" H 4000 9250 50  0001 C CNN
F 3 "~" H 4000 9250 50  0001 C CNN
	1    4000 9250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW102
U 1 1 5FBE828B
P 4950 9250
F 0 "SW102" H 4950 9060 50  0000 C CNN
F 1 "Side BRB" H 4950 9151 50  0000 C CNN
F 2 "" H 4950 9450 50  0001 C CNN
F 3 "~" H 4950 9450 50  0001 C CNN
	1    4950 9250
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push_Open SW103
U 1 1 5FBE9A6D
P 5700 9250
F 0 "SW103" H 5700 9465 50  0000 C CNN
F 1 "Side BRB" H 5700 9374 50  0000 C CNN
F 2 "" H 5700 9450 50  0001 C CNN
F 3 "~" H 5700 9450 50  0001 C CNN
	1    5700 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 9250 2000 9250
Wire Wire Line
	2300 9250 2750 9250
Wire Wire Line
	3350 9250 3800 9250
Wire Wire Line
	5150 9250 5500 9250
Wire Wire Line
	18650 4300 18750 4300
Connection ~ 18650 4300
Wire Wire Line
	18750 4400 18100 4400
Wire Wire Line
	18600 3700 18750 3700
Wire Wire Line
	18750 4100 18700 4100
Wire Wire Line
	12450 11500 12450 11350
Wire Wire Line
	12900 11500 12900 11350
Text GLabel 12450 11500 3    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 12900 11500 3    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Switch:SW_Push_Open SW106
U 1 1 616878E3
P 13600 10850
F 0 "SW106" H 13600 11065 50  0000 C CNN
F 1 "Cockpit BRB" H 13600 10974 50  0000 C CNN
F 2 "" H 13600 11050 50  0001 C CNN
F 3 "~" H 13600 11050 50  0001 C CNN
	1    13600 10850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW107
U 1 1 6169D200
P 14500 10850
F 0 "SW107" H 14500 11085 50  0000 C CNN
F 1 "TSMS" H 14500 10994 50  0000 C CNN
F 2 "" H 14500 10850 50  0001 C CNN
F 3 "~" H 14500 10850 50  0001 C CNN
	1    14500 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 10850 14300 10850
Wire Wire Line
	14200 4600 14050 4600
Wire Wire Line
	14050 5100 14200 5100
Wire Wire Line
	14200 5500 14100 5500
Wire Wire Line
	15650 4950 15850 4950
Wire Wire Line
	16250 4950 16300 4950
Wire Wire Line
	16300 4950 16300 5050
Wire Wire Line
	16300 5050 15650 5050
Wire Wire Line
	15650 4450 15850 4450
Wire Wire Line
	16250 4450 16300 4450
Wire Wire Line
	16300 4450 16300 4550
Wire Wire Line
	16300 4550 15650 4550
Wire Wire Line
	15650 5600 15700 5600
Entry Wire Line
	15700 5600 15800 5700
Wire Wire Line
	22750 4750 22500 4750
$Comp
L Device:LED D105
U 1 1 61F2ACEE
P 20450 3550
F 0 "D105" H 20443 3295 50  0000 C CNN
F 1 "IMD Indicator" H 20443 3386 50  0000 C CNN
F 2 "" H 20450 3550 50  0001 C CNN
F 3 "~" H 20450 3550 50  0001 C CNN
	1    20450 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D106
U 1 1 61F2CBDA
P 20450 4000
F 0 "D106" H 20443 3745 50  0000 C CNN
F 1 "BMS Indicator" H 20443 3836 50  0000 C CNN
F 2 "" H 20450 4000 50  0001 C CNN
F 3 "~" H 20450 4000 50  0001 C CNN
	1    20450 4000
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW110
U 1 1 61F4E8CC
P 20450 4400
F 0 "SW110" H 20450 4635 50  0000 C CNN
F 1 "Reverse Toggle" H 20450 4544 50  0000 C CNN
F 2 "" H 20450 4400 50  0001 C CNN
F 3 "~" H 20450 4400 50  0001 C CNN
	1    20450 4400
	1    0    0    -1  
$EndComp
Connection ~ 18650 4750
Wire Wire Line
	18650 4750 18750 4750
Wire Wire Line
	18550 4750 18650 4750
$Comp
L Device:Speaker LS101
U 1 1 620AED7F
P 20500 3050
F 0 "LS101" H 20670 3046 50  0000 L CNN
F 1 "Speaker" H 20670 2955 50  0000 L CNN
F 2 "" H 20500 2850 50  0001 C CNN
F 3 "~" H 20490 3000 50  0001 C CNN
	1    20500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	20150 3550 20300 3550
Wire Wire Line
	20700 3550 20700 3650
Wire Wire Line
	20700 3650 20150 3650
Wire Wire Line
	20600 3550 20700 3550
Wire Wire Line
	20150 4000 20300 4000
Wire Wire Line
	20600 4000 20700 4000
Wire Wire Line
	20700 4000 20700 4100
Wire Wire Line
	20700 4100 20150 4100
Wire Wire Line
	20150 4400 20250 4400
Wire Wire Line
	20650 4400 20750 4400
Wire Wire Line
	20750 4400 20750 4500
Wire Wire Line
	20750 4500 20150 4500
Wire Wire Line
	18650 4750 18650 5050
Wire Wire Line
	18750 4600 17900 4600
Wire Wire Line
	17900 4600 17900 6000
$Comp
L Device:LED D101
U 1 1 621F7BB5
P 12450 11200
F 0 "D101" V 12489 11083 50  0000 R CNN
F 1 "SSOK" V 12398 11083 50  0000 R CNN
F 2 "" H 12450 11200 50  0001 C CNN
F 3 "~" H 12450 11200 50  0001 C CNN
	1    12450 11200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D102
U 1 1 621F8D1D
P 12900 11200
F 0 "D102" V 12939 11083 50  0000 R CNN
F 1 "SSOK" V 12848 11083 50  0000 R CNN
F 2 "" H 12900 11200 50  0001 C CNN
F 3 "~" H 12900 11200 50  0001 C CNN
	1    12900 11200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12450 11050 12450 10850
Wire Wire Line
	12900 11050 12900 10850
Wire Wire Line
	17250 3050 18750 3050
Wire Wire Line
	18750 3150 17350 3150
Wire Wire Line
	18750 3300 17450 3300
Wire Wire Line
	6850 6000 15750 6000
Wire Wire Line
	22500 6150 22500 4750
Wire Wire Line
	7000 6150 15750 6150
Wire Notes Line
	28950 15750 28950 17300
Wire Notes Line
	28950 17300 26700 17300
Wire Notes Line
	26700 17300 26700 15750
Wire Notes Line
	26700 15750 28950 15750
Entry Bus Bus
	20300 6800 20400 6900
Entry Bus Bus
	15800 6800 15900 6900
Entry Wire Line
	28950 16800 29050 16900
Wire Wire Line
	28950 16800 28900 16800
Entry Wire Line
	28950 16700 29050 16800
Wire Wire Line
	28950 16700 28900 16700
$Comp
L NER:RinehartPM100DX_MotorController U102
U 1 1 5FAF2B99
P 28200 10700
AR Path="/5FAF2B99" Ref="U102"  Part="1" 
AR Path="/60D53BFB/5FAF2B99" Ref="U?"  Part="1" 
F 0 "U102" H 28200 10865 50  0000 C CNN
F 1 "RinehartPM100DX_MotorController" H 28200 10774 50  0000 C CNN
F 2 "" H 28200 10700 50  0001 C CNN
F 3 "" H 28200 10700 50  0001 C CNN
	1    28200 10700
	1    0    0    1   
$EndComp
Wire Wire Line
	29200 8850 29300 8850
Wire Wire Line
	29200 8750 29300 8750
Wire Wire Line
	29300 8750 29300 8800
Wire Wire Line
	29200 8250 29400 8250
Entry Wire Line
	26550 8250 26450 8150
Entry Wire Line
	26550 8150 26450 8050
Wire Wire Line
	29200 8550 29750 8550
Wire Wire Line
	29850 8650 29200 8650
Text GLabel 29500 8800 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	17350 3150 17350 9800
Wire Wire Line
	29750 7150 29750 8550
Wire Wire Line
	29850 7050 29850 8650
Wire Wire Line
	17200 6150 17200 6100
Wire Wire Line
	17200 6100 17500 6100
Wire Wire Line
	17500 6100 17500 6150
Wire Wire Line
	17500 6150 20250 6150
Wire Wire Line
	17200 6000 17200 5950
Wire Wire Line
	17200 5950 17500 5950
Wire Wire Line
	17500 5950 17500 6000
Wire Wire Line
	17500 6000 17900 6000
Wire Wire Line
	18600 4100 18600 4050
Wire Wire Line
	18600 4050 18700 4050
Wire Wire Line
	18700 4050 18700 4100
Wire Bus Line
	17200 6900 17200 6850
Wire Bus Line
	17200 6850 17550 6850
Wire Bus Line
	17550 6850 17550 6900
Wire Bus Line
	15900 6900 17200 6900
Wire Wire Line
	17450 3300 17450 10850
Wire Wire Line
	15750 6150 15750 6100
Wire Wire Line
	15750 6100 15850 6100
Wire Wire Line
	15850 6100 15850 6150
Wire Wire Line
	15850 6150 17200 6150
Wire Wire Line
	15750 6000 15750 5950
Wire Wire Line
	15750 5950 15850 5950
Wire Wire Line
	15850 5950 15850 6000
Wire Wire Line
	15850 6000 17200 6000
Wire Wire Line
	26400 7050 26400 7000
Wire Wire Line
	26500 7000 26500 7050
Wire Wire Line
	26500 7050 29850 7050
Wire Wire Line
	26400 7150 26400 7100
Wire Wire Line
	26400 7100 26500 7100
Wire Wire Line
	26500 7100 26500 7150
Wire Wire Line
	26500 7150 29750 7150
Wire Wire Line
	26400 7250 26400 7200
Wire Wire Line
	26400 7200 26500 7200
Wire Wire Line
	26500 7200 26500 7250
Wire Wire Line
	26500 7250 29400 7250
Wire Wire Line
	29200 8150 29400 8150
Connection ~ 29300 8800
Wire Wire Line
	29300 8800 29300 8850
Wire Wire Line
	7150 7250 7150 8650
Wire Wire Line
	7000 6150 7000 8650
Wire Wire Line
	6850 6000 6850 8650
Wire Wire Line
	6700 5650 6700 8650
NoConn ~ 6700 9850
Wire Wire Line
	11650 11000 10950 11000
Wire Wire Line
	9100 11150 9200 11150
Text GLabel 9100 11150 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	8350 10300 9200 10300
Wire Wire Line
	7300 10000 9200 10000
Wire Wire Line
	7150 10300 7950 10300
Wire Wire Line
	7150 9850 7150 10300
Wire Wire Line
	10950 11150 11450 11150
Wire Wire Line
	11150 11450 10950 11450
Wire Wire Line
	10950 11350 11250 11350
Wire Wire Line
	10950 11250 11350 11250
$Comp
L Switch:SW_SPST SW104
U 1 1 5FE5C813
P 8150 10300
F 0 "SW104" H 8150 10535 50  0000 C CNN
F 1 "Brake Over-Travel Switch" H 8150 10444 50  0000 C CNN
F 2 "" H 8150 10300 50  0001 C CNN
F 3 "~" H 8150 10300 50  0001 C CNN
	1    8150 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 9850 7300 10000
Wire Wire Line
	5900 9250 6500 9250
$Comp
L NER:FuseBox_PSZACCEPS052H U101
U 1 1 5FCB7816
P 7400 9250
F 0 "U101" V 7354 9278 50  0000 L CNN
F 1 "FuseBox_PSZACCEPS052H" V 7445 9278 50  0000 L CNN
F 2 "" H 7400 9400 50  0001 C CNN
F 3 "" H 7400 9400 50  0001 C CNN
	1    7400 9250
	0    1    1    0   
$EndComp
$Sheet
S 9200 9600 1750 1900
U 5F45AFB3
F0 "Shutdown Latching Circuits" 50
F1 "Shutdown_LatchingCircuits.sch" 50
F2 "Shutdown_OUT" O R 10950 10850 50 
F3 "Shutdown_IN" I L 9200 10300 50 
F4 "IMD_Fault_Indicator" O R 10950 9800 50 
F5 "IMD_Latch_Reset+" I R 10950 11250 50 
F6 "IMD_Latch_Reset-" I R 10950 11350 50 
F7 "GLV" I L 9200 10000 50 
F8 "IMD_Status" I R 10950 11000 50 
F9 "BMS_Status" I R 10950 10000 50 
F10 "BMS_Fault_Indicator" O R 10950 9700 50 
F11 "BMS_Latch_Reset+" I R 10950 11150 50 
F12 "BMS_Latch_Reset-" I R 10950 11450 50 
F13 "Ground" I L 9200 11150 50 
$EndSheet
Wire Wire Line
	10950 9800 17350 9800
Wire Wire Line
	17250 3050 17250 9700
Wire Wire Line
	10950 9700 17250 9700
Wire Wire Line
	6700 5650 14200 5650
Wire Wire Line
	20250 6150 20250 6100
Wire Wire Line
	20250 6100 20350 6100
Wire Wire Line
	20350 6100 20350 6150
Wire Wire Line
	20350 6150 22500 6150
Wire Wire Line
	29300 8800 29500 8800
Connection ~ 29400 8150
Wire Wire Line
	29400 8150 29400 8250
Wire Wire Line
	29400 7250 29400 8150
Entry Wire Line
	26450 7950 26550 8050
Wire Wire Line
	26550 8050 27150 8050
Wire Wire Line
	27150 8250 26550 8250
Entry Wire Line
	29800 9100 29900 9200
Entry Wire Line
	29800 9200 29900 9300
Entry Wire Line
	29800 9300 29900 9400
Entry Wire Line
	29800 9400 29900 9500
Wire Wire Line
	29800 9100 29200 9100
Wire Wire Line
	29800 9200 29200 9200
Wire Wire Line
	29800 9300 29200 9300
Wire Wire Line
	29800 9400 29200 9400
Wire Wire Line
	29200 9500 29800 9500
Wire Wire Line
	29200 9600 29800 9600
Entry Wire Line
	29800 9500 29900 9600
Entry Wire Line
	29800 9600 29900 9700
Entry Wire Line
	29800 9700 29900 9800
Entry Wire Line
	29800 9800 29900 9900
Wire Wire Line
	27150 9950 27000 9950
Wire Wire Line
	27000 9950 27000 10950
Wire Wire Line
	27000 10950 29500 10950
Wire Wire Line
	29500 10950 29500 9700
Wire Wire Line
	29500 9700 29800 9700
Wire Wire Line
	27150 9850 26900 9850
Wire Wire Line
	26900 9850 26900 11000
Wire Wire Line
	26900 11000 29600 11000
Wire Wire Line
	29600 11000 29600 9800
Wire Wire Line
	29600 9800 29800 9800
$Comp
L Device:R R101
U 1 1 60436772
P 26900 9750
F 0 "R101" V 26693 9750 50  0000 C CNN
F 1 "3.01K" V 26784 9750 50  0000 C CNN
F 2 "" V 26830 9750 50  0001 C CNN
F 3 "~" H 26900 9750 50  0001 C CNN
	1    26900 9750
	0    1    1    0   
$EndComp
$Comp
L NER:6_Pin_ChargerLV J104
U 1 1 5FE44DF5
P 28700 16600
F 0 "J104" H 28700 17065 50  0000 C CNN
F 1 "ChargerLV" H 28700 16974 50  0000 C CNN
F 2 "" H 28600 16600 50  0001 C CNN
F 3 "~" H 28600 16600 50  0001 C CNN
	1    28700 16600
	1    0    0    -1  
$EndComp
Entry Wire Line
	28950 16900 29050 17000
Wire Wire Line
	28950 16900 28900 16900
$Sheet
S 27550 16350 700  600 
U 61ECC7CF
F0 "Charger" 50
F1 "Charger.sch" 50
F2 "+12V" O R 28250 16500 50 
F3 "TS+" O L 27550 16800 50 
F4 "TS-" O L 27550 16700 50 
F5 "Charger_Safety" O R 28250 16400 50 
F6 "CAN_L" B R 28250 16700 50 
F7 "CAN_H" B R 28250 16800 50 
F8 "GND" O R 28250 16600 50 
$EndSheet
Text HLabel 28250 16900 0    50   Input ~ 0
CAN_Shield
Wire Wire Line
	28400 16900 28250 16900
Wire Wire Line
	27000 9950 26750 9950
Connection ~ 27000 9950
Wire Wire Line
	27150 9750 27050 9750
Wire Wire Line
	26750 9750 26750 9950
Wire Wire Line
	26550 8150 27150 8150
Entry Wire Line
	30000 10300 29900 10200
Wire Wire Line
	30000 10300 30350 10300
Wire Wire Line
	4200 9250 4600 9250
$Comp
L Device:Fuse F101
U 1 1 6038381F
P 4600 10400
F 0 "F101" H 4660 10446 50  0000 L CNN
F 1 "12A" H 4660 10355 50  0000 L CNN
F 2 "" V 4530 10400 50  0001 C CNN
F 3 "~" H 4600 10400 50  0001 C CNN
	1    4600 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 10250 4600 9250
Connection ~ 4600 9250
Wire Wire Line
	4600 9250 4750 9250
Wire Wire Line
	28900 16400 29550 16400
Wire Wire Line
	25200 16800 27550 16800
Wire Wire Line
	25300 16700 27550 16700
Wire Wire Line
	10950 10000 11750 10000
Wire Bus Line
	29850 16700 29050 16700
Wire Notes Line
	26650 6750 26650 11550
Wire Notes Line
	26650 11550 30100 11550
Wire Notes Line
	30100 11550 30100 6750
Wire Notes Line
	26650 6750 30100 6750
Text Notes 27450 6900 0    79   ~ 0
Motor Controller Shelf
Entry Bus Bus
	24250 6800 24350 6900
Entry Bus Bus
	26450 7000 26350 6900
NoConn ~ 27150 7650
NoConn ~ 27150 7750
NoConn ~ 27150 7850
NoConn ~ 27150 7950
NoConn ~ 27150 8400
NoConn ~ 27150 8500
NoConn ~ 27150 8600
NoConn ~ 27150 8700
NoConn ~ 27150 8800
NoConn ~ 27150 8900
NoConn ~ 27150 9000
NoConn ~ 27150 9150
NoConn ~ 27150 9250
NoConn ~ 27150 9350
NoConn ~ 27150 9450
NoConn ~ 27150 9550
NoConn ~ 27150 9650
NoConn ~ 27150 10050
NoConn ~ 27150 10150
NoConn ~ 29200 10150
NoConn ~ 29200 10050
NoConn ~ 29200 9950
NoConn ~ 29200 9850
NoConn ~ 29200 9750
NoConn ~ 29200 9000
NoConn ~ 29200 8350
NoConn ~ 29200 8450
Wire Wire Line
	22800 12400 21700 12400
Wire Wire Line
	22800 7050 22800 12400
Wire Wire Line
	22900 12300 21700 12300
Wire Wire Line
	22900 7150 22900 12300
Text GLabel 21700 16750 2    50   Input ~ 0
Vehicle_Chassis_1
Text GLabel 21700 16850 2    50   Input ~ 0
Vehicle_Chassis_2
Wire Wire Line
	11650 15500 18850 15500
Wire Wire Line
	29550 14950 29550 16400
Wire Wire Line
	29650 16500 29650 14850
Wire Wire Line
	29650 14850 21700 14850
Wire Wire Line
	28900 16500 29650 16500
Wire Wire Line
	18850 15400 11750 15400
Wire Wire Line
	22800 7050 26400 7050
Wire Wire Line
	22900 7150 26400 7150
Wire Wire Line
	11750 10000 11750 15400
Wire Wire Line
	29200 10400 30350 10400
Wire Wire Line
	29200 10500 30350 10500
Wire Wire Line
	29200 10600 30350 10600
Wire Wire Line
	14700 10850 15200 10850
Text GLabel 18700 16400 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	21700 12600 23100 12600
Wire Wire Line
	21700 12700 23200 12700
Wire Wire Line
	23100 10500 23100 12600
Wire Wire Line
	23200 10600 23200 12700
Wire Wire Line
	21700 14950 29550 14950
Wire Wire Line
	29750 16600 29750 14750
Wire Wire Line
	29750 14750 21700 14750
Wire Wire Line
	28900 16600 29750 16600
Wire Bus Line
	29850 16700 29850 14650
Wire Wire Line
	23100 10500 27150 10500
Wire Wire Line
	23200 10600 27150 10600
Wire Wire Line
	21700 14450 21850 14450
Wire Wire Line
	21700 14550 21850 14550
Wire Wire Line
	21700 14650 21850 14650
Entry Wire Line
	21850 14450 21950 14350
Entry Wire Line
	21850 14650 21950 14550
Entry Wire Line
	21950 14450 21850 14550
Wire Bus Line
	21950 14650 29850 14650
$Sheet
S 18850 11850 2850 5450
U 60C39CCE
F0 "Accumulator Container" 50
F1 "Accumulator_Container.sch" 50
F2 "IMD_GND1" I R 21700 16750 50 
F3 "IMD_GND2" I R 21700 16850 50 
F4 "IMD_Fault" I L 18850 15500 50 
F5 "GLV_GND" I L 18850 16400 50 
F6 "Shutdown_12V" I L 18850 15300 50 
F7 "GLV_12V" I L 18850 16300 50 
F8 "BMS_Fault" I L 18850 15400 50 
F9 "Charge_Safety" I R 21700 14950 50 
F10 "CHRG_12V" I R 21700 14850 50 
F11 "MC_Precharge+" I R 21700 12300 50 
F12 "MC_AIR+" I R 21700 12400 50 
F13 "TS-" O R 21700 12700 50 
F14 "TS+" O R 21700 12600 50 
F15 "CHRG_GND" I R 21700 14750 50 
F16 "CHRG_CANS" I R 21700 14650 50 
F17 "CHRG_CANL" I R 21700 14550 50 
F18 "CHRG_CANH" I R 21700 14450 50 
F19 "GLV12V_Fusebox" I L 18850 16200 50 
F20 "TSMP+" I L 18850 16750 50 
F21 "TSMP-" I L 18850 16850 50 
F22 "GLV_CANH" I L 18850 12300 50 
F23 "GLV_CANS" I L 18850 12500 50 
F24 "TSAL150V" I L 18850 12850 50 
F25 "RadFanPWR" I R 21700 15950 50 
F26 "GLV_CANL" I L 18850 12400 50 
F27 "TSAL30V" I L 18850 12950 50 
F28 "PUMP+" I R 21700 16050 50 
F29 "PUMP-" I R 21700 16150 50 
$EndSheet
Wire Wire Line
	7150 7250 26400 7250
Wire Wire Line
	11650 11000 11650 15500
Wire Wire Line
	11150 11450 11150 18600
Wire Wire Line
	11250 11350 11250 18700
Wire Wire Line
	11350 11250 11350 18700
Wire Wire Line
	11450 11150 11450 18600
Wire Wire Line
	10950 19000 11100 19000
Wire Wire Line
	10950 18600 10950 19000
Wire Wire Line
	11500 19000 11650 19000
Wire Wire Line
	11650 18600 11650 19000
Wire Notes Line
	10050 19300 12500 19300
Wire Notes Line
	12500 18250 10050 18250
Wire Wire Line
	10300 18150 10300 18750
Wire Notes Line
	10050 18250 10050 19300
Wire Notes Line
	12500 19300 12500 18250
Wire Wire Line
	11100 18800 11050 18800
Wire Wire Line
	11050 18800 11050 18700
Wire Wire Line
	11050 18700 11250 18700
Wire Wire Line
	11500 18800 11550 18800
Wire Wire Line
	11550 18800 11550 18700
Wire Wire Line
	11550 18700 11350 18700
Wire Wire Line
	11650 18600 11450 18600
Wire Wire Line
	10950 18600 11150 18600
$Comp
L Switch:SW_DPST SW105
U 1 1 5F864268
P 11300 18900
F 0 "SW105" H 11300 18700 50  0000 C CNN
F 1 "Latching Circuit Reset" H 11300 18550 50  0000 C CNN
F 2 "" H 11300 18900 50  0001 C CNN
F 3 "~" H 11300 18900 50  0001 C CNN
	1    11300 18900
	1    0    0    -1  
$EndComp
Text GLabel 10300 18150 1    50   UnSpc ~ 0
CHASSIS_GND
Text Notes 11100 19400 0    50   ~ 0
TSMP and Shutdown Reset Container
$Comp
L Connector:Conn_01x01_Female J101
U 1 1 5FAE402D
P 10300 18950
F 0 "J101" V 10200 18800 50  0000 L CNN
F 1 "GND" V 10100 18750 50  0000 L CNN
F 2 "" H 10300 18950 50  0001 C CNN
F 3 "~" H 10300 18950 50  0001 C CNN
	1    10300 18950
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J102
U 1 1 5FB022E4
P 12100 18950
F 0 "J102" V 12000 19050 50  0000 L CNN
F 1 "TS+" V 11900 19000 50  0000 L CNN
F 2 "" H 12100 18950 50  0001 C CNN
F 3 "~" H 12100 18950 50  0001 C CNN
	1    12100 18950
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J103
U 1 1 5FB0713A
P 12200 18950
F 0 "J103" V 12100 18800 50  0000 L CNN
F 1 "TS-" V 12000 18750 50  0000 L CNN
F 2 "" H 12200 18950 50  0001 C CNN
F 3 "~" H 12200 18950 50  0001 C CNN
	1    12200 18950
	0    -1   1    0   
$EndComp
$Comp
L Motor:Motor_DC M101
U 1 1 6466F4BD
P 22200 16250
F 0 "M101" H 22600 16250 50  0000 C CNN
F 1 "Cooling Pump" H 22600 16150 50  0000 C CNN
F 2 "" H 22200 16160 50  0001 C CNN
F 3 "~" H 22200 16160 50  0001 C CNN
	1    22200 16250
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M103
U 1 1 618194E8
P 23750 16350
F 0 "M103" H 23908 16446 50  0000 L CNN
F 1 "RadFan" H 23908 16355 50  0000 L CNN
F 2 "" H 23750 16360 50  0001 C CNN
F 3 "~" H 23750 16360 50  0001 C CNN
	1    23750 16350
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan M102
U 1 1 6193E2A9
P 23150 16350
F 0 "M102" H 23308 16446 50  0000 L CNN
F 1 "RadFan" H 23308 16355 50  0000 L CNN
F 2 "" H 23150 16360 50  0001 C CNN
F 3 "~" H 23150 16360 50  0001 C CNN
	1    23150 16350
	1    0    0    -1  
$EndComp
Wire Wire Line
	23750 15950 23750 16050
Wire Wire Line
	23150 15950 23150 16050
Wire Wire Line
	23150 15950 23750 15950
Wire Wire Line
	23750 16550 23750 16650
Wire Wire Line
	23150 16550 23150 16650
Wire Wire Line
	23150 16650 23750 16650
Connection ~ 12450 10850
Wire Wire Line
	12450 10850 12900 10850
Connection ~ 12900 10850
Wire Wire Line
	12900 10850 13400 10850
Wire Wire Line
	10950 10850 12450 10850
Wire Wire Line
	15200 10850 15200 15300
Wire Wire Line
	18850 16200 7000 16200
Wire Wire Line
	7000 16200 7000 9850
Wire Wire Line
	4600 10550 4600 16300
Wire Wire Line
	4600 16300 18850 16300
Wire Wire Line
	18700 16400 18850 16400
Wire Wire Line
	18850 16750 12100 16750
Wire Wire Line
	12100 16750 12100 18750
Wire Wire Line
	12200 18750 12200 16850
Wire Wire Line
	12200 16850 18850 16850
Connection ~ 15200 10850
Wire Wire Line
	15200 10850 17450 10850
Wire Wire Line
	15200 15300 18850 15300
Wire Wire Line
	18850 12300 18700 12300
Wire Wire Line
	18850 12400 18700 12400
Wire Wire Line
	18850 12500 18700 12500
Entry Wire Line
	18700 12300 18600 12200
Entry Wire Line
	18700 12500 18600 12400
Entry Wire Line
	18600 12300 18700 12400
Wire Bus Line
	17550 6900 18600 6900
Connection ~ 18600 6900
$Comp
L Device:LED D104
U 1 1 61BECCFF
P 18150 13100
F 0 "D104" V 18189 12982 50  0000 R CNN
F 1 "LED30V" V 18098 12982 50  0000 R CNN
F 2 "" H 18150 13100 50  0001 C CNN
F 3 "~" H 18150 13100 50  0001 C CNN
	1    18150 13100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D103
U 1 1 61BED7DF
P 17450 13100
F 0 "D103" V 17489 12982 50  0000 R CNN
F 1 "LED150V" V 17398 12982 50  0000 R CNN
F 2 "" H 17450 13100 50  0001 C CNN
F 3 "~" H 17450 13100 50  0001 C CNN
	1    17450 13100
	0    -1   -1   0   
$EndComp
Text GLabel 17700 13650 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	18850 12950 18150 12950
Wire Wire Line
	17450 13250 17450 13450
Wire Wire Line
	18150 13250 18150 13450
Wire Wire Line
	22200 16050 21700 16050
Wire Wire Line
	21700 16150 21750 16150
Wire Wire Line
	21750 16150 21750 16550
Wire Wire Line
	21750 16550 22200 16550
Wire Wire Line
	23150 15950 21700 15950
Connection ~ 23150 15950
Wire Wire Line
	23750 16650 23950 16650
Connection ~ 23750 16650
Text GLabel 23950 16650 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	25300 16700 25300 12700
Wire Wire Line
	25200 12600 23100 12600
Wire Wire Line
	25200 12600 25200 16800
Connection ~ 23100 12600
Wire Wire Line
	25300 12700 23200 12700
Connection ~ 23200 12700
Wire Wire Line
	18850 12850 17450 12850
Wire Wire Line
	17450 12850 17450 12950
Wire Wire Line
	17800 13450 17800 13650
Wire Wire Line
	17800 13650 17700 13650
Connection ~ 17800 13450
Wire Wire Line
	17800 13450 17450 13450
Wire Wire Line
	17800 13450 18150 13450
Wire Wire Line
	26400 7000 26500 7000
Wire Bus Line
	24250 4650 24250 6800
Wire Bus Line
	20300 4750 20300 6800
Wire Bus Line
	15800 5500 15800 6800
Wire Bus Line
	29050 16700 29050 17000
Wire Bus Line
	26450 7000 26450 8150
Wire Bus Line
	18600 6900 26350 6900
Wire Bus Line
	21950 14350 21950 14650
Wire Bus Line
	18600 6900 18600 12400
Wire Bus Line
	29900 9200 29900 10200
$EndSCHEMATC
