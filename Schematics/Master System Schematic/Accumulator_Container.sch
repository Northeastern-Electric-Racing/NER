EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 7 17
Title "Accumulator Container"
Date "2020-10-15"
Rev "3"
Comp "Northeastern Electric Racing"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Relay:MSxx-1Bxx-75 K4
U 1 1 5E637554
P 9450 6800
F 0 "K4" V 8883 6800 50  0000 C CNN
F 1 "SPST-NC (Discharge)" V 8974 6800 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 9800 6750 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 9450 6800 50  0001 C CNN
	1    9450 6800
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5E640862
P 6150 5000
F 0 "F1" V 5953 5000 50  0000 C CNN
F 1 "Fuse" V 6044 5000 50  0000 C CNN
F 2 "" V 6080 5000 50  0001 C CNN
F 3 "~" H 6150 5000 50  0001 C CNN
	1    6150 5000
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K3
U 1 1 5EBDE2B9
P 8600 7900
F 0 "K3" V 8033 7900 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 8124 7900 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 8950 7850 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 8600 7900 50  0001 C CNN
	1    8600 7900
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K2
U 1 1 5EBE5BCF
P 8600 5800
F 0 "K2" V 8033 5800 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 8124 5800 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 8950 5750 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 8600 5800 50  0001 C CNN
	1    8600 5800
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K1
U 1 1 5EBEB71B
P 8600 4800
F 0 "K1" V 8033 4800 50  0000 C CNN
F 1 "SPST-NO (Precharge)" V 8124 4800 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 8950 4750 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 8600 4800 50  0001 C CNN
	1    8600 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 8100 9100 8100
Connection ~ 9100 8100
Wire Wire Line
	7450 6000 8300 6000
Wire Wire Line
	9100 7000 9100 8100
Wire Wire Line
	8300 4600 8000 4600
Wire Wire Line
	8000 4600 8000 5600
Wire Wire Line
	8300 7700 8000 7700
Wire Wire Line
	8300 5600 8000 5600
Connection ~ 8000 5600
Wire Wire Line
	8000 5600 8000 6600
Wire Wire Line
	9150 6600 8000 6600
Connection ~ 8000 6600
Wire Wire Line
	8000 6600 8000 7700
Wire Wire Line
	8900 4600 9000 4600
Wire Wire Line
	9100 7000 9150 7000
$Comp
L Device:R R2
U 1 1 5F158D54
P 11100 6400
F 0 "R2" H 10900 6450 50  0000 L CNN
F 1 "3.3k" H 10850 6350 50  0000 L CNN
F 2 "" V 11030 6400 50  0001 C CNN
F 3 "~" H 11100 6400 50  0001 C CNN
	1    11100 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F159E72
P 11100 5600
F 0 "R1" H 10900 5650 50  0000 L CNN
F 1 "600" H 10850 5550 50  0000 L CNN
F 2 "" V 11030 5600 50  0001 C CNN
F 3 "~" H 11100 5600 50  0001 C CNN
	1    11100 5600
	1    0    0    -1  
$EndComp
Text Label 5700 6850 0    50   ~ 0
1_2
Text Label 5400 6450 0    50   ~ 0
2_2
Text Label 3750 6450 0    50   ~ 0
3_2
Text Label 3750 6350 0    50   ~ 0
4_2
Text Label 3750 5500 0    50   ~ 0
5_2
Text Label 5400 5400 0    50   ~ 0
7_2
Text Label 5700 5000 0    50   ~ 0
8_2
Text Label 6400 5000 0    50   ~ 0
9_2
Text Label 9350 6000 0    50   ~ 0
10_2
Text Label 10050 5000 0    50   ~ 0
11_2
Text Label 9650 8100 0    50   ~ 0
12_2
Text Label 8000 4050 0    50   ~ 0
25_20
Text Label 10600 4100 0    50   ~ 0
26_20
Text Label 9950 7000 0    50   ~ 0
13_2
Text Label 9000 3950 2    50   ~ 0
27_20
Text Label 9550 5400 0    50   ~ 0
28_20
$Comp
L Device:R R3
U 1 1 5F2AF3BD
P 11600 5600
F 0 "R3" H 11670 5646 50  0000 L CNN
F 1 "10k" H 11670 5555 50  0000 L CNN
F 2 "" V 11530 5600 50  0001 C CNN
F 3 "~" H 11600 5600 50  0001 C CNN
	1    11600 5600
	-1   0    0    -1  
$EndComp
Connection ~ 8000 4600
Wire Wire Line
	9600 1200 9250 1200
Wire Wire Line
	9250 1200 9250 1350
Wire Wire Line
	9600 1100 9150 1100
Wire Wire Line
	9150 1100 9150 1350
$Comp
L Device:R R4
U 1 1 5F39A796
P 11700 5600
F 0 "R4" H 11770 5646 50  0000 L CNN
F 1 "10k" H 11770 5555 50  0000 L CNN
F 2 "" V 11630 5600 50  0001 C CNN
F 3 "~" H 11700 5600 50  0001 C CNN
	1    11700 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5F14BDC4
P 12450 5600
F 0 "F2" H 12391 5554 50  0000 R CNN
F 1 "Fuse" H 12391 5645 50  0000 R CNN
F 2 "" V 12380 5600 50  0001 C CNN
F 3 "~" H 12450 5600 50  0001 C CNN
	1    12450 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12450 5750 12450 6000
Text Label 12250 3300 0    50   ~ 0
29_20
Text Label 12350 3400 0    50   ~ 0
30_20
Text Label 12550 3600 0    50   ~ 0
31_20
Text Label 12700 3500 2    50   ~ 0
32_20
Text Label 3750 5400 0    50   ~ 0
6_2
Wire Wire Line
	3550 6350 4100 6350
Wire Wire Line
	3550 5500 4100 5500
Wire Wire Line
	6000 5000 5500 5000
Wire Wire Line
	5500 6750 5550 6750
Wire Wire Line
	7450 8100 8300 8100
Text HLabel 9600 1100 2    50   Input ~ 0
MotorController_AIR_Control-
Text HLabel 9600 1200 2    50   Input ~ 0
MotorController_AIR_Control+
Text HLabel 8650 950  0    50   Input ~ 0
Shutdown+
Text HLabel 8650 850  0    50   Input ~ 0
Shutdown-
Wire Wire Line
	9050 850  8650 850 
Text HLabel 14800 6000 2    50   Output ~ 0
TS+
Text HLabel 14800 6100 2    50   Output ~ 0
TS-
Text HLabel 13600 3500 2    50   Output ~ 0
IMD_HV_SENSE-
Text HLabel 13600 3600 2    50   Output ~ 0
IMD_HV_SENSE+
Text HLabel 13600 3400 2    50   Output ~ 0
TSMP-
Text HLabel 13600 3300 2    50   Output ~ 0
TSMP+
Wire Wire Line
	11600 6000 11600 5750
Wire Wire Line
	14800 6000 14450 6000
Wire Wire Line
	14450 6100 14800 6100
Text HLabel 6550 9300 2    50   Output ~ 0
Segment1_Thermistors
Text HLabel 6550 9400 2    50   Output ~ 0
Segment2_Thermistors
Text HLabel 6550 9500 2    50   Output ~ 0
Segment3_Thermistors
Text HLabel 6550 9600 2    50   Output ~ 0
Segment4_Thermistors
Text HLabel 6550 9750 2    50   Output ~ 0
Segment1_VoltageTaps
Text HLabel 6550 9850 2    50   Output ~ 0
Segment2_VoltageTaps
Text HLabel 6550 9950 2    50   Output ~ 0
Segment3_VoltageTaps
Text HLabel 6550 10050 2    50   Output ~ 0
Segment4_VoltageTaps
$Comp
L Device:Fuse F3
U 1 1 5F6433FB
P 12350 5600
F 0 "F3" H 12291 5554 50  0000 R CNN
F 1 "Fuse" H 12291 5645 50  0000 R CNN
F 2 "" V 12280 5600 50  0001 C CNN
F 3 "~" H 12350 5600 50  0001 C CNN
	1    12350 5600
	1    0    0    1   
