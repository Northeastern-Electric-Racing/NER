EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 12
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
P 1250 7650
AR Path="/5F45AFB3/5F633A5B" Ref="BT?"  Part="1" 
AR Path="/5F633A5B" Ref="BT505"  Part="1" 
F 0 "BT505" H 1600 7750 50  0000 L CNN
F 1 "12V GLV Battery" H 1400 7650 50  0000 L CNN
F 2 "" V 1250 7710 50  0001 C CNN
F 3 "~" V 1250 7710 50  0001 C CNN
	1    1250 7650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW?
U 1 1 5F633A68
P 1250 5450
AR Path="/5F45AFB3/5F633A68" Ref="SW?"  Part="1" 
AR Path="/5F633A68" Ref="SW2"  Part="1" 
F 0 "SW2" V 1200 6000 50  0000 R CNN
F 1 "SideMounted (BRB)" V 1300 6300 50  0000 R CNN
F 2 "" H 1250 5650 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/307/a165e_ds_e_11_2_csm1264-1291086.pdf" H 1250 5650 50  0001 C CNN
	1    1250 5450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push_Open SW?
U 1 1 5F633A6E
P 1250 4700
AR Path="/5F45AFB3/5F633A6E" Ref="SW?"  Part="1" 
AR Path="/5F633A6E" Ref="SW3"  Part="1" 
F 0 "SW3" V 1200 5250 50  0000 R CNN
F 1 "SideMounted (BRB)" V 1300 5550 50  0000 R CNN
F 2 "" H 1250 4900 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/307/a165e_ds_e_11_2_csm1264-1291086.pdf" H 1250 4900 50  0001 C CNN
	1    1250 4700
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F633A74
P 1250 6100
AR Path="/5F45AFB3/5F633A74" Ref="SW?"  Part="1" 
AR Path="/5F633A74" Ref="SW1"  Part="1" 
F 0 "SW1" V 1250 5700 50  0000 L CNN
F 1 "GLVMS" V 1350 5650 50  0000 L CNN
F 2 "" H 1250 6100 50  0001 C CNN
F 3 "https://www.pegasusautoracing.com/pdfs/4430WiringInstructions.pdf" H 1250 6100 50  0001 C CNN
	1    1250 6100
	0    -1   1    0   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F633AC3
P 2300 3200
AR Path="/5F45AFB3/5F633AC3" Ref="SW?"  Part="1" 
AR Path="/5F633AC3" Ref="SW4"  Part="1" 
F 0 "SW4" V 2300 2650 50  0000 C CNN
F 1 "Brake Over-Travel Switch" V 2200 2600 50  0000 C CNN
F 2 "" H 2300 3200 50  0001 C CNN
F 3 "https://www.mcmaster.com/cadinlnord%2fnull" H 2300 3200 50  0001 C CNN
	1    2300 3200
	0    -1   -1   0   
$EndComp
$Sheet
S 2950 1450 1750 1200
U 5F45AFB3
F0 "Shutdown Latching Circuits" 50
F1 "Shutdown_LatchingCircuits.sch" 50
F2 "Shutdown_OUT" O R 4700 1950 50 
F3 "Shutdown_IN" I L 2950 2600 50 
F4 "IMD_Fault_Indicator" O L 2950 1500 50 
F5 "IMD_Latch_Reset+" I R 4700 2400 50 
F6 "IMD_Latch_Reset-" I R 4700 2500 50 
F7 "GLV+_Fused" I L 2950 2450 50 
F8 "IMD_Status" I R 4700 1600 50 
F9 "BMS_Status" I R 4700 1500 50 
F10 "BMS_Fault_Indicator" O L 2950 1900 50 
F11 "BMS_Latch_Reset+" I R 4700 2300 50 
F12 "BMS_Latch_Reset-" I R 4700 2600 50 
F13 "Ground" I R 4700 1750 50 
$EndSheet
$Comp
L Switch:SW_Push_Open SW?
U 1 1 5F67997D
P 5950 3350
AR Path="/5F45AFB3/5F67997D" Ref="SW?"  Part="1" 
AR Path="/5F67997D" Ref="SW6"  Part="1" 
F 0 "SW6" V 6000 3600 50  0000 R CNN
F 1 "Cockpit Shutdown (BRB)" V 5900 4350 50  0000 R CNN
F 2 "" H 5950 3550 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/307/a165e_ds_e_11_2_csm1264-1291086.pdf" H 5950 3550 50  0001 C CNN
	1    5950 3350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5F67998A
