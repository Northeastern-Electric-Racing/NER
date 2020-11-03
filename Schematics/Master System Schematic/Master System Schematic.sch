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
Text GLabel 2950 7600 0    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5FB0713A
P 13500 15050
F 0 "J6" V 13400 14900 50  0000 L CNN
F 1 "TS-" V 13300 14850 50  0000 L CNN
F 2 "" H 13500 15050 50  0001 C CNN
F 3 "~" H 13500 15050 50  0001 C CNN
	1    13500 15050
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5FB022E4
P 13200 15050
F 0 "J5" V 13100 14900 50  0000 L CNN
F 1 "TS+" V 13000 14850 50  0000 L CNN
F 2 "" H 13200 15050 50  0001 C CNN
F 3 "~" H 13200 15050 50  0001 C CNN
	1    13200 15050
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5FAE402D
P 11600 15050
F 0 "J3" V 11500 14900 50  0000 L CNN
F 1 "GND" V 11400 14850 50  0000 L CNN
F 2 "" H 11600 15050 50  0001 C CNN
F 3 "~" H 11600 15050 50  0001 C CNN
	1    11600 15050
	0    -1   1    0   
$EndComp
Text Notes 12400 15500 0    50   ~ 0
TSMP and Shutdown Reset Container
$Sheet
S 22450 17150 700  600 
U 61ECC7CF
F0 "Charger" 50
F1 "Charger.sch" 50
F2 "+12V" O R 23150 17400 50 
F3 "TS+" O L 22450 17300 50 
F4 "TS-" O L 22450 17200 50 
F5 "Charger_Safety" O R 23150 17600 50 
F6 "CAN_L" B R 23150 17200 50 
F7 "CAN_H" B R 23150 17300 50 
F8 "GND" O R 23150 17500 50 
$EndSheet
Text GLabel 11700 14250 2    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Device:LED D5
U 1 1 5FA58D8C
P 19750 9750
F 0 "D5" H 19700 9650 50  0000 L CNN
F 1 "TSAL" H 19700 9550 50  0000 L CNN
F 2 "" H 19750 9750 50  0001 C CNN
F 3 "~" H 19750 9750 50  0001 C CNN
	1    19750 9750
	1    0    0    -1  
$EndComp
Text GLabel 28050 10050 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	30200 10850 30200 10950
Wire Wire Line
	30200 10750 30300 10750
Wire Wire Line
	30200 10950 30350 10950
Wire Wire Line
	30750 11100 30750 11050
Wire Wire Line
	30750 11300 30750 11350
$Comp
L NER:Emrax228HV_Motor U4
U 1 1 5F972C2B
P 31100 10850
F 0 "U4" H 31050 11000 50  0000 L CNN
F 1 "Emrax228HV_Motor" H 30750 10900 50  0000 L CNN
F 2 "" H 31100 10850 50  0001 C CNN
F 3 "" H 31100 10850 50  0001 C CNN
	1    31100 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	30200 11200 30750 11200
Wire Wire Line
	30750 11100 30200 11100
Wire Wire Line
	30200 11300 30750 11300
Wire Wire Line
	28050 10050 28400 10050
$Comp
L Switch:SW_SPST_Temperature SW12
U 1 1 5F6E407C
P 17350 1750
F 0 "SW12" H 17350 2065 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 17350 1974 50  0000 C CNN
F 2 "" H 17350 1750 50  0001 C CNN
F 3 "~" H 17350 1750 50  0001 C CNN
	1    17350 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST_Temperature SW13
U 1 1 5F6E49B5
P 17350 2250
F 0 "SW13" H 17350 2565 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 17350 2474 50  0000 C CNN
F 2 "" H 17350 2250 50  0001 C CNN
F 3 "~" H 17350 2250 50  0001 C CNN
	1    17350 2250
	1    0    0    -1  
$EndComp
$Sheet
S 15500 1650 1450 1400
U 5F6C8190
F0 "Pedal Box" 50
F1 "PedalBox.sch" 50
F2 "GLV+" I L 15500 2950 50 
F3 "GLV_GND" I L 15500 2800 50 
F4 "CAN_L" I R 16950 2700 50 
F5 "CAN_H" I R 16950 2800 50 
F6 "Switch_Input1" I R 16950 1750 50 
F7 "Switch_Input2" I R 16950 2250 50 
F8 "Switch2-" I R 16950 2350 50 
F9 "Switch1-" I R 16950 1850 50 
F10 "POT1+" I L 15500 1750 50 
F11 "POT2+" I L 15500 2250 50 
F12 "POT1_INPUT" I L 15500 1900 50 
F13 "POT1-" I L 15500 2050 50 
F14 "POT2_INPUT" I L 15500 2400 50 
F15 "POT2-" I L 15500 2550 50 
$EndSheet
$Comp
L Device:R_POT RV2
U 1 1 5F71DF92
P 15200 2400
F 0 "RV2" H 15131 2446 50  0000 R CNN
F 1 "R_POT" H 15131 2355 50  0000 R CNN
F 2 "" H 15200 2400 50  0001 C CNN
F 3 "~" H 15200 2400 50  0001 C CNN
	1    15200 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F71E67B
P 15200 1900
F 0 "RV1" H 15131 1946 50  0000 R CNN
F 1 "R_POT" H 15131 1855 50  0000 R CNN
F 2 "" H 15200 1900 50  0001 C CNN
F 3 "~" H 15200 1900 50  0001 C CNN
	1    15200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	15200 1750 15500 1750