$EndComp
$Sheet
S 3950 6700 1550 2000
U 5F7F6054
F0 "Battery Segment 1" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 5500 6750 50 
F3 "Segment-" O R 5500 6850 50 
F4 "ThermistorA" O L 3950 6750 50 
F5 "ThermistorB" O L 3950 6800 50 
F6 "ThermistorC" O L 3950 6850 50 
F7 "ThermistorD" O L 3950 6900 50 
F8 "VoltageTap1-" O R 5500 7000 50 
F9 "VoltageTap1" O R 5500 7050 50 
F10 "VoltageTap2" O R 5500 7100 50 
F11 "VoltageTap3" O R 5500 7150 50 
F12 "VoltageTap4" O R 5500 7200 50 
F13 "VoltageTap5" O R 5500 7250 50 
F14 "VoltageTap6" O R 5500 7300 50 
F15 "VoltageTap7" O R 5500 7350 50 
F16 "VoltageTap8" O R 5500 7400 50 
F17 "VoltageTap9" O R 5500 7450 50 
F18 "VoltageTap10" O R 5500 7500 50 
F19 "VoltageTap11" O R 5500 7550 50 
F20 "VoltageTap12" O R 5500 7600 50 
F21 "VoltageTap13-" O R 5500 7650 50 
F22 "VoltageTap13" O R 5500 7800 50 
F23 "VoltageTap14" O R 5500 7850 50 
F24 "VoltageTap15" O R 5500 7900 50 
F25 "VoltageTap16" O R 5500 7950 50 
F26 "VoltageTap17" O R 5500 8000 50 
F27 "VoltageTap18" O R 5500 8050 50 
F28 "ThermistorE" O L 3950 6950 50 
F29 "ThermistorF" O L 3950 7150 50 
F30 "ThermistorG" O L 3950 7350 50 
F31 "ThermistorH" O L 3950 7400 50 
F32 "ThermistorI" O L 3950 7450 50 
F33 "ThermistorJ" O L 3950 7500 50 
F34 "ThermistorK" O L 3950 7550 50 
F35 "ThermistorL" O L 3950 7750 50 
F36 "ThermistorM" O L 3950 7800 50 
F37 "ThermistorN" O L 3950 7850 50 
F38 "ThermistorO" O L 3950 7900 50 
F39 "ThermistorP" O L 3950 7950 50 
F40 "ThermistorQ" O L 3950 8150 50 
F41 "ThermistorR" O L 3950 8350 50 
F42 "ThermistorS" O L 3950 8400 50 
F43 "ThermistorU" O L 3950 8500 50 
F44 "ThermistorV" O L 3950 8550 50 
F45 "ThermistorT" O L 3950 8450 50 
F46 "VoltageTap19" O R 5500 8100 50 
F47 "VoltageTap20" O R 5500 8150 50 
F48 "VoltageTap21" O R 5500 8200 50 
F49 "VoltageTap22" O R 5500 8250 50 
F50 "VoltageTap23" O R 5500 8300 50 
F51 "VoltageTap24" O R 5500 8350 50 
F52 "ThermistorF_GND" O L 3950 7200 50 
F53 "ThermistorQ_GND" O L 3950 8200 50 
F54 "ThermistorA-E_GND" O L 3950 7000 50 
F55 "ThermistorG-K_GND" O L 3950 7600 50 
F56 "ThermistorL-P_GND" O L 3950 8000 50 
F57 "ThermistorR-V_GND" O L 3950 8600 50 
$EndSheet
$Sheet
S 2000 6300 1550 2000
U 6033DA36
F0 "Battery Segment 2" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 3550 6350 50 
F3 "Segment-" O R 3550 6450 50 
F4 "ThermistorA" O L 2000 6350 50 
F5 "ThermistorB" O L 2000 6400 50 
F6 "ThermistorC" O L 2000 6450 50 
F7 "ThermistorD" O L 2000 6500 50 
F8 "VoltageTap1-" O R 3550 6600 50 
F9 "VoltageTap1" O R 3550 6650 50 
F10 "VoltageTap2" O R 3550 6700 50 
F11 "VoltageTap3" O R 3550 6750 50 
F12 "VoltageTap4" O R 3550 6800 50 
F13 "VoltageTap5" O R 3550 6850 50 
F14 "VoltageTap6" O R 3550 6900 50 
F15 "VoltageTap7" O R 3550 6950 50 
F16 "VoltageTap8" O R 3550 7000 50 
F17 "VoltageTap9" O R 3550 7050 50 
F18 "VoltageTap10" O R 3550 7100 50 
F19 "VoltageTap11" O R 3550 7150 50 
F20 "VoltageTap12" O R 3550 7200 50 
F21 "VoltageTap13-" O R 3550 7250 50 
F22 "VoltageTap13" O R 3550 7400 50 
F23 "VoltageTap14" O R 3550 7450 50 
F24 "VoltageTap15" O R 3550 7500 50 
F25 "VoltageTap16" O R 3550 7550 50 
F26 "VoltageTap17" O R 3550 7600 50 
F27 "VoltageTap18" O R 3550 7650 50 
F28 "ThermistorE" O L 2000 6550 50 
F29 "ThermistorF" O L 2000 6750 50 
F30 "ThermistorG" O L 2000 6950 50 
F31 "ThermistorH" O L 2000 7000 50 
F32 "ThermistorI" O L 2000 7050 50 
F33 "ThermistorJ" O L 2000 7100 50 
F34 "ThermistorK" O L 2000 7150 50 
F35 "ThermistorL" O L 2000 7350 50 
F36 "ThermistorM" O L 2000 7400 50 
F37 "ThermistorN" O L 2000 7450 50 
F38 "ThermistorO" O L 2000 7500 50 
F39 "ThermistorP" O L 2000 7550 50 
F40 "ThermistorQ" O L 2000 7750 50 
F41 "ThermistorR" O L 2000 7950 50 
F42 "ThermistorS" O L 2000 8000 50 
F43 "ThermistorU" O L 2000 8100 50 
F44 "ThermistorV" O L 2000 8150 50 
F45 "ThermistorT" O L 2000 8050 50 
F46 "VoltageTap19" O R 3550 7700 50 
F47 "VoltageTap20" O R 3550 7750 50 
F48 "VoltageTap21" O R 3550 7800 50 
F49 "VoltageTap22" O R 3550 7850 50 
F50 "VoltageTap23" O R 3550 7900 50 
F51 "VoltageTap24" O R 3550 7950 50 
F52 "ThermistorF_GND" O L 2000 6800 50 
F53 "ThermistorQ_GND" O L 2000 7800 50 
F54 "ThermistorA-E_GND" O L 2000 6600 50 
F55 "ThermistorG-K_GND" O L 2000 7200 50 
F56 "ThermistorL-P_GND" O L 2000 7600 50 
F57 "ThermistorR-V_GND" O L 2000 8200 50 
$EndSheet
$Sheet
S 2000 3550 1550 2000
U 60342748
F0 "Battery Segment 3" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 3550 5400 50 
F3 "Segment-" O R 3550 5500 50 
F4 "ThermistorA" O L 2000 3600 50 
F5 "ThermistorB" O L 2000 3650 50 
F6 "ThermistorC" O L 2000 3700 50 
F7 "ThermistorD" O L 2000 3750 50 
F8 "VoltageTap1-" O R 3550 3850 50 
F9 "VoltageTap1" O R 3550 3900 50 
F10 "VoltageTap2" O R 3550 3950 50 
F11 "VoltageTap3" O R 3550 4000 50 
F12 "VoltageTap4" O R 3550 4050 50 
F13 "VoltageTap5" O R 3550 4100 50 
F14 "VoltageTap6" O R 3550 4150 50 
F15 "VoltageTap7" O R 3550 4200 50 
F16 "VoltageTap8" O R 3550 4250 50 
F17 "VoltageTap9" O R 3550 4300 50 
F18 "VoltageTap10" O R 3550 4350 50 
F19 "VoltageTap11" O R 3550 4400 50 
F20 "VoltageTap12" O R 3550 4450 50 
F21 "VoltageTap13-" O R 3550 4500 50 
F22 "VoltageTap13" O R 3550 4650 50 
F23 "VoltageTap14" O R 3550 4700 50 
F24 "VoltageTap15" O R 3550 4750 50 
F25 "VoltageTap16" O R 3550 4800 50 
F26 "VoltageTap17" O R 3550 4850 50 
F27 "VoltageTap18" O R 3550 4900 50 
F28 "ThermistorE" O L 2000 3800 50 
F29 "ThermistorF" O L 2000 4000 50 
F30 "ThermistorG" O L 2000 4200 50 
F31 "ThermistorH" O L 2000 4250 50 
F32 "ThermistorI" O L 2000 4300 50 
F33 "ThermistorJ" O L 2000 4350 50 
F34 "ThermistorK" O L 2000 4400 50 
F35 "ThermistorL" O L 2000 4600 50 
F36 "ThermistorM" O L 2000 4650 50 
F37 "ThermistorN" O L 2000 4700 50 
F38 "ThermistorO" O L 2000 4750 50 
F39 "ThermistorP" O L 2000 4800 50 
F40 "ThermistorQ" O L 2000 5000 50 
F41 "ThermistorR" O L 2000 5200 50 
F42 "ThermistorS" O L 2000 5250 50 
F43 "ThermistorU" O L 2000 5350 50 
F44 "ThermistorV" O L 2000 5400 50 
F45 "ThermistorT" O L 2000 5300 50 
F46 "VoltageTap19" O R 3550 4950 50 
F47 "VoltageTap20" O R 3550 5000 50 
F48 "VoltageTap21" O R 3550 5050 50 
F49 "VoltageTap22" O R 3550 5100 50 
F50 "VoltageTap23" O R 3550 5150 50 
F51 "VoltageTap24" O R 3550 5200 50 
F52 "ThermistorF_GND" O L 2000 4050 50 
F53 "ThermistorQ_GND" O L 2000 5050 50 
F54 "ThermistorA-E_GND" O L 2000 3850 50 
F55 "ThermistorG-K_GND" O L 2000 4450 50 
F56 "ThermistorL-P_GND" O L 2000 4850 50 
F57 "ThermistorR-V_GND" O L 2000 5450 50 
$EndSheet
$Sheet
S 3950 3150 1550 2000
U 60346A55
F0 "Battery Segment 4" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 5500 5000 50 
F3 "Segment-" O R 5500 5100 50 
F4 "ThermistorA" O L 3950 3200 50 
F5 "ThermistorB" O L 3950 3250 50 
F6 "ThermistorC" O L 3950 3300 50 
F7 "ThermistorD" O L 3950 3350 50 
F8 "VoltageTap1-" O R 5500 3450 50 
F9 "VoltageTap1" O R 5500 3500 50 
F10 "VoltageTap2" O R 5500 3550 50 
F11 "VoltageTap3" O R 5500 3600 50 
F12 "VoltageTap4" O R 5500 3650 50 
F13 "VoltageTap5" O R 5500 3700 50 
F14 "VoltageTap6" O R 5500 3750 50 
F15 "VoltageTap7" O R 5500 3800 50 
F16 "VoltageTap8" O R 5500 3850 50 
F17 "VoltageTap9" O R 5500 3900 50 
F18 "VoltageTap10" O R 5500 3950 50 
F19 "VoltageTap11" O R 5500 4000 50 
F20 "VoltageTap12" O R 5500 4050 50 
F21 "VoltageTap13-" O R 5500 4100 50 
F22 "VoltageTap13" O R 5500 4250 50 
F23 "VoltageTap14" O R 5500 4300 50 
F24 "VoltageTap15" O R 5500 4350 50 
F25 "VoltageTap16" O R 5500 4400 50 
F26 "VoltageTap17" O R 5500 4450 50 
F27 "VoltageTap18" O R 5500 4500 50 
F28 "ThermistorE" O L 3950 3400 50 
F29 "ThermistorF" O L 3950 3600 50 
F30 "ThermistorG" O L 3950 3800 50 
F31 "ThermistorH" O L 3950 3850 50 
F32 "ThermistorI" O L 3950 3900 50 
F33 "ThermistorJ" O L 3950 3950 50 
F34 "ThermistorK" O L 3950 4000 50 
F35 "ThermistorL" O L 3950 4200 50 
F36 "ThermistorM" O L 3950 4250 50 
F37 "ThermistorN" O L 3950 4300 50 
F38 "ThermistorO" O L 3950 4350 50 
F39 "ThermistorP" O L 3950 4400 50 
F40 "ThermistorQ" O L 3950 4600 50 
F41 "ThermistorR" O L 3950 4800 50 
F42 "ThermistorS" O L 3950 4850 50 
F43 "ThermistorU" O L 3950 4950 50 
F44 "ThermistorV" O L 3950 5000 50 
F45 "ThermistorT" O L 3950 4900 50 
F46 "VoltageTap19" O R 5500 4550 50 
F47 "VoltageTap20" O R 5500 4600 50 
F48 "VoltageTap21" O R 5500 4650 50 
F49 "VoltageTap22" O R 5500 4700 50 
F50 "VoltageTap23" O R 5500 4750 50 
F51 "VoltageTap24" O R 5500 4800 50 
F52 "ThermistorF_GND" O L 3950 3650 50 
F53 "ThermistorQ_GND" O L 3950 4650 50 
F54 "ThermistorA-E_GND" O L 3950 3450 50 
F55 "ThermistorG-K_GND" O L 3950 4050 50 
F56 "ThermistorL-P_GND" O L 3950 4450 50 
F57 "ThermistorR-V_GND" O L 3950 5050 50 
$EndSheet
Wire Wire Line
	2000 3800 1950 3800
