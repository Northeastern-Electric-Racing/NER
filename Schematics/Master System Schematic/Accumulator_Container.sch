EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr C 22000 17000
encoding utf-8
Sheet 3 23
Title "Accumulator Container"
Date "2020-11-12"
Rev "6"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Relay:MSxx-1Bxx-75 K11
U 1 1 5E637554
P 14500 9500
F 0 "K11" V 13933 9500 50  0000 C CNN
F 1 "SPST-NC (Discharge)" V 14024 9500 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 14850 9450 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 14500 9500 50  0001 C CNN
	1    14500 9500
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F5
U 1 1 5E640862
P 9000 5050
F 0 "F5" V 8803 5050 50  0000 C CNN
F 1 "Fuse" V 8894 5050 50  0000 C CNN
F 2 "" V 8930 5050 50  0001 C CNN
F 3 "~" H 9000 5050 50  0001 C CNN
	1    9000 5050
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K8
U 1 1 5EBE5BCF
P 13450 6750
F 0 "K8" V 12883 6750 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 12974 6750 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13800 6700 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13450 6750 50  0001 C CNN
	1    13450 6750
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K7
U 1 1 5EBEB71B
P 13450 5750
F 0 "K7" V 12883 5750 50  0000 C CNN
F 1 "SPST-NO (Precharge)" V 12974 5750 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13800 5700 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13450 5750 50  0001 C CNN
	1    13450 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	11850 6950 13150 6950
Wire Wire Line
	13150 5550 12850 5550
Wire Wire Line
	12850 5550 12850 6550
Wire Wire Line
	13150 6550 12850 6550
Connection ~ 12850 6550
Wire Wire Line
	14200 9300 12850 9300
Wire Wire Line
	13750 5550 13850 5550
$Comp
L Device:R R3
U 1 1 5F158D54
P 15950 8300
F 0 "R3" H 15750 8350 50  0000 L CNN
F 1 "3.3k" H 15700 8250 50  0000 L CNN
F 2 "" V 15880 8300 50  0001 C CNN
F 3 "~" H 15950 8300 50  0001 C CNN
	1    15950 8300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F159E72
P 15950 6550
F 0 "R2" H 15750 6600 50  0000 L CNN
F 1 "600" H 15700 6500 50  0000 L CNN
F 2 "" V 15880 6550 50  0001 C CNN
F 3 "~" H 15950 6550 50  0001 C CNN
	1    15950 6550
	1    0    0    -1  
$EndComp
Text Label 5650 13850 0    50   ~ 0
1_2
Text Label 5650 13750 0    50   ~ 0
2_2
Text Label 5650 13050 0    50   ~ 0
3_2
Text Label 5650 10850 0    50   ~ 0
4_2
Text Label 5650 10000 0    50   ~ 0
5_2
Text Label 5650 7100 0    50   ~ 0
7_2
Text Label 6450 5050 0    50   ~ 0
8_2
Text Label 9250 5050 0    50   ~ 0
9_2
Text Label 14200 6950 0    50   ~ 0
10_2
Text Label 14900 5950 0    50   ~ 0
11_2
Text Label 12850 4350 0    50   ~ 0
25_20
Text Label 15450 4400 0    50   ~ 0
26_20
Text Label 15000 9700 0    50   ~ 0
13_2
Text Label 13850 4250 2    50   ~ 0
27_20
Text Label 14400 6350 0    50   ~ 0
28_20
$Comp
L Device:R R4
U 1 1 5F2AF3BD
P 16450 6550
F 0 "R4" H 16520 6596 50  0000 L CNN
F 1 "10k" H 16520 6505 50  0000 L CNN
F 2 "" V 16380 6550 50  0001 C CNN
F 3 "~" H 16450 6550 50  0001 C CNN
	1    16450 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14750 1200 14400 1200
Wire Wire Line
	14400 1200 14400 1350
$Comp
L Device:R R5
U 1 1 5F39A796
P 16550 6550
F 0 "R5" H 16620 6596 50  0000 L CNN
F 1 "10k" H 16620 6505 50  0000 L CNN
F 2 "" V 16480 6550 50  0001 C CNN
F 3 "~" H 16550 6550 50  0001 C CNN
	1    16550 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F9
U 1 1 5F14BDC4
P 17300 6550
F 0 "F9" H 17241 6504 50  0000 R CNN
F 1 "Fuse" H 17241 6595 50  0000 R CNN
F 2 "" V 17230 6550 50  0001 C CNN
F 3 "~" H 17300 6550 50  0001 C CNN
	1    17300 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	17300 6700 17300 6950
Text Label 17100 4250 0    50   ~ 0
29_20
Text Label 17200 4350 0    50   ~ 0
30_20
Text Label 17400 4550 0    50   ~ 0
31_20
Text Label 17550 4450 2    50   ~ 0
32_20
Text Label 5650 7950 0    50   ~ 0
6_2
Text HLabel 14750 1200 2    50   Input ~ 0
MotorController_AIR_Control+
Text HLabel 13800 1000 0    50   Input ~ 0
Shutdown+
Text HLabel 13800 900  0    50   Input ~ 0
Shutdown-
Wire Wire Line
	14200 900  13800 900 
Text HLabel 19650 6950 2    50   Output ~ 0
TS+
Text HLabel 19650 7050 2    50   Output ~ 0
TS-
Text HLabel 18450 4450 2    50   Output ~ 0
IMD_HV_SENSE-
Text HLabel 18450 4550 2    50   Output ~ 0
IMD_HV_SENSE+
Text HLabel 18450 4350 2    50   Output ~ 0
TSMP-
Text HLabel 18450 4250 2    50   Output ~ 0
TSMP+
Wire Wire Line
	16450 6950 16450 6700
Wire Wire Line
	19650 6950 19300 6950
Wire Wire Line
	19300 7050 19650 7050
Text HLabel 19650 14300 2    50   Output ~ 0
Segment1_VoltageTaps
Text HLabel 19650 14200 2    50   Output ~ 0
Segment2_VoltageTaps
Text HLabel 19650 14100 2    50   Output ~ 0
Segment3_VoltageTaps
Text HLabel 19650 14000 2    50   Output ~ 0
Segment4_VoltageTaps
$Comp
L Device:Fuse F8
U 1 1 5F6433FB
P 17200 6550
F 0 "F8" H 17141 6504 50  0000 R CNN
F 1 "Fuse" H 17141 6595 50  0000 R CNN
F 2 "" V 17130 6550 50  0001 C CNN
F 3 "~" H 17200 6550 50  0001 C CNN
	1    17200 6550
	1    0    0    1   
$EndComp
Wire Wire Line
	16450 6950 17300 6950
Connection ~ 17300 6950
Wire Wire Line
	16550 7400 17200 7400
Connection ~ 17200 7400
Wire Wire Line
	17200 4450 17850 4450
Wire Wire Line
	17300 4550 17850 4550
Wire Wire Line
	16450 4250 17850 4250
Wire Wire Line
	16550 4350 17850 4350
$Comp
L Relay:DIPxx-1Axx-11x K10
U 1 1 5F80B7CF
P 13650 3350
F 0 "K10" V 13083 3350 50  0000 C CNN
F 1 "SPST-NO (Precharge Control)" V 13174 3350 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 14000 3300 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13650 3350 50  0001 C CNN
	1    13650 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	13850 3850 13250 3850
Wire Wire Line
	13250 3850 13250 3550
Wire Wire Line
	13250 3550 13350 3550
Wire Wire Line
	13950 3550 14250 3550
Wire Wire Line
	14400 3550 14500 3550
Wire Wire Line
	14250 3550 14250 3900
Wire Wire Line
	14400 3150 14500 3150
Wire Wire Line
	15100 3150 15200 3150
Wire Wire Line
	14800 9300 15450 9300
Wire Wire Line
	14250 3900 15200 3900
Wire Wire Line
	13750 6550 14400 6550
Wire Notes Line
	13000 2450 15300 2450
Wire Notes Line
	15300 4100 13000 4100
Wire Wire Line
	15100 3550 15200 3550
Wire Wire Line
	15200 3550 15200 3900
Connection ~ 15200 3900
Wire Wire Line
	15200 3900 15450 3900
Wire Notes Line
	15300 4100 15300 2450
Wire Notes Line
	13000 2450 13000 4100
Text Notes 13050 4050 0    50   ~ 0
MC Control Relay PCB
$Comp
L Relay:DIPxx-1Axx-11x K12
U 1 1 5F814F76
P 14800 3350
F 0 "K12" V 14233 3350 50  0000 C CNN
F 1 "SPST-NO (AIR Control)" V 14324 3350 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 15150 3300 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 14800 3350 50  0001 C CNN
	1    14800 3350
	0    1    1    0   
$EndComp
Text HLabel 6100 10000 2    50   Input ~ 0
HVD-
Text HLabel 6100 10850 2    50   Input ~ 0
HVD+
Text HLabel 6100 7100 2    50   Input ~ 0
SMD_2-
Text HLabel 6100 7950 2    50   Input ~ 0
SMD_2+
Text HLabel 6100 13050 2    50   Input ~ 0
SMD_1-
Text HLabel 6100 13750 2    50   Input ~ 0
SMD_1+
Connection ~ 11850 5950
Wire Wire Line
	11850 5950 13150 5950
Wire Wire Line
	11850 5950 11850 6950
Connection ~ 16450 6950
Wire Wire Line
	13800 1000 14100 1000
Wire Wire Line
	13750 6950 15950 6950
Wire Wire Line
	15950 5950 15950 6400
Wire Wire Line
	15950 6700 15950 6950
Connection ~ 15950 6950
Wire Wire Line
	15950 6950 16450 6950
Wire Wire Line
	15950 8150 15950 6950
Wire Wire Line
	14800 9700 15950 9700
