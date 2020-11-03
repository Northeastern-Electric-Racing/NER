EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr D 34000 22000
encoding utf-8
Sheet 1 22
Title "NER FH 2020-2021 Master Electrical Schematic"
Date "2020-10-29"
Rev "8"
Comp "Northeastern Electric Racing"
Comment1 "Dylan Gardner, Matthew McCauley"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2100 8750 0    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5FB0713A
P 12650 16200
F 0 "J6" V 12550 16050 50  0000 L CNN
F 1 "TS-" V 12450 16000 50  0000 L CNN
F 2 "" H 12650 16200 50  0001 C CNN
F 3 "~" H 12650 16200 50  0001 C CNN
	1    12650 16200
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5FB022E4
P 12350 16200
F 0 "J5" V 12250 16050 50  0000 L CNN
F 1 "TS+" V 12150 16000 50  0000 L CNN
F 2 "" H 12350 16200 50  0001 C CNN
F 3 "~" H 12350 16200 50  0001 C CNN
	1    12350 16200
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5FAE402D
P 10750 16200
F 0 "J3" V 10650 16050 50  0000 L CNN
F 1 "GND" V 10550 16000 50  0000 L CNN
F 2 "" H 10750 16200 50  0001 C CNN
F 3 "~" H 10750 16200 50  0001 C CNN
	1    10750 16200
	0    -1   1    0   
$EndComp
Text Notes 11550 16650 0    50   ~ 0
TSMP and Shutdown Reset Container
$Sheet
S 28600 15450 700  550 
U 61ECC7CF
F0 "Charger" 50
F1 "Charger.sch" 50
F2 "+12V" O R 29300 15600 50 
F3 "TS+" O L 28600 15900 50 
F4 "TS-" O L 28600 15800 50 
F5 "Charger_Safety" O R 29300 15500 50 
F6 "CAN_L" B R 29300 15800 50 
F7 "CAN_H" B R 29300 15900 50 
F8 "GND" O R 29300 15700 50 
$EndSheet
Text GLabel 10850 15400 2    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Device:LED D5
U 1 1 5FA58D8C
P 18900 10900
F 0 "D5" H 18850 10800 50  0000 L CNN
F 1 "TSAL" H 18850 10700 50  0000 L CNN
F 2 "" H 18900 10900 50  0001 C CNN
F 3 "~" H 18900 10900 50  0001 C CNN
	1    18900 10900
	1    0    0    -1  
$EndComp
$Comp
L NER:Emrax228HV_Motor U4
U 1 1 5F972C2B
P 31300 11100
F 0 "U4" H 31250 11250 50  0000 L CNN
F 1 "Emrax228HV_Motor" H 30950 11150 50  0000 L CNN
F 2 "" H 31300 11100 50  0001 C CNN
F 3 "" H 31300 11100 50  0001 C CNN
	1    31300 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	30400 11450 30950 11450
Wire Wire Line
	30950 11300 30400 11300
Wire Wire Line
	30400 11600 30950 11600
$Comp
L Switch:SW_SPST_Temperature SW12
U 1 1 5F6E407C
P 16500 2900
F 0 "SW12" H 16500 3215 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 16500 3124 50  0000 C CNN
F 2 "" H 16500 2900 50  0001 C CNN
F 3 "~" H 16500 2900 50  0001 C CNN
	1    16500 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST_Temperature SW13
U 1 1 5F6E49B5
P 16500 3400
F 0 "SW13" H 16500 3715 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 16500 3624 50  0000 C CNN
F 2 "" H 16500 3400 50  0001 C CNN
F 3 "~" H 16500 3400 50  0001 C CNN
	1    16500 3400
	1    0    0    -1  
$EndComp
$Sheet
S 14650 2800 1450 1400
U 5F6C8190
F0 "Pedal Box" 50
F1 "PedalBox.sch" 50
F2 "GLV+" I L 14650 4100 50 
F3 "GLV_GND" I L 14650 3950 50 
F4 "CAN_L" I R 16100 3850 50 
F5 "CAN_H" I R 16100 3950 50 
F6 "Switch_Input1" I R 16100 2900 50 
F7 "Switch_Input2" I R 16100 3400 50 
F8 "Switch2-" I R 16100 3500 50 
F9 "Switch1-" I R 16100 3000 50 
F10 "POT1+" I L 14650 2900 50 
F11 "POT2+" I L 14650 3400 50 
F12 "POT1_INPUT" I L 14650 3050 50 
F13 "POT1-" I L 14650 3200 50 
F14 "POT2_INPUT" I L 14650 3550 50 
F15 "POT2-" I L 14650 3700 50 
$EndSheet
$Comp
L Device:R_POT RV2
U 1 1 5F71DF92
P 14350 3550
F 0 "RV2" H 14281 3596 50  0000 R CNN
F 1 "R_POT" H 14281 3505 50  0000 R CNN
F 2 "" H 14350 3550 50  0001 C CNN
F 3 "~" H 14350 3550 50  0001 C CNN
	1    14350 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F71E67B
P 14350 3050
F 0 "RV1" H 14281 3096 50  0000 R CNN
F 1 "R_POT" H 14281 3005 50  0000 R CNN
F 2 "" H 14350 3050 50  0001 C CNN
F 3 "~" H 14350 3050 50  0001 C CNN
	1    14350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	14350 2900 14650 2900
Wire Wire Line
	14350 3200 14650 3200
Wire Wire Line
	14350 3400 14650 3400