Wire Wire Line
	2000 3850 1950 3850
Wire Wire Line
	2000 3750 1950 3750
Wire Wire Line
	2000 3700 1950 3700
Wire Wire Line
	2000 3650 1950 3650
Wire Wire Line
	2000 3600 1950 3600
Entry Wire Line
	1850 3500 1950 3600
Entry Wire Line
	1850 3550 1950 3650
Entry Wire Line
	1850 3600 1950 3700
Entry Wire Line
	1850 3700 1950 3800
Entry Wire Line
	1850 3650 1950 3750
Entry Wire Line
	1850 3750 1950 3850
Entry Wire Line
	1850 3900 1950 4000
Entry Wire Line
	1850 3950 1950 4050
Entry Wire Line
	1850 4100 1950 4200
Entry Wire Line
	1850 4150 1950 4250
Entry Wire Line
	1850 4200 1950 4300
Entry Wire Line
	1850 4250 1950 4350
Entry Wire Line
	1850 4300 1950 4400
Entry Wire Line
	1850 4350 1950 4450
Entry Wire Line
	1850 4500 1950 4600
Entry Wire Line
	1850 4550 1950 4650
Entry Wire Line
	1850 4600 1950 4700
Entry Wire Line
	1850 4650 1950 4750
Entry Wire Line
	1850 4700 1950 4800