Wire Wire Line
	15200 2050 15500 2050
Wire Wire Line
	15200 2250 15500 2250
Wire Wire Line
	15200 2550 15500 2550
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E32
P 19700 10550
AR Path="/5F45B05E/60DA2E32" Ref="SW?"  Part="1" 
AR Path="/60DA2E32" Ref="SW9"  Part="1" 
F 0 "SW9" H 19700 10700 50  0000 C CNN
F 1 "HVD" H 19700 10800 50  0000 C CNN
F 2 "" H 19700 10550 50  0001 C CNN
F 3 "~" H 19700 10550 50  0001 C CNN
	1    19700 10550
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E38
P 19700 10150
AR Path="/5F45B05E/60DA2E38" Ref="SW?"  Part="1" 
AR Path="/60DA2E38" Ref="SW8"  Part="1" 
F 0 "SW8" H 19700 10385 50  0000 C CNN
F 1 "SMD" H 19700 10294 50  0000 C CNN
F 2 "" H 19700 10150 50  0001 C CNN
F 3 "~" H 19700 10150 50  0001 C CNN
	1    19700 10150
	-1   0    0    1   
$EndComp
$Comp
L NER:ULV8F2BSS331 S1
U 1 1 5F94EA0B
P 19700 2350
F 0 "S1" H 19700 2835 50  0000 C CNN
F 1 "ULV8F2BSS331" H 19700 2744 50  0000 C CNN
F 2 "" H 19700 2550 50  0001 C CNN
F 3 "~" H 19700 2550 50  0001 C CNN
	1    19700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	19500 2450 19450 2450
Wire Wire Line
	19900 2250 19950 2250
Wire Wire Line
	19400 2150 19500 2150
Wire Wire Line
	19450 2650 19450 2450
Wire Wire Line
	19950 2250 19950 2650
Wire Wire Line
	19950 2650 19450 2650
$Sheet
S 20000 9150 1750 2200
U 5F45B05E
F0 "Accumulator Container" 50
F1 "Accumulator_Container.sch" 50
F2 "Shutdown+" I L 20000 9200 50 
F3 "Shutdown-" I R 21750 9200 50 
F4 "TS+" O R 21750 11200 50 
F5 "TS-" O R 21750 11300 50 
F6 "TSAL+" O L 20000 9750 50 
F7 "TSAL-" O L 20000 9650 50 
F8 "IMD_HV_SENSE-" O L 20000 9450 50 
F9 "IMD_HV_SENSE+" O L 20000 9350 50 
F10 "TSMP-" O L 20000 11300 50 
F11 "TSMP+" O L 20000 11200 50 
F12 "Segment1_Thermistors" O R 21750 10100 50 
F13 "Segment2_Thermistors" O R 21750 10200 50 
F14 "Segment3_Thermistors" O R 21750 10300 50 
F15 "Segment4_Thermistors" O R 21750 10400 50 
F16 "Segment1_VoltageTaps" O R 21750 10550 50 
F17 "Segment2_VoltageTaps" O R 21750 10650 50 
F18 "Segment3_VoltageTaps" O R 21750 10750 50 
F19 "Segment4_VoltageTaps" O R 21750 10850 50 
F20 "MotorController_AIR_Control-" I R 21750 9600 50 
F21 "MotorController_AIR_Control+" I R 21750 9700 50 
F22 "MotorController_Precharge-" I R 21750 9900 50 
F23 "MotorController_Precharge+" I R 21750 9800 50 
F24 "HVD-" I L 20000 10550 50 
F25 "HVD+" I L 20000 10450 50 
F26 "SMD_2-" I L 20000 10150 50 
F27 "SMD_2+" I L 20000 10050 50 
F28 "SMD_1-" I L 20000 10950 50 
F29 "SMD_1+" I L 20000 10850 50 
F30 "Current_Sensor" O R 21750 11000 50 
$EndSheet
Entry Wire Line
	30350 7450 30450 7350
Entry Wire Line
	30350 7350 30450 7250
Wire Wire Line
	30300 7350 30350 7350
Wire Wire Line
	28400 9850 28350 9850
Wire Wire Line
	28400 9950 28350 9950
Entry Wire Line
	28250 9850 28350 9950
Entry Wire Line
	28250 9750 28350 9850
Wire Bus Line
	28250 9850 28250 9750
Entry Bus Bus
	30450 7150 30550 7050
Entry Bus Bus
	28150 9650 28250 9750
Wire Bus Line
	30550 7050 30850 7050
Wire Bus Line
	27150 9650 28150 9650
Wire Wire Line
	16950 2800 17000 2800
Wire Wire Line
	16950 2700 17000 2700
Entry Wire Line
	17000 2700 17100 2800
Entry Wire Line
	17000 2800 17100 2900
Wire Wire Line
	21450 3100 21500 3100
Wire Wire Line
	21450 3000 21500 3000
Entry Wire Line
	21500 3000 21600 3100
Entry Wire Line
	21500 3100 21600 3200
Text GLabel 11650 2500 0    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 19850 3100 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	19400 2150 19400 2750
Wire Wire Line
	11750 2500 11650 2500
$Comp
L NER:ST-R10_LED D6
U 1 1 5F87123F
P 11500 2150
F 0 "D6" H 11475 2381 50  0000 C CNN
F 1 "ST-R10_LED" H 11475 2290 50  0000 C CNN
F 2 "" H 11450 2150 50  0001 C CNN
F 3 "" H 11450 2150 50  0001 C CNN
	1    11500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 2100 11750 2100