Wire Wire Line
	14350 3700 14650 3700
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E32
P 18850 11700
AR Path="/5F45B05E/60DA2E32" Ref="SW?"  Part="1" 
AR Path="/60DA2E32" Ref="SW9"  Part="1" 
F 0 "SW9" H 18850 11850 50  0000 C CNN
F 1 "HVD" H 18850 11950 50  0000 C CNN
F 2 "" H 18850 11700 50  0001 C CNN
F 3 "~" H 18850 11700 50  0001 C CNN
	1    18850 11700
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E38
P 18850 11300
AR Path="/5F45B05E/60DA2E38" Ref="SW?"  Part="1" 
AR Path="/60DA2E38" Ref="SW8"  Part="1" 
F 0 "SW8" H 18850 11535 50  0000 C CNN
F 1 "SMD" H 18850 11444 50  0000 C CNN
F 2 "" H 18850 11300 50  0001 C CNN
F 3 "~" H 18850 11300 50  0001 C CNN
	1    18850 11300
	-1   0    0    1   
$EndComp
$Comp
L NER:ULV8F2BSS331 S1
U 1 1 5F94EA0B
P 18850 3500
F 0 "S1" H 18850 3985 50  0000 C CNN
F 1 "ULV8F2BSS331" H 18850 3894 50  0000 C CNN
F 2 "" H 18850 3700 50  0001 C CNN
F 3 "~" H 18850 3700 50  0001 C CNN
	1    18850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	18650 3600 18600 3600
Wire Wire Line
	19050 3400 19100 3400
Wire Wire Line
	18550 3300 18650 3300
Wire Wire Line
	18600 3800 18600 3600
Wire Wire Line
	19100 3400 19100 3800
Wire Wire Line
	19100 3800 18600 3800
$Sheet
S 19150 10300 1750 2200
U 5F45B05E
F0 "Accumulator Container" 50
F1 "Accumulator_Container.sch" 50
F2 "Shutdown+" I L 19150 10350 50 
F3 "Shutdown-" I R 20900 10350 50 
F4 "TS+" O R 20900 12350 50 
F5 "TS-" O R 20900 12450 50 
F6 "TSAL+" O L 19150 10900 50 
F7 "TSAL-" O L 19150 10800 50 
F8 "IMD_HV_SENSE-" O L 19150 10600 50 
F9 "IMD_HV_SENSE+" O L 19150 10500 50 
F10 "TSMP-" O L 19150 12450 50 
F11 "TSMP+" O L 19150 12350 50 
F12 "Segment1_Thermistors" O R 20900 11250 50 
F13 "Segment2_Thermistors" O R 20900 11350 50 
F14 "Segment3_Thermistors" O R 20900 11450 50 
F15 "Segment4_Thermistors" O R 20900 11550 50 
F16 "Segment1_VoltageTaps" O R 20900 11700 50 
F17 "Segment2_VoltageTaps" O R 20900 11800 50 
F18 "Segment3_VoltageTaps" O R 20900 11900 50 
F19 "Segment4_VoltageTaps" O R 20900 12000 50 
F21 "MotorController_AIR_Control+" I R 20900 10800 50 
F23 "MotorController_Precharge+" I R 20900 10900 50 
F24 "HVD-" I L 19150 11700 50 
F25 "HVD+" I L 19150 11600 50 
F26 "SMD_2-" I L 19150 11300 50 
F27 "SMD_2+" I L 19150 11200 50 
F28 "SMD_1-" I L 19150 12100 50 
F29 "SMD_1+" I L 19150 12000 50 
F30 "Current_Sensor" O R 20900 12150 50 
$EndSheet
Entry Wire Line
	30450 8950 30550 8850
Entry Wire Line
	30450 8850 30550 8750
Wire Wire Line
	30400 8850 30450 8850
Entry Bus Bus
	30550 8650 30650 8550
Wire Wire Line
	16100 3950 16150 3950
Wire Wire Line
	16100 3850 16150 3850
Entry Wire Line
	16150 3850 16250 3950
Entry Wire Line
	16150 3950 16250 4050
Wire Wire Line
	20600 4250 20650 4250
Wire Wire Line
	20600 4150 20650 4150
Entry Wire Line
	20650 4150 20750 4250
Entry Wire Line
	20650 4250 20750 4350
Text GLabel 23100 3650 0    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 19000 4250 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	18550 3300 18550 3900
Wire Wire Line
	23200 3650 23100 3650
$Comp
L NER:ST-R10_LED D6
U 1 1 5F87123F
P 22950 3300
F 0 "D6" H 22925 3531 50  0000 C CNN
F 1 "ST-R10_LED" H 22925 3440 50  0000 C CNN
F 2 "" H 22900 3300 50  0001 C CNN
F 3 "" H 22900 3300 50  0001 C CNN
	1    22950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	23100 3250 23200 3250
Wire Wire Line
	23100 3350 23200 3350
Wire Wire Line
	23200 3450 22650 3450
Wire Wire Line
	22650 3450 22650 3300
Wire Wire Line
	22650 3300 22750 3300
$Comp
L Motor:Motor_DC M1
U 1 1 5FA2966E
P 32450 10400
F 0 "M1" H 32850 10400 50  0000 L CNN
F 1 "Cooling Pump" H 32650 10300 50  0000 L CNN
F 2 "" H 32450 10310 50  0001 C CNN
F 3 "~" H 32450 10310 50  0001 C CNN
	1    32450 10400
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST SW5
U 1 1 5F864268
P 11750 16150
F 0 "SW5" H 11750 15950 50  0000 C CNN
F 1 "Latching Circuit Reset" H 11750 15800 50  0000 C CNN
F 2 "" H 11750 16150 50  0001 C CNN
F 3 "~" H 11750 16150 50  0001 C CNN
	1    11750 16150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 15850 11600 15850
Wire Wire Line
	12100 15850 11900 15850
Wire Wire Line
	12000 15950 11800 15950
Wire Wire Line
	12000 16050 12000 15950
Wire Wire Line
	11950 16050 12000 16050
Wire Wire Line
	11500 15950 11700 15950
Wire Wire Line
	11500 16050 11500 15950
Wire Wire Line
	11550 16050 11500 16050
Wire Notes Line
	12950 16550 12950 15500