P 5950 4600
AR Path="/5F45AFB3/5F67998A" Ref="SW?"  Part="1" 
AR Path="/5F67998A" Ref="SW7"  Part="1" 
F 0 "SW7" V 5904 4698 50  0000 L CNN
F 1 "TSMS" V 5995 4698 50  0000 L CNN
F 2 "" H 5950 4600 50  0001 C CNN
F 3 "https://www.pegasusautoracing.com/pdfs/4430WiringInstructions.pdf" H 5950 4600 50  0001 C CNN
	1    5950 4600
	0    -1   -1   0   
$EndComp
Text GLabel 1400 7900 2    50   UnSpc ~ 0
CHASSIS_GND
Text Label 6200 5000 0    50   ~ 0
LatchingStartStopController
Text GLabel 6650 2150 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	6550 2350 6550 2150
Wire Wire Line
	6350 1950 6550 1950
$Comp
L Device:LED D?
U 1 1 5F67996F
P 6200 2350
AR Path="/5F45AFB3/5F67996F" Ref="D?"  Part="1" 
AR Path="/5F67996F" Ref="D4"  Part="1" 
F 0 "D4" H 6193 2095 50  0000 C CNN
F 1 "SSOK1" H 6193 2186 50  0000 C CNN
F 2 "" H 6200 2350 50  0001 C CNN
F 3 "https://www.superbrightleds.com/moreinfo/marker-clearance/rectangle-led-truck-and-trailer-lights-4-double-bullseye-led-side-clearance-lights-w-12-high-flux-leds-pigtail-connector/596/" H 6200 2350 50  0001 C CNN
	1    6200 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F679969
P 6200 1950
AR Path="/5F45AFB3/5F679969" Ref="D?"  Part="1" 
AR Path="/5F679969" Ref="D3"  Part="1" 
F 0 "D3" H 6193 1695 50  0000 C CNN
F 1 "SSOK2" H 6193 1786 50  0000 C CNN
F 2 "" H 6200 1950 50  0001 C CNN
F 3 "https://www.superbrightleds.com/moreinfo/marker-clearance/rectangle-led-truck-and-trailer-lights-4-double-bullseye-led-side-clearance-lights-w-12-high-flux-leds-pigtail-connector/596/" H 6200 1950 50  0001 C CNN
	1    6200 1950
	-1   0    0    1   
$EndComp
$Comp
L NER:Bender_Isometer_IR155-3204 U4
U 1 1 5F94A015
P 7600 3800
F 0 "U4" H 7600 3915 50  0000 C CNN
F 1 "Bender_Isometer_IR155-3204" H 7600 3824 50  0000 C CNN
F 2 "" H 7600 3800 50  0001 C CNN
F 3 "" H 7600 3800 50  0001 C CNN
	1    7600 3800
	-1   0    0    -1  
$EndComp
Text GLabel 6750 4150 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	1400 7900 1250 7900
Wire Wire Line
	6650 2150 6550 2150
Connection ~ 6550 2150
Wire Wire Line
	6550 2150 6550 1950
$Comp
L Device:R R5
U 1 1 5F4E06AE
P 7600 3500
F 0 "R5" V 7807 3500 50  0000 C CNN
F 1 "2.2k" V 7716 3500 50  0000 C CNN
F 2 "" V 7530 3500 50  0001 C CNN
F 3 "~" H 7600 3500 50  0001 C CNN
	1    7600 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 4150 6850 4150
Wire Wire Line
	6900 4050 6850 4050
Wire Wire Line
	6850 4050 6850 4150
Connection ~ 6850 4150
Wire Wire Line
	6850 4150 6900 4150