Wire Wire Line
	11650 2200 11750 2200
Wire Wire Line
	11750 2300 11200 2300
Wire Wire Line
	11200 2300 11200 2150
Wire Wire Line
	11200 2150 11300 2150
$Comp
L Motor:Motor_DC M1
U 1 1 5FA2966E
P 31350 8700
F 0 "M1" H 31750 8700 50  0000 L CNN
F 1 "Cooling Pump" H 31550 8600 50  0000 L CNN
F 2 "" H 31350 8610 50  0001 C CNN
F 3 "~" H 31350 8610 50  0001 C CNN
	1    31350 8700
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST SW5
U 1 1 5F864268
P 12600 15000
F 0 "SW5" H 12600 14800 50  0000 C CNN
F 1 "Latching Circuit Reset" H 12600 14650 50  0000 C CNN
F 2 "" H 12600 15000 50  0001 C CNN
F 3 "~" H 12600 15000 50  0001 C CNN
	1    12600 15000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 14700 12450 14700
Wire Wire Line
	12950 14700 12750 14700
Wire Wire Line
	12850 14800 12650 14800
Wire Wire Line
	12850 14900 12850 14800
Wire Wire Line
	12800 14900 12850 14900
Wire Wire Line
	12350 14800 12550 14800
Wire Wire Line
	12350 14900 12350 14800
Wire Wire Line
	12400 14900 12350 14900
Wire Notes Line
	13800 15400 13800 14350
Wire Notes Line
	11350 14350 11350 15400
Wire Wire Line
	21450 1500 21600 1500
Wire Wire Line
	21450 1400 21600 1400
Wire Wire Line
	12900 2600 12950 2600
Entry Wire Line
	12950 2600 13050 2700
Wire Wire Line
	12900 2700 12950 2700
$Sheet
S 11750 1900 1150 900 
U 5F890A03
F0 "Brake Light" 50
F1 "Brake Light.sch" 50
F2 "CAN_H" I R 12900 2500 50 
F3 "CAN_L" I R 12900 2600 50 
F4 "GLV+" I L 11750 2700 50 
F5 "GLV_GND" I L 11750 2500 50 
F6 "Brake_Light_1+" I L 11750 2100 50 
F7 "Brake_Light_2+" I L 11750 2200 50 
F8 "Brake_Light_GND" I L 11750 2300 50 
F9 "CAN_SHIELD" I R 12900 2700 50 
$EndSheet
Entry Wire Line
	12950 2700 13050 2800
Text GLabel 15400 2800 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	30300 7250 30350 7250
Entry Wire Line
	30350 7250 30450 7150
Wire Wire Line
	11600 14250 11700 14250
Wire Wire Line
	11600 14250 11600 14850
Wire Wire Line
	30300 7450 30350 7450
Wire Bus Line
	21750 10100 23200 10100
Wire Bus Line
	21750 10200 23200 10200
Wire Bus Line
	21750 10300 23200 10300
Wire Bus Line
	21750 10400 23200 10400
Wire Bus Line
	21750 10550 23200 10550
Wire Bus Line
	21750 10650 23200 10650
Wire Bus Line
	21750 10750 23200 10750
Wire Bus Line
	21750 10850 23200 10850
Wire Bus Line
	21750 11000 23200 11000
Text Label 5900 7700 3    50   ~ 0
CoolingPumpPower
$Sheet
S 10550 8700 1750 1200
U 5F45AFB3
F0 "Shutdown Latching Circuits" 50
F1 "Shutdown_LatchingCircuits.sch" 50
F2 "Shutdown_OUT" O R 12300 9200 50 
F3 "Shutdown_IN" I L 10550 9200 50 
F4 "IMD_Fault_Indicator" O R 12300 8900 50 
F5 "IMD_Latch_Reset+" I R 12300 9600 50 
F6 "IMD_Latch_Reset-" I R 12300 9700 50 
F7 "GLV+_Fused" I L 10550 8800 50 
F8 "IMD_Status" I L 10550 9500 50 
F9 "BMS_Status" I L 10550 9400 50 
F10 "BMS_Fault_Indicator" O R 12300 8800 50 
F11 "BMS_Latch_Reset+" I R 12300 9500 50 
F12 "BMS_Latch_Reset-" I R 12300 9800 50 
F13 "Ground" I L 10550 9800 50 
$EndSheet
$Sheet
S 20050 1350 1400 1850
U 5F647A32
F0 "Driver IO Enclosure" 50
F1 "Driver IO Enclosure.sch" 50
F2 "CAN_L" I R 21450 3100 50 
F3 "CAN_H" I R 21450 3000 50 
F4 "GLV+" I L 20050 2950 50 
F5 "GLV_GND" I L 20050 3100 50 
F6 "LED(+)" I L 20050 2450 50 
F7 "Button_GND" I L 20050 2650 50 
F8 "Button_Input" I L 20050 2750 50 
F9 "Button_+5V" I L 20050 2050 50 
F10 "Speaker+" I R 21450 1400 50 
F11 "Speaker-" I R 21450 1500 50 
F12 "StartEnable" I L 20050 1650 50 
F13 "IMD_Indicator(+)" I R 21450 1900 50 
F14 "IMD_Indicator(-)" I R 21450 2000 50 
F15 "BMS_Indicator(+)" I R 21450 2350 50 
F16 "BMS_Indicator(-)" I R 21450 2450 50 
F17 "Toggle(+)" I R 21450 2750 50 
F18 "Toggle(-)" I R 21450 2850 50 
F19 "BMS_Fault" I L 20050 1400 50 
F20 "IMD_Fault" I L 20050 1500 50 
$EndSheet
Entry Wire Line
	21500 3400 21600 3500