Wire Notes Line
	10500 15500 10500 16550
Wire Wire Line
	20600 2650 20750 2650
Wire Wire Line
	20600 2550 20750 2550
Wire Wire Line
	24550 3750 24600 3750
Entry Wire Line
	24600 3750 24700 3850
Wire Wire Line
	24550 3850 24600 3850
$Sheet
S 23200 3050 1350 900 
U 5F890A03
F0 "Brake Light" 50
F1 "Brake Light.sch" 50
F2 "CAN_H" I R 24550 3650 50 
F3 "CAN_L" I R 24550 3750 50 
F4 "GLV+" I L 23200 3850 50 
F5 "GLV_GND" I L 23200 3650 50 
F6 "Brake_Light_1+" I L 23200 3250 50 
F7 "Brake_Light_2+" I L 23200 3350 50 
F8 "Brake_Light_GND" I L 23200 3450 50 
F9 "CAN_SHIELD" I R 24550 3850 50 
F10 "BattFanPWM1" O R 24550 3150 50 
F11 "BattFanPWM2" O R 24550 3250 50 
$EndSheet
Entry Wire Line
	24600 3850 24700 3950
Text GLabel 14550 3950 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	30400 8750 30450 8750
Entry Wire Line
	30450 8750 30550 8650
Wire Wire Line
	10750 15400 10850 15400
Wire Wire Line
	10750 15400 10750 16000
Wire Wire Line
	30400 8950 30450 8950
Text Label 5050 8850 3    50   ~ 0
CoolingPumpPower
$Sheet
S 9700 9850 1750 1200
U 5F45AFB3
F0 "Shutdown Latching Circuits" 50
F1 "Shutdown_LatchingCircuits.sch" 50
F2 "Shutdown_OUT" O R 11450 10350 50 
F3 "Shutdown_IN" I L 9700 10350 50 
F4 "IMD_Fault_Indicator" O R 11450 10050 50 
F5 "IMD_Latch_Reset+" I R 11450 10750 50 
F6 "IMD_Latch_Reset-" I R 11450 10850 50 
F7 "GLV+_Fused" I L 9700 9950 50 
F8 "IMD_Status" I L 9700 10950 50 
F9 "BMS_Status" I R 11450 10200 50 
F10 "BMS_Fault_Indicator" O R 11450 9950 50 
F11 "BMS_Latch_Reset+" I R 11450 10650 50 
F12 "BMS_Latch_Reset-" I R 11450 10950 50 
F13 "Ground" I L 9700 10650 50 
$EndSheet
$Sheet
S 19200 2500 1400 1850
U 5F647A32
F0 "Driver IO Enclosure" 50
F1 "Driver IO Enclosure.sch" 50
F2 "CAN_L" I R 20600 4250 50 
F3 "CAN_H" I R 20600 4150 50 
F4 "GLV+" I L 19200 4100 50 
F5 "GLV_GND" I L 19200 4250 50 
F6 "LED(+)" I L 19200 3600 50 
F7 "Button_GND" I L 19200 3800 50 
F8 "Button_Input" I L 19200 3900 50 
F9 "Button_+5V" I L 19200 3200 50 
F10 "Speaker+" I R 20600 2550 50 
F11 "Speaker-" I R 20600 2650 50 
F12 "StartEnable" I L 19200 2800 50 
F13 "IMD_Indicator(+)" I R 20600 3050 50 
F14 "IMD_Indicator(-)" I R 20600 3150 50 
F15 "BMS_Indicator(+)" I R 20600 3500 50 
F16 "BMS_Indicator(-)" I R 20600 3600 50 
F17 "Toggle(+)" I R 20600 3900 50 
F18 "Toggle(-)" I R 20600 4000 50 
F19 "BMS_Fault" I L 19200 2550 50 
F20 "IMD_Fault" I L 19200 2650 50 
$EndSheet
Entry Wire Line
	20650 4550 20750 4650
Entry Wire Line
	24700 3750 24600 3650
Wire Wire Line
	24600 3650 24550 3650
Wire Wire Line
	20650 4550 19100 4550
Wire Notes Line
	12950 15500 10500 15500
Wire Notes Line
	10500 16550 12950 16550
$Comp
L NER:2-Pos_Generic J1
U 1 1 5FB3F5F1
P 28050 15700
F 0 "J1" H 28050 15825 50  0000 C CNN
F 1 "ChargerHV" H 28050 15734 50  0000 C CNN
F 2 "" H 28050 15700 50  0001 C CNN
F 3 "" H 28050 15700 50  0001 C CNN
	1    28050 15700
	1    0    0    -1  
$EndComp
Wire Wire Line
	29300 15900 29450 15900
Wire Wire Line
	29450 15800 29300 15800
Wire Wire Line
	29300 15700 29450 15700
Wire Wire Line
	29300 15600 29450 15600
Wire Wire Line
	29300 15500 29450 15500
Text Notes 28650 14950 0    50   ~ 0
Charging System
Wire Wire Line
	28300 15800 28600 15800
Wire Wire Line
	28300 15900 28600 15900
Text Label 20450 4550 2    50   ~ 0
CAN_Shield
$Comp
L Device:Battery_Cell BT1
U 1 1 5FB68579
P 2550 8750
F 0 "BT1" V 2205 8800 50  0000 C CNN
F 1 "GLV Battery" V 2296 8800 50  0000 C CNN
F 2 "" V 2550 8810 50  0001 C CNN
F 3 "~" V 2550 8810 50  0001 C CNN
F 4 "12V" V 2387 8800 50  0000 C CNN "Voltage"
	1    2550 8750
	0    1    1    0   