Wire Wire Line
	6850 4150 6850 4250
Wire Wire Line
	6850 4250 6900 4250
Wire Wire Line
	6850 4050 6850 3500
Wire Wire Line
	6850 3500 7450 3500
Connection ~ 6850 4050
Wire Wire Line
	1250 7750 1250 7900
Wire Wire Line
	6550 2350 6350 2350
Wire Wire Line
	1250 7250 1250 7450
Wire Wire Line
	1250 6300 1250 6650
Wire Wire Line
	1250 5650 1250 5900
Wire Wire Line
	1250 4900 1250 5250
Wire Wire Line
	6200 5000 5950 5000
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5FB0713A
P 5850 8650
F 0 "J3" V 5750 8500 50  0000 L CNN
F 1 "TS-" V 5650 8450 50  0000 L CNN
F 2 "" H 5850 8650 50  0001 C CNN
F 3 "~" H 5850 8650 50  0001 C CNN
	1    5850 8650
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5FB022E4
P 5600 8650
F 0 "J2" V 5500 8500 50  0000 L CNN
F 1 "TS+" V 5400 8450 50  0000 L CNN
F 2 "" H 5600 8650 50  0001 C CNN
F 3 "~" H 5600 8650 50  0001 C CNN
	1    5600 8650
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5FAE402D
P 6100 8650
F 0 "J1" V 6000 8500 50  0000 L CNN
F 1 "GND" V 5900 8450 50  0000 L CNN
F 2 "" H 6100 8650 50  0001 C CNN
F 3 "~" H 6100 8650 50  0001 C CNN
	1    6100 8650
	0    -1   1    0   
$EndComp
Text Notes 4400 8900 0    50   ~ 0
TSMP and Shutdown Reset Container
Text GLabel 5750 5400 0    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L NER:OrionCurrentSens U5
U 1 1 6111F589
P 9350 8050
F 0 "U5" H 9350 8050 50  0000 C CNN
F 1 "OrionCurrentSens" H 9350 8100 50  0000 C CNN
F 2 "" H 9350 8050 50  0001 C CNN
F 3 "" H 9350 8050 50  0001 C CNN
	1    9350 8050
	-1   0    0    1   
$EndComp
$Sheet
S 8850 8900 1000 250 
U 61ECC7CF
F0 "Charger" 50
F1 "Charger.sch" 50
F2 "CHARGER_SAFETY" I R 9850 9050 50 
F3 "+12V" I R 9850 8950 50 
F4 "TS+" O L 8850 8950 50 
F5 "TS-" O L 8850 9050 50 
$EndSheet
Text GLabel 8650 5850 2    50   UnSpc ~ 0
CHASSIS_GND
$Sheet
S 6700 5250 1750 2000
U 5F45B05E
F0 "Accumulator Container" 50
F1 "Accumulator_Container.sch" 50
F2 "Shutdown+" I L 6700 5300 50 
F3 "Shutdown-" I L 6700 5400 50 
F4 "TS+" O R 8450 7100 50 
F5 "TS-" O R 8450 7200 50 
F6 "TSAL+" O L 6700 5500 50 
F7 "TSAL-" O L 6700 5750 50 
F8 "IMD_HV_SENSE-" O R 8450 5300 50 
F9 "IMD_HV_SENSE+" O R 8450 5400 50 
F10 "TSMP-" O L 6700 7200 50 
F11 "TSMP+" O L 6700 7100 50 
F12 "Segment1_Thermistors" O R 8450 6100 50 
F13 "Segment2_Thermistors" O R 8450 6200 50 
F14 "Segment3_Thermistors" O R 8450 6300 50 
F15 "Segment4_Thermistors" O R 8450 6400 50 
F16 "Segment1_VoltageTaps" O R 8450 6550 50 
F17 "Segment2_VoltageTaps" O R 8450 6650 50 
F18 "Segment3_VoltageTaps" O R 8450 6750 50 
F19 "Segment4_VoltageTaps" O R 8450 6850 50 
F20 "MotorController_AIR_Control-" I R 8450 5550 50 
F21 "MotorController_AIR_Control+" I R 8450 5650 50 
F22 "MotorController_Precharge-" I R 8450 5850 50 
F23 "MotorController_Precharge+" I R 8450 5750 50 
F24 "HVD-" I L 6700 6400 50 
F25 "HVD+" I L 6700 6300 50 
F26 "SMD_2-" I L 6700 6000 50 
F27 "SMD_2+" I L 6700 5900 50 
F28 "SMD_1-" I L 6700 6800 50 
F29 "SMD_1+" I L 6700 6700 50 
$EndSheet
Wire Wire Line
	8450 5300 8550 5300