$Comp
L NER:2-Pos_Generic J10
U 1 1 5F84E6B9
P 19050 6850
F 0 "J10" H 19050 6975 50  0000 C CNN
F 1 "Main TS Connector" H 19050 6884 50  0000 C CNN
F 2 "" H 19050 6850 50  0001 C CNN
F 3 "" H 19050 6850 50  0001 C CNN
	1    19050 6850
	1    0    0    -1  
$EndComp
$Comp
L NER:4-Pos_Generic J9
U 1 1 5F95323D
P 18100 4150
F 0 "J9" H 18100 4275 50  0000 C CNN
F 1 "TSMP/IMD Connector" H 18100 4184 50  0000 C CNN
F 2 "" H 18100 4150 50  0001 C CNN
F 3 "" H 18100 4150 50  0001 C CNN
	1    18100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	18350 4250 18450 4250
Wire Wire Line
	18350 4350 18450 4350
Wire Wire Line
	18350 4450 18450 4450
Wire Wire Line
	18350 4550 18450 4550
$Comp
L NER:6-Pos_Generic J8
U 1 1 5FAB592D
P 14500 1600
F 0 "J8" V 14454 1588 50  0000 L CNN
F 1 "Shutdown/MC Control Connector" V 14545 1588 50  0000 L CNN
F 2 "" H 14500 1600 50  0001 C CNN
F 3 "" H 14500 1600 50  0001 C CNN
	1    14500 1600
	0    1    1    0   
$EndComp
$Comp
L NER:OrionCurrentSens U14
U 1 1 5F8DBC0B
P 18250 7100
F 0 "U14" H 18250 7123 50  0000 C CNN
F 1 "OrionCurrentSens" H 18250 7214 50  0000 C CNN
F 2 "" H 18250 7100 50  0001 C CNN
F 3 "" H 18250 7100 50  0001 C CNN
	1    18250 7100
	1    0    0    1   
$EndComp
Wire Wire Line
	16550 6700 16550 7400
Wire Wire Line
	17200 6700 17200 7400
Wire Wire Line
	18750 7400 18750 7050
Wire Wire Line
	18750 7050 18800 7050
Wire Wire Line
	18650 6950 18800 6950
Wire Wire Line
	18500 6450 18500 6400
Wire Wire Line
	18350 6450 18350 6400
Wire Wire Line
	18200 6450 18200 6400
Wire Wire Line
	18050 6450 18050 6400
Entry Wire Line
	18050 6400 18150 6300
Entry Wire Line
	18200 6400 18300 6300
Entry Wire Line
	18350 6400 18450 6300
Entry Wire Line
	18500 6400 18600 6300
Text HLabel 19650 13750 2    50   Output ~ 0
Current_Sensor
Wire Wire Line
	20200 5200 20300 5200
Wire Wire Line
	20200 5100 20300 5100
$Comp
L NER:2-Pos_Generic J11
U 1 1 5F95267C
P 19950 5000
F 0 "J11" H 19950 5125 50  0000 C CNN
F 1 "TSAL Connector" H 19950 5034 50  0000 C CNN
F 2 "" H 19950 5000 50  0001 C CNN
F 3 "" H 19950 5000 50  0001 C CNN
	1    19950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	18750 5200 19700 5200
Wire Wire Line
	18750 5100 19700 5100
$Sheet
S 18050 5000 700  550 
U 5FAAF22F
F0 "TSAL_Circuit" 50
F1 "TSAL_Circuit.sch" 50
F2 "TS+" I L 18050 5100 50 
F3 "TS-" I L 18050 5200 50 
F4 "TSAL+" I R 18750 5100 50 
F5 "TSAL-" I R 18750 5200 50 
F6 "VBATT+" I L 18050 5400 50 
F7 "VBATT-" I L 18050 5500 50 
$EndSheet
Text HLabel 20300 5200 2    50   Output ~ 0
TSAL-
Text HLabel 20300 5100 2    50   Output ~ 0
TSAL+
Text Label 19100 5200 0    50   ~ 0
22_20
Text Label 19100 5100 0    50   ~ 0
21_20
Wire Wire Line
	16450 4250 16450 6400
Wire Wire Line
	16550 4350 16550 6400
Wire Wire Line
	17300 4550 17300 5100
Wire Wire Line
	17200 4450 17200 5200
Wire Wire Line
	17300 5100 18050 5100
Connection ~ 17300 5100
Wire Wire Line
	17300 5100 17300 6400
Wire Wire Line
	17200 5200 18050 5200
Connection ~ 17200 5200
Wire Wire Line
	17200 5200 17200 6400
Wire Wire Line
	18050 5400 17600 5400
Wire Wire Line
	18050 5500 17700 5500
$Comp
L Device:Fuse F7
U 1 1 5FC950C3
P 11850 7450
F 0 "F7" H 11910 7496 50  0000 L CNN
F 1 "Fuse" H 11910 7405 50  0000 L CNN
F 2 "" V 11780 7450 50  0001 C CNN
F 3 "~" H 11850 7450 50  0001 C CNN
	1    11850 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 7300 11850 6950
$Sheet
S 6600 5450 1450 1050
U 602C1575
F0 "Voltage Tap PCB 4" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 6600 5500 30 
F3 "ParallelCells_Row1" I L 6600 5550 30 
F4 "ParallelCells_Row2" I L 6600 5600 30 
F5 "ParallelCells_Row3" I L 6600 5650 30 
F6 "ParallelCells_Row4" I L 6600 5700 30 
F7 "ParallelCells_Row5" I L 6600 5750 30 
F8 "ParallelCells_Row6" I L 6600 5800 30 
F9 "ParallelCells_Row7" I L 6600 5850 30 
F10 "ParallelCells_Row8" I L 6600 5900 30 
F11 "ParallelCells_Row9" I L 6600 5950 30 
F12 "Shutdown+" I R 8050 5600 50 
F13 "Shutdown-" I R 8050 5500 50 
F14 "ParallelCells_Row16" I L 6600 6300 30 
F15 "ParallelCells_Row17" I L 6600 6350 30 
F16 "ParallelCells_Row15" I L 6600 6250 30 
F17 "ParallelCells_Row14" I L 6600 6200 30 
F18 "ParallelCells_Row13" I L 6600 6150 30 
F19 "ParallelCells_Row12" I L 6600 6100 30 
F20 "ParallelCells_Row11" I L 6600 6050 30 
F21 "ParallelCells_Row10" I L 6600 6000 30 
F22 "ParallelCells_Row18" I L 6600 6400 30 
F23 "VoltageTaps(1-12)" O R 8050 6300 50 
F24 "VoltageTaps(13-24)" O R 8050 6400 50 
$EndSheet
$Sheet
S 6600 8350 1450 1050
U 605A4F7F
F0 "Voltage Tap PCB 3" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 6600 8400 30 
F3 "ParallelCells_Row1" I L 6600 8450 30 
F4 "ParallelCells_Row2" I L 6600 8500 30 
F5 "ParallelCells_Row3" I L 6600 8550 30 
F6 "ParallelCells_Row4" I L 6600 8600 30 
F7 "ParallelCells_Row5" I L 6600 8650 30 
F8 "ParallelCells_Row6" I L 6600 8700 30 
F9 "ParallelCells_Row7" I L 6600 8750 30 
F10 "ParallelCells_Row8" I L 6600 8800 30 
F11 "ParallelCells_Row9" I L 6600 8850 30 
F12 "Shutdown+" I R 8050 8500 50 
F13 "Shutdown-" I R 8050 8400 50 
F14 "ParallelCells_Row16" I L 6600 9200 30 
F15 "ParallelCells_Row17" I L 6600 9250 30 
F16 "ParallelCells_Row15" I L 6600 9150 30 
F17 "ParallelCells_Row14" I L 6600 9100 30 
F18 "ParallelCells_Row13" I L 6600 9050 30 
F19 "ParallelCells_Row12" I L 6600 9000 30 
F20 "ParallelCells_Row11" I L 6600 8950 30 
F21 "ParallelCells_Row10" I L 6600 8900 30 
F22 "ParallelCells_Row18" I L 6600 9300 30 
F23 "VoltageTaps(1-12)" O R 8050 9200 50 
F24 "VoltageTaps(13-24)" O R 8050 9300 50 
$EndSheet
$Sheet
S 6600 11250 1450 1050
U 605AC384
F0 "Voltage Tap PCB 2" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 6600 11300 30 
F3 "ParallelCells_Row1" I L 6600 11350 30 
F4 "ParallelCells_Row2" I L 6600 11400 30 
F5 "ParallelCells_Row3" I L 6600 11450 30 
F6 "ParallelCells_Row4" I L 6600 11500 30 
F7 "ParallelCells_Row5" I L 6600 11550 30 
F8 "ParallelCells_Row6" I L 6600 11600 30 
F9 "ParallelCells_Row7" I L 6600 11650 30 
F10 "ParallelCells_Row8" I L 6600 11700 30 
F11 "ParallelCells_Row9" I L 6600 11750 30 
F12 "Shutdown+" I R 8050 11400 50 
F13 "Shutdown-" I R 8050 11300 50 
F14 "ParallelCells_Row16" I L 6600 12100 30 
F15 "ParallelCells_Row17" I L 6600 12150 30 
F16 "ParallelCells_Row15" I L 6600 12050 30 
F17 "ParallelCells_Row14" I L 6600 12000 30 
F18 "ParallelCells_Row13" I L 6600 11950 30 
F19 "ParallelCells_Row12" I L 6600 11900 30 
F20 "ParallelCells_Row11" I L 6600 11850 30 
F21 "ParallelCells_Row10" I L 6600 11800 30 
F22 "ParallelCells_Row18" I L 6600 12200 30 
F23 "VoltageTaps(1-12)" O R 8050 12100 50 
F24 "VoltageTaps(13-24)" O R 8050 12200 50 
$EndSheet
$Sheet
S 6600 14150 1450 1050
U 605B3BFB
F0 "Voltage Tap PCB 1" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 6600 14200 30 
F3 "ParallelCells_Row1" I L 6600 14250 30 
F4 "ParallelCells_Row2" I L 6600 14300 30 
F5 "ParallelCells_Row3" I L 6600 14350 30 
F6 "ParallelCells_Row4" I L 6600 14400 30 
F7 "ParallelCells_Row5" I L 6600 14450 30 
F8 "ParallelCells_Row6" I L 6600 14500 30 
F9 "ParallelCells_Row7" I L 6600 14550 30 
F10 "ParallelCells_Row8" I L 6600 14600 30 
F11 "ParallelCells_Row9" I L 6600 14650 30 
F12 "Shutdown+" I R 8050 14300 50 
F13 "Shutdown-" I R 8050 14200 50 
F14 "ParallelCells_Row16" I L 6600 15000 30 
F15 "ParallelCells_Row17" I L 6600 15050 30 
F16 "ParallelCells_Row15" I L 6600 14950 30 
F17 "ParallelCells_Row14" I L 6600 14900 30 
F18 "ParallelCells_Row13" I L 6600 14850 30 
F19 "ParallelCells_Row12" I L 6600 14800 30 
F20 "ParallelCells_Row11" I L 6600 14750 30 
F21 "ParallelCells_Row10" I L 6600 14700 30 
F22 "ParallelCells_Row18" I L 6600 15100 30 
F23 "VoltageTaps(1-12)" O R 8050 15000 50 
F24 "VoltageTaps(13-24)" O R 8050 15100 50 
$EndSheet
Wire Wire Line
	5250 10950 5400 10950