$EndComp
$Comp
L Device:CircuitBreaker_1P CB1
U 1 1 5FB82BB8
P 3500 8750
F 0 "CB1" V 3144 8750 50  0000 C CNN
F 1 "GLV Main Breaker" V 3235 8750 50  0000 C CNN
F 2 "" H 3500 8750 50  0001 C CNN
F 3 "~" H 3500 8750 50  0001 C CNN
F 4 "30A" V 3326 8750 50  0000 C CNN "Current"
	1    3500 8750
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5FBB54F3
P 4450 8750
F 0 "SW3" H 4450 8985 50  0000 C CNN
F 1 "GLVMS" H 4450 8894 50  0000 C CNN
F 2 "" H 4450 8750 50  0001 C CNN
F 3 "~" H 4450 8750 50  0001 C CNN
	1    4450 8750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW2
U 1 1 5FBE828B
P 5400 8750
F 0 "SW2" H 5400 8560 50  0000 C CNN
F 1 "Side BRB" H 5400 8651 50  0000 C CNN
F 2 "" H 5400 8950 50  0001 C CNN
F 3 "~" H 5400 8950 50  0001 C CNN
	1    5400 8750
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push_Open SW3
U 1 1 5FBE9A6D
P 6150 8750
F 0 "SW3" H 6150 8965 50  0000 C CNN
F 1 "Side BRB" H 6150 8874 50  0000 C CNN
F 2 "" H 6150 8950 50  0001 C CNN
F 3 "~" H 6150 8950 50  0001 C CNN
	1    6150 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 8750 5050 8750
Wire Wire Line
	5050 8750 5050 15350
Wire Wire Line
	5050 15350 7350 15350
Connection ~ 5050 8750
Wire Wire Line
	5050 8750 5200 8750
$Comp
L NER:FuseBox_PSZACCEPS052H U1
U 1 1 5FCB7816
P 7850 8750
F 0 "U1" V 7804 8778 50  0000 L CNN
F 1 "FuseBox_PSZACCEPS052H" V 7895 8778 50  0000 L CNN
F 2 "" H 7850 8900 50  0001 C CNN
F 3 "" H 7850 8900 50  0001 C CNN
	1    7850 8750
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 8750 2450 8750
Wire Wire Line
	2750 8750 3200 8750
Wire Wire Line
	3800 8750 4250 8750
Wire Wire Line
	5600 8750 5950 8750
Wire Wire Line
	6350 8750 6950 8750
Wire Wire Line
	7750 9350 7750 9950
$Comp
L Switch:SW_SPST SW4
U 1 1 5FE5C813
P 8900 10350
F 0 "SW4" H 8900 10585 50  0000 C CNN
F 1 "Brake Over-Travel Switch" H 8900 10494 50  0000 C CNN
F 2 "" H 8900 10350 50  0001 C CNN
F 3 "~" H 8900 10350 50  0001 C CNN
	1    8900 10350
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FE9397E
P 21950 13600
F 0 "M?" H 22107 13604 50  0000 L CNN
F 1 "Fan_4pin" H 22107 13695 50  0000 L CNN
F 2 "" H 21950 13610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 21950 13610 50  0001 C CNN
	1    21950 13600
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FE98640
P 20900 13600
F 0 "M?" H 21057 13604 50  0000 L CNN
F 1 "Fan_4pin" H 21057 13695 50  0000 L CNN
F 2 "" H 20900 13610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 20900 13610 50  0001 C CNN
	1    20900 13600
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEA35FD
P 19850 13600
F 0 "M?" H 20007 13604 50  0000 L CNN
F 1 "Fan_4pin" H 20007 13695 50  0000 L CNN
F 2 "" H 19850 13610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 19850 13610 50  0001 C CNN
	1    19850 13600
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEA3603
P 18800 13600
F 0 "M?" H 18957 13604 50  0000 L CNN
F 1 "Fan_4pin" H 18957 13695 50  0000 L CNN
F 2 "" H 18800 13610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 18800 13610 50  0001 C CNN
	1    18800 13600
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEBD08B
P 21950 14600
F 0 "M?" H 22108 14696 50  0000 L CNN
F 1 "Fan_4pin" H 22108 14605 50  0000 L CNN
F 2 "" H 21950 14610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 21950 14610 50  0001 C CNN
	1    21950 14600
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEC48FA
P 20900 14600
F 0 "M?" H 21058 14696 50  0000 L CNN
F 1 "Fan_4pin" H 21058 14605 50  0000 L CNN
F 2 "" H 20900 14610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 20900 14610 50  0001 C CNN
	1    20900 14600
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEDEE98
P 19850 14600
F 0 "M?" H 20008 14696 50  0000 L CNN
F 1 "Fan_4pin" H 20008 14605 50  0000 L CNN
F 2 "" H 19850 14610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 19850 14610 50  0001 C CNN
	1    19850 14600
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEF92A4
P 18800 14600
F 0 "M?" H 18958 14696 50  0000 L CNN
F 1 "Fan_4pin" H 18958 14605 50  0000 L CNN
F 2 "" H 18800 14610 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 18800 14610 50  0001 C CNN
	1    18800 14600
	1    0    0    -1  
$EndComp
Wire Wire Line
	18800 14300 18800 14200
Wire Wire Line
	18800 14200 19850 14200
Wire Wire Line
	21950 14200 21950 14300
Wire Wire Line
	20900 14300 20900 14200
Connection ~ 20900 14200
Wire Wire Line
	20900 14200 21950 14200
Wire Wire Line
	19850 14200 19850 14300
Connection ~ 19850 14200
Wire Wire Line
	19850 14200 20900 14200
Wire Wire Line
	18500 14700 18350 14700
Wire Wire Line
	18350 14700 18350 14150
Wire Wire Line
	18350 14150 19400 14150
Wire Wire Line
	21650 14700 21500 14700
Wire Wire Line
	21500 14700 21500 14150
Connection ~ 21500 14150
Wire Wire Line
	20600 14700 20450 14700
Wire Wire Line
	19550 14700 19400 14700
Wire Wire Line
	18800 14800 18800 14950