Entry Wire Line
	1850 4750 1950 4850
Entry Wire Line
	1850 4950 1950 5050
Entry Wire Line
	1850 4900 1950 5000
Entry Wire Line
	1850 5100 1950 5200
Entry Wire Line
	1850 5150 1950 5250
Entry Wire Line
	1850 5200 1950 5300
Entry Wire Line
	1850 5250 1950 5350
Entry Wire Line
	1850 5300 1950 5400
Entry Wire Line
	1850 5350 1950 5450
Wire Wire Line
	2000 5450 1950 5450
Wire Wire Line
	2000 5400 1950 5400
Wire Wire Line
	2000 5350 1950 5350
Wire Wire Line
	2000 5300 1950 5300
Wire Wire Line
	2000 5250 1950 5250
Wire Wire Line
	2000 5200 1950 5200
Wire Wire Line
	2000 5050 1950 5050
Wire Wire Line
	2000 5000 1950 5000
Wire Wire Line
	2000 4850 1950 4850
Wire Wire Line
	2000 4800 1950 4800
Wire Wire Line
	2000 4750 1950 4750
Wire Wire Line
	2000 4700 1950 4700
Wire Wire Line
	2000 4650 1950 4650
Wire Wire Line
	2000 4600 1950 4600
Wire Wire Line
	2000 4450 1950 4450
Wire Wire Line
	2000 4400 1950 4400
Wire Wire Line
	2000 4350 1950 4350
Wire Wire Line
	2000 4300 1950 4300
Wire Wire Line
	2000 4250 1950 4250
Wire Wire Line
	2000 4200 1950 4200
Wire Wire Line
	2000 4050 1950 4050
Wire Wire Line
	2000 4000 1950 4000
Wire Wire Line
	3950 3400 3900 3400
Wire Wire Line
	3950 3450 3900 3450
Wire Wire Line
	3950 3350 3900 3350
Wire Wire Line
	3950 3300 3900 3300
Wire Wire Line
	3950 3250 3900 3250
Wire Wire Line
	3950 3200 3900 3200
Entry Wire Line
	3800 3100 3900 3200
Entry Wire Line
	3800 3150 3900 3250
Entry Wire Line
	3800 3200 3900 3300
Entry Wire Line
	3800 3300 3900 3400
Entry Wire Line
	3800 3250 3900 3350
Entry Wire Line
	3800 3350 3900 3450
Entry Wire Line
	3800 3500 3900 3600
Entry Wire Line
	3800 3550 3900 3650
Entry Wire Line
	3800 3700 3900 3800
Entry Wire Line
	3800 3750 3900 3850
Entry Wire Line
	3800 3800 3900 3900
Entry Wire Line
	3800 3850 3900 3950
Entry Wire Line
	3800 3900 3900 4000
Entry Wire Line
	3800 3950 3900 4050
Entry Wire Line
	3800 4100 3900 4200
Entry Wire Line
	3800 4150 3900 4250
Entry Wire Line
	3800 4200 3900 4300
Entry Wire Line
	3800 4250 3900 4350
Entry Wire Line
	3800 4300 3900 4400
Entry Wire Line
	3800 4350 3900 4450
Entry Wire Line
	3800 4550 3900 4650
Entry Wire Line
	3800 4500 3900 4600
Entry Wire Line
	3800 4700 3900 4800
Entry Wire Line
	3800 4750 3900 4850
Entry Wire Line
	3800 4800 3900 4900
Entry Wire Line
	3800 4850 3900 4950
Entry Wire Line
	3800 4900 3900 5000
Entry Wire Line
	3800 4950 3900 5050
Wire Wire Line
	3950 5050 3900 5050
Wire Wire Line
	3950 5000 3900 5000
Wire Wire Line
	3950 4950 3900 4950
Wire Wire Line
	3950 4900 3900 4900
Wire Wire Line
	3950 4850 3900 4850
Wire Wire Line
	3950 4800 3900 4800
Wire Wire Line
	3950 4650 3900 4650
Wire Wire Line
	3950 4600 3900 4600
Wire Wire Line
	3950 4450 3900 4450
Wire Wire Line
	3950 4400 3900 4400
Wire Wire Line
	3950 4350 3900 4350
Wire Wire Line
	3950 4300 3900 4300
Wire Wire Line
	3950 4250 3900 4250
Wire Wire Line
	3950 4200 3900 4200
Wire Wire Line
	3950 4050 3900 4050
Wire Wire Line
	3950 4000 3900 4000
Wire Wire Line
	3950 3950 3900 3950
Wire Wire Line
	3950 3900 3900 3900
Wire Wire Line
	3950 3850 3900 3850
Wire Wire Line
	3950 3800 3900 3800
Wire Wire Line
	3950 3650 3900 3650
Wire Wire Line
	3950 3600 3900 3600
Wire Wire Line
	2000 6550 1950 6550
Wire Wire Line
	2000 6600 1950 6600
Wire Wire Line
	2000 6500 1950 6500
Wire Wire Line
	2000 6450 1950 6450
Wire Wire Line
	2000 6400 1950 6400
Wire Wire Line
	2000 6350 1950 6350
Entry Wire Line
	1850 6250 1950 6350
Entry Wire Line
	1850 6300 1950 6400
Entry Wire Line
	1850 6350 1950 6450
Entry Wire Line
	1850 6450 1950 6550
Entry Wire Line
	1850 6400 1950 6500
Entry Wire Line
	1850 6500 1950 6600
Entry Wire Line
	1850 6650 1950 6750
Entry Wire Line
	1850 6700 1950 6800
Entry Wire Line
	1850 6850 1950 6950
Entry Wire Line
	1850 6900 1950 7000
Entry Wire Line
	1850 6950 1950 7050
Entry Wire Line
	1850 7000 1950 7100
Entry Wire Line
	1850 7050 1950 7150
Entry Wire Line
	1850 7100 1950 7200
Entry Wire Line
	1850 7250 1950 7350
Entry Wire Line
	1850 7300 1950 7400
Entry Wire Line
	1850 7350 1950 7450
Entry Wire Line
	1850 7400 1950 7500
Entry Wire Line
	1850 7450 1950 7550
Entry Wire Line
	1850 7500 1950 7600
Entry Wire Line
	1850 7700 1950 7800
Entry Wire Line
	1850 7650 1950 7750
Entry Wire Line
	1850 7850 1950 7950
Entry Wire Line
	1850 7900 1950 8000
Entry Wire Line
	1850 7950 1950 8050
Entry Wire Line
	1850 8000 1950 8100
Entry Wire Line
	1850 8050 1950 8150
Entry Wire Line
	1850 8100 1950 8200
Wire Wire Line
	2000 8200 1950 8200
Wire Wire Line
	2000 8150 1950 8150
Wire Wire Line
	2000 8100 1950 8100
Wire Wire Line
	2000 8050 1950 8050
Wire Wire Line
	2000 8000 1950 8000
Wire Wire Line
	2000 7950 1950 7950
Wire Wire Line
	2000 7800 1950 7800
Wire Wire Line
	2000 7750 1950 7750