Wire Wire Line
	5400 10000 6100 10000
Wire Wire Line
	5250 10850 6100 10850
Wire Wire Line
	5400 8050 5250 8050
Wire Wire Line
	5400 7100 6100 7100
Wire Wire Line
	5250 7950 6100 7950
Wire Wire Line
	5400 5150 5250 5150
Wire Wire Line
	5400 8050 5400 10000
Wire Wire Line
	5400 5150 5400 7100
Wire Wire Line
	13250 3150 13350 3150
Wire Wire Line
	13250 2700 13250 3150
Wire Wire Line
	13900 1200 13900 1350
Wire Wire Line
	13800 1200 13900 1200
Text HLabel 13800 1200 0    50   Input ~ 0
MotorController_Precharge+
Wire Wire Line
	14250 3150 14250 3550
Wire Wire Line
	13950 3150 14250 3150
Connection ~ 14250 3550
Wire Wire Line
	14400 1850 14400 3150
Wire Wire Line
	15200 3150 15200 3550
Connection ~ 15200 3550
Wire Wire Line
	14200 2350 15450 2350
Wire Wire Line
	12850 2350 14100 2350
Wire Wire Line
	13900 1850 13900 2700
Wire Wire Line
	13250 2700 13900 2700
Wire Wire Line
	14100 1000 14100 1350
Wire Wire Line
	14200 900  14200 1350
Entry Wire Line
	2350 2200 2250 2300
Entry Wire Line
	2350 2400 2250 2500
Entry Wire Line
	2350 2500 2250 2600
Entry Wire Line
	2350 2600 2250 2700
Entry Wire Line
	2350 2700 2250 2800
Entry Wire Line
	2350 2800 2250 2900
Entry Wire Line
	2350 2900 2250 3000
Entry Wire Line
	2450 3950 2350 4050
Entry Wire Line
	2450 3850 2350 3950
Entry Wire Line
	2450 3750 2350 3850
Entry Wire Line
	2450 3650 2350 3750
Entry Wire Line
	2450 3550 2350 3650
Entry Wire Line
	2450 3450 2350 3550
Entry Wire Line
	2450 3350 2350 3450
Entry Wire Line
	2450 3250 2350 3350
NoConn ~ 2750 1700
NoConn ~ 2750 1800
NoConn ~ 4150 1500
Text HLabel 19650 14600 2    50   Output ~ 0
Segment1_CriticalThermistors
Text HLabel 19650 14700 2    50   Output ~ 0
Segment2_CriticalThermistors
Text HLabel 19650 14800 2    50   Output ~ 0
Segment3_CriticalThermistors
Text HLabel 19650 14900 2    50   Output ~ 0
Segment4_CriticalThermistors
Entry Wire Line
	2350 2300 2250 2400
Wire Wire Line
	2450 3250 2650 3250
Wire Wire Line
	2450 3350 2750 3350
Wire Wire Line
	2450 3450 2650 3450
Wire Wire Line
	2450 3550 2750 3550
Wire Wire Line
	2450 3650 2650 3650
Wire Wire Line
	2450 3750 2750 3750
Wire Wire Line
	2450 3850 2650 3850
Wire Wire Line
	2450 3950 2750 3950
Entry Wire Line
	4400 2900 4500 3000
Entry Wire Line
	4400 2800 4500 2900
Entry Wire Line
	4400 2700 4500 2800
Entry Wire Line
	4400 2600 4500 2700
Entry Wire Line
	4400 2500 4500 2600
Entry Wire Line
	4400 2400 4500 2500
Entry Wire Line
	4400 2300 4500 2400
Entry Wire Line
	4400 2200 4500 2300
Wire Wire Line
	4300 3950 4150 3950
Wire Wire Line
	4300 3850 4250 3850
Wire Wire Line
	4300 3750 4150 3750
Wire Wire Line
	4250 3650 4300 3650
Wire Wire Line
	4300 3550 4150 3550
Wire Wire Line
	4300 3450 4250 3450
Wire Wire Line
	4300 3350 4150 3350
Wire Wire Line
	4300 3250 4250 3250
Entry Wire Line
	4300 3950 4400 4050
Entry Wire Line
	4300 3850 4400 3950
Entry Wire Line
	4300 3750 4400 3850
Entry Wire Line
	4300 3650 4400 3750
Entry Wire Line
	4300 3550 4400 3650
Entry Wire Line
	4300 3450 4400 3550
Entry Wire Line
	4300 3350 4400 3450
Entry Wire Line
	4300 3250 4400 3350
Wire Wire Line
	4150 2900 4400 2900
Wire Wire Line
	4250 2800 4400 2800
Wire Wire Line
	4150 2700 4400 2700
Wire Wire Line
	4250 2600 4400 2600
Wire Wire Line
	4150 2500 4400 2500
Wire Wire Line
	4250 2400 4400 2400
Wire Wire Line
	4150 2300 4400 2300
Wire Wire Line
	4250 2200 4400 2200
Wire Wire Line
	2750 1600 2650 1600
Text HLabel 19650 13450 2    50   Output ~ 0
Thermistor_Expansion
Entry Wire Line
	2550 1800 2650 1900
$Comp
L NER:OrionThermExp U?
U 1 1 5FB81724
P 3450 1300
AR Path="/60D53BFB/5FB81724" Ref="U?"  Part="1" 
AR Path="/5F45B05E/5FB81724" Ref="U7"  Part="1" 
F 0 "U7" H 3450 1465 50  0000 C CNN
F 1 "OrionThermExp" H 3450 1374 50  0000 C CNN
F 2 "" H 3450 1200 50  0001 C CNN
F 3 "" H 3450 1200 50  0001 C CNN
	1    3450 1300
	-1   0    0    -1  
$EndComp
Entry Wire Line
	2550 1500 2650 1600
Wire Wire Line
	2750 1900 2650 1900
Entry Wire Line
	2550 1400 2650 1500
Wire Wire Line
	2750 1500 2650 1500
Wire Wire Line
	4150 1900 4250 1900
Entry Wire Line
	4250 1900 4350 1800
Wire Bus Line
	4350 1800 4350 850 
Entry Bus Bus
	4350 850  4450 750 
Entry Bus Bus
	2550 850  2650 750 
Wire Notes Line
	19450 15000 21100 15000
Wire Notes Line
	21100 13350 19450 13350