Wire Wire Line
	18800 14950 19850 14950
Wire Wire Line
	21950 14800 21950 14950
Wire Wire Line
	20900 14800 20900 14950
Connection ~ 20900 14950
Wire Wire Line
	20900 14950 21950 14950
Wire Wire Line
	19850 14800 19850 14950
Connection ~ 19850 14950
Wire Wire Line
	19850 14950 20900 14950
Wire Wire Line
	18800 13900 18800 14000
Wire Wire Line
	18800 14000 19850 14000
Wire Wire Line
	21950 13900 21950 14000
Wire Wire Line
	20900 13900 20900 14000
Connection ~ 20900 14000
Wire Wire Line
	20900 14000 21950 14000
Wire Wire Line
	19850 13900 19850 14000
Connection ~ 19850 14000
Wire Wire Line
	19850 14000 20900 14000
Wire Wire Line
	19250 14050 20300 14050
Connection ~ 21350 14050
Wire Wire Line
	21350 14050 22400 14050
Connection ~ 20300 14050
Wire Wire Line
	20300 14050 21350 14050
Wire Wire Line
	19400 14700 19400 14150
Connection ~ 19400 14150
Wire Wire Line
	19400 14150 20450 14150
Wire Wire Line
	20450 14700 20450 14150
Connection ~ 20450 14150
Wire Wire Line
	20450 14150 21500 14150
NoConn ~ 21650 14500
NoConn ~ 20600 14500
NoConn ~ 19550 14500
NoConn ~ 18500 14500
Wire Wire Line
	19100 13500 19250 13500
Wire Wire Line
	19250 13500 19250 14050
Wire Wire Line
	20150 13500 20300 13500
Wire Wire Line
	21200 13500 21350 13500
Wire Wire Line
	22250 13500 22400 13500
Wire Wire Line
	22400 13500 22400 14050
Wire Wire Line
	21350 13500 21350 14050
Wire Wire Line
	20300 13500 20300 14050
NoConn ~ 19100 13700
NoConn ~ 20150 13700
NoConn ~ 21200 13700
NoConn ~ 22250 13700
Wire Wire Line
	18800 13400 18800 13200
Wire Wire Line
	18800 13200 19850 13200
Wire Wire Line
	21950 13400 21950 13200
Wire Wire Line
	20900 13400 20900 13200
Connection ~ 20900 13200
Wire Wire Line
	20900 13200 21950 13200
Wire Wire Line
	19850 13400 19850 13200
Connection ~ 19850 13200
Wire Wire Line
	19850 13200 20900 13200
$Comp
L NER:2-Pos_Generic J?
U 1 1 608930F9
P 17650 14400
F 0 "J?" H 17650 14525 50  0000 C CNN
F 1 "Bank 2 Power" H 17650 14434 50  0000 C CNN
F 2 "" H 17650 14400 50  0001 C CNN
F 3 "" H 17650 14400 50  0001 C CNN
	1    17650 14400
	1    0    0    -1  
$EndComp
$Comp
L NER:2-Pos_Generic J?
U 1 1 608979A2
P 17650 13400
F 0 "J?" H 17650 13525 50  0000 C CNN
F 1 "Bank 1 Power" H 17650 13434 50  0000 C CNN
F 2 "" H 17650 13400 50  0001 C CNN
F 3 "" H 17650 13400 50  0001 C CNN
	1    17650 13400
	1    0    0    -1  
$EndComp
$Comp
L NER:2-Pos_Generic J?
U 1 1 60898923
P 22850 13950
F 0 "J?" H 22850 14075 50  0000 C CNN
F 1 "PWM" H 22850 13984 50  0000 C CNN
F 2 "" H 22850 13950 50  0001 C CNN
F 3 "" H 22850 13950 50  0001 C CNN
	1    22850 13950
	1    0    0    -1  
$EndComp
Wire Wire Line
	22400 14050 22600 14050
Connection ~ 22400 14050
Wire Wire Line
	21500 14150 22600 14150
Wire Wire Line
	18800 14950 18050 14950
Wire Wire Line
	18050 14950 18050 14600
Wire Wire Line
	18050 14600 17900 14600
Connection ~ 18800 14950
Wire Wire Line
	18800 13200 18050 13200
Wire Wire Line
	18050 13200 18050 13500
Wire Wire Line
	18050 13500 17900 13500
Connection ~ 18800 13200
Wire Wire Line
	17900 13600 18050 13600
Wire Wire Line
	18050 13600 18050 14000
Wire Wire Line
	18050 14000 18800 14000
Connection ~ 18800 14000
Wire Wire Line
	18050 14500 17900 14500
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E3E
P 18850 12100
AR Path="/5F45B05E/60DA2E3E" Ref="SW?"  Part="1" 
AR Path="/60DA2E3E" Ref="SW10"  Part="1" 
F 0 "SW10" H 18850 12250 50  0000 C CNN
F 1 "SMD" H 18850 12350 50  0000 C CNN
F 2 "" H 18850 12100 50  0001 C CNN
F 3 "~" H 18850 12100 50  0001 C CNN
	1    18850 12100
	-1   0    0    1   
$EndComp
Wire Wire Line
	19100 3800 19200 3800
Connection ~ 19100 3800
Wire Wire Line
	19200 3900 18550 3900
Wire Wire Line
	19050 3200 19200 3200
Wire Wire Line
	19200 3600 19050 3600
Wire Wire Line
	12400 11000 12400 10850
Wire Wire Line
	12850 11000 12850 10850
Text GLabel 12400 11000 3    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 12850 11000 3    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Switch:SW_Push_Open SW6
U 1 1 616878E3
P 13750 10350
F 0 "SW6" H 13750 10565 50  0000 C CNN
F 1 "Cockpit BRB" H 13750 10474 50  0000 C CNN
F 2 "" H 13750 10550 50  0001 C CNN
F 3 "~" H 13750 10550 50  0001 C CNN
	1    13750 10350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW7