Entry Wire Line
	13050 2600 12950 2500
Wire Wire Line
	12950 2500 12900 2500
Wire Wire Line
	21500 3400 19950 3400
Wire Notes Line
	13800 14350 11350 14350
Wire Notes Line
	11350 15400 13800 15400
$Comp
L NER:5-Pos_Generic J2
U 1 1 5FAEC04A
P 23550 17100
F 0 "J2" H 23500 16450 50  0000 L CNN
F 1 "ChargerLVConn" H 23300 16350 50  0000 L CNN
F 2 "" H 23550 17100 50  0001 C CNN
F 3 "" H 23550 17100 50  0001 C CNN
	1    23550 17100
	1    0    0    -1  
$EndComp
$Comp
L NER:2-Pos_Generic J1
U 1 1 5FB3F5F1
P 21900 17100
F 0 "J1" H 21900 17225 50  0000 C CNN
F 1 "ChargerHVConn" H 21900 17134 50  0000 C CNN
F 2 "" H 21900 17100 50  0001 C CNN
F 3 "" H 21900 17100 50  0001 C CNN
	1    21900 17100
	1    0    0    -1  
$EndComp
Wire Wire Line
	23150 17600 23300 17600
Wire Wire Line
	23300 17500 23150 17500
Wire Wire Line
	23150 17400 23300 17400
Wire Wire Line
	23150 17300 23300 17300
Wire Wire Line
	23150 17200 23300 17200
Wire Wire Line
	23900 17200 23800 17200
Wire Wire Line
	23800 17300 23950 17300
Wire Wire Line
	23800 17400 24000 17400
Wire Wire Line
	23800 17500 24050 17500
Wire Wire Line
	23800 17600 24100 17600
Wire Notes Line
	22250 16950 23300 16950
Wire Notes Line
	23300 16950 23300 17900
Wire Notes Line
	23300 17900 22250 17900
Wire Notes Line
	22250 16950 22250 17900
Text Notes 22500 16900 0    50   ~ 0
Charging Cart
Wire Wire Line
	21550 17200 21650 17200
Wire Wire Line
	21650 17300 21450 17300
Wire Wire Line
	22150 17200 22450 17200
Wire Wire Line
	22150 17300 22450 17300
Text Label 21300 3400 2    50   ~ 0
CAN_Shield
$Comp
L Device:Battery_Cell BT1
U 1 1 5FB68579
P 3400 7600
F 0 "BT1" V 3055 7650 50  0000 C CNN
F 1 "GLV Battery" V 3146 7650 50  0000 C CNN
F 2 "" V 3400 7660 50  0001 C CNN
F 3 "~" V 3400 7660 50  0001 C CNN
F 4 "12V" V 3237 7650 50  0000 C CNN "Voltage"
	1    3400 7600
	0    1    1    0   
$EndComp
$Comp
L Device:CircuitBreaker_1P CB1
U 1 1 5FB82BB8
P 4350 7600
F 0 "CB1" V 3994 7600 50  0000 C CNN
F 1 "GLV Main Breaker" V 4085 7600 50  0000 C CNN
F 2 "" H 4350 7600 50  0001 C CNN
F 3 "~" H 4350 7600 50  0001 C CNN
F 4 "30A" V 4176 7600 50  0000 C CNN "Current"
	1    4350 7600
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5FBB54F3
P 5300 7600
F 0 "SW3" H 5300 7835 50  0000 C CNN
F 1 "GLVMS" H 5300 7744 50  0000 C CNN
F 2 "" H 5300 7600 50  0001 C CNN
F 3 "~" H 5300 7600 50  0001 C CNN
	1    5300 7600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW2
U 1 1 5FBE828B
P 6250 7600
F 0 "SW2" H 6250 7410 50  0000 C CNN
F 1 "Side BRB" H 6250 7501 50  0000 C CNN
F 2 "" H 6250 7800 50  0001 C CNN
F 3 "~" H 6250 7800 50  0001 C CNN
	1    6250 7600
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push_Open SW3
U 1 1 5FBE9A6D
P 7000 7600
F 0 "SW3" H 7000 7815 50  0000 C CNN
F 1 "Side BRB" H 7000 7724 50  0000 C CNN
F 2 "" H 7000 7800 50  0001 C CNN
F 3 "~" H 7000 7800 50  0001 C CNN
	1    7000 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7600 5900 7600
Wire Wire Line
	5900 7600 5900 14200
Wire Wire Line
	5900 14200 8200 14200
Connection ~ 5900 7600
Wire Wire Line
	5900 7600 6050 7600
$Comp
L NER:FuseBox_PSZACCEPS052H U1
U 1 1 5FCB7816
P 8700 7600
F 0 "U1" V 8654 7628 50  0000 L CNN
F 1 "FuseBox_PSZACCEPS052H" V 8745 7628 50  0000 L CNN
F 2 "" H 8700 7750 50  0001 C CNN
F 3 "" H 8700 7750 50  0001 C CNN
	1    8700 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 7600 3300 7600