Wire Wire Line
	2000 7600 1950 7600
Wire Wire Line
	2000 7550 1950 7550
Wire Wire Line
	2000 7500 1950 7500
Wire Wire Line
	2000 7450 1950 7450
Wire Wire Line
	2000 7400 1950 7400
Wire Wire Line
	2000 7350 1950 7350
Wire Wire Line
	2000 7200 1950 7200
Wire Wire Line
	2000 7150 1950 7150
Wire Wire Line
	2000 7100 1950 7100
Wire Wire Line
	2000 7050 1950 7050
Wire Wire Line
	2000 7000 1950 7000
Wire Wire Line
	2000 6950 1950 6950
Wire Wire Line
	2000 6800 1950 6800
Wire Wire Line
	2000 6750 1950 6750
Wire Wire Line
	3950 6950 3900 6950
Wire Wire Line
	3950 7000 3900 7000
Wire Wire Line
	3950 6900 3900 6900
Wire Wire Line
	3950 6850 3900 6850
Wire Wire Line
	3950 6800 3900 6800
Wire Wire Line
	3950 6750 3900 6750
Entry Wire Line
	3800 6650 3900 6750
Entry Wire Line
	3800 6700 3900 6800
Entry Wire Line
	3800 6750 3900 6850
Entry Wire Line
	3800 6850 3900 6950
Entry Wire Line
	3800 6800 3900 6900
Entry Wire Line
	3800 6900 3900 7000
Entry Wire Line
	3800 7050 3900 7150
Entry Wire Line
	3800 7100 3900 7200
Entry Wire Line
	3800 7250 3900 7350
Entry Wire Line
	3800 7300 3900 7400
Entry Wire Line
	3800 7350 3900 7450
Entry Wire Line
	3800 7400 3900 7500
Entry Wire Line
	3800 7450 3900 7550
Entry Wire Line
	3800 7500 3900 7600
Entry Wire Line
	3800 7650 3900 7750
Entry Wire Line
	3800 7700 3900 7800
Entry Wire Line
	3800 7750 3900 7850
Entry Wire Line
	3800 7800 3900 7900
Entry Wire Line
	3800 7850 3900 7950
Entry Wire Line
	3800 7900 3900 8000
Entry Wire Line
	3800 8100 3900 8200
Entry Wire Line
	3800 8050 3900 8150
Entry Wire Line
	3800 8250 3900 8350
Entry Wire Line
	3800 8300 3900 8400
Entry Wire Line
	3800 8350 3900 8450
Entry Wire Line
	3800 8400 3900 8500
Entry Wire Line
	3800 8450 3900 8550
Entry Wire Line
	3800 8500 3900 8600
Wire Wire Line
	3950 8600 3900 8600
Wire Wire Line
	3950 8550 3900 8550
Wire Wire Line
	3950 8500 3900 8500
Wire Wire Line
	3950 8450 3900 8450
Wire Wire Line
	3950 8400 3900 8400
Wire Wire Line
	3950 8350 3900 8350
Wire Wire Line
	3950 8200 3900 8200
Wire Wire Line
	3950 8150 3900 8150
Wire Wire Line
	3950 8000 3900 8000
Wire Wire Line
	3950 7950 3900 7950
Wire Wire Line
	3950 7900 3900 7900
Wire Wire Line
	3950 7850 3900 7850
Wire Wire Line
	3950 7800 3900 7800
Wire Wire Line
	3950 7750 3900 7750
Wire Wire Line
	3950 7600 3900 7600
Wire Wire Line
	3950 7550 3900 7550
Wire Wire Line
	3950 7500 3900 7500
Wire Wire Line
	3950 7450 3900 7450
Wire Wire Line
	3950 7400 3900 7400
Wire Wire Line
	3950 7350 3900 7350
Wire Wire Line
	3950 7200 3900 7200
Wire Wire Line
	3950 7150 3900 7150
Wire Bus Line
	3800 9300 6550 9300
Wire Bus Line
	1850 9400 6550 9400
Wire Bus Line
	1850 5350 1750 5350
Wire Bus Line
	1750 5350 1750 9500
Wire Bus Line
	1750 9500 6550 9500
Wire Bus Line
	1650 9600 1650 3050
Wire Bus Line
	1650 3050 3800 3050
Wire Wire Line
	5500 7000 5550 7000
Wire Wire Line
	5500 7050 5550 7050
Wire Wire Line
	5500 7100 5550 7100
Wire Wire Line
	5500 7150 5550 7150
Wire Wire Line
	5500 7200 5550 7200
Wire Wire Line
	5500 7250 5550 7250
Wire Wire Line
	5500 7300 5550 7300
Wire Wire Line
	5500 7350 5550 7350
Wire Wire Line
	5500 7400 5550 7400
Wire Wire Line
	5500 7450 5550 7450
Wire Wire Line
	5500 7500 5550 7500
Wire Wire Line
	5500 7550 5550 7550
Wire Wire Line
	5500 7600 5550 7600
Wire Wire Line
	5500 7650 5550 7650
Wire Wire Line
	5500 7800 5550 7800
Wire Wire Line
	5500 7850 5550 7850
Wire Wire Line
	5500 7900 5550 7900
Wire Wire Line
	5500 7950 5550 7950
Wire Wire Line
	5500 8000 5550 8000
Wire Wire Line
	5500 8050 5550 8050
Wire Wire Line
	5500 8100 5550 8100
Wire Wire Line
	5500 8150 5550 8150
Wire Wire Line
	5500 8200 5550 8200
Wire Wire Line
	5500 8250 5550 8250
Wire Wire Line
	5500 8300 5550 8300
Wire Wire Line
	5500 8350 5550 8350
Entry Wire Line
	5550 7000 5650 7100
Entry Wire Line
	5550 7050 5650 7150
Entry Wire Line
	5550 7100 5650 7200
Entry Wire Line
	5550 7150 5650 7250
Entry Wire Line
	5550 7200 5650 7300
Entry Wire Line
	5550 7250 5650 7350
Entry Wire Line
	5550 7300 5650 7400
Entry Wire Line
	5550 7350 5650 7450
Entry Wire Line
	5550 7400 5650 7500
Entry Wire Line
	5550 7450 5650 7550
Entry Wire Line
	5550 7500 5650 7600
Entry Wire Line
	5550 7550 5650 7650
Entry Wire Line
	5550 7550 5650 7650
Entry Wire Line
	5550 7600 5650 7700
Entry Wire Line
	5550 7650 5650 7750
Entry Wire Line
	5550 7800 5650 7900
Entry Wire Line
	5550 7850 5650 7950
Entry Wire Line
	5550 7850 5650 7950
Entry Wire Line
	5550 7900 5650 8000
Entry Wire Line
	5550 7950 5650 8050
Entry Wire Line
	5550 8000 5650 8100
Entry Wire Line
	5550 8050 5650 8150
Entry Wire Line
	5550 8100 5650 8200
Entry Wire Line
	5550 8150 5650 8250
Entry Wire Line
	5550 8200 5650 8300
Entry Wire Line
	5550 8250 5650 8350
Entry Wire Line
	5550 8300 5650 8400
Entry Wire Line
	5550 8350 5650 8450
Wire Wire Line
	3550 6600 3600 6600
Wire Wire Line
	3550 6650 3600 6650
Wire Wire Line
	3550 6700 3600 6700
Wire Wire Line
	3550 6750 3600 6750
Wire Wire Line
	3550 6800 3600 6800
Wire Wire Line
	3550 6850 3600 6850
Wire Wire Line
	3550 6900 3600 6900
Wire Wire Line
	3550 6950 3600 6950