U 1 1 6169D200
P 14450 10350
F 0 "SW7" H 14450 10585 50  0000 C CNN
F 1 "TSMS" H 14450 10494 50  0000 C CNN
F 2 "" H 14450 10350 50  0001 C CNN
F 3 "~" H 14450 10350 50  0001 C CNN
	1    14450 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 10350 14250 10350
Wire Wire Line
	19150 10800 18650 10800
Wire Wire Line
	18650 10800 18650 10900
Wire Wire Line
	18650 10900 18750 10900
Wire Wire Line
	19050 10900 19150 10900
Wire Wire Line
	19150 12100 19050 12100
Wire Wire Line
	19150 12000 18600 12000
Wire Wire Line
	18600 12000 18600 12100
Wire Wire Line
	18600 12100 18650 12100
Wire Wire Line
	18650 11700 18600 11700
Wire Wire Line
	18600 11700 18600 11600
Wire Wire Line
	18600 11600 19150 11600
Wire Wire Line
	19150 11200 18600 11200
Wire Wire Line
	18600 11200 18600 11300
Wire Wire Line
	18600 11300 18650 11300
Wire Wire Line
	19050 11300 19150 11300
Wire Wire Line
	19050 11700 19150 11700
Wire Wire Line
	20900 12350 26950 12350
Wire Wire Line
	27550 12450 27050 12450
$Sheet
S 27550 8300 2850 4250
U 60D53BFB
F0 "BMS & MC Container" 50
F1 "BMSContainer.sch" 50
F2 "Segment4_Thermistors" I L 27550 11550 50 
F3 "Segment3_Thermistors" I L 27550 11450 50 
F4 "Segment1_Thermistors" I L 27550 11250 50 
F5 "Segment2_Thermistors" I L 27550 11350 50 
F6 "BMS_Fault" O L 27550 8900 50 
F7 "Segment1_VoltageTaps" I L 27550 11700 50 
F8 "Segment2_VoltageTaps" I L 27550 11800 50 
F9 "Segment3_VoltageTaps" I L 27550 11900 50 
F10 "Segment4_VoltageTaps" I L 27550 12000 50 
F11 "Current_Sensor" I L 27550 12150 50 
F12 "ChargerSafety" O R 30400 12450 50 
F13 "ChargerPWR" O R 30400 12350 50 
F14 "CoolingPumpPower_IN" I R 30400 9900 50 
F15 "CoolingPumpPower_OUT" I R 30400 10000 50 
F16 "CoolingPumpControl" I R 30400 9800 50 
F17 "GND(Charger)" I R 30400 12250 50 
F18 "CAN_H(Charger)" I R 30400 12050 50 
F19 "CAN_L(Charger)" I R 30400 12150 50 
F20 "TS+" I L 27550 12350 50 
F21 "TS-" O L 27550 12450 50 
F22 "CAN_L(MC)" B R 30400 8400 50 
F23 "CAN_H(MC)" B R 30400 8500 50 
F24 "CAN_SHIELD(MC)" B R 30400 8600 50 
F25 "GND" U L 27550 8600 50 
F26 "CAN_H(BMS)" B R 30400 8850 50 
F27 "CAN_L(BMS)" B R 30400 8750 50 
F28 "CAN_SHIELD(BMS)" B R 30400 8950 50 
F29 "PrechargeRLY" O L 27550 10900 50 
F30 "AC3" O R 30400 11600 50 
F31 "AC2" O R 30400 11450 50 
F32 "AC1" O R 30400 11300 50 
F33 "MainRLY" O L 27550 10800 50 
F34 "GLV(BMS+Charging)" I L 27550 8350 50 
F35 "GLV(MC)" I L 27550 8450 50 
$EndSheet
Wire Wire Line
	14650 3050 14500 3050
Wire Wire Line
	14500 3550 14650 3550
Wire Wire Line
	14650 3950 14550 3950
Wire Wire Line
	16100 3400 16300 3400
Wire Wire Line
	16700 3400 16750 3400
Wire Wire Line
	16750 3400 16750 3500
Wire Wire Line
	16750 3500 16100 3500
Wire Wire Line
	16100 2900 16300 2900
Wire Wire Line
	16700 2900 16750 2900
Wire Wire Line
	16750 2900 16750 3000
Wire Wire Line
	16750 3000 16100 3000
Wire Wire Line
	16100 4050 16150 4050
Entry Wire Line
	16150 4050 16250 4150
Wire Wire Line
	23200 3850 22950 3850
Wire Wire Line
	7150 5350 7150 8150
Wire Wire Line
	14650 4100 14400 4100
Wire Wire Line
	14400 4100 14400 5350
Wire Wire Line
	7300 5500 7300 8150
$Comp
L Device:LED D29
U 1 1 61F2ACEE
P 20900 3050
F 0 "D29" H 20893 2795 50  0000 C CNN
F 1 "IMD Indicator" H 20893 2886 50  0000 C CNN
F 2 "" H 20900 3050 50  0001 C CNN
F 3 "~" H 20900 3050 50  0001 C CNN
	1    20900 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D30
U 1 1 61F2CBDA
P 20900 3500
F 0 "D30" H 20893 3245 50  0000 C CNN
F 1 "BMS Indicator" H 20893 3336 50  0000 C CNN
F 2 "" H 20900 3500 50  0001 C CNN
F 3 "~" H 20900 3500 50  0001 C CNN
	1    20900 3500
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW14
U 1 1 61F4E8CC
P 20900 3900
F 0 "SW14" H 20900 4135 50  0000 C CNN
F 1 "Reverse Toggle" H 20900 4044 50  0000 C CNN
F 2 "" H 20900 3900 50  0001 C CNN
F 3 "~" H 20900 3900 50  0001 C CNN
	1    20900 3900
	1    0    0    -1  