Wire Wire Line
	3600 7600 4050 7600
Wire Wire Line
	4650 7600 5100 7600
Wire Wire Line
	6450 7600 6800 7600
Wire Wire Line
	7200 7600 7800 7600
Wire Wire Line
	8600 8200 8600 8800
$Comp
L Switch:SW_SPST SW4
U 1 1 5FE5C813
P 9750 9200
F 0 "SW4" H 9750 9435 50  0000 C CNN
F 1 "Brake Over-Travel Switch" H 9750 9344 50  0000 C CNN
F 2 "" H 9750 9200 50  0001 C CNN
F 3 "~" H 9750 9200 50  0001 C CNN
	1    9750 9200
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FE9397E
P 22800 12450
F 0 "M?" H 22957 12454 50  0000 L CNN
F 1 "Fan_4pin" H 22957 12545 50  0000 L CNN
F 2 "" H 22800 12460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 22800 12460 50  0001 C CNN
	1    22800 12450
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FE98640
P 21750 12450
F 0 "M?" H 21907 12454 50  0000 L CNN
F 1 "Fan_4pin" H 21907 12545 50  0000 L CNN
F 2 "" H 21750 12460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 21750 12460 50  0001 C CNN
	1    21750 12450
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEA35FD
P 20700 12450
F 0 "M?" H 20857 12454 50  0000 L CNN
F 1 "Fan_4pin" H 20857 12545 50  0000 L CNN
F 2 "" H 20700 12460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 20700 12460 50  0001 C CNN
	1    20700 12450
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEA3603
P 19650 12450
F 0 "M?" H 19807 12454 50  0000 L CNN
F 1 "Fan_4pin" H 19807 12545 50  0000 L CNN
F 2 "" H 19650 12460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 19650 12460 50  0001 C CNN
	1    19650 12450
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEBD08B
P 22800 13450
F 0 "M?" H 22958 13546 50  0000 L CNN
F 1 "Fan_4pin" H 22958 13455 50  0000 L CNN
F 2 "" H 22800 13460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 22800 13460 50  0001 C CNN
	1    22800 13450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEC48FA
P 21750 13450
F 0 "M?" H 21908 13546 50  0000 L CNN
F 1 "Fan_4pin" H 21908 13455 50  0000 L CNN
F 2 "" H 21750 13460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 21750 13460 50  0001 C CNN
	1    21750 13450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEDEE98
P 20700 13450
F 0 "M?" H 20858 13546 50  0000 L CNN
F 1 "Fan_4pin" H 20858 13455 50  0000 L CNN
F 2 "" H 20700 13460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 20700 13460 50  0001 C CNN
	1    20700 13450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 5FEF92A4
P 19650 13450
F 0 "M?" H 19808 13546 50  0000 L CNN
F 1 "Fan_4pin" H 19808 13455 50  0000 L CNN
F 2 "" H 19650 13460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 19650 13460 50  0001 C CNN
	1    19650 13450
	1    0    0    -1  
$EndComp
Wire Wire Line
	19650 13150 19650 13050
Wire Wire Line
	19650 13050 20700 13050
Wire Wire Line
	22800 13050 22800 13150
Wire Wire Line
	21750 13150 21750 13050
Connection ~ 21750 13050
Wire Wire Line
	21750 13050 22800 13050
Wire Wire Line
	20700 13050 20700 13150
Connection ~ 20700 13050
Wire Wire Line
	20700 13050 21750 13050
Wire Wire Line
	19350 13550 19200 13550
Wire Wire Line
	19200 13550 19200 13000
Wire Wire Line
	19200 13000 20250 13000
Wire Wire Line
	22500 13550 22350 13550
Wire Wire Line
	22350 13550 22350 13000
Connection ~ 22350 13000
Wire Wire Line
	21450 13550 21300 13550
Wire Wire Line
	20400 13550 20250 13550
Wire Wire Line
	19650 13650 19650 13800
Wire Wire Line
	19650 13800 20700 13800
Wire Wire Line
	22800 13650 22800 13800
Wire Wire Line
	21750 13650 21750 13800
Connection ~ 21750 13800
Wire Wire Line
	21750 13800 22800 13800
Wire Wire Line
	20700 13650 20700 13800
Connection ~ 20700 13800
Wire Wire Line
	20700 13800 21750 13800
Wire Wire Line
	19650 12750 19650 12850
Wire Wire Line
	19650 12850 20700 12850
Wire Wire Line
	22800 12750 22800 12850
Wire Wire Line
	21750 12750 21750 12850
Connection ~ 21750 12850
Wire Wire Line
	21750 12850 22800 12850
Wire Wire Line
	20700 12750 20700 12850
Connection ~ 20700 12850
Wire Wire Line
	20700 12850 21750 12850
Wire Wire Line
	20100 12900 21150 12900
Connection ~ 22200 12900
Wire Wire Line
	22200 12900 23250 12900
Connection ~ 21150 12900
Wire Wire Line
	21150 12900 22200 12900
Wire Wire Line
	20250 13550 20250 13000
Connection ~ 20250 13000
Wire Wire Line
	20250 13000 21300 13000
Wire Wire Line
	21300 13550 21300 13000
Connection ~ 21300 13000
Wire Wire Line
	21300 13000 22350 13000
NoConn ~ 22500 13350
NoConn ~ 21450 13350
NoConn ~ 20400 13350
NoConn ~ 19350 13350
Wire Wire Line
	19950 12350 20100 12350