Wire Wire Line
	3550 7000 3600 7000
Wire Wire Line
	3550 7050 3600 7050
Wire Wire Line
	3550 7100 3600 7100
Wire Wire Line
	3550 7150 3600 7150
Wire Wire Line
	3550 7200 3600 7200
Wire Wire Line
	3550 7250 3600 7250
Wire Wire Line
	3550 7400 3600 7400
Wire Wire Line
	3550 7450 3600 7450
Wire Wire Line
	3550 7500 3600 7500
Wire Wire Line
	3550 7550 3600 7550
Wire Wire Line
	3550 7600 3600 7600
Wire Wire Line
	3550 7650 3600 7650
Wire Wire Line
	3550 7700 3600 7700
Wire Wire Line
	3550 7750 3600 7750
Wire Wire Line
	3550 7800 3600 7800
Wire Wire Line
	3550 7850 3600 7850
Wire Wire Line
	3550 7900 3600 7900
Wire Wire Line
	3550 7950 3600 7950
Entry Wire Line
	3600 6600 3700 6700
Entry Wire Line
	3600 6650 3700 6750
Entry Wire Line
	3600 6700 3700 6800
Entry Wire Line
	3600 6750 3700 6850
Entry Wire Line
	3600 6800 3700 6900
Entry Wire Line
	3600 6850 3700 6950
Entry Wire Line
	3600 6900 3700 7000
Entry Wire Line
	3600 6950 3700 7050
Entry Wire Line
	3600 7000 3700 7100
Entry Wire Line
	3600 7050 3700 7150
Entry Wire Line
	3600 7100 3700 7200
Entry Wire Line
	3600 7150 3700 7250
Entry Wire Line
	3600 7150 3700 7250
Entry Wire Line
	3600 7200 3700 7300
Entry Wire Line
	3600 7250 3700 7350
Entry Wire Line
	3600 7400 3700 7500
Entry Wire Line
	3600 7450 3700 7550
Entry Wire Line
	3600 7450 3700 7550
Entry Wire Line
	3600 7500 3700 7600
Entry Wire Line
	3600 7550 3700 7650
Entry Wire Line
	3600 7600 3700 7700
Entry Wire Line
	3600 7650 3700 7750
Entry Wire Line
	3600 7700 3700 7800
Entry Wire Line
	3600 7750 3700 7850
Entry Wire Line
	3600 7800 3700 7900
Entry Wire Line
	3600 7850 3700 7950
Entry Wire Line
	3600 7900 3700 8000
Entry Wire Line
	3600 7950 3700 8050
Wire Wire Line
	3550 3850 3600 3850
Wire Wire Line
	3550 3900 3600 3900
Wire Wire Line
	3550 3950 3600 3950
Wire Wire Line
	3550 4000 3600 4000
Wire Wire Line
	3550 4050 3600 4050
Wire Wire Line
	3550 4100 3600 4100
Wire Wire Line
	3550 4150 3600 4150
Wire Wire Line
	3550 4200 3600 4200
Wire Wire Line
	3550 4250 3600 4250
Wire Wire Line
	3550 4300 3600 4300
Wire Wire Line
	3550 4350 3600 4350
Wire Wire Line
	3550 4400 3600 4400
Wire Wire Line
	3550 4450 3600 4450
Wire Wire Line
	3550 4500 3600 4500
Wire Wire Line
	3550 4650 3600 4650
Wire Wire Line
	3550 4700 3600 4700
Wire Wire Line
	3550 4750 3600 4750
Wire Wire Line
	3550 4800 3600 4800
Wire Wire Line
	3550 4850 3600 4850
Wire Wire Line
	3550 4900 3600 4900
Wire Wire Line
	3550 4950 3600 4950
Wire Wire Line
	3550 5000 3600 5000
Wire Wire Line
	3550 5050 3600 5050
Wire Wire Line
	3550 5100 3600 5100
Wire Wire Line
	3550 5150 3600 5150
Wire Wire Line
	3550 5200 3600 5200
Entry Wire Line
	3600 3850 3700 3750
Entry Wire Line
	3600 3900 3700 3800
Entry Wire Line
	3600 3950 3700 3850
Entry Wire Line
	3600 4000 3700 3900
Entry Wire Line
	3600 5200 3700 5100
Entry Wire Line
	3600 5150 3700 5050
Entry Wire Line
	3600 5100 3700 5000
Entry Wire Line
	3600 5050 3700 4950
Entry Wire Line
	3600 5000 3700 4900
Entry Wire Line
	3600 4950 3700 4850
Entry Wire Line
	3600 4900 3700 4800
Entry Wire Line
	3600 4850 3700 4750
Entry Wire Line
	3600 4850 3700 4750
Entry Wire Line
	3600 4800 3700 4700
Entry Wire Line
	3600 4750 3700 4650
Entry Wire Line
	3600 4700 3700 4600
Entry Wire Line
	3600 4650 3700 4550
Entry Wire Line
	3600 4650 3700 4550
Entry Wire Line
	3600 4500 3700 4400
Entry Wire Line
	3600 4450 3700 4350
Entry Wire Line
	3600 4400 3700 4300
Entry Wire Line
	3600 4350 3700 4250
Entry Wire Line
	3600 4300 3700 4200
Entry Wire Line
	3600 4250 3700 4150
Entry Wire Line
	3600 4200 3700 4100
Entry Wire Line
	3600 4150 3700 4050
Entry Wire Line
	3600 4100 3700 4000
Entry Wire Line
	3600 4050 3700 3950
Wire Wire Line
	5500 3450 5550 3450
Wire Wire Line
	5500 3500 5550 3500
Wire Wire Line
	5500 3550 5550 3550
Wire Wire Line
	5500 3600 5550 3600
Wire Wire Line
	5500 3650 5550 3650
Wire Wire Line
	5500 3700 5550 3700
Wire Wire Line
	5500 3750 5550 3750
Wire Wire Line
	5500 3800 5550 3800
Wire Wire Line
	5500 3850 5550 3850
Wire Wire Line
	5500 3900 5550 3900
Wire Wire Line
	5500 3950 5550 3950
Wire Wire Line
	5500 4000 5550 4000
Wire Wire Line
	5500 4050 5550 4050
Wire Wire Line
	5500 4100 5550 4100
Wire Wire Line
	5500 4250 5550 4250
Wire Wire Line
	5500 4300 5550 4300
Wire Wire Line
	5500 4350 5550 4350
Wire Wire Line
	5500 4400 5550 4400
Wire Wire Line
	5500 4450 5550 4450
Wire Wire Line
	5500 4500 5550 4500
Wire Wire Line
	5500 4550 5550 4550
Wire Wire Line
	5500 4600 5550 4600
Wire Wire Line
	5500 4650 5550 4650
Wire Wire Line
	5500 4700 5550 4700
Wire Wire Line
	5500 4750 5550 4750
Wire Wire Line
	5500 4800 5550 4800
Entry Wire Line
	5550 3450 5650 3350
Entry Wire Line
	5550 3500 5650 3400
Entry Wire Line
	5550 3550 5650 3450
Entry Wire Line
	5550 3600 5650 3500
Entry Wire Line
	5550 4800 5650 4700
Entry Wire Line
	5550 4750 5650 4650
Entry Wire Line
	5550 4700 5650 4600
Entry Wire Line
	5550 4650 5650 4550
Entry Wire Line
	5550 4600 5650 4500
Entry Wire Line
	5550 4550 5650 4450
Entry Wire Line
	5550 4500 5650 4400
Entry Wire Line
	5550 4450 5650 4350