Wire Wire Line
	8450 5400 8600 5400
Wire Wire Line
	5950 2350 6050 2350
Wire Wire Line
	8550 4250 8300 4250
Wire Wire Line
	8300 4150 8600 4150
Wire Wire Line
	8450 7200 8550 7200
$Sheet
S 10100 6050 1400 1350
U 60D53BFB
F0 "BMS Container" 50
F1 "BMSContainer.sch" 50
F2 "Segment4_Thermistors" I L 10100 6400 50 
F3 "Segment3_Thermistors" I L 10100 6300 50 
F4 "Segment1_Thermistors" I L 10100 6100 50 
F5 "Segment2_Thermistors" I L 10100 6200 50 
F6 "CAN+" B R 11500 6550 50 
F7 "CAN-" B R 11500 6450 50 
F8 "GLV" I R 11500 6350 50 
F9 "GLV_GND" B R 11500 7300 50 
F10 "C_GND" I L 10100 7150 50 
F11 "C_Pow" I L 10100 7350 50 
F12 "C_High" I L 10100 7250 50 
F13 "C_Low" I L 10100 7050 50 
F14 "BMS_Fault" O R 11500 6100 50 
F15 "Segment1_VoltageTaps" I L 10100 6550 50 
F16 "Segment2_VoltageTaps" I L 10100 6650 50 
F17 "Segment3_VoltageTaps" I L 10100 6750 50 
F18 "Segment4_VoltageTaps" I L 10100 6850 50 
$EndSheet
Text GLabel 6450 8050 2    50   UnSpc ~ 0
CHASSIS_GND
$Comp
L NER:FuseBox_PSZACCEPS052H U3
U 1 1 5F6D724E
P 1250 3250
F 0 "U3" H 1250 3415 50  0000 C CNN
F 1 "FuseBox_PSZACCEPS052H" H 1250 3324 50  0000 C CNN
F 2 "" H 1250 3400 50  0001 C CNN
F 3 "" H 1250 3400 50  0001 C CNN
	1    1250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4150 1250 4500
$Comp
L Device:LED D1
U 1 1 5F90AC4F
P 2550 1500
F 0 "D1" H 2543 1716 50  0000 C CNN
F 1 "IMD Fault Indicator" H 2543 1625 50  0000 C CNN
F 2 "" H 2550 1500 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/26/apem_03162018_Q14_Series_HMI_2017-1730666.pdf" H 2550 1500 50  0001 C CNN
	1    2550 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F90FD2E
P 2550 1900
F 0 "D2" H 2550 1800 50  0000 C CNN
F 1 "BMS Fault Indicator" H 2550 1700 50  0000 C CNN
F 2 "" H 2550 1900 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/26/apem_03162018_Q14_Series_HMI_2017-1730666.pdf" H 2550 1900 50  0001 C CNN
	1    2550 1900
	1    0    0    -1  
$EndComp
Text GLabel 2300 1700 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	2400 1500 2200 1500
Wire Wire Line
	2200 1500 2200 1700
Wire Wire Line
	2200 1700 2300 1700
Wire Wire Line
	2200 1700 2200 1900
Wire Wire Line
	2200 1900 2400 1900
Connection ~ 2200 1700
Wire Wire Line
	2700 1500 2950 1500
Wire Wire Line
	2700 1900 2950 1900
Wire Wire Line
	2150 3650 2150 2450