Wire Wire Line
	20100 12350 20100 12900
Wire Wire Line
	21000 12350 21150 12350
Wire Wire Line
	22050 12350 22200 12350
Wire Wire Line
	23100 12350 23250 12350
Wire Wire Line
	23250 12350 23250 12900
Wire Wire Line
	22200 12350 22200 12900
Wire Wire Line
	21150 12350 21150 12900
NoConn ~ 19950 12550
NoConn ~ 21000 12550
NoConn ~ 22050 12550
NoConn ~ 23100 12550
Wire Wire Line
	19650 12250 19650 12050
Wire Wire Line
	19650 12050 20700 12050
Wire Wire Line
	22800 12250 22800 12050
Wire Wire Line
	21750 12250 21750 12050
Connection ~ 21750 12050
Wire Wire Line
	21750 12050 22800 12050
Wire Wire Line
	20700 12250 20700 12050
Connection ~ 20700 12050
Wire Wire Line
	20700 12050 21750 12050
$Comp
L NER:2-Pos_Generic J?
U 1 1 608930F9
P 18500 13250
F 0 "J?" H 18500 13375 50  0000 C CNN
F 1 "Bank 2 Power" H 18500 13284 50  0000 C CNN
F 2 "" H 18500 13250 50  0001 C CNN
F 3 "" H 18500 13250 50  0001 C CNN
	1    18500 13250
	1    0    0    -1  
$EndComp
$Comp
L NER:2-Pos_Generic J?
U 1 1 608979A2
P 18500 12250
F 0 "J?" H 18500 12375 50  0000 C CNN
F 1 "Bank 1 Power" H 18500 12284 50  0000 C CNN
F 2 "" H 18500 12250 50  0001 C CNN
F 3 "" H 18500 12250 50  0001 C CNN
	1    18500 12250
	1    0    0    -1  
$EndComp
$Comp
L NER:2-Pos_Generic J?
U 1 1 60898923
P 23700 12800
F 0 "J?" H 23700 12925 50  0000 C CNN
F 1 "PWM" H 23700 12834 50  0000 C CNN
F 2 "" H 23700 12800 50  0001 C CNN
F 3 "" H 23700 12800 50  0001 C CNN
	1    23700 12800
	1    0    0    -1  
$EndComp
Wire Wire Line
	23250 12900 23450 12900
Connection ~ 23250 12900
Wire Wire Line
	22350 13000 23450 13000
Wire Wire Line
	19650 13800 18900 13800
Wire Wire Line
	18900 13800 18900 13450
Wire Wire Line
	18900 13450 18750 13450
Connection ~ 19650 13800
Wire Wire Line
	19650 12050 18900 12050
Wire Wire Line
	18900 12050 18900 12350
Wire Wire Line
	18900 12350 18750 12350
Connection ~ 19650 12050
Wire Wire Line
	18750 12450 18900 12450
Wire Wire Line
	18900 12450 18900 12850
Wire Wire Line
	18900 12850 19650 12850
Connection ~ 19650 12850
Wire Wire Line
	19200 13000 18900 13000
Wire Wire Line
	18900 13000 18900 13350
Wire Wire Line
	18900 13350 18750 13350
Connection ~ 19200 13000
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E3E
P 19700 10950
AR Path="/5F45B05E/60DA2E3E" Ref="SW?"  Part="1" 
AR Path="/60DA2E3E" Ref="SW10"  Part="1" 
F 0 "SW10" H 19700 11100 50  0000 C CNN
F 1 "SMD" H 19700 11200 50  0000 C CNN
F 2 "" H 19700 10950 50  0001 C CNN
F 3 "~" H 19700 10950 50  0001 C CNN
	1    19700 10950
	-1   0    0    1   
$EndComp
Wire Wire Line
	19950 2650 20050 2650
Connection ~ 19950 2650
Wire Wire Line
	20050 2750 19400 2750
Wire Wire Line
	19900 2050 20050 2050
Wire Wire Line
	20050 2450 19900 2450
Wire Wire Line
	30200 10550 30200 10650
Connection ~ 30200 10950
$Comp
L NER:RinehartPM100DX_MotorController U3
U 1 1 5F97D518
P 29300 11400
F 0 "U3" H 29300 11565 50  0000 C CNN
F 1 "RinehartPM100DX_MotorController" H 29300 11474 50  0000 C CNN
F 2 "" H 29300 11400 50  0001 C CNN
F 3 "" H 29300 11400 50  0001 C CNN
	1    29300 11400
	1    0    0    1   
$EndComp
Connection ~ 30200 10550
Wire Wire Line
	30200 10300 30200 10550
Text GLabel 30200 10300 1    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	13250 9850 13250 9700
Wire Wire Line
	13700 9850 13700 9700
Text GLabel 13250 9850 3    50   UnSpc ~ 0
CHASSIS_GND
Text GLabel 13700 9850 3    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L Switch:SW_Push_Open SW6
U 1 1 616878E3
P 14600 9200
F 0 "SW6" H 14600 9415 50  0000 C CNN
F 1 "Cockpit BRB" H 14600 9324 50  0000 C CNN
F 2 "" H 14600 9400 50  0001 C CNN
F 3 "~" H 14600 9400 50  0001 C CNN
	1    14600 9200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW7