Entry Wire Line
	5550 4450 5650 4350
Entry Wire Line
	5550 4400 5650 4300
Entry Wire Line
	5550 4350 5650 4250
Entry Wire Line
	5550 4300 5650 4200
Entry Wire Line
	5550 4250 5650 4150
Entry Wire Line
	5550 4250 5650 4150
Entry Wire Line
	5550 4100 5650 4000
Entry Wire Line
	5550 4050 5650 3950
Entry Wire Line
	5550 4000 5650 3900
Entry Wire Line
	5550 3950 5650 3850
Entry Wire Line
	5550 3900 5650 3800
Entry Wire Line
	5550 3850 5650 3750
Entry Wire Line
	5550 3800 5650 3700
Entry Wire Line
	5550 3750 5650 3650
Entry Wire Line
	5550 3700 5650 3600
Entry Wire Line
	5550 3650 5650 3550
Wire Bus Line
	5650 9750 6550 9750
Wire Bus Line
	3700 9850 6550 9850
Wire Bus Line
	3700 2950 1550 2950
Wire Bus Line
	1550 2950 1550 9950
Wire Bus Line
	1550 9950 6550 9950
Wire Bus Line
	6550 10050 1450 10050
Wire Bus Line
	1450 10050 1450 2850
Wire Bus Line
	1450 2850 5650 2850
Wire Wire Line
	11600 6000 12450 6000
Connection ~ 12450 6000
Wire Wire Line
	12450 6000 13000 6000
Wire Wire Line
	11700 6450 12350 6450
Connection ~ 12350 6450
Wire Wire Line
	12350 3500 13000 3500
Wire Wire Line
	12450 3600 13000 3600
Wire Wire Line
	11600 3300 13000 3300
Wire Wire Line
	11700 3400 13000 3400
$Comp
L Relay:DIPxx-1Axx-11x K5
U 1 1 5F80B7CF
P 8800 3050
F 0 "K5" V 8233 3050 50  0000 C CNN
F 1 "SPST-NO (Precharge Control)" V 8324 3050 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 9150 3000 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 8800 3050 50  0001 C CNN
	1    8800 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2050 8000 4600
Wire Wire Line
	9000 3550 8400 3550
Wire Wire Line
	8400 3550 8400 3250
Wire Wire Line
	8400 3250 8500 3250
Wire Wire Line
	9100 3250 9400 3250
Wire Wire Line
	9550 3250 9650 3250
Wire Wire Line
	9400 3250 9400 3600
Wire Wire Line
	9550 2850 9650 2850
Wire Wire Line
	10250 2850 10350 2850
Wire Wire Line
	5500 6850 6900 6850
Wire Wire Line
	9050 1850 9050 2050
Wire Wire Line
	8950 1850 8950 2050
Wire Wire Line
	8000 2050 8950 2050
Wire Wire Line
	8950 950  8950 1350
Text HLabel 8650 1100 0    50   Input ~ 0
MotorController_Precharge-
Text HLabel 8650 1200 0    50   Input ~ 0
MotorController_Precharge+
Wire Wire Line
	8650 1100 8850 1100
Wire Wire Line
	8850 1100 8850 1350
Wire Wire Line
	8650 1200 8750 1200
Wire Wire Line
	8750 1200 8750 1350
Wire Wire Line
	8750 2400 8400 2400
Wire Wire Line
	8400 2400 8400 2850
Wire Wire Line
	8400 2850 8500 2850
Wire Wire Line
	9100 2850 9150 2850
Wire Wire Line
	8900 7700 10600 7700
Wire Wire Line
	9750 6600 10600 6600
Connection ~ 10600 6600
Wire Wire Line
	10600 6600 10600 7700
Wire Wire Line
	9400 3600 10350 3600
Wire Wire Line
	9050 2050 10600 2050
Wire Wire Line
	8850 2400 9150 2400
Wire Wire Line
	9150 2400 9150 2850
Wire Wire Line
	9000 4600 9000 3550
Connection ~ 10600 3600
Wire Wire Line
	10600 3600 10600 6600
Wire Wire Line
	9550 5600 9550 3250
Wire Wire Line
	8900 5600 9550 5600
Wire Wire Line
	8850 1850 8850 2400
Wire Wire Line
	8750 1850 8750 2400
Wire Wire Line
	9250 1850 9250 2200
Wire Wire Line
	9250 2200 10350 2200
Wire Wire Line
	10350 2200 10350 2850
Wire Wire Line
	9150 2300 9550 2300
Wire Wire Line
	9150 1850 9150 2300
Wire Wire Line
	9550 2300 9550 2850
Wire Notes Line
	8150 2150 10450 2150
Wire Notes Line
	10450 3800 8150 3800
Wire Wire Line
	10600 2050 10600 3600
Wire Wire Line
	10250 3250 10350 3250
Wire Wire Line
	10350 3250 10350 3600
Connection ~ 10350 3600
Wire Wire Line
	10350 3600 10600 3600
Wire Notes Line
	10450 3800 10450 2150
Wire Notes Line
	8150 2150 8150 3800
Text Notes 8200 3750 0    50   ~ 0
MC Control Relay PCB
$Comp
L Relay:DIPxx-1Axx-11x K6
U 1 1 5F814F76
P 9950 3050
F 0 "K6" V 9383 3050 50  0000 C CNN
F 1 "SPST-NO (AIR Control)" V 9474 3050 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 10300 3000 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 9950 3050 50  0001 C CNN
	1    9950 3050
	0    1    1    0   
$EndComp
Text HLabel 4100 5850 0    50   Input ~ 0
HVD-
Text HLabel 4100 6000 0    50   Input ~ 0
HVD+
Text HLabel 5350 5400 0    50   Input ~ 0
SMD_2-
Text HLabel 4350 5400 2    50   Input ~ 0
SMD_2+
Text HLabel 4350 6450 2    50   Input ~ 0
SMD_1-
Text HLabel 5350 6450 0    50   Input ~ 0
SMD_1+
Wire Wire Line
	5500 5100 5550 5100
Wire Wire Line
	5550 6450 5350 6450
Wire Wire Line
	5550 6450 5550 6750
Wire Wire Line
	3550 6450 4350 6450
Wire Wire Line
	3550 5400 4350 5400
Wire Wire Line
	5350 5400 5550 5400
Wire Wire Line
	5550 5100 5550 5400
Wire Wire Line
	4100 5500 4100 5850
Wire Wire Line
	4100 6000 4100 6350
Wire Wire Line
	6300 5000 7000 5000
Connection ~ 7450 5000
Wire Wire Line
	7450 5000 8300 5000
Wire Wire Line
	7450 5000 7450 6000
Wire Wire Line
	7450 6850 7450 8100
Connection ~ 11600 6000
Connection ~ 11700 6450
Wire Wire Line
	11700 6450 11700 8100
Wire Wire Line
	9050 850  9050 1350
Wire Wire Line
	8650 950  8950 950 
Wire Wire Line
	9100 8100 11700 8100
Wire Wire Line
	8900 6000 11100 6000
Wire Wire Line
	11100 5000 11100 5450
Wire Wire Line
	8900 5000 11100 5000
Wire Wire Line
	11100 5750 11100 6000
Connection ~ 11100 6000
Wire Wire Line
	11100 6000 11600 6000
Wire Wire Line
	11100 6250 11100 6000
Wire Wire Line
	11100 6550 11100 7000
Wire Wire Line
	9750 7000 11100 7000