Text Notes 19450 13250 0    50   ~ 0
All leave the accumulator container via cord grips
$Sheet
S 4150 13700 1100 2250
U 5F7F6054
F0 "Battery Segment 1" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 5250 13750 50 
F3 "Segment-" O R 5250 13850 50 
F4 "ThermistorA" O L 4150 13750 30 
F5 "ThermistorB" O L 4150 13850 30 
F6 "ThermistorC" O L 4150 13950 30 
F7 "ThermistorD" O L 4150 14050 30 
F8 "ThermistorE" O L 4150 14150 30 
F9 "ThermistorF" O L 4150 14250 30 
F10 "ThermistorG" O L 4150 14350 30 
F11 "ThermistorH" O L 4150 14450 30 
F12 "ThermistorI" O L 4150 14550 30 
F13 "ThermistorJ" O L 4150 14650 30 
F14 "ThermistorK" O L 4150 14750 30 
F15 "ThermistorL" O L 4150 14850 30 
F16 "ThermistorM" O L 4150 14950 30 
F17 "ThermistorN" O L 4150 15050 30 
F18 "ThermistorO" O L 4150 15150 30 
F19 "ThermistorP" O L 4150 15250 30 
F20 "ThermistorQ" O L 4150 15350 30 
F21 "ThermistorR" O L 4150 15450 30 
F22 "ThermistorS" O L 4150 15550 30 
F23 "ThermistorU" O L 4150 15750 30 
F24 "ThermistorV" O L 4150 15850 30 
F25 "ThermistorT" O L 4150 15650 30 
F26 "ThermistorF_GND" O L 4150 14300 30 
F27 "ThermistorQ_GND" O L 4150 15400 30 
F28 "ParallelCells_GND" I R 5250 14200 30 
F29 "ParallelCells_Row1" I R 5250 14250 30 
F30 "ParallelCells_Row2" I R 5250 14300 30 
F31 "ParallelCells_Row3" I R 5250 14350 30 
F32 "ParallelCells_Row4" I R 5250 14400 30 
F33 "ParallelCells_Row5" I R 5250 14450 30 
F34 "ParallelCells_Row6" I R 5250 14500 30 
F35 "ParallelCells_Row7" I R 5250 14550 30 
F36 "ParallelCells_Row8" I R 5250 14600 30 
F37 "ParallelCells_Row9" I R 5250 14650 30 
F38 "ParallelCells_Row10" I R 5250 14700 30 
F39 "ParallelCells_Row11" I R 5250 14750 30 
F40 "ParallelCells_Row12" I R 5250 14800 30 
F41 "ParallelCells_Row13" I R 5250 14850 30 
F42 "ParallelCells_Row14" I R 5250 14900 30 
F43 "ParallelCells_Row15" I R 5250 14950 30 
F44 "ParallelCells_Row16" I R 5250 15000 30 
F45 "ParallelCells_Row17" I R 5250 15050 30 
F46 "ParallelCells_Row18" I R 5250 15100 30 
F47 "ThermistorA_GND" O L 4150 13800 30 
F48 "ThermistorG_GND" O L 4150 14400 30 
F49 "ThermistorL_GND" O L 4150 14900 30 
F50 "ThermistorR_GND" O L 4150 15500 30 
F51 "ThermistorB_GND" O L 4150 13900 30 
F52 "ThermistorC_GND" O L 4150 14000 30 
F53 "ThermistorD_GND" O L 4150 14100 30 
F54 "ThermistorE_GND" O L 4150 14200 30 
F55 "ThermistorH_GND" O L 4150 14500 30 
F56 "ThermistorI_GND" O L 4150 14600 30 
F57 "ThermistorJ_GND" O L 4150 14700 30 
F58 "ThermistorK_GND" O L 4150 14800 30 
F59 "ThermistorM_GND" O L 4150 15000 30 
F60 "ThermistorN_GND" O L 4150 15100 30 
F61 "ThermistorO_GND" O L 4150 15200 30 
F62 "ThermistorP_GND" O L 4150 15300 30 
F63 "ThermistorS_GND" O L 4150 15600 30 
F64 "ThermistorT_GND" O L 4150 15700 30 
F65 "ThermistorU_GND" O L 4150 15800 30 
F66 "ThermistorV_GND" O L 4150 15900 30 
$EndSheet
$Sheet
S 1300 13700 1350 2250
U 616F2C65
F0 "Thermistor PCB 1" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 2650 13750 30 
F3 "ThermistorB" I R 2650 13850 30 
F4 "ThermistorC" I R 2650 13950 30 
F5 "ThermistorD" I R 2650 14050 30 
F6 "ThermistorE" I R 2650 14150 30 
F7 "ThermistorF" I R 2650 14250 30 
F8 "ThermistorF_GND" I R 2650 14300 30 
F9 "ThermistorL" I R 2650 14850 30 
F10 "ThermistorM" I R 2650 14950 30 
F11 "ThermistorN" I R 2650 15050 30 
F12 "ThermistorO" I R 2650 15150 30 
F13 "ThermistorP" I R 2650 15250 30 
F14 "ThermistorQ" I R 2650 15350 30 
F15 "ThermistorQ_GND" I R 2650 15400 30 
F16 "ThermistorG" I R 2650 14350 30 
F17 "ThermistorH" I R 2650 14450 30 
F18 "ThermistorI" I R 2650 14550 30 
F19 "ThermistorJ" I R 2650 14650 30 
F20 "ThermistorK" I R 2650 14750 30 
F21 "ThermistorR" I R 2650 15450 30 
F22 "ThermistorT" I R 2650 15650 30 
F23 "ThermistorU" I R 2650 15750 30 
F24 "ThermistorV" I R 2650 15850 30 
F25 "ThermistorS" I R 2650 15550 30 
F26 "Thermistors_NonCritical" O L 1300 13750 50 
F27 "Thermistors_Critical" O L 1300 13850 50 
F28 "ThermistorA_GND" I R 2650 13800 30 
F29 "ThermistorB_GND" I R 2650 13900 30 
F30 "ThermistorC_GND" I R 2650 14000 30 
F31 "ThermistorD_GND" I R 2650 14100 30 
F32 "ThermistorE_GND" I R 2650 14200 30 
F33 "ThermistorG_GND" I R 2650 14400 30 
F34 "ThermistorH_GND" I R 2650 14500 30 
F35 "ThermistorI_GND" I R 2650 14600 30 
F36 "ThermistorJ_GND" I R 2650 14700 30 
F37 "ThermistorK_GND" I R 2650 14800 30 
F38 "ThermistorL_GND" I R 2650 14900 30 
F39 "ThermistorM_GND" I R 2650 15000 30 
F40 "ThermistorN_GND" I R 2650 15100 30 
F41 "ThermistorO_GND" I R 2650 15200 30 
F42 "ThermistorP_GND" I R 2650 15300 30 
F43 "ThermistorR_GND" I R 2650 15500 30 
F44 "ThermistorS_GND" I R 2650 15600 30 
F45 "ThermistorT_GND" I R 2650 15700 30 
F46 "ThermistorU_GND" I R 2650 15800 30 
F47 "ThermistorV_GND" I R 2650 15900 30 
$EndSheet
$Sheet
S 4150 10800 1100 2250
U 60298533
F0 "Battery Segment 2" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 5250 10850 50 
F3 "Segment-" O R 5250 10950 50 
F4 "ThermistorA" O L 4150 10850 30 
F5 "ThermistorB" O L 4150 10950 30 
F6 "ThermistorC" O L 4150 11050 30 
F7 "ThermistorD" O L 4150 11150 30 
F8 "ThermistorE" O L 4150 11250 30 
F9 "ThermistorF" O L 4150 11350 30 
F10 "ThermistorG" O L 4150 11450 30 
F11 "ThermistorH" O L 4150 11550 30 
F12 "ThermistorI" O L 4150 11650 30 
F13 "ThermistorJ" O L 4150 11750 30 
F14 "ThermistorK" O L 4150 11850 30 
F15 "ThermistorL" O L 4150 11950 30 
F16 "ThermistorM" O L 4150 12050 30 
F17 "ThermistorN" O L 4150 12150 30 
F18 "ThermistorO" O L 4150 12250 30 
F19 "ThermistorP" O L 4150 12350 30 
F20 "ThermistorQ" O L 4150 12450 30 
F21 "ThermistorR" O L 4150 12550 30 
F22 "ThermistorS" O L 4150 12650 30 
F23 "ThermistorU" O L 4150 12850 30 
F24 "ThermistorV" O L 4150 12950 30 
F25 "ThermistorT" O L 4150 12750 30 
F26 "ThermistorF_GND" O L 4150 11400 30 
F27 "ThermistorQ_GND" O L 4150 12500 30 
F28 "ParallelCells_GND" I R 5250 11300 30 
F29 "ParallelCells_Row1" I R 5250 11350 30 
F30 "ParallelCells_Row2" I R 5250 11400 30 
F31 "ParallelCells_Row3" I R 5250 11450 30 
F32 "ParallelCells_Row4" I R 5250 11500 30 
F33 "ParallelCells_Row5" I R 5250 11550 30 
F34 "ParallelCells_Row6" I R 5250 11600 30 
F35 "ParallelCells_Row7" I R 5250 11650 30 
F36 "ParallelCells_Row8" I R 5250 11700 30 
F37 "ParallelCells_Row9" I R 5250 11750 30 
F38 "ParallelCells_Row10" I R 5250 11800 30 
F39 "ParallelCells_Row11" I R 5250 11850 30 
F40 "ParallelCells_Row12" I R 5250 11900 30 
F41 "ParallelCells_Row13" I R 5250 11950 30 
F42 "ParallelCells_Row14" I R 5250 12000 30 
F43 "ParallelCells_Row15" I R 5250 12050 30 
F44 "ParallelCells_Row16" I R 5250 12100 30 
F45 "ParallelCells_Row17" I R 5250 12150 30 
F46 "ParallelCells_Row18" I R 5250 12200 30 
F47 "ThermistorA_GND" O L 4150 10900 30 
F48 "ThermistorG_GND" O L 4150 11500 30 
F49 "ThermistorL_GND" O L 4150 12000 30 
F50 "ThermistorR_GND" O L 4150 12600 30 
F51 "ThermistorB_GND" O L 4150 11000 30 
F52 "ThermistorC_GND" O L 4150 11100 30 
F53 "ThermistorD_GND" O L 4150 11200 30 
F54 "ThermistorE_GND" O L 4150 11300 30 
F55 "ThermistorH_GND" O L 4150 11600 30 
F56 "ThermistorI_GND" O L 4150 11700 30 
F57 "ThermistorJ_GND" O L 4150 11800 30 
F58 "ThermistorK_GND" O L 4150 11900 30 
F59 "ThermistorM_GND" O L 4150 12100 30 
F60 "ThermistorN_GND" O L 4150 12200 30 
F61 "ThermistorO_GND" O L 4150 12300 30 
F62 "ThermistorP_GND" O L 4150 12400 30 
F63 "ThermistorS_GND" O L 4150 12700 30 
F64 "ThermistorT_GND" O L 4150 12800 30 
F65 "ThermistorU_GND" O L 4150 12900 30 
F66 "ThermistorV_GND" O L 4150 13000 30 
$EndSheet
$Sheet
S 1300 10800 1350 2250
U 60298563
F0 "Thermistor PCB 2" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 2650 10850 30 
F3 "ThermistorB" I R 2650 10950 30 
F4 "ThermistorC" I R 2650 11050 30 
F5 "ThermistorD" I R 2650 11150 30 
F6 "ThermistorE" I R 2650 11250 30 
F7 "ThermistorF" I R 2650 11350 30 
F8 "ThermistorF_GND" I R 2650 11400 30 
F9 "ThermistorL" I R 2650 11950 30 
F10 "ThermistorM" I R 2650 12050 30 
F11 "ThermistorN" I R 2650 12150 30 
F12 "ThermistorO" I R 2650 12250 30 
F13 "ThermistorP" I R 2650 12350 30 
F14 "ThermistorQ" I R 2650 12450 30 
F15 "ThermistorQ_GND" I R 2650 12500 30 
F16 "ThermistorG" I R 2650 11450 30 
F17 "ThermistorH" I R 2650 11550 30 
F18 "ThermistorI" I R 2650 11650 30 
F19 "ThermistorJ" I R 2650 11750 30 
F20 "ThermistorK" I R 2650 11850 30 
F21 "ThermistorR" I R 2650 12550 30 
F22 "ThermistorT" I R 2650 12750 30 
F23 "ThermistorU" I R 2650 12850 30 
F24 "ThermistorV" I R 2650 12950 30 
F25 "ThermistorS" I R 2650 12650 30 
F26 "Thermistors_NonCritical" O L 1300 10850 50 
F27 "Thermistors_Critical" O L 1300 10950 50 
F28 "ThermistorA_GND" I R 2650 10900 30 
F29 "ThermistorB_GND" I R 2650 11000 30 
F30 "ThermistorC_GND" I R 2650 11100 30 
F31 "ThermistorD_GND" I R 2650 11200 30 
F32 "ThermistorE_GND" I R 2650 11300 30 
F33 "ThermistorG_GND" I R 2650 11500 30 
F34 "ThermistorH_GND" I R 2650 11600 30 
F35 "ThermistorI_GND" I R 2650 11700 30 
F36 "ThermistorJ_GND" I R 2650 11800 30 
F37 "ThermistorK_GND" I R 2650 11900 30 
F38 "ThermistorL_GND" I R 2650 12000 30 
F39 "ThermistorM_GND" I R 2650 12100 30 
F40 "ThermistorN_GND" I R 2650 12200 30 
F41 "ThermistorO_GND" I R 2650 12300 30 
F42 "ThermistorP_GND" I R 2650 12400 30 
F43 "ThermistorR_GND" I R 2650 12600 30 
F44 "ThermistorS_GND" I R 2650 12700 30 
F45 "ThermistorT_GND" I R 2650 12800 30 
F46 "ThermistorU_GND" I R 2650 12900 30 
F47 "ThermistorV_GND" I R 2650 13000 30 
$EndSheet
$Sheet
S 4150 7900 1100 2250
U 602D10BE
F0 "Battery Segment 3" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 5250 7950 50 
F3 "Segment-" O R 5250 8050 50 
F4 "ThermistorA" O L 4150 7950 30 
F5 "ThermistorB" O L 4150 8050 30 
F6 "ThermistorC" O L 4150 8150 30 
F7 "ThermistorD" O L 4150 8250 30 
F8 "ThermistorE" O L 4150 8350 30 
F9 "ThermistorF" O L 4150 8450 30 
F10 "ThermistorG" O L 4150 8550 30 
F11 "ThermistorH" O L 4150 8650 30 
F12 "ThermistorI" O L 4150 8750 30 
F13 "ThermistorJ" O L 4150 8850 30 
F14 "ThermistorK" O L 4150 8950 30 
F15 "ThermistorL" O L 4150 9050 30 
F16 "ThermistorM" O L 4150 9150 30 
F17 "ThermistorN" O L 4150 9250 30 
F18 "ThermistorO" O L 4150 9350 30 
F19 "ThermistorP" O L 4150 9450 30 
F20 "ThermistorQ" O L 4150 9550 30 
F21 "ThermistorR" O L 4150 9650 30 
F22 "ThermistorS" O L 4150 9750 30 
F23 "ThermistorU" O L 4150 9950 30 
F24 "ThermistorV" O L 4150 10050 30 
F25 "ThermistorT" O L 4150 9850 30 
F26 "ThermistorF_GND" O L 4150 8500 30 
F27 "ThermistorQ_GND" O L 4150 9600 30 
F28 "ParallelCells_GND" I R 5250 8400 30 
F29 "ParallelCells_Row1" I R 5250 8450 30 
F30 "ParallelCells_Row2" I R 5250 8500 30 
F31 "ParallelCells_Row3" I R 5250 8550 30 
F32 "ParallelCells_Row4" I R 5250 8600 30 
F33 "ParallelCells_Row5" I R 5250 8650 30 
F34 "ParallelCells_Row6" I R 5250 8700 30 
F35 "ParallelCells_Row7" I R 5250 8750 30 
F36 "ParallelCells_Row8" I R 5250 8800 30 
F37 "ParallelCells_Row9" I R 5250 8850 30 
F38 "ParallelCells_Row10" I R 5250 8900 30 
F39 "ParallelCells_Row11" I R 5250 8950 30 
F40 "ParallelCells_Row12" I R 5250 9000 30 
F41 "ParallelCells_Row13" I R 5250 9050 30 
F42 "ParallelCells_Row14" I R 5250 9100 30 
F43 "ParallelCells_Row15" I R 5250 9150 30 
F44 "ParallelCells_Row16" I R 5250 9200 30 
F45 "ParallelCells_Row17" I R 5250 9250 30 
F46 "ParallelCells_Row18" I R 5250 9300 30 
F47 "ThermistorA_GND" O L 4150 8000 30 
F48 "ThermistorG_GND" O L 4150 8600 30 
F49 "ThermistorL_GND" O L 4150 9100 30 
F50 "ThermistorR_GND" O L 4150 9700 30 
F51 "ThermistorB_GND" O L 4150 8100 30 
F52 "ThermistorC_GND" O L 4150 8200 30 
F53 "ThermistorD_GND" O L 4150 8300 30 
F54 "ThermistorE_GND" O L 4150 8400 30 
F55 "ThermistorH_GND" O L 4150 8700 30 
F56 "ThermistorI_GND" O L 4150 8800 30 
F57 "ThermistorJ_GND" O L 4150 8900 30 
F58 "ThermistorK_GND" O L 4150 9000 30 
F59 "ThermistorM_GND" O L 4150 9200 30 
F60 "ThermistorN_GND" O L 4150 9300 30 
F61 "ThermistorO_GND" O L 4150 9400 30 
F62 "ThermistorP_GND" O L 4150 9500 30 
F63 "ThermistorS_GND" O L 4150 9800 30 
F64 "ThermistorT_GND" O L 4150 9900 30 
F65 "ThermistorU_GND" O L 4150 10000 30 
F66 "ThermistorV_GND" O L 4150 10100 30 
$EndSheet
$Sheet
S 1300 7900 1350 2250
U 602D10EE
F0 "Thermistor PCB 3" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 2650 7950 30 
F3 "ThermistorB" I R 2650 8050 30 
F4 "ThermistorC" I R 2650 8150 30 
F5 "ThermistorD" I R 2650 8250 30 
F6 "ThermistorE" I R 2650 8350 30 
F7 "ThermistorF" I R 2650 8450 30 
F8 "ThermistorF_GND" I R 2650 8500 30 
F9 "ThermistorL" I R 2650 9050 30 
F10 "ThermistorM" I R 2650 9150 30 
F11 "ThermistorN" I R 2650 9250 30 
F12 "ThermistorO" I R 2650 9350 30 
F13 "ThermistorP" I R 2650 9450 30 
F14 "ThermistorQ" I R 2650 9550 30 
F15 "ThermistorQ_GND" I R 2650 9600 30 
F16 "ThermistorG" I R 2650 8550 30 
F17 "ThermistorH" I R 2650 8650 30 
F18 "ThermistorI" I R 2650 8750 30 
F19 "ThermistorJ" I R 2650 8850 30 
F20 "ThermistorK" I R 2650 8950 30 
F21 "ThermistorR" I R 2650 9650 30 
F22 "ThermistorT" I R 2650 9850 30 
F23 "ThermistorU" I R 2650 9950 30 
F24 "ThermistorV" I R 2650 10050 30 
F25 "ThermistorS" I R 2650 9750 30 
F26 "Thermistors_NonCritical" O L 1300 7950 50 
F27 "Thermistors_Critical" O L 1300 8050 50 
F28 "ThermistorA_GND" I R 2650 8000 30 
F29 "ThermistorB_GND" I R 2650 8100 30 
F30 "ThermistorC_GND" I R 2650 8200 30 
F31 "ThermistorD_GND" I R 2650 8300 30 
F32 "ThermistorE_GND" I R 2650 8400 30 
F33 "ThermistorG_GND" I R 2650 8600 30 
F34 "ThermistorH_GND" I R 2650 8700 30 
F35 "ThermistorI_GND" I R 2650 8800 30 
F36 "ThermistorJ_GND" I R 2650 8900 30 
F37 "ThermistorK_GND" I R 2650 9000 30 
F38 "ThermistorL_GND" I R 2650 9100 30 
F39 "ThermistorM_GND" I R 2650 9200 30 
F40 "ThermistorN_GND" I R 2650 9300 30 
F41 "ThermistorO_GND" I R 2650 9400 30 
F42 "ThermistorP_GND" I R 2650 9500 30 
F43 "ThermistorR_GND" I R 2650 9700 30 
F44 "ThermistorS_GND" I R 2650 9800 30 
F45 "ThermistorT_GND" I R 2650 9900 30 
F46 "ThermistorU_GND" I R 2650 10000 30 
F47 "ThermistorV_GND" I R 2650 10100 30 
$EndSheet
$Sheet
S 4150 5000 1100 2250
U 6031BDC8
F0 "Battery Segment 4" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 5250 5050 50 
F3 "Segment-" O R 5250 5150 50 
F4 "ThermistorA" O L 4150 5050 30 
F5 "ThermistorB" O L 4150 5150 30 
F6 "ThermistorC" O L 4150 5250 30 
F7 "ThermistorD" O L 4150 5350 30 
F8 "ThermistorE" O L 4150 5450 30 
F9 "ThermistorF" O L 4150 5550 30 
F10 "ThermistorG" O L 4150 5650 30 
F11 "ThermistorH" O L 4150 5750 30 
F12 "ThermistorI" O L 4150 5850 30 
F13 "ThermistorJ" O L 4150 5950 30 
F14 "ThermistorK" O L 4150 6050 30 
F15 "ThermistorL" O L 4150 6150 30 
F16 "ThermistorM" O L 4150 6250 30 
F17 "ThermistorN" O L 4150 6350 30 
F18 "ThermistorO" O L 4150 6450 30 
F19 "ThermistorP" O L 4150 6550 30 
F20 "ThermistorQ" O L 4150 6650 30 
F21 "ThermistorR" O L 4150 6750 30 
F22 "ThermistorS" O L 4150 6850 30 
F23 "ThermistorU" O L 4150 7050 30 
F24 "ThermistorV" O L 4150 7150 30 
F25 "ThermistorT" O L 4150 6950 30 
F26 "ThermistorF_GND" O L 4150 5600 30 
F27 "ThermistorQ_GND" O L 4150 6700 30 
F28 "ParallelCells_GND" I R 5250 5500 30 
F29 "ParallelCells_Row1" I R 5250 5550 30 
F30 "ParallelCells_Row2" I R 5250 5600 30 
F31 "ParallelCells_Row3" I R 5250 5650 30 
F32 "ParallelCells_Row4" I R 5250 5700 30 
F33 "ParallelCells_Row5" I R 5250 5750 30 
F34 "ParallelCells_Row6" I R 5250 5800 30 
F35 "ParallelCells_Row7" I R 5250 5850 30 
F36 "ParallelCells_Row8" I R 5250 5900 30 
F37 "ParallelCells_Row9" I R 5250 5950 30 
F38 "ParallelCells_Row10" I R 5250 6000 30 
F39 "ParallelCells_Row11" I R 5250 6050 30 
F40 "ParallelCells_Row12" I R 5250 6100 30 
F41 "ParallelCells_Row13" I R 5250 6150 30 
F42 "ParallelCells_Row14" I R 5250 6200 30 
F43 "ParallelCells_Row15" I R 5250 6250 30 
F44 "ParallelCells_Row16" I R 5250 6300 30 
F45 "ParallelCells_Row17" I R 5250 6350 30 
F46 "ParallelCells_Row18" I R 5250 6400 30 
F47 "ThermistorA_GND" O L 4150 5100 30 
F48 "ThermistorG_GND" O L 4150 5700 30 
F49 "ThermistorL_GND" O L 4150 6200 30 
F50 "ThermistorR_GND" O L 4150 6800 30 
F51 "ThermistorB_GND" O L 4150 5200 30 
F52 "ThermistorC_GND" O L 4150 5300 30 
F53 "ThermistorD_GND" O L 4150 5400 30 
F54 "ThermistorE_GND" O L 4150 5500 30 
F55 "ThermistorH_GND" O L 4150 5800 30 
F56 "ThermistorI_GND" O L 4150 5900 30 
F57 "ThermistorJ_GND" O L 4150 6000 30 
F58 "ThermistorK_GND" O L 4150 6100 30 
F59 "ThermistorM_GND" O L 4150 6300 30 
F60 "ThermistorN_GND" O L 4150 6400 30 
F61 "ThermistorO_GND" O L 4150 6500 30 
F62 "ThermistorP_GND" O L 4150 6600 30 
F63 "ThermistorS_GND" O L 4150 6900 30 
F64 "ThermistorT_GND" O L 4150 7000 30 
F65 "ThermistorU_GND" O L 4150 7100 30 
F66 "ThermistorV_GND" O L 4150 7200 30 
$EndSheet
$Sheet
S 1300 5000 1350 2250
U 6031BDF8
F0 "Thermistor PCB 4" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 2650 5050 30 
F3 "ThermistorB" I R 2650 5150 30 
F4 "ThermistorC" I R 2650 5250 30 
F5 "ThermistorD" I R 2650 5350 30 
F6 "ThermistorE" I R 2650 5450 30 
F7 "ThermistorF" I R 2650 5550 30 
F8 "ThermistorF_GND" I R 2650 5600 30 
F9 "ThermistorL" I R 2650 6150 30 
F10 "ThermistorM" I R 2650 6250 30 
F11 "ThermistorN" I R 2650 6350 30 
F12 "ThermistorO" I R 2650 6450 30 
F13 "ThermistorP" I R 2650 6550 30 
F14 "ThermistorQ" I R 2650 6650 30 
F15 "ThermistorQ_GND" I R 2650 6700 30 
F16 "ThermistorG" I R 2650 5650 30 
F17 "ThermistorH" I R 2650 5750 30 
F18 "ThermistorI" I R 2650 5850 30 
F19 "ThermistorJ" I R 2650 5950 30 
F20 "ThermistorK" I R 2650 6050 30 
F21 "ThermistorR" I R 2650 6750 30 
F22 "ThermistorT" I R 2650 6950 30 
F23 "ThermistorU" I R 2650 7050 30 
F24 "ThermistorV" I R 2650 7150 30 
F25 "ThermistorS" I R 2650 6850 30 
F26 "Thermistors_NonCritical" O L 1300 5050 50 
F27 "Thermistors_Critical" O L 1300 5150 50 
F28 "ThermistorA_GND" I R 2650 5100 30 
F29 "ThermistorB_GND" I R 2650 5200 30 
F30 "ThermistorC_GND" I R 2650 5300 30 
F31 "ThermistorD_GND" I R 2650 5400 30 
F32 "ThermistorE_GND" I R 2650 5500 30 
F33 "ThermistorG_GND" I R 2650 5700 30 
F34 "ThermistorH_GND" I R 2650 5800 30 
F35 "ThermistorI_GND" I R 2650 5900 30 
F36 "ThermistorJ_GND" I R 2650 6000 30 
F37 "ThermistorK_GND" I R 2650 6100 30 
F38 "ThermistorL_GND" I R 2650 6200 30 
F39 "ThermistorM_GND" I R 2650 6300 30 
F40 "ThermistorN_GND" I R 2650 6400 30 
F41 "ThermistorO_GND" I R 2650 6500 30 
F42 "ThermistorP_GND" I R 2650 6600 30 
F43 "ThermistorR_GND" I R 2650 6800 30 
F44 "ThermistorS_GND" I R 2650 6900 30 
F45 "ThermistorT_GND" I R 2650 7000 30 
F46 "ThermistorU_GND" I R 2650 7100 30 
F47 "ThermistorV_GND" I R 2650 7200 30 
$EndSheet
Wire Wire Line
	5400 10950 5400 13050