Wire Wire Line
	2000 3500 2000 1100
Wire Wire Line
	1850 1000 1850 3350
Wire Wire Line
	8450 7100 8650 7100
$Comp
L Device:CircuitBreaker_1P CB1
U 1 1 5F6B20F0
P 1250 6950
F 0 "CB1" H 1303 6996 50  0000 L CNN
F 1 "GLV Main Breaker [30A]" H 1303 6905 50  0000 L CNN
F 2 "" H 1250 6950 50  0001 C CNN
F 3 "~" H 1250 6950 50  0001 C CNN
	1    1250 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1950 5950 2350
Wire Wire Line
	5950 1950 6050 1950
Wire Wire Line
	5950 2350 5950 3150
Connection ~ 5950 2350
Wire Wire Line
	5950 4400 5950 3550
Wire Notes Line
	4350 8750 4350 7550
Wire Notes Line
	4350 7550 6400 7550
Wire Notes Line
	6400 7550 6400 8750
Wire Notes Line
	6400 8750 4350 8750
Wire Wire Line
	11500 6100 11700 6100
Wire Wire Line
	8650 8950 8850 8950
Wire Wire Line
	8550 9050 8850 9050
Wire Wire Line
	11700 6100 11700 1500
Wire Wire Line
	11800 1100 11800 6350
Wire Wire Line
	11600 7300 11500 7300
Wire Bus Line
	10100 6100 10100 6050
Wire Bus Line
	8450 6100 10100 6100
Wire Bus Line
	8450 6200 10100 6200
Wire Bus Line
	8450 6300 10100 6300
Wire Bus Line
	8450 6400 10100 6400
Wire Bus Line
	8450 6550 10100 6550
Wire Bus Line
	8450 6650 10100 6650
Wire Bus Line
	8450 6750 10100 6750
Wire Bus Line
	8450 6850 10100 6850
Wire Wire Line
	8600 1600 8600 3500
Wire Wire Line
	7750 3500 8600 3500
Connection ~ 8600 3500
Wire Wire Line
	8600 3500 8600 3950
Wire Wire Line
	8600 3950 8300 3950
Wire Wire Line
	11500 6350 11800 6350
Wire Wire Line
	8950 7900 8650 7900
Wire Wire Line
	9100 7050 10100 7050
Wire Wire Line
	9250 7150 10100 7150
Wire Wire Line
	9400 7250 10100 7250
Wire Wire Line
	10100 7350 9550 7350
Wire Wire Line
	9550 7350 9550 7400
Wire Wire Line
	9400 7250 9400 7400
Wire Wire Line
	9250 7150 9250 7400
Wire Wire Line
	9100 7050 9100 7400
Wire Wire Line
	8650 7100 8650 7900
Wire Wire Line
	10100 7900 10100 8150
Wire Wire Line
	9750 7900 10100 7900
Wire Wire Line
	8650 8950 8650 7900
Connection ~ 8650 7900
$Comp
L Device:LED D5
U 1 1 5FA58D8C
P 6300 5500
F 0 "D5" H 6250 5400 50  0000 L CNN
F 1 "TSAL" H 6250 5300 50  0000 L CNN
F 2 "" H 6300 5500 50  0001 C CNN
F 3 "~" H 6300 5500 50  0001 C CNN
	1    6300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15300 5750 15300 7700
Wire Wire Line
	15350 1000 15350 7900
$Comp
L NER:RinehartPM100DX_MotorController U6
U 1 1 5F97D518
P 14300 8350
F 0 "U6" H 14300 8515 50  0000 C CNN
F 1 "RinehartPM100DX_MotorController" H 14300 8424 50  0000 C CNN
F 2 "" H 14300 8350 50  0001 C CNN
F 3 "" H 14300 8350 50  0001 C CNN
	1    14300 8350
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 6233DFFE
P 13050 7750
F 0 "RV4" H 12800 7850 50  0000 C CNN
F 1 "ACCEL_POT" H 12800 7750 50  0000 C CNN
F 2 "" H 13050 7750 50  0001 C CNN
F 3 "~" H 13050 7750 50  0001 C CNN
	1    13050 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 6233F5CA