U 1 1 6169D200
P 15300 9200
F 0 "SW7" H 15300 9435 50  0000 C CNN
F 1 "TSMS" H 15300 9344 50  0000 C CNN
F 2 "" H 15300 9200 50  0001 C CNN
F 3 "~" H 15300 9200 50  0001 C CNN
	1    15300 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 9200 15100 9200
Wire Wire Line
	20000 9650 19500 9650
Wire Wire Line
	19500 9650 19500 9750
Wire Wire Line
	19500 9750 19600 9750
Wire Wire Line
	19900 9750 20000 9750
Wire Wire Line
	20000 10950 19900 10950
Wire Wire Line
	20000 10850 19450 10850
Wire Wire Line
	19450 10850 19450 10950
Wire Wire Line
	19450 10950 19500 10950
Wire Wire Line
	19500 10550 19450 10550
Wire Wire Line
	19450 10550 19450 10450
Wire Wire Line
	19450 10450 20000 10450
Wire Wire Line
	20000 10050 19450 10050
Wire Wire Line
	19450 10050 19450 10150
Wire Wire Line
	19450 10150 19500 10150
Wire Wire Line
	19900 10150 20000 10150
Wire Wire Line
	19900 10550 20000 10550
Wire Wire Line
	21750 11200 28400 11200
Wire Wire Line
	28400 11300 21750 11300
Wire Wire Line
	30300 8500 31350 8500
$Sheet
S 28500 6800 1800 1800
U 60D53BFB
F0 "BMS Container" 50
F1 "BMSContainer.sch" 50
F2 "Segment4_Thermistors" I L 28500 7150 50 
F3 "Segment3_Thermistors" I L 28500 7050 50 
F4 "Segment1_Thermistors" I L 28500 6850 50 
F5 "Segment2_Thermistors" I L 28500 6950 50 
F6 "GLV+" I R 30300 6950 50 
F7 "GLV_GND" B R 30300 8100 50 
F8 "BMS_Fault" O R 30300 6850 50 
F9 "Segment1_VoltageTaps" I L 28500 7300 50 
F10 "Segment2_VoltageTaps" I L 28500 7400 50 
F11 "Segment3_VoltageTaps" I L 28500 7500 50 
F12 "Segment4_VoltageTaps" I L 28500 7600 50 
F13 "Current_Sensor" I L 28500 7750 50 
F14 "CAN_H" B R 30300 7250 50 
F15 "CAN_L" B R 30300 7350 50 
F16 "ChargerSafety" O L 28500 8500 50 
F17 "ChargerPWR" O L 28500 8300 50 
F18 "CAN_SHIELD" B R 30300 7450 50 
F19 "CoolingPumpPower_IN" I R 30300 8400 50 
F20 "CoolingPumpPower_OUT" I R 30300 8500 50 
F21 "CoolingPumpControl" I R 30300 7750 50 
F22 "CANH(Charger)" I L 28500 8150 50 
F23 "CANL(Charger)" I L 28500 8050 50 
F24 "GND(Charger)" I L 28500 8400 50 
$EndSheet
Wire Wire Line
	15500 1900 15350 1900
Wire Wire Line
	15350 2400 15500 2400
Wire Wire Line
	15500 2800 15400 2800
Wire Wire Line
	16950 2250 17150 2250
Wire Wire Line
	17550 2250 17600 2250
Wire Wire Line
	17600 2250 17600 2350
Wire Wire Line
	17600 2350 16950 2350
Wire Wire Line
	16950 1750 17150 1750
Wire Wire Line
	17550 1750 17600 1750
Wire Wire Line
	17600 1750 17600 1850
Wire Wire Line
	17600 1850 16950 1850
Wire Wire Line
	16950 2900 17000 2900
Entry Wire Line
	17000 2900 17100 3000
Wire Wire Line
	11750 2700 11500 2700
Wire Wire Line
	11500 2700 11500 4200
Wire Wire Line
	11500 4200 8000 4200
Wire Wire Line
	8000 4200 8000 7000
Wire Wire Line
	15500 2950 15250 2950
Wire Wire Line
	15250 2950 15250 4350
Wire Wire Line
	15250 4350 8150 4350
Wire Wire Line
	8150 4350 8150 7000
$Comp
L Device:LED D29
U 1 1 61F2ACEE
P 21750 1900
F 0 "D29" H 21743 1645 50  0000 C CNN
F 1 "IMD Indicator" H 21743 1736 50  0000 C CNN
F 2 "" H 21750 1900 50  0001 C CNN
F 3 "~" H 21750 1900 50  0001 C CNN
	1    21750 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D30
U 1 1 61F2CBDA
P 21750 2350
F 0 "D30" H 21743 2095 50  0000 C CNN
F 1 "BMS Indicator" H 21743 2186 50  0000 C CNN
F 2 "" H 21750 2350 50  0001 C CNN
F 3 "~" H 21750 2350 50  0001 C CNN
	1    21750 2350
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW14
U 1 1 61F4E8CC
P 21750 2750
F 0 "SW14" H 21750 2985 50  0000 C CNN
F 1 "Reverse Toggle" H 21750 2894 50  0000 C CNN
F 2 "" H 21750 2750 50  0001 C CNN
F 3 "~" H 21750 2750 50  0001 C CNN
	1    21750 2750
	1    0    0    -1  
$EndComp
Connection ~ 19950 3100
Wire Wire Line
	19950 3100 20050 3100
Wire Wire Line
	19850 3100 19950 3100