Wire Wire Line
	5250 5500 6600 5500
Wire Wire Line
	5250 5550 6600 5550
Wire Wire Line
	5250 5600 6600 5600
Wire Wire Line
	5250 5650 6600 5650
Wire Wire Line
	5250 5700 6600 5700
Wire Wire Line
	5250 5750 6600 5750
Wire Wire Line
	5250 5800 6600 5800
Wire Wire Line
	5250 5850 6600 5850
Wire Wire Line
	5250 5900 6600 5900
Wire Wire Line
	5250 5950 6600 5950
Wire Wire Line
	5250 6000 6600 6000
Wire Wire Line
	5250 6050 6600 6050
Wire Wire Line
	5250 6100 6600 6100
Wire Wire Line
	5250 6150 6600 6150
Wire Wire Line
	5250 6200 6600 6200
Wire Wire Line
	5250 6250 6600 6250
Wire Wire Line
	5250 6300 6600 6300
Wire Wire Line
	5250 6350 6600 6350
Wire Wire Line
	5250 6400 6600 6400
Wire Wire Line
	5250 8400 6600 8400
Wire Wire Line
	5250 8450 6600 8450
Wire Wire Line
	5250 8500 6600 8500
Wire Wire Line
	5250 8550 6600 8550
Wire Wire Line
	5250 8600 6600 8600