$EndComp
Connection ~ 19100 4250
Wire Wire Line
	19100 4250 19200 4250
Wire Wire Line
	19000 4250 19100 4250
$Comp
L Device:Speaker LS1
U 1 1 620AED7F
P 20950 2550
F 0 "LS1" H 21120 2546 50  0000 L CNN
F 1 "Speaker" H 21120 2455 50  0000 L CNN
F 2 "" H 20950 2350 50  0001 C CNN
F 3 "~" H 20940 2500 50  0001 C CNN
	1    20950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	20600 3050 20750 3050
Wire Wire Line
	21150 3050 21150 3150
Wire Wire Line
	21150 3150 20600 3150
Wire Wire Line
	21050 3050 21150 3050
Wire Wire Line
	20600 3500 20750 3500
Wire Wire Line
	21050 3500 21150 3500
Wire Wire Line
	21150 3500 21150 3600
Wire Wire Line
	21150 3600 20600 3600
Wire Wire Line
	20600 3900 20700 3900
Wire Wire Line
	21100 3900 21200 3900
Wire Wire Line
	21200 3900 21200 4000
Wire Wire Line
	21200 4000 20600 4000
Wire Wire Line
	19100 4250 19100 4550
Wire Wire Line
	19200 4100 18350 4100
Wire Wire Line
	7450 5650 7450 8150
Wire Wire Line
	18350 4100 18350 5500
$Comp
L Device:LED D3
U 1 1 621F7BB5
P 12400 10700
F 0 "D3" V 12439 10583 50  0000 R CNN
F 1 "SSOK" V 12348 10583 50  0000 R CNN
F 2 "" H 12400 10700 50  0001 C CNN
F 3 "~" H 12400 10700 50  0001 C CNN
	1    12400 10700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 621F8D1D
P 12850 10700
F 0 "D4" V 12889 10583 50  0000 R CNN
F 1 "SSOK" V 12798 10583 50  0000 R CNN
F 2 "" H 12850 10700 50  0001 C CNN
F 3 "~" H 12850 10700 50  0001 C CNN
	1    12850 10700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12400 10550 12400 10350
Wire Wire Line
	12850 10550 12850 10350
Connection ~ 12400 10350
Connection ~ 12850 10350
Wire Wire Line
	11450 10350 12400 10350
Wire Wire Line
	12400 10350 12850 10350
Wire Wire Line
	11450 10750 11800 10750
Wire Wire Line
	11450 10850 11700 10850
Wire Wire Line
	12100 15850 12100 16250
Wire Wire Line
	11950 16250 12100 16250
Wire Wire Line
	11400 15850 11400 16250
Wire Wire Line
	11400 16250 11550 16250
Wire Wire Line
	11600 10950 11450 10950
Wire Wire Line
	11450 10650 11900 10650
Wire Wire Line
	11600 10950 11600 15850
Wire Wire Line
	11700 10850 11700 15950
Wire Wire Line
	11800 10750 11800 15950
Wire Wire Line
	11900 10650 11900 15850
Wire Wire Line
	7600 9350 7600 10350
Wire Wire Line
	11450 9950 11800 9950
Wire Wire Line
	11800 9950 11800 8100
Wire Wire Line
	17800 2550 19200 2550
Wire Wire Line
	19200 2650 17900 2650
Wire Wire Line
	11900 8200 11900 10050
Wire Wire Line
	11900 10050 11450 10050
Wire Wire Line
	17900 2650 17900 8200
Wire Wire Line
	17800 2550 17800 8100
Wire Wire Line
	19200 2800 18000 2800
Wire Wire Line
	18000 2800 18000 10350
Wire Wire Line
	18000 10350 19150 10350
Wire Wire Line
	12850 10350 13550 10350
Connection ~ 18000 10350
Wire Wire Line
	7600 10350 8700 10350
Wire Wire Line
	7750 9950 9700 9950
Wire Wire Line
	9100 10350 9700 10350
Wire Wire Line
	11800 8100 17800 8100
Wire Wire Line
	11900 8200 17900 8200
$Sheet
S 14450 11350 950  550 
U 626EC638
F0 "IMD Container" 50
F1 "IMD_Container.sch" 50
F2 "HV_Sense+" B R 15400 11400 50 
F3 "HV_Sense-" B R 15400 11500 50 
F4 "GLV" I L 14450 11850 50 
F5 "GND2" U L 14450 11600 50 
F6 "GND1" U L 14450 11500 50 
F7 "GND" U L 14450 11400 50 
F8 "IMD_Fault" O L 14450 11750 50 
$EndSheet
Text GLabel 14300 11400 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	14300 11400 14450 11400
Text GLabel 14300 11500 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	14300 11500 14450 11500
Text GLabel 14300 11600 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	14300 11600 14450 11600
Wire Wire Line
	7450 11850 14450 11850
Wire Wire Line
	15400 11400 15750 11400
Wire Wire Line
	15750 11400 15750 10500
Wire Wire Line
	15750 10500 19150 10500
Wire Wire Line
	19150 10600 15850 10600
Wire Wire Line
	15850 10600 15850 11500
Wire Wire Line
	15850 11500 15400 11500
Wire Wire Line
	14650 10350 18000 10350
Wire Wire Line
	20900 10350 21050 10350
Text GLabel 21050 10350 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	17400 13600 7300 13600
Wire Wire Line
	7300 13600 7300 9350
Wire Wire Line
	18800 14200 18050 14200
Connection ~ 18800 14200
Wire Wire Line
	18050 14200 18050 14500
Wire Wire Line
	17400 14500 16250 14500
Wire Wire Line
	16250 13750 7150 13750
Wire Wire Line
	16250 14500 16250 13750
Wire Wire Line
	7150 9350 7150 13750