$Comp
L Device:Speaker LS1
U 1 1 620AED7F
P 21800 1400
F 0 "LS1" H 21970 1396 50  0000 L CNN
F 1 "Speaker" H 21970 1305 50  0000 L CNN
F 2 "" H 21800 1200 50  0001 C CNN
F 3 "~" H 21790 1350 50  0001 C CNN
	1    21800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	21450 1900 21600 1900
Wire Wire Line
	22000 1900 22000 2000
Wire Wire Line
	22000 2000 21450 2000
Wire Wire Line
	21900 1900 22000 1900
Wire Wire Line
	21450 2350 21600 2350
Wire Wire Line
	21900 2350 22000 2350
Wire Wire Line
	22000 2350 22000 2450
Wire Wire Line
	22000 2450 21450 2450
Wire Wire Line
	21450 2750 21550 2750
Wire Wire Line
	21950 2750 22050 2750
Wire Wire Line
	22050 2750 22050 2850
Wire Wire Line
	22050 2850 21450 2850
Wire Wire Line
	19950 3100 19950 3400
Wire Wire Line
	20050 2950 19200 2950
Wire Wire Line
	19200 4500 8300 4500
Wire Wire Line
	8300 4500 8300 7000
Wire Wire Line
	19200 2950 19200 4500
$Comp
L Device:LED D3
U 1 1 621F7BB5
P 13250 9550
F 0 "D3" V 13289 9433 50  0000 R CNN
F 1 "SSOK" V 13198 9433 50  0000 R CNN
F 2 "" H 13250 9550 50  0001 C CNN
F 3 "~" H 13250 9550 50  0001 C CNN
	1    13250 9550
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 621F8D1D
P 13700 9550
F 0 "D4" V 13739 9433 50  0000 R CNN
F 1 "SSOK" V 13648 9433 50  0000 R CNN
F 2 "" H 13700 9550 50  0001 C CNN
F 3 "~" H 13700 9550 50  0001 C CNN
	1    13700 9550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13250 9400 13250 9200
Wire Wire Line
	13700 9400 13700 9200
Connection ~ 13250 9200
Connection ~ 13700 9200
Wire Wire Line
	12300 9200 13250 9200
Wire Wire Line
	13250 9200 13700 9200
Wire Wire Line
	12300 9600 12650 9600
Wire Wire Line
	12300 9700 12550 9700
Wire Wire Line
	12950 14700 12950 15100
Wire Wire Line
	12800 15100 12950 15100
Wire Wire Line
	12250 14700 12250 15100
Wire Wire Line
	12250 15100 12400 15100
Wire Wire Line
	12450 9800 12300 9800
Wire Wire Line
	12300 9500 12750 9500
Wire Wire Line
	12450 9800 12450 14700
Wire Wire Line
	12550 9700 12550 14800
Wire Wire Line
	12650 9600 12650 14800
Wire Wire Line
	12750 9500 12750 14700
Wire Wire Line
	8450 8200 8450 9200
Wire Wire Line
	12300 8800 12650 8800
Wire Wire Line
	12650 8800 12650 6950
Wire Wire Line
	18650 1400 20050 1400
Wire Wire Line
	20050 1500 18750 1500
Wire Wire Line
	12750 7050 12750 8900
Wire Wire Line
	12750 8900 12300 8900
Wire Wire Line
	18750 1500 18750 7050
Wire Wire Line
	18650 1400 18650 6950
Wire Wire Line
	20050 1650 18850 1650
Wire Wire Line
	18850 1650 18850 9200
Wire Wire Line
	18850 9200 20000 9200
Wire Wire Line
	13700 9200 14400 9200
Connection ~ 18850 9200
Wire Wire Line
	8450 9200 9550 9200
Wire Wire Line
	8600 8800 10550 8800
Wire Wire Line
	9950 9200 10550 9200
Wire Wire Line
	12650 6950 18650 6950
Wire Wire Line
	12750 7050 18750 7050
$Sheet
S 15300 10200 950  450 
U 626EC638
F0 "IMD Container" 50
F1 "IMD_Container.sch" 50
F2 "HV_Sense+" B R 16250 10250 50 
F3 "HV_Sense-" B R 16250 10350 50 
F4 "GLV" I L 15300 10600 50 
F5 "GND2" U L 15300 10450 50 
F6 "GND1" U L 15300 10350 50 
F7 "GND" U L 15300 10250 50 
$EndSheet
Text GLabel 15150 10250 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	15150 10250 15300 10250
Text GLabel 15150 10350 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	15150 10350 15300 10350
Text GLabel 15150 10450 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	15150 10450 15300 10450
Wire Wire Line
	8300 10600 8300 8200
Wire Wire Line
	8300 10600 15300 10600
Wire Wire Line
	16250 10250 16600 10250
Wire Wire Line
	16600 10250 16600 9350
Wire Wire Line
	16600 9350 20000 9350
Wire Wire Line
	20000 9450 16700 9450
Wire Wire Line
	16700 9450 16700 10350
Wire Wire Line
	16700 10350 16250 10350
Wire Wire Line
	15500 9200 18850 9200
Wire Wire Line
	21750 9200 21900 9200
Wire Bus Line
	30450 7150 30450 7350
Wire Bus Line
	21600 3100 21600 3450
Wire Bus Line
	13050 2600 13050 3200
Wire Bus Line
	17100 2800 17100 3400
Text GLabel 21900 9200 2    50   UnSpc ~ 0
CHASSIS_GND
$EndSCHEMATC