$Comp
L NER:2-Pos_Generic J6
U 1 1 5F84E6B9
P 14200 5900
F 0 "J6" H 14200 6025 50  0000 C CNN
F 1 "Main TS Connector" H 14200 5934 50  0000 C CNN
F 2 "" H 14200 5900 50  0001 C CNN
F 3 "" H 14200 5900 50  0001 C CNN
	1    14200 5900
	1    0    0    -1  
$EndComp
$Comp
L NER:4-Pos_Generic J5
U 1 1 5F95323D
P 13250 3200
F 0 "J5" H 13250 3325 50  0000 C CNN
F 1 "TSMP/IMD Connector" H 13250 3234 50  0000 C CNN
F 2 "" H 13250 3200 50  0001 C CNN
F 3 "" H 13250 3200 50  0001 C CNN
	1    13250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 3300 13600 3300
Wire Wire Line
	13500 3400 13600 3400
Wire Wire Line
	13500 3500 13600 3500
Wire Wire Line
	13500 3600 13600 3600
$Comp
L NER:6-Pos_Generic J4
U 1 1 5FAB592D
P 9350 1600
F 0 "J4" V 9304 1588 50  0000 L CNN
F 1 "Shutdown/MC Control Connector" V 9395 1588 50  0000 L CNN
F 2 "" H 9350 1600 50  0001 C CNN
F 3 "" H 9350 1600 50  0001 C CNN
	1    9350 1600
	0    1    1    0   
$EndComp
$Comp
L NER:OrionCurrentSens U5
U 1 1 5F8DBC0B
P 13400 6150
F 0 "U5" H 13400 6173 50  0000 C CNN
F 1 "OrionCurrentSens" H 13400 6264 50  0000 C CNN
F 2 "" H 13400 6150 50  0001 C CNN
F 3 "" H 13400 6150 50  0001 C CNN
	1    13400 6150
	1    0    0    1   
$EndComp
Wire Wire Line
	11700 5750 11700 6450
Wire Wire Line
	12350 5750 12350 6450
Wire Wire Line
	13900 6450 13900 6100
Wire Wire Line
	13900 6100 13950 6100
Wire Wire Line
	12350 6450 13900 6450
Wire Wire Line
	13800 6000 13950 6000
Wire Wire Line
	13650 5500 13650 5450
Wire Wire Line
	13500 5500 13500 5450
Wire Wire Line
	13350 5500 13350 5450
Wire Wire Line
	13200 5500 13200 5450
Entry Wire Line
	13200 5450 13300 5350
Entry Wire Line
	13350 5450 13450 5350
Entry Wire Line
	13500 5450 13600 5350
Entry Wire Line
	13650 5450 13750 5350
Wire Bus Line
	15300 8950 6100 8950
Wire Bus Line
	15300 5350 15300 8950
Text Notes 14550 8900 2    50   ~ 0
Current sense line will be fed from the accumulator to the BMS via the thermistor connectors, and then split back out within the BMS container. May also be done via a separate connector. TBD
Wire Bus Line
	1650 9600 6550 9600
Wire Bus Line
	6100 8950 6100 9150
Wire Bus Line
	6100 9150 6550 9150
Text HLabel 6550 9150 2    50   Output ~ 0
Current_Sensor
$Sheet
S 2500 1450 1150 150 
U 604010F7
F0 "SegmentPCB 1" 50
F1 "SegmentPCB.sch" 50
$EndSheet
$Sheet
S 3900 1450 1150 150 
U 604B77CB
F0 "Segement PCB 2" 50
F1 "SegmentPCB.sch" 50
$EndSheet
$Sheet
S 2500 1950 1150 150 
U 604E5331
F0 "Segment PCB 3" 50
F1 "SegmentPCB.sch" 50
$EndSheet
$Sheet
S 3900 1950 1150 150 
U 604E5333
F0 "Segment PCB 4" 50
F1 "SegmentPCB.sch" 50
$EndSheet
Wire Wire Line
	15350 4250 15450 4250
Wire Wire Line
	15350 4150 15450 4150
$Comp
L NER:2-Pos_Generic J7
U 1 1 5F95267C
P 15100 4050
F 0 "J7" H 15100 4175 50  0000 C CNN
F 1 "TSAL Connector" H 15100 4084 50  0000 C CNN
F 2 "" H 15100 4050 50  0001 C CNN
F 3 "" H 15100 4050 50  0001 C CNN
	1    15100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 4250 14850 4250
Wire Wire Line
	13900 4150 14850 4150
$Sheet
S 13200 4050 700  550 
U 5FAAF22F
F0 "TSAL_Circuit" 50
F1 "TSAL_Circuit.sch" 50
F2 "TS+" I L 13200 4150 50 
F3 "TS-" I L 13200 4250 50 
F4 "TSAL+" I R 13900 4150 50 
F5 "TSAL-" I R 13900 4250 50 
F6 "VBATT+" I L 13200 4450 50 
F7 "VBATT-" I L 13200 4550 50 
$EndSheet
Text HLabel 15450 4250 2    50   Output ~ 0
TSAL-
Text HLabel 15450 4150 2    50   Output ~ 0
TSAL+
Text Label 14250 4250 0    50   ~ 0
22_20
Text Label 14250 4150 0    50   ~ 0
21_20
Wire Wire Line
	11600 3300 11600 5450
Wire Wire Line
	11700 3400 11700 5450
Wire Wire Line
	12450 3600 12450 4150
Wire Wire Line
	12350 3500 12350 4250
Wire Wire Line
	12450 4150 13200 4150
Connection ~ 12450 4150
Wire Wire Line
	12450 4150 12450 5450
Wire Wire Line
	12350 4250 13200 4250
Connection ~ 12350 4250
Wire Wire Line
	12350 4250 12350 5450
Wire Wire Line
	13200 4450 12750 4450
Wire Wire Line
	12750 4450 12750 8400
Wire Wire Line
	12750 8400 7000 8400
Wire Wire Line
	13200 4550 12850 4550
Wire Wire Line
	12850 4550 12850 8500
Wire Wire Line
	12850 8500 6900 8500
$Comp
L Device:Fuse F9
U 1 1 5FC950C3
P 7000 5400
F 0 "F9" H 7060 5446 50  0000 L CNN
F 1 "Fuse" H 7060 5355 50  0000 L CNN
F 2 "" V 6930 5400 50  0001 C CNN
F 3 "~" H 7000 5400 50  0001 C CNN
	1    7000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F8
U 1 1 5FC95B82
P 6900 7250
F 0 "F8" H 6841 7204 50  0000 R CNN
F 1 "Fuse" H 6841 7295 50  0000 R CNN
F 2 "" V 6830 7250 50  0001 C CNN
F 3 "~" H 6900 7250 50  0001 C CNN
	1    6900 7250
	1    0    0    1   
$EndComp
Wire Wire Line
	6900 7400 6900 8500
Wire Wire Line
	6900 7100 6900 6850
Connection ~ 6900 6850
Wire Wire Line
	6900 6850 7450 6850
Wire Wire Line
	7000 5550 7000 8400
Wire Wire Line
	7000 5250 7000 5000
Connection ~ 7000 5000
Wire Wire Line
	7000 5000 7450 5000
Wire Bus Line
	13300 5350 15300 5350
Wire Bus Line
	1850 3500 1850 5350
Wire Bus Line
	3800 3050 3800 4950
Wire Bus Line
	1850 6250 1850 9400
Wire Bus Line
	3800 6650 3800 9300
Wire Bus Line
	5650 7100 5650 9750
Wire Bus Line
	3700 6700 3700 9850
Wire Bus Line
	3700 2950 3700 5100
Wire Bus Line
	5650 2850 5650 4700
$EndSCHEMATC