Text GLabel 17250 14600 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	17250 14600 17400 14600
Text GLabel 17250 13500 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	17250 13500 17400 13500
Wire Wire Line
	7150 5350 14400 5350
Wire Wire Line
	7300 5500 18350 5500
Wire Wire Line
	22950 5650 22950 3850
Wire Wire Line
	7450 5650 22950 5650
Wire Wire Line
	24550 3150 25500 3150
Wire Wire Line
	25500 3150 25500 14150
Wire Wire Line
	25500 14150 23100 14150
Wire Wire Line
	23100 14050 25400 14050
Wire Wire Line
	25400 14050 25400 3250
Wire Wire Line
	25400 3250 24550 3250
Wire Bus Line
	20900 12150 27550 12150
Wire Bus Line
	20900 11250 27550 11250
Wire Bus Line
	20900 11350 27550 11350
Wire Bus Line
	20900 11450 27550 11450
Wire Bus Line
	20900 11550 27550 11550
Wire Bus Line
	20900 11700 27550 11700
Wire Bus Line
	20900 11800 27550 11800
Wire Bus Line
	20900 11900 27550 11900
Wire Bus Line
	20900 12000 27550 12000
Wire Wire Line
	32450 10000 32450 10200
Wire Wire Line
	30400 10000 32450 10000
Wire Wire Line
	27550 8350 26950 8350
Wire Wire Line
	7750 8150 7750 7650
Wire Wire Line
	26800 7650 26800 8450
Wire Wire Line
	26800 8450 27550 8450
Wire Wire Line
	7750 7650 26800 7650
Wire Wire Line
	7600 7500 7600 8150
Wire Wire Line
	26950 7500 26950 8350
Wire Wire Line
	7600 7500 26950 7500
Wire Wire Line
	20900 10900 27550 10900
Wire Wire Line
	20900 10800 27550 10800
Wire Wire Line
	27550 8600 27400 8600
Text GLabel 27400 8600 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	11450 10200 12100 10200
Wire Wire Line
	12100 10200 12100 8900
Wire Wire Line
	12100 8900 27550 8900
Text GLabel 9550 10650 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	9550 10650 9700 10650
Wire Wire Line
	31200 15700 31200 12250
Wire Wire Line
	31100 15600 31100 12350
Wire Wire Line
	31100 12350 30400 12350
Wire Wire Line
	29950 15600 31100 15600
Wire Wire Line
	30400 12450 31000 12450
Wire Wire Line
	31000 12450 31000 15500
Wire Wire Line
	29950 15500 31000 15500
Wire Notes Line
	30000 14850 30000 16400
Wire Notes Line
	30000 16400 27750 16400
Wire Notes Line
	27750 16400 27750 14850
Wire Notes Line
	27750 14850 30000 14850
$Comp
L NER:5-Pos_Generic J2
U 1 1 64068D98
P 29700 15400
F 0 "J2" H 29700 15525 50  0000 C CNN
F 1 "ChargerLV" H 29700 15434 50  0000 C CNN
F 2 "" H 29700 15400 50  0001 C CNN
F 3 "" H 29700 15400 50  0001 C CNN
	1    29700 15400
	1    0    0    -1  
$EndComp
Wire Wire Line
	27050 15800 27050 12450
Wire Wire Line
	27050 15800 27800 15800
Connection ~ 27050 12450
Wire Wire Line
	26950 15900 27800 15900
Wire Wire Line
	20900 12450 27050 12450
Wire Wire Line
	26950 12350 26950 15900
Connection ~ 26950 12350
Wire Wire Line
	26950 12350 27550 12350
Entry Wire Line
	30450 8600 30550 8500
Entry Wire Line
	30450 8500 30550 8400
Wire Wire Line
	30400 8500 30450 8500
Entry Bus Bus
	30550 8300 30650 8200
Wire Wire Line
	30400 8400 30450 8400
Entry Wire Line
	30450 8400 30550 8300
Wire Wire Line
	30400 8600 30450 8600
Entry Bus Bus
	24700 6300 24800 6400
Entry Bus Bus
	20750 6300 20850 6400
Entry Bus Bus
	16250 6300 16350 6400
Entry Wire Line
	30450 12050 30550 11950
Wire Wire Line
	30450 12050 30400 12050
Entry Wire Line
	30450 12150 30550 12050
Wire Wire Line
	30450 12150 30400 12150
Entry Wire Line
	30000 15900 30100 16000
Wire Wire Line
	30000 15900 29950 15900
Entry Wire Line
	30000 15800 30100 15900
Wire Wire Line
	30000 15800 29950 15800
Entry Wire Line
	30000 15700 30100 15800
Entry Wire Line
	30450 12250 30550 12150
Wire Bus Line
	30550 12150 31300 12150
Wire Bus Line
	31300 12150 31300 15800
Wire Bus Line
	31300 15800 30100 15800
Wire Wire Line
	12650 16000 12650 12450
Wire Wire Line
	12650 12450 19150 12450
Wire Wire Line
	19150 12350 12350 12350
Wire Wire Line
	12350 12350 12350 16000
Wire Wire Line
	9700 10950 9500 10950
Wire Wire Line
	9500 10950 9500 11750
Wire Wire Line
	9500 11750 14450 11750
Wire Wire Line
	7450 9350 7450 11850
Wire Wire Line
	30400 12250 31200 12250
Wire Wire Line
	29950 15700 31200 15700
Wire Bus Line
	30650 6400 30650 8550
Wire Bus Line
	30550 8650 30550 8850
Wire Bus Line
	30550 8300 30550 8500
Wire Bus Line
	30100 15800 30100 16000
Wire Bus Line
	30550 11950 30550 12150
Wire Bus Line
	24700 3750 24700 6300
Wire Bus Line
	20750 4250 20750 6300
Wire Bus Line
	16250 3950 16250 6300
Wire Bus Line
	16350 6400 30650 6400
$EndSCHEMATC