Wire Wire Line
	5250 8650 6600 8650
Wire Wire Line
	5250 8700 6600 8700
Wire Wire Line
	5250 8750 6600 8750
Wire Wire Line
	5250 8800 6600 8800
Wire Wire Line
	5250 8850 6600 8850
Wire Wire Line
	5250 8900 6600 8900
Wire Wire Line
	5250 8950 6600 8950
Wire Wire Line
	5250 9000 6600 9000
Wire Wire Line
	5250 9050 6600 9050
Wire Wire Line
	5250 9100 6600 9100
Wire Wire Line
	5250 9150 6600 9150
Wire Wire Line
	5250 9200 6600 9200
Wire Wire Line
	5250 9250 6600 9250
Wire Wire Line
	5250 9300 6600 9300
Wire Wire Line
	5250 11300 6600 11300
Wire Wire Line
	5250 11350 6600 11350
Wire Wire Line
	5250 11400 6600 11400
Wire Wire Line
	5250 11450 6600 11450
Wire Wire Line
	5250 11500 6600 11500
Wire Wire Line
	5250 11550 6600 11550
Wire Wire Line
	5250 11600 6600 11600
Wire Wire Line
	5250 11650 6600 11650
Wire Wire Line
	5250 11700 6600 11700
Wire Wire Line
	5250 11750 6600 11750
Wire Wire Line
	5250 11800 6600 11800
Wire Wire Line
	5250 11850 6600 11850
Wire Wire Line
	5250 11900 6600 11900
Wire Wire Line
	5250 11950 6600 11950