P 13050 7350
F 0 "RV3" H 12800 7450 50  0000 C CNN
F 1 "BRAKE_POT" H 12800 7350 50  0000 C CNN
F 2 "" H 13050 7350 50  0001 C CNN
F 3 "~" H 13050 7350 50  0001 C CNN
	1    13050 7350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW11
U 1 1 62347AF0
P 13050 6200
F 0 "SW11" H 13050 5975 50  0000 C CNN
F 1 "BRAKE_SWITCH" H 13050 6066 50  0000 C CNN
F 2 "" H 13050 6200 50  0001 C CNN
F 3 "~" H 13050 6200 50  0001 C CNN
	1    13050 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	13400 7900 13050 7900
Wire Wire Line
	13200 7750 13300 7750
Wire Wire Line
	13300 7750 13300 7800
Wire Wire Line
	13300 7800 13400 7800
Wire Wire Line
	13400 7600 13050 7600
Wire Wire Line
	13400 7400 13300 7400
Wire Wire Line
	13050 7200 13400 7200
Wire Wire Line
	13300 7350 13200 7350
Wire Wire Line
	13300 7350 13300 7400
Wire Wire Line
	13400 7500 13050 7500
Wire Wire Line
	12850 6200 12750 6200
Text GLabel 13050 7000 0    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	15200 7500 15200 7600
Wire Wire Line
	15200 7800 15200 7900
Connection ~ 15200 7900
Wire Wire Line
	15200 7250 15200 7500
Connection ~ 15200 7500
$Sheet
S 9300 3200 1700 1550
U 5F647A32
F0 "Driver IO Enclosure" 50
F1 "Driver IO Enclosure.sch" 50
$EndSheet
Text GLabel 15200 7250 1    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	15200 7700 15300 7700
Wire Wire Line
	15200 7900 15350 7900
Text GLabel 11600 7300 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	15750 8050 15750 8000
Wire Wire Line
	15750 8250 15750 8300
$Comp
L NER:Emrax228HV_Motor U7
U 1 1 5F972C2B
P 16100 7800
F 0 "U7" H 16050 7950 50  0000 L CNN
F 1 "Emrax228HV_Motor" H 15750 7850 50  0000 L CNN
F 2 "" H 16100 7800 50  0001 C CNN
F 3 "" H 16100 7800 50  0001 C CNN
	1    16100 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1600 8600 1600
Wire Wire Line
	4700 1500 11700 1500
Wire Wire Line
	8550 7200 8550 8250
Wire Wire Line
	15200 8150 15750 8150
Wire Wire Line
	15750 8050 15200 8050
Wire Wire Line
	15200 8250 15750 8250
Wire Wire Line
	8550 8250 13400 8250
Connection ~ 8550 8250
Wire Wire Line
	8550 8250 8550 9050
Wire Wire Line
	10100 8150 13400 8150
Wire Wire Line
	13250 6200 13400 6200
Wire Wire Line
	13050 7000 13400 7000
Wire Wire Line
	8450 5750 15300 5750
Wire Wire Line
	1850 1000 15350 1000
Wire Wire Line
	2000 1100 11800 1100
Wire Wire Line
	2150 2450 2950 2450
Wire Wire Line
	2300 2600 2950 2600
Wire Wire Line
	1850 3500 2000 3500
Wire Wire Line
	1850 3800 2300 3800
Wire Wire Line
	1850 3650 2150 3650
Wire Wire Line
	2300 3800 2300 3400
Wire Wire Line
	2300 2600 2300 3000
Text GLabel 4850 1750 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	4850 1750 4700 1750
Wire Wire Line
	4750 8150 4700 8150
Wire Wire Line
	4700 8150 4700 8050
Wire Wire Line
	4700 8050 4900 8050
Wire Wire Line
	5150 8150 5200 8150
Wire Wire Line
	5200 8150 5200 8050
Wire Wire Line
	5200 8050 5000 8050
Wire Wire Line
	5150 8350 5250 8350
Wire Wire Line
	5250 8350 5250 8000
Wire Wire Line
	5250 8000 5050 8000
Wire Wire Line
	4750 8350 4650 8350
Wire Wire Line
	4650 8350 4650 8000
Wire Wire Line
	4650 8000 4850 8000
Wire Wire Line
	4850 2600 4850 8000
Wire Wire Line
	5050 2300 4700 2300
Wire Wire Line
	4700 2600 4850 2600
Wire Wire Line
	5050 2300 5050 8000
Wire Wire Line
	4700 2400 5000 2400
Wire Wire Line
	5000 2400 5000 8050
Wire Wire Line
	4900 2500 4700 2500
Wire Wire Line
	4900 2500 4900 8050
Wire Wire Line
	6700 7100 5600 7100
Wire Wire Line
	5600 7100 5600 8450
Wire Wire Line
	5850 7200 6700 7200
Wire Wire Line
	5850 7200 5850 8450
Wire Wire Line
	6450 8050 6100 8050
Wire Wire Line
	6100 8050 6100 8450
$Comp
L Switch:SW_DPST SW5
U 1 1 5F864268
P 4950 8250
F 0 "SW5" H 4950 8050 50  0000 C CNN
F 1 "Latching Circuit Reset [Momentary Button NO]" H 4500 7900 50  0000 C CNN
F 2 "" H 4950 8250 50  0001 C CNN
F 3 "~" H 4950 8250 50  0001 C CNN
	1    4950 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3950 6900 3950
$Comp
L Switch:SW_SPST_Temperature SW12
U 1 1 5F6E407C
P 14850 3700
F 0 "SW12" H 14850 4015 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 14850 3924 50  0000 C CNN
F 2 "" H 14850 3700 50  0001 C CNN
F 3 "~" H 14850 3700 50  0001 C CNN
	1    14850 3700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST_Temperature SW13
U 1 1 5F6E49B5
P 14850 4200
F 0 "SW13" H 14850 4515 50  0000 C CNN
F 1 "SW_SPST_Pressure" H 14850 4424 50  0000 C CNN
F 2 "" H 14850 4200 50  0001 C CNN
F 3 "~" H 14850 4200 50  0001 C CNN
	1    14850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 3700 14650 3700
Wire Wire Line
	15050 3700 15050 3800
Wire Wire Line
	15050 3800 14400 3800
Wire Wire Line
	14400 4200 14650 4200
Wire Wire Line
	15050 4200 15050 4300
Wire Wire Line
	15050 4300 14400 4300
$Sheet
S 12950 3000 1450 1400
U 5F6C8190
F0 "Pedal Box" 50
F1 "PedalBox.sch" 50
F2 "GLV+" I L 12950 3150 50 
F3 "GLV_GND" I L 12950 3250 50 
F4 "CAN_L" I R 14400 3250 50 
F5 "CAN_H" I R 14400 3150 50 
F6 "Switch_Input1" I R 14400 3700 50 
F7 "Switch_Input2" I R 14400 4200 50 
F8 "Switch2-" I R 14400 4300 50 
F9 "Switch1-" I R 14400 3800 50 
F10 "POT1+" I L 12950 3550 50 
F11 "POT2+" I L 12950 4050 50 
F12 "POT1_INPUT" I L 12950 3650 50 
F13 "POT1-" I L 12950 3750 50 
F14 "POT2_INPUT" I L 12950 4150 50 
F15 "POT2-" I L 12950 4250 50 
$EndSheet
$Comp
L Device:R_POT RV2
U 1 1 5F71DF92
P 12450 4150
F 0 "RV2" H 12381 4196 50  0000 R CNN
F 1 "R_POT" H 12381 4105 50  0000 R CNN
F 2 "" H 12450 4150 50  0001 C CNN
F 3 "~" H 12450 4150 50  0001 C CNN
	1    12450 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F71E67B