Wire Wire Line
	5250 12000 6600 12000
Wire Wire Line
	5250 12050 6600 12050
Wire Wire Line
	5250 12100 6600 12100
Wire Wire Line
	5250 12150 6600 12150
Wire Wire Line
	5250 12200 6600 12200
Wire Wire Line
	5400 13050 6100 13050
Wire Wire Line
	5250 14200 6600 14200
Wire Wire Line
	5250 14250 6600 14250
Wire Wire Line
	5250 14300 6600 14300
Wire Wire Line
	5250 14350 6600 14350
Wire Wire Line
	5250 14400 6600 14400
Wire Wire Line
	5250 14450 6600 14450
Wire Wire Line
	5250 14500 6600 14500
Wire Wire Line
	5250 14550 6600 14550
Wire Wire Line
	5250 14600 6600 14600
Wire Wire Line
	5250 14650 6600 14650
Wire Wire Line
	5250 14700 6600 14700
Wire Wire Line
	5250 14750 6600 14750
Wire Wire Line
	5250 14800 6600 14800
Wire Wire Line
	5250 14850 6600 14850
Wire Wire Line
	5250 14900 6600 14900
Wire Wire Line
	5250 14950 6600 14950
Wire Wire Line
	5250 15000 6600 15000
Wire Wire Line
	5250 15050 6600 15050
Wire Wire Line
	5250 15100 6600 15100
Wire Wire Line
	2650 5050 4150 5050
Wire Wire Line
	4150 5100 2650 5100
Wire Wire Line
	2650 5150 4150 5150
Wire Wire Line
	2650 5200 4150 5200
Wire Wire Line
	2650 5250 4150 5250
Wire Wire Line
	2650 5300 4150 5300
Wire Wire Line
	2650 5350 4150 5350
Wire Wire Line
	2650 5400 4150 5400
Wire Wire Line
	2650 5450 4150 5450
Wire Wire Line
	2650 5500 4150 5500
Wire Wire Line
	2650 5550 4150 5550
Wire Wire Line
	2650 5600 4150 5600
Wire Wire Line
	2650 5650 4150 5650
Wire Wire Line
	2650 5700 4150 5700
Wire Wire Line
	2650 5750 4150 5750
Wire Wire Line
	2650 5800 4150 5800
Wire Wire Line
	2650 5850 4150 5850
Wire Wire Line
	4150 5900 2650 5900
Wire Wire Line
	2650 5950 4150 5950
Wire Wire Line
	2650 6000 4150 6000
Wire Wire Line
	2650 6050 4150 6050
Wire Wire Line
	2650 6100 4150 6100
Wire Wire Line
	2650 6150 4150 6150
Wire Wire Line
	2650 6200 4150 6200
Wire Wire Line
	2650 6250 4150 6250
Wire Wire Line
	2650 6300 4150 6300
Wire Wire Line
	2650 6350 4150 6350
Wire Wire Line
	2650 6400 4150 6400
Wire Wire Line
	2650 6450 4150 6450
Wire Wire Line
	2650 6500 4150 6500
Wire Wire Line
	2650 6550 4150 6550
Wire Wire Line
	2650 6600 4150 6600
Wire Wire Line
	2650 6650 4150 6650
Wire Wire Line
	2650 6700 4150 6700
Wire Wire Line
	2650 6750 4150 6750
Wire Wire Line
	2650 6800 4150 6800
Wire Wire Line
	2650 6850 4150 6850
Wire Wire Line
	2650 6900 4150 6900
Wire Wire Line
	2650 6950 4150 6950
Wire Wire Line
	2650 7000 4150 7000
Wire Wire Line
	2650 7050 4150 7050
Wire Wire Line
	2650 7100 4150 7100
Wire Wire Line
	2650 7150 4150 7150
Wire Wire Line
	2650 7200 4150 7200
Wire Wire Line
	2650 7950 4150 7950
Wire Wire Line
	2650 8000 4150 8000
Wire Wire Line
	2650 8050 4150 8050
Wire Wire Line
	2650 8100 4150 8100
Wire Wire Line
	2650 8150 4150 8150
Wire Wire Line
	2650 8200 4150 8200
Wire Wire Line
	2650 8250 4150 8250
Wire Wire Line
	2650 8300 4150 8300
Wire Wire Line
	2650 8350 4150 8350
Wire Wire Line
	2650 8400 4150 8400
Wire Wire Line
	2650 8450 4150 8450
Wire Wire Line
	2650 8500 4150 8500
Wire Wire Line
	2650 8550 4150 8550
Wire Wire Line
	2650 8600 4150 8600
Wire Wire Line
	2650 8650 4150 8650
Wire Wire Line
	2650 8700 4150 8700
Wire Wire Line
	2650 8750 4150 8750
Wire Wire Line
	2650 8800 4150 8800
Wire Wire Line
	2650 8850 4150 8850
Wire Wire Line
	2650 8900 4150 8900
Wire Wire Line
	2650 8950 4150 8950
Wire Wire Line
	2650 9000 4150 9000
Wire Wire Line
	2650 9050 4150 9050
Wire Wire Line
	2650 9100 4150 9100
Wire Wire Line
	2650 9150 4150 9150
Wire Wire Line
	2650 9200 4150 9200
Wire Wire Line
	2650 9250 4150 9250
Wire Wire Line
	2650 9300 4150 9300
Wire Wire Line
	2650 9350 4150 9350
Wire Wire Line
	2650 9400 4150 9400
Wire Wire Line
	2650 9450 4150 9450
Wire Wire Line
	2650 9500 4150 9500
Wire Wire Line
	2650 9550 4150 9550
Wire Wire Line
	2650 9600 4150 9600
Wire Wire Line
	2650 9650 4150 9650
Wire Wire Line
	2650 9700 4150 9700
Wire Wire Line
	2650 9750 4150 9750
Wire Wire Line
	2650 9800 4150 9800
Wire Wire Line
	2650 9850 4150 9850
Wire Wire Line
	2650 9900 4150 9900
Wire Wire Line
	2650 9950 4150 9950
Wire Wire Line
	2650 10000 4150 10000
Wire Wire Line
	2650 10050 4150 10050
Wire Wire Line
	2650 10100 4150 10100
Wire Wire Line
	2650 13000 4150 13000
Wire Wire Line
	2650 12450 4150 12450
Wire Wire Line
	2650 12950 4150 12950
Wire Wire Line
	2650 12900 4150 12900
Wire Wire Line
	2650 12850 4150 12850
Wire Wire Line
	2650 12800 4150 12800
Wire Wire Line
	2650 12750 4150 12750
Wire Wire Line
	2650 12700 4150 12700
Wire Wire Line
	2650 12650 4150 12650
Wire Wire Line
	2650 12600 4150 12600
Wire Wire Line
	2650 12550 4150 12550
Wire Wire Line
	2650 12500 4150 12500
Wire Wire Line
	2650 12400 4150 12400
Wire Wire Line
	2650 12350 4150 12350
Wire Wire Line
	2650 12300 4150 12300
Wire Wire Line
	2650 12250 4150 12250
Wire Wire Line
	2650 12200 4150 12200
Wire Wire Line
	2650 12150 4150 12150
Wire Wire Line
	2650 12100 4150 12100
Wire Wire Line
	2650 12050 4150 12050
Wire Wire Line
	2650 12000 4150 12000
Wire Wire Line
	2650 11950 4150 11950
Wire Wire Line
	2650 11900 4150 11900
Wire Wire Line
	2650 11850 4150 11850
Wire Wire Line
	2650 11800 4150 11800
Wire Wire Line
	2650 11750 4150 11750
Wire Wire Line
	2650 11700 4150 11700
Wire Wire Line
	2650 11650 4150 11650
Wire Wire Line
	2650 11600 4150 11600
Wire Wire Line
	2650 11550 4150 11550
Wire Wire Line
	2650 11500 4150 11500
Wire Wire Line
	2650 11450 4150 11450
Wire Wire Line
	2650 11400 4150 11400
Wire Wire Line
	2650 11350 4150 11350
Wire Wire Line
	2650 11300 4150 11300
Wire Wire Line
	2650 11250 4150 11250
Wire Wire Line
	2650 11200 4150 11200
Wire Wire Line
	2650 11150 4150 11150
Wire Wire Line
	2650 11100 4150 11100
Wire Wire Line
	2650 11050 4150 11050
Wire Wire Line
	2650 11000 4150 11000
Wire Wire Line
	2650 10950 4150 10950
Wire Wire Line
	2650 10900 4150 10900
Wire Wire Line
	2650 10850 4150 10850
Wire Wire Line
	2650 13750 4150 13750
Wire Wire Line
	2650 13800 4150 13800
Wire Wire Line
	2650 13850 4150 13850
Wire Wire Line
	2650 13900 4150 13900
Wire Wire Line
	2650 13950 4150 13950
Wire Wire Line
	2650 14000 4150 14000
Wire Wire Line
	2650 14050 4150 14050
Wire Wire Line
	2650 14100 4150 14100
Wire Wire Line
	2650 14150 4150 14150
Wire Wire Line
	2650 14200 4150 14200
Wire Wire Line
	2650 14250 4150 14250
Wire Wire Line
	2650 14300 4150 14300
Wire Wire Line
	2650 14350 4150 14350
Wire Wire Line
	2650 14400 4150 14400
Wire Wire Line
	2650 14450 4150 14450
Wire Wire Line
	2650 14500 4150 14500
Wire Wire Line
	2650 14550 4150 14550
Wire Wire Line
	2650 14600 4150 14600
Wire Wire Line
	2650 14650 4150 14650
Wire Wire Line
	2650 14700 4150 14700
Wire Wire Line
	2650 14750 4150 14750
Wire Wire Line
	2650 14800 4150 14800
Wire Wire Line
	2650 14850 4150 14850