P 12450 3650
F 0 "RV1" H 12381 3696 50  0000 R CNN
F 1 "R_POT" H 12381 3605 50  0000 R CNN
F 2 "" H 12450 3650 50  0001 C CNN
F 3 "~" H 12450 3650 50  0001 C CNN
	1    12450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 3650 12950 3650
Wire Wire Line
	12450 3500 12750 3500
Wire Wire Line
	12750 3500 12750 3550
Wire Wire Line
	12750 3550 12950 3550
Wire Wire Line
	12450 3800 12750 3800
Wire Wire Line
	12750 3800 12750 3750
Wire Wire Line
	12750 3750 12950 3750
Wire Wire Line
	12600 4150 12950 4150
Wire Wire Line
	12450 4000 12750 4000
Wire Wire Line
	12750 4000 12750 4050
Wire Wire Line
	12750 4050 12950 4050
Wire Wire Line
	12450 4300 12750 4300
Wire Wire Line
	12750 4300 12750 4250
Wire Wire Line
	12750 4250 12950 4250
Wire Wire Line
	5950 4800 5950 5000
Wire Wire Line
	8600 5400 8600 4150
Wire Wire Line
	8550 4250 8550 5300
Text GLabel 8650 5550 2    50   UnSpc ~ 0
CHASSIS_GND
Wire Wire Line
	8450 5650 15400 5650
Wire Wire Line
	15400 5650 15400 7950
Wire Wire Line
	15400 7950 15200 7950
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E32
P 6250 6400
AR Path="/5F45B05E/60DA2E32" Ref="SW?"  Part="1" 
AR Path="/60DA2E32" Ref="SW9"  Part="1" 
F 0 "SW9" H 6250 6550 50  0000 C CNN
F 1 "HVD" H 6250 6650 50  0000 C CNN
F 2 "" H 6250 6400 50  0001 C CNN
F 3 "~" H 6250 6400 50  0001 C CNN
	1    6250 6400
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E38
P 6250 6000
AR Path="/5F45B05E/60DA2E38" Ref="SW?"  Part="1" 
AR Path="/60DA2E38" Ref="SW8"  Part="1" 
F 0 "SW8" H 6250 6235 50  0000 C CNN
F 1 "SMD" H 6250 6144 50  0000 C CNN
F 2 "" H 6250 6000 50  0001 C CNN
F 3 "~" H 6250 6000 50  0001 C CNN
	1    6250 6000
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 60DA2E3E
P 6250 6800
AR Path="/5F45B05E/60DA2E3E" Ref="SW?"  Part="1" 
AR Path="/60DA2E3E" Ref="SW10"  Part="1" 
F 0 "SW10" H 6250 6950 50  0000 C CNN
F 1 "SMD" H 6250 7050 50  0000 C CNN
F 2 "" H 6250 6800 50  0001 C CNN
F 3 "~" H 6250 6800 50  0001 C CNN
	1    6250 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 6000 6450 6000
Wire Wire Line
	6050 6000 5950 6000
Wire Wire Line
	5950 6000 5950 5900
Wire Wire Line
	5950 5900 6700 5900
Wire Wire Line
	6700 6400 6450 6400
Wire Wire Line
	6050 6400 5950 6400
Wire Wire Line
	5950 6400 5950 6300
Wire Wire Line
	5950 6300 6700 6300
Wire Wire Line
	6700 6800 6450 6800
Wire Wire Line
	6050 6800 5950 6800
Wire Wire Line
	5950 6800 5950 6700
Wire Wire Line
	5950 6700 6700 6700
Wire Wire Line
	6150 5500 5950 5500
Wire Wire Line
	5950 5500 5950 5750
Wire Wire Line
	6450 5500 6700 5500
Wire Wire Line
	5950 5750 6700 5750
Wire Wire Line
	5750 5400 6700 5400
Wire Wire Line
	8450 5550 8650 5550
Wire Wire Line
	8450 5850 8650 5850
Wire Wire Line
	5950 1950 4700 1950
Connection ~ 5950 1950
Connection ~ 5950 5000
Wire Wire Line
	5950 5000 5950 5300
Wire Wire Line
	5950 5300 6700 5300
$EndSCHEMATC