Wire Wire Line
	2650 14900 4150 14900
Wire Wire Line
	2650 14950 4150 14950
Wire Wire Line
	2650 15000 4150 15000
Wire Wire Line
	2650 15050 4150 15050
Wire Wire Line
	2650 15100 4150 15100
Wire Wire Line
	2650 15150 4150 15150
Wire Wire Line
	2650 15200 4150 15200
Wire Wire Line
	2650 15250 4150 15250
Wire Wire Line
	2650 15300 4150 15300
Wire Wire Line
	2650 15350 4150 15350
Wire Wire Line
	2650 15400 4150 15400
Wire Wire Line
	2650 15450 4150 15450
Wire Wire Line
	2650 15500 4150 15500
Wire Wire Line
	2650 15550 4150 15550
Wire Wire Line
	2650 15600 4150 15600
Wire Wire Line
	2650 15650 4150 15650
Wire Wire Line
	2650 15700 4150 15700
Wire Wire Line
	2650 15750 4150 15750
Wire Wire Line
	2650 15800 4150 15800
Wire Wire Line
	2650 15850 4150 15850
Wire Wire Line
	2650 15900 4150 15900
Wire Bus Line
	1300 5150 600  5150
Wire Bus Line
	600  5150 600  16400
Wire Bus Line
	1300 8050 650  8050
Wire Bus Line
	650  8050 650  16300
Wire Bus Line
	1300 10950 700  10950
Wire Bus Line
	1300 13850 750  13850
Wire Bus Line
	750  13850 750  16100
Wire Bus Line
	700  10950 700  16200
Wire Bus Line
	1300 13750 800  13750
Wire Bus Line
	800  13750 800  4300
Wire Bus Line
	1300 10850 850  10850
Wire Bus Line
	850  10850 850  4350
Wire Bus Line
	1300 7950 900  7950
Wire Bus Line
	900  7950 900  4400
Wire Bus Line
	1300 5050 950  5050
Wire Bus Line
	950  5050 950  4450
Wire Bus Line
	4500 4450 950  4450
Wire Bus Line
	900  4400 4400 4400
Wire Bus Line
	850  4350 2350 4350
Wire Bus Line
	800  4300 2250 4300
Wire Wire Line
	5250 5050 8850 5050
Wire Wire Line
	9150 5050 11850 5050
Connection ~ 14100 2150
Wire Wire Line
	14100 2150 14100 2350
Wire Wire Line
	14100 1850 14100 2150
Wire Wire Line
	14200 1850 14200 2050
Connection ~ 14200 2050
Wire Wire Line
	14200 2050 14200 2350
Wire Wire Line
	10000 5500 8050 5500
Wire Wire Line
	10000 2050 14200 2050
Wire Wire Line
	10100 5600 8050 5600
Wire Wire Line
	10100 2150 14100 2150
Wire Wire Line
	10000 5500 10000 8400
Wire Wire Line
	10000 8400 8050 8400
Connection ~ 10000 5500
Wire Wire Line
	8050 8500 10100 8500
Wire Wire Line
	10100 8500 10100 5600
Connection ~ 10100 5600
Wire Wire Line
	10000 8400 10000 11300
Wire Wire Line
	10000 11300 8050 11300
Connection ~ 10000 8400
Wire Wire Line
	10100 8500 10100 11400
Wire Wire Line
	10100 11400 8050 11400
Connection ~ 10100 8500
Wire Wire Line
	10000 11300 10000 14200
Wire Wire Line
	10000 14200 8050 14200
Connection ~ 10000 11300
Wire Wire Line
	8050 14300 10100 14300
Wire Wire Line
	10100 14300 10100 11400
Connection ~ 10100 11400
Wire Wire Line
	2350 2900 2750 2900
Wire Wire Line
	2350 2800 2650 2800
Wire Wire Line
	2350 2700 2750 2700
Wire Wire Line
	2350 2600 2650 2600
Wire Wire Line
	2350 2500 2750 2500
Wire Wire Line
	2350 2400 2650 2400
Wire Wire Line
	2350 2300 2750 2300
Wire Wire Line
	2350 2200 2650 2200
$Comp
L Device:Fuse F6
U 1 1 5FC95B82
P 11850 12500
F 0 "F6" H 11791 12454 50  0000 R CNN
F 1 "Fuse" H 11791 12545 50  0000 R CNN
F 2 "" V 11780 12500 50  0001 C CNN
F 3 "~" H 11850 12500 50  0001 C CNN
	1    11850 12500
	1    0    0    1   
$EndComp
Wire Wire Line
	16550 7400 16550 12900
Wire Wire Line
	13750 12500 15450 12500
Text Label 14500 12900 0    50   ~ 0
12_2
Wire Wire Line
	13150 12500 12850 12500
$Comp
L Relay:DIPxx-1Axx-11x K9
U 1 1 5EBDE2B9
P 13450 12700
F 0 "K9" V 12883 12700 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 12974 12700 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13800 12650 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13450 12700 50  0001 C CNN
	1    13450 12700
	0    1    1    0   
$EndComp
Wire Wire Line
	11850 11000 11850 12350
Wire Wire Line
	5250 13750 6100 13750
Wire Wire Line
	11850 7600 11850 10900
Connection ~ 16550 7400
Wire Wire Line
	17200 7400 18750 7400
Wire Wire Line
	17300 6950 17850 6950
Wire Wire Line
	17600 5400 17600 10900
Wire Wire Line
	13750 5950 15950 5950
Wire Wire Line
	10000 2050 10000 5500
Wire Wire Line
	10100 2150 10100 5600
Wire Bus Line
	600  16400 13650 16400
Wire Bus Line
	650  16300 13550 16300
Wire Bus Line
	700  16200 13450 16200
Wire Bus Line
	750  16100 13350 16100
Wire Bus Line
	13450 14700 19650 14700
Wire Bus Line
	19250 13450 19650 13450
Wire Bus Line
	19100 13750 19650 13750
Entry Bus Bus
	10600 6300 10700 6400
Entry Bus Bus
	10600 6400 10700 6500
Wire Bus Line
	8050 9200 10550 9200
Wire Bus Line
	8050 9300 10550 9300
Entry Bus Bus
	10550 9200 10650 9300
Entry Bus Bus
	10550 9300 10650 9400
Wire Bus Line
	8050 12100 10500 12100
Wire Bus Line
	8050 12200 10500 12200
Entry Bus Bus
	10500 12100 10600 12200
Entry Bus Bus
	10500 12200 10600 12300
Wire Bus Line
	8050 15000 10500 15000
Wire Bus Line
	8050 15100 10500 15100
Entry Bus Bus
	10500 15100 10600 15000
Entry Bus Bus
	10500 15000 10600 14900
Wire Bus Line
	8050 6400 10600 6400
Wire Bus Line
	8050 6300 10600 6300
Wire Notes Line
	21100 15000 21100 13350
Wire Bus Line
	13650 14900 19650 14900
Wire Bus Line
	13550 14800 19650 14800
Wire Notes Line
	19450 13350 19450 15000
Wire Bus Line
	20850 750  20850 11200
Wire Bus Line
	19100 11050 20700 11050
Wire Bus Line
	19250 11200 20850 11200
Connection ~ 12850 9300
Wire Wire Line
	12850 9300 12850 12500
Wire Wire Line
	15450 9300 15450 12500
Wire Wire Line
	12850 6550 12850 9300
Wire Wire Line
	14200 9700 14000 9700
Wire Wire Line
	14000 9700 14000 12900
Wire Wire Line
	15950 8450 15950 9700
Wire Wire Line
	17700 11000 17700 5500
Wire Wire Line
	17700 11000 11850 11000
Wire Wire Line
	17600 10900 11850 10900
Wire Bus Line
	10700 14000 19650 14000
Wire Bus Line
	10650 14100 19650 14100
Wire Bus Line
	10600 14200 19650 14200
Wire Bus Line
	10600 14300 19650 14300
Wire Bus Line
	13350 14600 19650 14600
Connection ~ 11850 6950
Wire Wire Line
	15450 2350 15450 3900
Connection ~ 15450 3900
Wire Wire Line
	11850 5050 11850 5950
Wire Wire Line
	13750 12900 14000 12900
Wire Wire Line
	5250 13850 11850 13850
Wire Wire Line
	11850 12650 11850 12900
Wire Wire Line
	11850 12900 13150 12900
Connection ~ 11850 12900
Wire Wire Line
	11850 12900 11850 13850
Connection ~ 14000 12900
Wire Wire Line
	14000 12900 16550 12900
Wire Bus Line
	20700 6300 20700 11050
Connection ~ 12850 5550
Wire Wire Line
	12850 2350 12850 5550
Wire Wire Line
	15450 3900 15450 9300
Connection ~ 15450 9300
Wire Wire Line
	14400 6550 14400 3550
Wire Wire Line
	13850 3850 13850 5550
Wire Bus Line
	13650 14900 13650 16400
Wire Bus Line
	13550 14800 13550 16300
Wire Bus Line
	13450 14700 13450 16200
Wire Bus Line
	13350 14600 13350 16100
Wire Bus Line
	19250 11200 19250 13450
Wire Bus Line
	19100 11050 19100 13750
Wire Bus Line
	10600 12200 10600 14200
Wire Bus Line
	10650 9300 10650 14100
Wire Bus Line
	10700 6400 10700 14000
Wire Bus Line
	2650 750  20850 750 
Wire Bus Line
	10600 14300 10600 15000
Wire Bus Line
	2550 850  2550 1800
Wire Bus Line
	18150 6300 20700 6300
Wire Bus Line
	4400 3350 4400 4400
Wire Bus Line
	4500 2300 4500 4450
Wire Bus Line
	2350 3350 2350 4350
Wire Bus Line
	2250 2300 2250 4300
$EndSCHEMATC
