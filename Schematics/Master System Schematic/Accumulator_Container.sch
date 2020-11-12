EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr C 22000 17000
encoding utf-8
Sheet 4 22
Title "Accumulator Container"
Date "2020-11-11"
Rev "5"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Relay:MSxx-1Bxx-75 K11
U 1 1 5E637554
P 13800 8350
F 0 "K11" V 13233 8350 50  0000 C CNN
F 1 "SPST-NC (Discharge)" V 13324 8350 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 14150 8300 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 13800 8350 50  0001 C CNN
	1    13800 8350
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F5
U 1 1 5E640862
P 10400 2800
F 0 "F5" V 10203 2800 50  0000 C CNN
F 1 "Fuse" V 10294 2800 50  0000 C CNN
F 2 "" V 10330 2800 50  0001 C CNN
F 3 "~" H 10400 2800 50  0001 C CNN
	1    10400 2800
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K9
U 1 1 5EBDE2B9
P 12950 9300
F 0 "K9" V 12383 9300 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 12474 9300 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13300 9250 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 12950 9300 50  0001 C CNN
	1    12950 9300
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K8
U 1 1 5EBE5BCF
P 12950 7350
F 0 "K8" V 12383 7350 50  0000 C CNN
F 1 "SPST-NO (AIR)" V 12474 7350 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13300 7300 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 12950 7350 50  0001 C CNN
	1    12950 7350
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K7
U 1 1 5EBEB71B
P 12950 6350
F 0 "K7" V 12383 6350 50  0000 C CNN
F 1 "SPST-NO (Precharge)" V 12474 6350 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13300 6300 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 12950 6350 50  0001 C CNN
	1    12950 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	13250 9500 13450 9500
Connection ~ 13450 9500
Wire Wire Line
	11800 7550 12650 7550
Wire Wire Line
	12650 6150 12350 6150
Wire Wire Line
	12350 6150 12350 7150
Wire Wire Line
	12650 9100 12350 9100
Wire Wire Line
	12650 7150 12350 7150
Connection ~ 12350 7150
Wire Wire Line
	12350 7150 12350 8150
Wire Wire Line
	13500 8150 12350 8150
Connection ~ 12350 8150
Wire Wire Line
	12350 8150 12350 9100
Wire Wire Line
	13250 6150 13350 6150
Wire Wire Line
	13450 8550 13500 8550
$Comp
L Device:R R3
U 1 1 5F158D54
P 15450 7950
F 0 "R3" H 15250 8000 50  0000 L CNN
F 1 "3.3k" H 15200 7900 50  0000 L CNN
F 2 "" V 15380 7950 50  0001 C CNN
F 3 "~" H 15450 7950 50  0001 C CNN
	1    15450 7950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F159E72
P 15450 7150
F 0 "R2" H 15250 7200 50  0000 L CNN
F 1 "600" H 15200 7100 50  0000 L CNN
F 2 "" V 15380 7150 50  0001 C CNN
F 3 "~" H 15450 7150 50  0001 C CNN
	1    15450 7150
	1    0    0    -1  
$EndComp
Text Label 7800 9500 0    50   ~ 0
1_2
Text Label 7800 9400 0    50   ~ 0
2_2
Text Label 7800 9250 0    50   ~ 0
3_2
Text Label 7800 7200 0    50   ~ 0
4_2
Text Label 7800 7050 0    50   ~ 0
5_2
Text Label 7800 4850 0    50   ~ 0
7_2
Text Label 7800 2800 0    50   ~ 0
8_2
Text Label 10650 2800 0    50   ~ 0
9_2
Text Label 13700 7550 0    50   ~ 0
10_2
Text Label 14400 6550 0    50   ~ 0
11_2
Text Label 14000 9500 0    50   ~ 0
12_2
Text Label 12350 5600 0    50   ~ 0
25_20
Text Label 14950 5650 0    50   ~ 0
26_20
Text Label 14300 8550 0    50   ~ 0
13_2
Text Label 13350 5500 2    50   ~ 0
27_20
Text Label 13900 6950 0    50   ~ 0
28_20
$Comp
L Device:R R4
U 1 1 5F2AF3BD
P 15950 7150
F 0 "R4" H 16020 7196 50  0000 L CNN
F 1 "10k" H 16020 7105 50  0000 L CNN
F 2 "" V 15880 7150 50  0001 C CNN
F 3 "~" H 15950 7150 50  0001 C CNN
	1    15950 7150
	-1   0    0    -1  
$EndComp
Connection ~ 12350 6150
Wire Wire Line
	14250 2450 13900 2450
Wire Wire Line
	13900 2450 13900 2600
$Comp
L Device:R R5
U 1 1 5F39A796
P 16050 7150
F 0 "R5" H 16120 7196 50  0000 L CNN
F 1 "10k" H 16120 7105 50  0000 L CNN
F 2 "" V 15980 7150 50  0001 C CNN
F 3 "~" H 16050 7150 50  0001 C CNN
	1    16050 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F9
U 1 1 5F14BDC4
P 16800 7150
F 0 "F9" H 16741 7104 50  0000 R CNN
F 1 "Fuse" H 16741 7195 50  0000 R CNN
F 2 "" V 16730 7150 50  0001 C CNN
F 3 "~" H 16800 7150 50  0001 C CNN
	1    16800 7150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	16800 7300 16800 7550
Text Label 16600 4850 0    50   ~ 0
29_20
Text Label 16700 4950 0    50   ~ 0
30_20
Text Label 16900 5150 0    50   ~ 0
31_20
Text Label 17050 5050 2    50   ~ 0
32_20
Text Label 7800 5000 0    50   ~ 0
6_2
Text HLabel 14250 2450 2    50   Input ~ 0
MotorController_AIR_Control+
Text HLabel 13300 2250 0    50   Input ~ 0
Shutdown+
Text HLabel 13300 2150 0    50   Input ~ 0
Shutdown-
Wire Wire Line
	13700 2150 13300 2150
Text HLabel 19150 7550 2    50   Output ~ 0
TS+
Text HLabel 19150 7650 2    50   Output ~ 0
TS-
Text HLabel 17950 5050 2    50   Output ~ 0
IMD_HV_SENSE-
Text HLabel 17950 5150 2    50   Output ~ 0
IMD_HV_SENSE+
Text HLabel 17950 4950 2    50   Output ~ 0
TSMP-
Text HLabel 17950 4850 2    50   Output ~ 0
TSMP+
Wire Wire Line
	15950 7550 15950 7300
Wire Wire Line
	19150 7550 18800 7550
Wire Wire Line
	18800 7650 19150 7650
Text HLabel 10900 11350 2    50   Output ~ 0
Segment1_VoltageTaps
Text HLabel 10900 11250 2    50   Output ~ 0
Segment2_VoltageTaps
Text HLabel 10900 11150 2    50   Output ~ 0
Segment3_VoltageTaps
Text HLabel 10900 11050 2    50   Output ~ 0
Segment4_VoltageTaps
$Comp
L Device:Fuse F8
U 1 1 5F6433FB
P 16700 7150
F 0 "F8" H 16641 7104 50  0000 R CNN
F 1 "Fuse" H 16641 7195 50  0000 R CNN
F 2 "" V 16630 7150 50  0001 C CNN
F 3 "~" H 16700 7150 50  0001 C CNN
	1    16700 7150
	1    0    0    1   
$EndComp
Wire Wire Line
	15950 7550 16800 7550
Connection ~ 16800 7550
Wire Wire Line
	16800 7550 17350 7550
Wire Wire Line
	16050 8000 16700 8000
Connection ~ 16700 8000
Wire Wire Line
	16700 5050 17350 5050
Wire Wire Line
	16800 5150 17350 5150
Wire Wire Line
	15950 4850 17350 4850
Wire Wire Line
	16050 4950 17350 4950
$Comp
L Relay:DIPxx-1Axx-11x K10
U 1 1 5F80B7CF
P 13150 4600
F 0 "K10" V 12583 4600 50  0000 C CNN
F 1 "SPST-NO (Precharge Control)" V 12674 4600 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 13500 4550 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 13150 4600 50  0001 C CNN
	1    13150 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	13350 5100 12750 5100
Wire Wire Line
	12750 5100 12750 4800
Wire Wire Line
	12750 4800 12850 4800
Wire Wire Line
	13450 4800 13750 4800
Wire Wire Line
	13900 4800 14000 4800
Wire Wire Line
	13750 4800 13750 5150
Wire Wire Line
	13900 4400 14000 4400
Wire Wire Line
	14600 4400 14700 4400
Wire Wire Line
	13250 9100 14950 9100
Wire Wire Line
	14100 8150 14950 8150
Connection ~ 14950 8150
Wire Wire Line
	14950 8150 14950 9100
Wire Wire Line
	13750 5150 14700 5150
Wire Wire Line
	13350 6150 13350 5100
Connection ~ 14950 5150
Wire Wire Line
	14950 5150 14950 8150
Wire Wire Line
	13900 7150 13900 4800
Wire Wire Line
	13250 7150 13900 7150
Wire Notes Line
	12500 3700 14800 3700
Wire Notes Line
	14800 5350 12500 5350
Wire Wire Line
	14950 3600 14950 5150
Wire Wire Line
	14600 4800 14700 4800
Wire Wire Line
	14700 4800 14700 5150
Connection ~ 14700 5150
Wire Wire Line
	14700 5150 14950 5150
Wire Notes Line
	14800 5350 14800 3700
Wire Notes Line
	12500 3700 12500 5350
Text Notes 12550 5300 0    50   ~ 0
MC Control Relay PCB
$Comp
L Relay:DIPxx-1Axx-11x K12
U 1 1 5F814F76
P 14300 4600
F 0 "K12" V 13733 4600 50  0000 C CNN
F 1 "SPST-NO (AIR Control)" V 13824 4600 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 14650 4550 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 14300 4600 50  0001 C CNN
	1    14300 4600
	0    1    1    0   
$EndComp
Text HLabel 8250 7050 2    50   Input ~ 0
HVD-
Text HLabel 8250 7200 2    50   Input ~ 0
HVD+
Text HLabel 8250 4850 2    50   Input ~ 0
SMD_2-
Text HLabel 8250 5000 2    50   Input ~ 0
SMD_2+
Text HLabel 8250 9250 2    50   Input ~ 0
SMD_1-
Text HLabel 8250 9400 2    50   Input ~ 0
SMD_1+
Connection ~ 11800 6550
Wire Wire Line
	11800 6550 12650 6550
Wire Wire Line
	11800 6550 11800 7550
Connection ~ 15950 7550
Connection ~ 16050 8000
Wire Wire Line
	16050 8000 16050 9500
Wire Wire Line
	13300 2250 13600 2250
Wire Wire Line
	13450 9500 16050 9500
Wire Wire Line
	13250 7550 15450 7550
Wire Wire Line
	15450 6550 15450 7000
Wire Wire Line
	13250 6550 15450 6550
Wire Wire Line
	15450 7300 15450 7550
Connection ~ 15450 7550
Wire Wire Line
	15450 7550 15950 7550
Wire Wire Line
	15450 7800 15450 7550
Wire Wire Line
	15450 8100 15450 8550
Wire Wire Line
	14100 8550 15450 8550
$Comp
L NER:2-Pos_Generic J10
U 1 1 5F84E6B9
P 18550 7450
F 0 "J10" H 18550 7575 50  0000 C CNN
F 1 "Main TS Connector" H 18550 7484 50  0000 C CNN
F 2 "" H 18550 7450 50  0001 C CNN
F 3 "" H 18550 7450 50  0001 C CNN
	1    18550 7450
	1    0    0    -1  
$EndComp
$Comp
L NER:4-Pos_Generic J9
U 1 1 5F95323D
P 17600 4750
F 0 "J9" H 17600 4875 50  0000 C CNN
F 1 "TSMP/IMD Connector" H 17600 4784 50  0000 C CNN
F 2 "" H 17600 4750 50  0001 C CNN
F 3 "" H 17600 4750 50  0001 C CNN
	1    17600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	17850 4850 17950 4850
Wire Wire Line
	17850 4950 17950 4950
Wire Wire Line
	17850 5050 17950 5050
Wire Wire Line
	17850 5150 17950 5150
$Comp
L NER:6-Pos_Generic J8
U 1 1 5FAB592D
P 14000 2850
F 0 "J8" V 13954 2838 50  0000 L CNN
F 1 "Shutdown/MC Control Connector" V 14045 2838 50  0000 L CNN
F 2 "" H 14000 2850 50  0001 C CNN
F 3 "" H 14000 2850 50  0001 C CNN
	1    14000 2850
	0    1    1    0   
$EndComp
$Comp
L NER:OrionCurrentSens U14
U 1 1 5F8DBC0B
P 17750 7700
F 0 "U14" H 17750 7723 50  0000 C CNN
F 1 "OrionCurrentSens" H 17750 7814 50  0000 C CNN
F 2 "" H 17750 7700 50  0001 C CNN
F 3 "" H 17750 7700 50  0001 C CNN
	1    17750 7700
	1    0    0    1   
$EndComp
Wire Wire Line
	16050 7300 16050 8000
Wire Wire Line
	16700 7300 16700 8000
Wire Wire Line
	18250 8000 18250 7650
Wire Wire Line
	18250 7650 18300 7650
Wire Wire Line
	16700 8000 18250 8000
Wire Wire Line
	18150 7550 18300 7550
Wire Wire Line
	18000 7050 18000 7000
Wire Wire Line
	17850 7050 17850 7000
Wire Wire Line
	17700 7050 17700 7000
Wire Wire Line
	17550 7050 17550 7000
Entry Wire Line
	17550 7000 17650 6900
Entry Wire Line
	17700 7000 17800 6900
Entry Wire Line
	17850 7000 17950 6900
Entry Wire Line
	18000 7000 18100 6900
Wire Bus Line
	19650 10500 10450 10500
Wire Bus Line
	19650 6900 19650 10500
Text Notes 18900 10450 2    50   ~ 0
Current sense line will be fed from the accumulator to the BMS via its own connector
Wire Bus Line
	10450 10500 10450 10700
Wire Bus Line
	10450 10700 10900 10700
Text HLabel 10900 10700 2    50   Output ~ 0
Current_Sensor
Wire Wire Line
	19700 5800 19800 5800
Wire Wire Line
	19700 5700 19800 5700
$Comp
L NER:2-Pos_Generic J11
U 1 1 5F95267C
P 19450 5600
F 0 "J11" H 19450 5725 50  0000 C CNN
F 1 "TSAL Connector" H 19450 5634 50  0000 C CNN
F 2 "" H 19450 5600 50  0001 C CNN
F 3 "" H 19450 5600 50  0001 C CNN
	1    19450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	18250 5800 19200 5800
Wire Wire Line
	18250 5700 19200 5700
$Sheet
S 17550 5600 700  550 
U 5FAAF22F
F0 "TSAL_Circuit" 50
F1 "TSAL_Circuit.sch" 50
F2 "TS+" I L 17550 5700 50 
F3 "TS-" I L 17550 5800 50 
F4 "TSAL+" I R 18250 5700 50 
F5 "TSAL-" I R 18250 5800 50 
F6 "VBATT+" I L 17550 6000 50 
F7 "VBATT-" I L 17550 6100 50 
$EndSheet
Text HLabel 19800 5800 2    50   Output ~ 0
TSAL-
Text HLabel 19800 5700 2    50   Output ~ 0
TSAL+
Text Label 18600 5800 0    50   ~ 0
22_20
Text Label 18600 5700 0    50   ~ 0
21_20
Wire Wire Line
	15950 4850 15950 7000
Wire Wire Line
	16050 4950 16050 7000
Wire Wire Line
	16800 5150 16800 5700
Wire Wire Line
	16700 5050 16700 5800
Wire Wire Line
	16800 5700 17550 5700
Connection ~ 16800 5700
Wire Wire Line
	16800 5700 16800 7000
Wire Wire Line
	16700 5800 17550 5800
Connection ~ 16700 5800
Wire Wire Line
	16700 5800 16700 7000
Wire Wire Line
	17550 6000 17100 6000
Wire Wire Line
	17100 6000 17100 9950
Wire Wire Line
	17100 9950 11350 9950
Wire Wire Line
	17550 6100 17200 6100
Wire Wire Line
	17200 6100 17200 10050
Wire Wire Line
	17200 10050 11250 10050
$Comp
L Device:Fuse F7
U 1 1 5FC950C3
P 11350 6950
F 0 "F7" H 11410 6996 50  0000 L CNN
F 1 "Fuse" H 11410 6905 50  0000 L CNN
F 2 "" V 11280 6950 50  0001 C CNN
F 3 "~" H 11350 6950 50  0001 C CNN
	1    11350 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F6
U 1 1 5FC95B82
P 11250 9800
F 0 "F6" H 11191 9754 50  0000 R CNN
F 1 "Fuse" H 11191 9845 50  0000 R CNN
F 2 "" V 11180 9800 50  0001 C CNN
F 3 "~" H 11250 9800 50  0001 C CNN
	1    11250 9800
	1    0    0    1   
$EndComp
Wire Wire Line
	11350 7100 11350 9950
Wire Wire Line
	11350 6800 11350 6550
Wire Wire Line
	11350 6550 11800 6550
$Sheet
S 7700 3200 1450 1050
U 602C1575
F0 "Voltage Tap PCB 4" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 7700 3250 30 
F3 "ParallelCells_Row1" I L 7700 3300 30 
F4 "ParallelCells_Row2" I L 7700 3350 30 
F5 "ParallelCells_Row3" I L 7700 3400 30 
F6 "ParallelCells_Row4" I L 7700 3450 30 
F7 "ParallelCells_Row5" I L 7700 3500 30 
F8 "ParallelCells_Row6" I L 7700 3550 30 
F9 "ParallelCells_Row7" I L 7700 3600 30 
F10 "ParallelCells_Row8" I L 7700 3650 30 
F11 "ParallelCells_Row9" I L 7700 3700 30 
F12 "Shutdown+" I R 9150 3350 50 
F13 "Shutdown-" I R 9150 3250 50 
F14 "ParallelCells_Row16" I L 7700 4050 30 
F15 "ParallelCells_Row17" I L 7700 4100 30 
F16 "ParallelCells_Row15" I L 7700 4000 30 
F17 "ParallelCells_Row14" I L 7700 3950 30 
F18 "ParallelCells_Row13" I L 7700 3900 30 
F19 "ParallelCells_Row12" I L 7700 3850 30 
F20 "ParallelCells_Row11" I L 7700 3800 30 
F21 "ParallelCells_Row10" I L 7700 3750 30 
F22 "ParallelCells_Row18" I L 7700 4150 30 
F23 "VoltageTaps(1-12)" O R 9150 4050 50 
F24 "VoltageTaps(13-24)" O R 9150 4150 50 
$EndSheet
$Sheet
S 7700 5400 1450 1050
U 605A4F7F
F0 "Voltage Tap PCB 3" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 7700 5450 30 
F3 "ParallelCells_Row1" I L 7700 5500 30 
F4 "ParallelCells_Row2" I L 7700 5550 30 
F5 "ParallelCells_Row3" I L 7700 5600 30 
F6 "ParallelCells_Row4" I L 7700 5650 30 
F7 "ParallelCells_Row5" I L 7700 5700 30 
F8 "ParallelCells_Row6" I L 7700 5750 30 
F9 "ParallelCells_Row7" I L 7700 5800 30 
F10 "ParallelCells_Row8" I L 7700 5850 30 
F11 "ParallelCells_Row9" I L 7700 5900 30 
F12 "Shutdown+" I R 9150 5550 50 
F13 "Shutdown-" I R 9150 5450 50 
F14 "ParallelCells_Row16" I L 7700 6250 30 
F15 "ParallelCells_Row17" I L 7700 6300 30 
F16 "ParallelCells_Row15" I L 7700 6200 30 
F17 "ParallelCells_Row14" I L 7700 6150 30 
F18 "ParallelCells_Row13" I L 7700 6100 30 
F19 "ParallelCells_Row12" I L 7700 6050 30 
F20 "ParallelCells_Row11" I L 7700 6000 30 
F21 "ParallelCells_Row10" I L 7700 5950 30 
F22 "ParallelCells_Row18" I L 7700 6350 30 
F23 "VoltageTaps(1-12)" O R 9150 6250 50 
F24 "VoltageTaps(13-24)" O R 9150 6350 50 
$EndSheet
$Sheet
S 7700 7600 1450 1050
U 605AC384
F0 "Voltage Tap PCB 2" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 7700 7650 30 
F3 "ParallelCells_Row1" I L 7700 7700 30 
F4 "ParallelCells_Row2" I L 7700 7750 30 
F5 "ParallelCells_Row3" I L 7700 7800 30 
F6 "ParallelCells_Row4" I L 7700 7850 30 
F7 "ParallelCells_Row5" I L 7700 7900 30 
F8 "ParallelCells_Row6" I L 7700 7950 30 
F9 "ParallelCells_Row7" I L 7700 8000 30 
F10 "ParallelCells_Row8" I L 7700 8050 30 
F11 "ParallelCells_Row9" I L 7700 8100 30 
F12 "Shutdown+" I R 9150 7750 50 
F13 "Shutdown-" I R 9150 7650 50 
F14 "ParallelCells_Row16" I L 7700 8450 30 
F15 "ParallelCells_Row17" I L 7700 8500 30 
F16 "ParallelCells_Row15" I L 7700 8400 30 
F17 "ParallelCells_Row14" I L 7700 8350 30 
F18 "ParallelCells_Row13" I L 7700 8300 30 
F19 "ParallelCells_Row12" I L 7700 8250 30 
F20 "ParallelCells_Row11" I L 7700 8200 30 
F21 "ParallelCells_Row10" I L 7700 8150 30 
F22 "ParallelCells_Row18" I L 7700 8550 30 
F23 "VoltageTaps(1-12)" O R 9150 8450 50 
F24 "VoltageTaps(13-24)" O R 9150 8550 50 
$EndSheet
$Sheet
S 7700 9800 1450 1050
U 605B3BFB
F0 "Voltage Tap PCB 1" 50
F1 "VT_PCB.sch" 50
F2 "ParallelCells_GND" I L 7700 9850 30 
F3 "ParallelCells_Row1" I L 7700 9900 30 
F4 "ParallelCells_Row2" I L 7700 9950 30 
F5 "ParallelCells_Row3" I L 7700 10000 30 
F6 "ParallelCells_Row4" I L 7700 10050 30 
F7 "ParallelCells_Row5" I L 7700 10100 30 
F8 "ParallelCells_Row6" I L 7700 10150 30 
F9 "ParallelCells_Row7" I L 7700 10200 30 
F10 "ParallelCells_Row8" I L 7700 10250 30 
F11 "ParallelCells_Row9" I L 7700 10300 30 
F12 "Shutdown+" I R 9150 9950 50 
F13 "Shutdown-" I R 9150 9850 50 
F14 "ParallelCells_Row16" I L 7700 10650 30 
F15 "ParallelCells_Row17" I L 7700 10700 30 
F16 "ParallelCells_Row15" I L 7700 10600 30 
F17 "ParallelCells_Row14" I L 7700 10550 30 
F18 "ParallelCells_Row13" I L 7700 10500 30 
F19 "ParallelCells_Row12" I L 7700 10450 30 
F20 "ParallelCells_Row11" I L 7700 10400 30 
F21 "ParallelCells_Row10" I L 7700 10350 30 
F22 "ParallelCells_Row18" I L 7700 10750 30 
F23 "VoltageTaps(1-12)" O R 9150 10650 50 
F24 "VoltageTaps(13-24)" O R 9150 10750 50 
$EndSheet
Wire Wire Line
	7550 9250 8250 9250
Wire Wire Line
	7400 9400 8250 9400
Wire Wire Line
	7400 7300 7550 7300
Wire Wire Line
	7400 7650 7700 7650
Wire Wire Line
	7400 7700 7700 7700
Wire Wire Line
	7400 7750 7700 7750
Wire Wire Line
	7400 7800 7700 7800
Wire Wire Line
	7400 7850 7700 7850
Wire Wire Line
	7400 7900 7700 7900
Wire Wire Line
	7400 7950 7700 7950
Wire Wire Line
	7400 8000 7700 8000
Wire Wire Line
	7400 8050 7700 8050
Wire Wire Line
	7400 8100 7700 8100
Wire Wire Line
	7400 8150 7700 8150
Wire Wire Line
	7400 8200 7700 8200
Wire Wire Line
	7400 8250 7700 8250
Wire Wire Line
	7400 8300 7700 8300
Wire Wire Line
	7400 8350 7700 8350
Wire Wire Line
	7400 8400 7700 8400
Wire Wire Line
	7400 8450 7700 8450
Wire Wire Line
	7400 8500 7700 8500
Wire Wire Line
	7400 8550 7700 8550
Wire Wire Line
	7550 7050 8250 7050
Wire Wire Line
	7400 7200 8250 7200
Wire Wire Line
	7550 5100 7400 5100
Wire Wire Line
	7550 4850 8250 4850
Wire Wire Line
	7400 5000 8250 5000
Wire Wire Line
	7550 2900 7400 2900
Wire Wire Line
	7400 9850 7700 9850
Wire Wire Line
	7400 9900 7700 9900
Wire Wire Line
	7400 9950 7700 9950
Wire Wire Line
	7400 10000 7700 10000
Wire Wire Line
	7400 10050 7700 10050
Wire Wire Line
	7400 10100 7700 10100
Wire Wire Line
	7400 10150 7700 10150
Wire Wire Line
	7400 10200 7700 10200
Wire Wire Line
	7400 10250 7700 10250
Wire Wire Line
	7400 10300 7700 10300
Wire Wire Line
	7400 10350 7700 10350
Wire Wire Line
	7400 10400 7700 10400
Wire Wire Line
	7400 10450 7700 10450
Wire Wire Line
	7400 10500 7700 10500
Wire Wire Line
	7400 10550 7700 10550
Wire Wire Line
	7400 10600 7700 10600
Wire Wire Line
	7400 10650 7700 10650
Wire Wire Line
	7400 10700 7700 10700
Wire Wire Line
	7400 10750 7700 10750
Wire Wire Line
	7400 5450 7700 5450
Wire Wire Line
	7400 5500 7700 5500
Wire Wire Line
	7400 5550 7700 5550
Wire Wire Line
	7400 5600 7700 5600
Wire Wire Line
	7400 5650 7700 5650
Wire Wire Line
	7400 5700 7700 5700
Wire Wire Line
	7400 5750 7700 5750
Wire Wire Line
	7400 5800 7700 5800
Wire Wire Line
	7400 5850 7700 5850
Wire Wire Line
	7400 5900 7700 5900
Wire Wire Line
	7400 5950 7700 5950
Wire Wire Line
	7400 6000 7700 6000
Wire Wire Line
	7400 6050 7700 6050
Wire Wire Line
	7400 6100 7700 6100
Wire Wire Line
	7400 6150 7700 6150
Wire Wire Line
	7400 6200 7700 6200
Wire Wire Line
	7400 6250 7700 6250
Wire Wire Line
	7400 6300 7700 6300
Wire Wire Line
	7400 6350 7700 6350
Wire Wire Line
	7400 3250 7700 3250
Wire Wire Line
	7400 3300 7700 3300
Wire Wire Line
	7400 3350 7700 3350
Wire Wire Line
	7400 3400 7700 3400
Wire Wire Line
	7400 3450 7700 3450
Wire Wire Line
	7400 3500 7700 3500
Wire Wire Line
	7400 3550 7700 3550
Wire Wire Line
	7400 3600 7700 3600
Wire Wire Line
	7400 3650 7700 3650
Wire Wire Line
	7400 3700 7700 3700
Wire Wire Line
	7400 3750 7700 3750
Wire Wire Line
	7400 3800 7700 3800
Wire Wire Line
	7400 3850 7700 3850
Wire Wire Line
	7400 3900 7700 3900
Wire Wire Line
	7400 3950 7700 3950
Wire Wire Line
	7400 4000 7700 4000
Wire Wire Line
	7400 4050 7700 4050
Wire Wire Line
	7400 4100 7700 4100
Wire Wire Line
	7400 4150 7700 4150
Wire Bus Line
	9150 4050 9900 4050
Wire Bus Line
	9150 4150 9900 4150
Entry Bus Bus
	9900 4050 10000 4150
Entry Bus Bus
	9900 4150 10000 4250
Entry Bus Bus
	9800 6250 9900 6350
Entry Bus Bus
	9800 6350 9900 6450
Wire Bus Line
	9150 6350 9800 6350
Wire Bus Line
	9150 8450 9700 8450
Wire Bus Line
	9150 8550 9700 8550
Entry Bus Bus
	9700 8450 9800 8550
Entry Bus Bus
	9700 8550 9800 8650
Wire Bus Line
	9150 10650 9600 10650
Wire Bus Line
	9150 10750 9600 10750
Entry Bus Bus
	9600 10650 9700 10750
Entry Bus Bus
	9600 10750 9700 10850
Wire Wire Line
	10550 2800 11350 2800
Wire Wire Line
	11350 2800 11350 6550
Connection ~ 11350 6550
Wire Wire Line
	7550 7300 7550 9250
Wire Wire Line
	7550 5100 7550 7050
Wire Wire Line
	7550 2900 7550 4850
Connection ~ 10700 5450
Wire Wire Line
	10700 5450 10700 7650
Connection ~ 10800 5550
Wire Wire Line
	10800 5550 10800 7750
Wire Wire Line
	10700 7650 10700 9850
Connection ~ 10700 7650
Wire Wire Line
	10800 7750 10800 9950
Connection ~ 10800 7750
Wire Wire Line
	11250 9950 11250 10050
Wire Wire Line
	11250 9650 11250 9500
Wire Bus Line
	9150 6250 9800 6250
Wire Wire Line
	7400 2800 10250 2800
Wire Wire Line
	7400 9500 11250 9500
Connection ~ 11250 9500
Wire Wire Line
	10700 3250 10700 5450
Wire Wire Line
	10800 3350 10800 5550
Connection ~ 10700 3250
Connection ~ 10800 3350
Wire Wire Line
	9150 3350 10800 3350
Wire Wire Line
	9150 3250 10700 3250
Wire Wire Line
	9150 5450 10700 5450
Wire Wire Line
	9150 5550 10800 5550
Wire Wire Line
	9150 7750 10800 7750
Wire Wire Line
	9150 7650 10700 7650
Wire Wire Line
	9150 9950 10800 9950
Wire Wire Line
	9150 9850 10700 9850
Wire Wire Line
	13450 8550 13450 9500
Wire Wire Line
	11250 9500 12650 9500
Wire Bus Line
	10000 11050 10900 11050
Wire Bus Line
	9900 11150 10900 11150
Wire Bus Line
	9800 11250 10900 11250
Wire Bus Line
	9700 11350 10900 11350
Wire Wire Line
	12350 3600 12350 6150
Wire Wire Line
	12750 4400 12850 4400
Wire Wire Line
	12750 3950 12750 4400
Wire Wire Line
	13400 2450 13400 2600
Wire Wire Line
	13300 2450 13400 2450
Text HLabel 13300 2450 0    50   Input ~ 0
MotorController_Precharge+
Wire Wire Line
	13750 4400 13750 4800
Wire Wire Line
	13450 4400 13750 4400
Connection ~ 13750 4800
Wire Wire Line
	13900 3100 13900 4400
Wire Wire Line
	14700 4400 14700 4800
Connection ~ 14700 4800
Wire Wire Line
	13700 3100 13700 3350
Wire Wire Line
	13700 3600 14950 3600
Connection ~ 13700 3350
Wire Wire Line
	13700 3350 13700 3600
Wire Wire Line
	10800 3350 13700 3350
Wire Wire Line
	13600 3100 13600 3250
Wire Wire Line
	12350 3600 13600 3600
Connection ~ 13600 3250
Wire Wire Line
	13600 3250 13600 3600
Wire Wire Line
	10700 3250 13600 3250
Wire Wire Line
	13400 3100 13400 3950
Wire Wire Line
	12750 3950 13400 3950
Wire Wire Line
	13600 2250 13600 2600
Wire Wire Line
	13700 2150 13700 2600
Entry Wire Line
	4400 14800 4300 14700
Entry Wire Line
	4400 14600 4300 14500
Entry Wire Line
	4400 14500 4300 14400
Entry Wire Line
	4400 14400 4300 14300
Entry Wire Line
	4400 14300 4300 14200
Entry Wire Line
	4400 14200 4300 14100
Entry Wire Line
	4400 14100 4300 14000
Entry Wire Line
	4350 15150 4250 15050
Entry Wire Line
	4350 15250 4250 15150
Entry Wire Line
	4350 15350 4250 15250
Entry Wire Line
	4350 15450 4250 15350
Entry Wire Line
	4350 15550 4250 15450
Entry Wire Line
	4350 15650 4250 15550
Entry Wire Line
	4350 15750 4250 15650
Entry Wire Line
	4350 15850 4250 15750
NoConn ~ 4650 13600
NoConn ~ 4650 13700
NoConn ~ 6050 13400
Text HLabel 10900 11550 2    50   Output ~ 0
Segment1_CriticalThermistors
Text HLabel 10900 11650 2    50   Output ~ 0
Segment2_CriticalThermistors
Text HLabel 10900 11750 2    50   Output ~ 0
Segment3_CriticalThermistors
Text HLabel 10900 11850 2    50   Output ~ 0
Segment4_CriticalThermistors
Wire Wire Line
	4400 14100 4550 14100
Wire Wire Line
	4400 14200 4650 14200
Wire Wire Line
	4400 14300 4550 14300
Wire Wire Line
	4400 14400 4650 14400
Wire Wire Line
	4400 14500 4550 14500
Wire Wire Line
	4400 14600 4650 14600
Wire Wire Line
	4400 14700 4550 14700
Wire Wire Line
	4400 14800 4650 14800
Entry Wire Line
	4400 14700 4300 14600
Wire Wire Line
	4350 15150 4550 15150
Wire Wire Line
	4350 15250 4650 15250
Wire Wire Line
	4350 15350 4550 15350
Wire Wire Line
	4350 15450 4650 15450
Wire Wire Line
	4350 15550 4550 15550
Wire Wire Line
	4350 15650 4650 15650
Wire Wire Line
	4350 15750 4550 15750
Wire Wire Line
	4350 15850 4650 15850
Entry Wire Line
	6300 14800 6400 14900
Entry Wire Line
	6300 14700 6400 14800
Entry Wire Line
	6300 14600 6400 14700
Entry Wire Line
	6300 14500 6400 14600
Entry Wire Line
	6300 14400 6400 14500
Entry Wire Line
	6300 14300 6400 14400
Entry Wire Line
	6300 14200 6400 14300
Entry Wire Line
	6300 14100 6400 14200
Wire Wire Line
	6200 15850 6050 15850
Wire Wire Line
	6200 15750 6150 15750
Wire Wire Line
	6200 15650 6050 15650
Wire Wire Line
	6150 15550 6200 15550
Wire Wire Line
	6200 15450 6050 15450
Wire Wire Line
	6200 15350 6150 15350
Wire Wire Line
	6200 15250 6050 15250
Wire Wire Line
	6200 15150 6150 15150
Entry Wire Line
	6200 15850 6300 15950
Entry Wire Line
	6200 15750 6300 15850
Entry Wire Line
	6200 15650 6300 15750
Entry Wire Line
	6200 15550 6300 15650
Entry Wire Line
	6200 15450 6300 15550
Entry Wire Line
	6200 15350 6300 15450
Entry Wire Line
	6200 15250 6300 15350
Entry Wire Line
	6200 15150 6300 15250
Wire Bus Line
	4200 16050 6300 16050
Wire Bus Line
	4150 16100 6400 16100
Wire Wire Line
	6050 14800 6300 14800
Wire Wire Line
	6150 14700 6300 14700
Wire Wire Line
	6050 14600 6300 14600
Wire Wire Line
	6150 14500 6300 14500
Wire Wire Line
	6050 14400 6300 14400
Wire Wire Line
	6150 14300 6300 14300
Wire Wire Line
	6050 14200 6300 14200
Wire Wire Line
	6150 14100 6300 14100
Wire Wire Line
	4650 13500 4550 13500
Text HLabel 10900 12150 2    50   Output ~ 0
Thermistor_Expansion
Entry Wire Line
	4450 13700 4550 13800
$Comp
L NER:OrionThermExp U?
U 1 1 5FB81724
P 5350 13200
AR Path="/60D53BFB/5FB81724" Ref="U?"  Part="1" 
AR Path="/5F45B05E/5FB81724" Ref="U7"  Part="1" 
F 0 "U7" H 5350 13365 50  0000 C CNN
F 1 "OrionThermExp" H 5350 13274 50  0000 C CNN
F 2 "" H 5350 13100 50  0001 C CNN
F 3 "" H 5350 13100 50  0001 C CNN
	1    5350 13200
	-1   0    0    -1  
$EndComp
Entry Wire Line
	4450 13400 4550 13500
Wire Wire Line
	4650 13800 4550 13800
Entry Wire Line
	4450 13300 4550 13400
Wire Wire Line
	4650 13400 4550 13400
Wire Wire Line
	6050 13800 6150 13800
Entry Wire Line
	6150 13800 6250 13700
Wire Bus Line
	6250 13700 6250 12750
Entry Bus Bus
	6250 12750 6350 12650
Entry Bus Bus
	4450 12750 4550 12650
Wire Notes Line
	10700 10600 10700 12300
Wire Notes Line
	10700 12300 12350 12300
Wire Notes Line
	12350 12300 12350 10600
Wire Notes Line
	12350 10600 10700 10600
Text Notes 10700 12400 0    50   ~ 0
All leave the accumulator container via cord grips
$Sheet
S 5650 9350 1100 2250
U 5F7F6054
F0 "Battery Segment 1" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 6750 9400 50 
F3 "Segment-" O R 6750 9500 50 
F4 "ThermistorA" O L 5650 9400 30 
F5 "ThermistorB" O L 5650 9500 30 
F6 "ThermistorC" O L 5650 9600 30 
F7 "ThermistorD" O L 5650 9700 30 
F8 "ThermistorE" O L 5650 9800 30 
F9 "ThermistorF" O L 5650 9900 30 
F10 "ThermistorG" O L 5650 10000 30 
F11 "ThermistorH" O L 5650 10100 30 
F12 "ThermistorI" O L 5650 10200 30 
F13 "ThermistorJ" O L 5650 10300 30 
F14 "ThermistorK" O L 5650 10400 30 
F15 "ThermistorL" O L 5650 10500 30 
F16 "ThermistorM" O L 5650 10600 30 
F17 "ThermistorN" O L 5650 10700 30 
F18 "ThermistorO" O L 5650 10800 30 
F19 "ThermistorP" O L 5650 10900 30 
F20 "ThermistorQ" O L 5650 11000 30 
F21 "ThermistorR" O L 5650 11100 30 
F22 "ThermistorS" O L 5650 11200 30 
F23 "ThermistorU" O L 5650 11400 30 
F24 "ThermistorV" O L 5650 11500 30 
F25 "ThermistorT" O L 5650 11300 30 
F26 "ThermistorF_GND" O L 5650 9950 30 
F27 "ThermistorQ_GND" O L 5650 11050 30 
F28 "ParallelCells_GND" I R 6750 9850 30 
F29 "ParallelCells_Row1" I R 6750 9900 30 
F30 "ParallelCells_Row2" I R 6750 9950 30 
F31 "ParallelCells_Row3" I R 6750 10000 30 
F32 "ParallelCells_Row4" I R 6750 10050 30 
F33 "ParallelCells_Row5" I R 6750 10100 30 
F34 "ParallelCells_Row6" I R 6750 10150 30 
F35 "ParallelCells_Row7" I R 6750 10200 30 
F36 "ParallelCells_Row8" I R 6750 10250 30 
F37 "ParallelCells_Row9" I R 6750 10300 30 
F38 "ParallelCells_Row10" I R 6750 10350 30 
F39 "ParallelCells_Row11" I R 6750 10400 30 
F40 "ParallelCells_Row12" I R 6750 10450 30 
F41 "ParallelCells_Row13" I R 6750 10500 30 
F42 "ParallelCells_Row14" I R 6750 10550 30 
F43 "ParallelCells_Row15" I R 6750 10600 30 
F44 "ParallelCells_Row16" I R 6750 10650 30 
F45 "ParallelCells_Row17" I R 6750 10700 30 
F46 "ParallelCells_Row18" I R 6750 10750 30 
F47 "ThermistorA_GND" O L 5650 9450 30 
F48 "ThermistorG_GND" O L 5650 10050 30 
F49 "ThermistorL_GND" O L 5650 10550 30 
F50 "ThermistorR_GND" O L 5650 11150 30 
F51 "ThermistorB_GND" O L 5650 9550 30 
F52 "ThermistorC_GND" O L 5650 9650 30 
F53 "ThermistorD_GND" O L 5650 9750 30 
F54 "ThermistorE_GND" O L 5650 9850 30 
F55 "ThermistorH_GND" O L 5650 10150 30 
F56 "ThermistorI_GND" O L 5650 10250 30 
F57 "ThermistorJ_GND" O L 5650 10350 30 
F58 "ThermistorK_GND" O L 5650 10450 30 
F59 "ThermistorM_GND" O L 5650 10650 30 
F60 "ThermistorN_GND" O L 5650 10750 30 
F61 "ThermistorO_GND" O L 5650 10850 30 
F62 "ThermistorP_GND" O L 5650 10950 30 
F63 "ThermistorS_GND" O L 5650 11250 30 
F64 "ThermistorT_GND" O L 5650 11350 30 
F65 "ThermistorU_GND" O L 5650 11450 30 
F66 "ThermistorV_GND" O L 5650 11550 30 
$EndSheet
$Sheet
S 4150 9350 1350 2250
U 616F2C65
F0 "Thermistor PCB 1" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 5500 9400 30 
F3 "ThermistorB" I R 5500 9500 30 
F4 "ThermistorC" I R 5500 9600 30 
F5 "ThermistorD" I R 5500 9700 30 
F6 "ThermistorE" I R 5500 9800 30 
F7 "ThermistorF" I R 5500 9900 30 
F8 "ThermistorF_GND" I R 5500 9950 30 
F9 "ThermistorL" I R 5500 10500 30 
F10 "ThermistorM" I R 5500 10600 30 
F11 "ThermistorN" I R 5500 10700 30 
F12 "ThermistorO" I R 5500 10800 30 
F13 "ThermistorP" I R 5500 10900 30 
F14 "ThermistorQ" I R 5500 11000 30 
F15 "ThermistorQ_GND" I R 5500 11050 30 
F16 "ThermistorG" I R 5500 10000 30 
F17 "ThermistorH" I R 5500 10100 30 
F18 "ThermistorI" I R 5500 10200 30 
F19 "ThermistorJ" I R 5500 10300 30 
F20 "ThermistorK" I R 5500 10400 30 
F21 "ThermistorR" I R 5500 11100 30 
F22 "ThermistorT" I R 5500 11300 30 
F23 "ThermistorU" I R 5500 11400 30 
F24 "ThermistorV" I R 5500 11500 30 
F25 "ThermistorS" I R 5500 11200 30 
F26 "Thermistors_NonCritical" O L 4150 9400 50 
F27 "Thermistors_Critical" O L 4150 9500 50 
F28 "ThermistorA_GND" I R 5500 9450 30 
F29 "ThermistorB_GND" I R 5500 9550 30 
F30 "ThermistorC_GND" I R 5500 9650 30 
F31 "ThermistorD_GND" I R 5500 9750 30 
F32 "ThermistorE_GND" I R 5500 9850 30 
F33 "ThermistorG_GND" I R 5500 10050 30 
F34 "ThermistorH_GND" I R 5500 10150 30 
F35 "ThermistorI_GND" I R 5500 10250 30 
F36 "ThermistorJ_GND" I R 5500 10350 30 
F37 "ThermistorK_GND" I R 5500 10450 30 
F38 "ThermistorL_GND" I R 5500 10550 30 
F39 "ThermistorM_GND" I R 5500 10650 30 
F40 "ThermistorN_GND" I R 5500 10750 30 
F41 "ThermistorO_GND" I R 5500 10850 30 
F42 "ThermistorP_GND" I R 5500 10950 30 
F43 "ThermistorR_GND" I R 5500 11150 30 
F44 "ThermistorS_GND" I R 5500 11250 30 
F45 "ThermistorT_GND" I R 5500 11350 30 
F46 "ThermistorU_GND" I R 5500 11450 30 
F47 "ThermistorV_GND" I R 5500 11550 30 
$EndSheet
Wire Wire Line
	5500 9400 5650 9400
Wire Wire Line
	5500 9450 5650 9450
Wire Wire Line
	5500 9500 5650 9500
Wire Wire Line
	5500 9550 5650 9550
Wire Wire Line
	5500 9600 5650 9600
Wire Wire Line
	5500 9650 5650 9650
Wire Wire Line
	5500 9700 5650 9700
Wire Wire Line
	5500 9750 5650 9750
Wire Wire Line
	5500 9800 5650 9800
Wire Wire Line
	5500 9850 5650 9850
Wire Wire Line
	5500 9900 5650 9900
Wire Wire Line
	5500 9950 5650 9950
Wire Wire Line
	5500 10000 5650 10000
Wire Wire Line
	5500 10050 5650 10050
Wire Wire Line
	5500 10100 5650 10100
Wire Wire Line
	5500 10150 5650 10150
Wire Wire Line
	5500 10200 5650 10200
Wire Wire Line
	5500 10250 5650 10250
Wire Wire Line
	5500 10300 5650 10300
Wire Wire Line
	5500 10350 5650 10350
Wire Wire Line
	5500 10400 5650 10400
Wire Wire Line
	5500 10450 5650 10450
Wire Wire Line
	5500 10500 5650 10500
Wire Wire Line
	5500 10550 5650 10550
Wire Wire Line
	5500 10600 5650 10600
Wire Wire Line
	5500 10650 5650 10650
Wire Wire Line
	5500 10700 5650 10700
Wire Wire Line
	5500 10750 5650 10750
Wire Wire Line
	5500 10800 5650 10800
Wire Wire Line
	5500 10850 5650 10850
Wire Wire Line
	5500 10900 5650 10900
Wire Wire Line
	5500 10950 5650 10950
Wire Wire Line
	5500 11000 5650 11000
Wire Wire Line
	5500 11050 5650 11050
Wire Wire Line
	5500 11100 5650 11100
Wire Wire Line
	5500 11150 5650 11150
Wire Wire Line
	5500 11200 5650 11200
Wire Wire Line
	5500 11250 5650 11250
Wire Wire Line
	5500 11300 5650 11300
Wire Wire Line
	5500 11350 5650 11350
Wire Wire Line
	5500 11400 5650 11400
Wire Wire Line
	5500 11450 5650 11450
Wire Wire Line
	5500 11500 5650 11500
Wire Wire Line
	5500 11550 5650 11550
$Sheet
S 5650 6550 1100 2250
U 60298533
F0 "sheet602984EF" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 6750 6600 50 
F3 "Segment-" O R 6750 6700 50 
F4 "ThermistorA" O L 5650 6600 30 
F5 "ThermistorB" O L 5650 6700 30 
F6 "ThermistorC" O L 5650 6800 30 
F7 "ThermistorD" O L 5650 6900 30 
F8 "ThermistorE" O L 5650 7000 30 
F9 "ThermistorF" O L 5650 7100 30 
F10 "ThermistorG" O L 5650 7200 30 
F11 "ThermistorH" O L 5650 7300 30 
F12 "ThermistorI" O L 5650 7400 30 
F13 "ThermistorJ" O L 5650 7500 30 
F14 "ThermistorK" O L 5650 7600 30 
F15 "ThermistorL" O L 5650 7700 30 
F16 "ThermistorM" O L 5650 7800 30 
F17 "ThermistorN" O L 5650 7900 30 
F18 "ThermistorO" O L 5650 8000 30 
F19 "ThermistorP" O L 5650 8100 30 
F20 "ThermistorQ" O L 5650 8200 30 
F21 "ThermistorR" O L 5650 8300 30 
F22 "ThermistorS" O L 5650 8400 30 
F23 "ThermistorU" O L 5650 8600 30 
F24 "ThermistorV" O L 5650 8700 30 
F25 "ThermistorT" O L 5650 8500 30 
F26 "ThermistorF_GND" O L 5650 7150 30 
F27 "ThermistorQ_GND" O L 5650 8250 30 
F28 "ParallelCells_GND" I R 6750 7050 30 
F29 "ParallelCells_Row1" I R 6750 7100 30 
F30 "ParallelCells_Row2" I R 6750 7150 30 
F31 "ParallelCells_Row3" I R 6750 7200 30 
F32 "ParallelCells_Row4" I R 6750 7250 30 
F33 "ParallelCells_Row5" I R 6750 7300 30 
F34 "ParallelCells_Row6" I R 6750 7350 30 
F35 "ParallelCells_Row7" I R 6750 7400 30 
F36 "ParallelCells_Row8" I R 6750 7450 30 
F37 "ParallelCells_Row9" I R 6750 7500 30 
F38 "ParallelCells_Row10" I R 6750 7550 30 
F39 "ParallelCells_Row11" I R 6750 7600 30 
F40 "ParallelCells_Row12" I R 6750 7650 30 
F41 "ParallelCells_Row13" I R 6750 7700 30 
F42 "ParallelCells_Row14" I R 6750 7750 30 
F43 "ParallelCells_Row15" I R 6750 7800 30 
F44 "ParallelCells_Row16" I R 6750 7850 30 
F45 "ParallelCells_Row17" I R 6750 7900 30 
F46 "ParallelCells_Row18" I R 6750 7950 30 
F47 "ThermistorA_GND" O L 5650 6650 30 
F48 "ThermistorG_GND" O L 5650 7250 30 
F49 "ThermistorL_GND" O L 5650 7750 30 
F50 "ThermistorR_GND" O L 5650 8350 30 
F51 "ThermistorB_GND" O L 5650 6750 30 
F52 "ThermistorC_GND" O L 5650 6850 30 
F53 "ThermistorD_GND" O L 5650 6950 30 
F54 "ThermistorE_GND" O L 5650 7050 30 
F55 "ThermistorH_GND" O L 5650 7350 30 
F56 "ThermistorI_GND" O L 5650 7450 30 
F57 "ThermistorJ_GND" O L 5650 7550 30 
F58 "ThermistorK_GND" O L 5650 7650 30 
F59 "ThermistorM_GND" O L 5650 7850 30 
F60 "ThermistorN_GND" O L 5650 7950 30 
F61 "ThermistorO_GND" O L 5650 8050 30 
F62 "ThermistorP_GND" O L 5650 8150 30 
F63 "ThermistorS_GND" O L 5650 8450 30 
F64 "ThermistorT_GND" O L 5650 8550 30 
F65 "ThermistorU_GND" O L 5650 8650 30 
F66 "ThermistorV_GND" O L 5650 8750 30 
$EndSheet
$Sheet
S 4150 6550 1350 2250
U 60298563
F0 "sheet602984F0" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 5500 6600 30 
F3 "ThermistorB" I R 5500 6700 30 
F4 "ThermistorC" I R 5500 6800 30 
F5 "ThermistorD" I R 5500 6900 30 
F6 "ThermistorE" I R 5500 7000 30 
F7 "ThermistorF" I R 5500 7100 30 
F8 "ThermistorF_GND" I R 5500 7150 30 
F9 "ThermistorL" I R 5500 7700 30 
F10 "ThermistorM" I R 5500 7800 30 
F11 "ThermistorN" I R 5500 7900 30 
F12 "ThermistorO" I R 5500 8000 30 
F13 "ThermistorP" I R 5500 8100 30 
F14 "ThermistorQ" I R 5500 8200 30 
F15 "ThermistorQ_GND" I R 5500 8250 30 
F16 "ThermistorG" I R 5500 7200 30 
F17 "ThermistorH" I R 5500 7300 30 
F18 "ThermistorI" I R 5500 7400 30 
F19 "ThermistorJ" I R 5500 7500 30 
F20 "ThermistorK" I R 5500 7600 30 
F21 "ThermistorR" I R 5500 8300 30 
F22 "ThermistorT" I R 5500 8500 30 
F23 "ThermistorU" I R 5500 8600 30 
F24 "ThermistorV" I R 5500 8700 30 
F25 "ThermistorS" I R 5500 8400 30 
F26 "Thermistors_NonCritical" O L 4150 6600 50 
F27 "Thermistors_Critical" O L 4150 6700 50 
F28 "ThermistorA_GND" I R 5500 6650 30 
F29 "ThermistorB_GND" I R 5500 6750 30 
F30 "ThermistorC_GND" I R 5500 6850 30 
F31 "ThermistorD_GND" I R 5500 6950 30 
F32 "ThermistorE_GND" I R 5500 7050 30 
F33 "ThermistorG_GND" I R 5500 7250 30 
F34 "ThermistorH_GND" I R 5500 7350 30 
F35 "ThermistorI_GND" I R 5500 7450 30 
F36 "ThermistorJ_GND" I R 5500 7550 30 
F37 "ThermistorK_GND" I R 5500 7650 30 
F38 "ThermistorL_GND" I R 5500 7750 30 
F39 "ThermistorM_GND" I R 5500 7850 30 
F40 "ThermistorN_GND" I R 5500 7950 30 
F41 "ThermistorO_GND" I R 5500 8050 30 
F42 "ThermistorP_GND" I R 5500 8150 30 
F43 "ThermistorR_GND" I R 5500 8350 30 
F44 "ThermistorS_GND" I R 5500 8450 30 
F45 "ThermistorT_GND" I R 5500 8550 30 
F46 "ThermistorU_GND" I R 5500 8650 30 
F47 "ThermistorV_GND" I R 5500 8750 30 
$EndSheet
Wire Wire Line
	5500 6600 5650 6600
Wire Wire Line
	5500 6650 5650 6650
Wire Wire Line
	5500 6700 5650 6700
Wire Wire Line
	5500 6750 5650 6750
Wire Wire Line
	5500 6800 5650 6800
Wire Wire Line
	5500 6850 5650 6850
Wire Wire Line
	5500 6900 5650 6900
Wire Wire Line
	5500 6950 5650 6950
Wire Wire Line
	5500 7000 5650 7000
Wire Wire Line
	5500 7050 5650 7050
Wire Wire Line
	5500 7100 5650 7100
Wire Wire Line
	5500 7150 5650 7150
Wire Wire Line
	5500 7200 5650 7200
Wire Wire Line
	5500 7250 5650 7250
Wire Wire Line
	5500 7300 5650 7300
Wire Wire Line
	5500 7350 5650 7350
Wire Wire Line
	5500 7400 5650 7400
Wire Wire Line
	5500 7450 5650 7450
Wire Wire Line
	5500 7500 5650 7500
Wire Wire Line
	5500 7550 5650 7550
Wire Wire Line
	5500 7600 5650 7600
Wire Wire Line
	5500 7650 5650 7650
Wire Wire Line
	5500 7700 5650 7700
Wire Wire Line
	5500 7750 5650 7750
Wire Wire Line
	5500 7800 5650 7800
Wire Wire Line
	5500 7850 5650 7850
Wire Wire Line
	5500 7900 5650 7900
Wire Wire Line
	5500 7950 5650 7950
Wire Wire Line
	5500 8000 5650 8000
Wire Wire Line
	5500 8050 5650 8050
Wire Wire Line
	5500 8100 5650 8100
Wire Wire Line
	5500 8150 5650 8150
Wire Wire Line
	5600 8300 5750 8300
Wire Wire Line
	5600 8350 5750 8350
Wire Wire Line
	5600 8400 5750 8400
Wire Wire Line
	5600 8450 5750 8450
Wire Wire Line
	5600 8500 5750 8500
Wire Wire Line
	5600 8550 5750 8550
Wire Wire Line
	5600 8600 5750 8600
Wire Wire Line
	5600 8650 5750 8650
Wire Wire Line
	5600 8700 5750 8700
Wire Wire Line
	5600 8750 5750 8750
Wire Wire Line
	5600 8800 5750 8800
Wire Wire Line
	5600 8850 5750 8850
$Sheet
S 5650 3650 1100 2250
U 602D10BE
F0 "sheet602D107A" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 6750 3700 50 
F3 "Segment-" O R 6750 3800 50 
F4 "ThermistorA" O L 5650 3700 30 
F5 "ThermistorB" O L 5650 3800 30 
F6 "ThermistorC" O L 5650 3900 30 
F7 "ThermistorD" O L 5650 4000 30 
F8 "ThermistorE" O L 5650 4100 30 
F9 "ThermistorF" O L 5650 4200 30 
F10 "ThermistorG" O L 5650 4300 30 
F11 "ThermistorH" O L 5650 4400 30 
F12 "ThermistorI" O L 5650 4500 30 
F13 "ThermistorJ" O L 5650 4600 30 
F14 "ThermistorK" O L 5650 4700 30 
F15 "ThermistorL" O L 5650 4800 30 
F16 "ThermistorM" O L 5650 4900 30 
F17 "ThermistorN" O L 5650 5000 30 
F18 "ThermistorO" O L 5650 5100 30 
F19 "ThermistorP" O L 5650 5200 30 
F20 "ThermistorQ" O L 5650 5300 30 
F21 "ThermistorR" O L 5650 5400 30 
F22 "ThermistorS" O L 5650 5500 30 
F23 "ThermistorU" O L 5650 5700 30 
F24 "ThermistorV" O L 5650 5800 30 
F25 "ThermistorT" O L 5650 5600 30 
F26 "ThermistorF_GND" O L 5650 4250 30 
F27 "ThermistorQ_GND" O L 5650 5350 30 
F28 "ParallelCells_GND" I R 6750 4150 30 
F29 "ParallelCells_Row1" I R 6750 4200 30 
F30 "ParallelCells_Row2" I R 6750 4250 30 
F31 "ParallelCells_Row3" I R 6750 4300 30 
F32 "ParallelCells_Row4" I R 6750 4350 30 
F33 "ParallelCells_Row5" I R 6750 4400 30 
F34 "ParallelCells_Row6" I R 6750 4450 30 
F35 "ParallelCells_Row7" I R 6750 4500 30 
F36 "ParallelCells_Row8" I R 6750 4550 30 
F37 "ParallelCells_Row9" I R 6750 4600 30 
F38 "ParallelCells_Row10" I R 6750 4650 30 
F39 "ParallelCells_Row11" I R 6750 4700 30 
F40 "ParallelCells_Row12" I R 6750 4750 30 
F41 "ParallelCells_Row13" I R 6750 4800 30 
F42 "ParallelCells_Row14" I R 6750 4850 30 
F43 "ParallelCells_Row15" I R 6750 4900 30 
F44 "ParallelCells_Row16" I R 6750 4950 30 
F45 "ParallelCells_Row17" I R 6750 5000 30 
F46 "ParallelCells_Row18" I R 6750 5050 30 
F47 "ThermistorA_GND" O L 5650 3750 30 
F48 "ThermistorG_GND" O L 5650 4350 30 
F49 "ThermistorL_GND" O L 5650 4850 30 
F50 "ThermistorR_GND" O L 5650 5450 30 
F51 "ThermistorB_GND" O L 5650 3850 30 
F52 "ThermistorC_GND" O L 5650 3950 30 
F53 "ThermistorD_GND" O L 5650 4050 30 
F54 "ThermistorE_GND" O L 5650 4150 30 
F55 "ThermistorH_GND" O L 5650 4450 30 
F56 "ThermistorI_GND" O L 5650 4550 30 
F57 "ThermistorJ_GND" O L 5650 4650 30 
F58 "ThermistorK_GND" O L 5650 4750 30 
F59 "ThermistorM_GND" O L 5650 4950 30 
F60 "ThermistorN_GND" O L 5650 5050 30 
F61 "ThermistorO_GND" O L 5650 5150 30 
F62 "ThermistorP_GND" O L 5650 5250 30 
F63 "ThermistorS_GND" O L 5650 5550 30 
F64 "ThermistorT_GND" O L 5650 5650 30 
F65 "ThermistorU_GND" O L 5650 5750 30 
F66 "ThermistorV_GND" O L 5650 5850 30 
$EndSheet
$Sheet
S 4150 3650 1350 2250
U 602D10EE
F0 "sheet602D107B" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 5500 3700 30 
F3 "ThermistorB" I R 5500 3800 30 
F4 "ThermistorC" I R 5500 3900 30 
F5 "ThermistorD" I R 5500 4000 30 
F6 "ThermistorE" I R 5500 4100 30 
F7 "ThermistorF" I R 5500 4200 30 
F8 "ThermistorF_GND" I R 5500 4250 30 
F9 "ThermistorL" I R 5500 4800 30 
F10 "ThermistorM" I R 5500 4900 30 
F11 "ThermistorN" I R 5500 5000 30 
F12 "ThermistorO" I R 5500 5100 30 
F13 "ThermistorP" I R 5500 5200 30 
F14 "ThermistorQ" I R 5500 5300 30 
F15 "ThermistorQ_GND" I R 5500 5350 30 
F16 "ThermistorG" I R 5500 4300 30 
F17 "ThermistorH" I R 5500 4400 30 
F18 "ThermistorI" I R 5500 4500 30 
F19 "ThermistorJ" I R 5500 4600 30 
F20 "ThermistorK" I R 5500 4700 30 
F21 "ThermistorR" I R 5500 5400 30 
F22 "ThermistorT" I R 5500 5600 30 
F23 "ThermistorU" I R 5500 5700 30 
F24 "ThermistorV" I R 5500 5800 30 
F25 "ThermistorS" I R 5500 5500 30 
F26 "Thermistors_NonCritical" O L 4150 3700 50 
F27 "Thermistors_Critical" O L 4150 3800 50 
F28 "ThermistorA_GND" I R 5500 3750 30 
F29 "ThermistorB_GND" I R 5500 3850 30 
F30 "ThermistorC_GND" I R 5500 3950 30 
F31 "ThermistorD_GND" I R 5500 4050 30 
F32 "ThermistorE_GND" I R 5500 4150 30 
F33 "ThermistorG_GND" I R 5500 4350 30 
F34 "ThermistorH_GND" I R 5500 4450 30 
F35 "ThermistorI_GND" I R 5500 4550 30 
F36 "ThermistorJ_GND" I R 5500 4650 30 
F37 "ThermistorK_GND" I R 5500 4750 30 
F38 "ThermistorL_GND" I R 5500 4850 30 
F39 "ThermistorM_GND" I R 5500 4950 30 
F40 "ThermistorN_GND" I R 5500 5050 30 
F41 "ThermistorO_GND" I R 5500 5150 30 
F42 "ThermistorP_GND" I R 5500 5250 30 
F43 "ThermistorR_GND" I R 5500 5450 30 
F44 "ThermistorS_GND" I R 5500 5550 30 
F45 "ThermistorT_GND" I R 5500 5650 30 
F46 "ThermistorU_GND" I R 5500 5750 30 
F47 "ThermistorV_GND" I R 5500 5850 30 
$EndSheet
Wire Wire Line
	5500 3700 5650 3700
Wire Wire Line
	5500 3750 5650 3750
Wire Wire Line
	5500 3800 5650 3800
Wire Wire Line
	5500 3850 5650 3850
Wire Wire Line
	5500 3900 5650 3900
Wire Wire Line
	5500 3950 5650 3950
Wire Wire Line
	5500 4000 5650 4000
Wire Wire Line
	5500 4050 5650 4050
Wire Wire Line
	5500 4100 5650 4100
Wire Wire Line
	5500 4150 5650 4150
Wire Wire Line
	5500 4200 5650 4200
Wire Wire Line
	5500 4250 5650 4250
Wire Wire Line
	5500 4300 5650 4300
Wire Wire Line
	5500 4350 5650 4350
Wire Wire Line
	5500 4400 5650 4400
Wire Wire Line
	5500 4450 5650 4450
Wire Wire Line
	5500 4500 5650 4500
Wire Wire Line
	5500 4550 5650 4550
Wire Wire Line
	5500 4600 5650 4600
Wire Wire Line
	5500 4650 5650 4650
Wire Wire Line
	5500 4700 5650 4700
Wire Wire Line
	5500 4750 5650 4750
Wire Wire Line
	5500 4800 5650 4800
Wire Wire Line
	5500 4850 5650 4850
Wire Wire Line
	5500 4900 5650 4900
Wire Wire Line
	5500 4950 5650 4950
Wire Wire Line
	5500 5000 5650 5000
Wire Wire Line
	5500 5050 5650 5050
Wire Wire Line
	5500 5100 5650 5100
Wire Wire Line
	5500 5150 5650 5150
Wire Wire Line
	5500 5200 5650 5200
Wire Wire Line
	5500 5250 5650 5250
Wire Wire Line
	5500 5300 5650 5300
Wire Wire Line
	5500 5350 5650 5350
Wire Wire Line
	5500 5400 5650 5400
Wire Wire Line
	5500 5450 5650 5450
Wire Wire Line
	5500 5500 5650 5500
Wire Wire Line
	5500 5550 5650 5550
Wire Wire Line
	5500 5600 5650 5600
Wire Wire Line
	5500 5650 5650 5650
Wire Wire Line
	5500 5700 5650 5700
Wire Wire Line
	5500 5750 5650 5750
Wire Wire Line
	5500 5800 5650 5800
Wire Wire Line
	5500 5850 5650 5850
$Sheet
S 5650 750  1100 2250
U 6031BDC8
F0 "sheet6031BD84" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 6750 800 50 
F3 "Segment-" O R 6750 900 50 
F4 "ThermistorA" O L 5650 800 30 
F5 "ThermistorB" O L 5650 900 30 
F6 "ThermistorC" O L 5650 1000 30 
F7 "ThermistorD" O L 5650 1100 30 
F8 "ThermistorE" O L 5650 1200 30 
F9 "ThermistorF" O L 5650 1300 30 
F10 "ThermistorG" O L 5650 1400 30 
F11 "ThermistorH" O L 5650 1500 30 
F12 "ThermistorI" O L 5650 1600 30 
F13 "ThermistorJ" O L 5650 1700 30 
F14 "ThermistorK" O L 5650 1800 30 
F15 "ThermistorL" O L 5650 1900 30 
F16 "ThermistorM" O L 5650 2000 30 
F17 "ThermistorN" O L 5650 2100 30 
F18 "ThermistorO" O L 5650 2200 30 
F19 "ThermistorP" O L 5650 2300 30 
F20 "ThermistorQ" O L 5650 2400 30 
F21 "ThermistorR" O L 5650 2500 30 
F22 "ThermistorS" O L 5650 2600 30 
F23 "ThermistorU" O L 5650 2800 30 
F24 "ThermistorV" O L 5650 2900 30 
F25 "ThermistorT" O L 5650 2700 30 
F26 "ThermistorF_GND" O L 5650 1350 30 
F27 "ThermistorQ_GND" O L 5650 2450 30 
F28 "ParallelCells_GND" I R 6750 1250 30 
F29 "ParallelCells_Row1" I R 6750 1300 30 
F30 "ParallelCells_Row2" I R 6750 1350 30 
F31 "ParallelCells_Row3" I R 6750 1400 30 
F32 "ParallelCells_Row4" I R 6750 1450 30 
F33 "ParallelCells_Row5" I R 6750 1500 30 
F34 "ParallelCells_Row6" I R 6750 1550 30 
F35 "ParallelCells_Row7" I R 6750 1600 30 
F36 "ParallelCells_Row8" I R 6750 1650 30 
F37 "ParallelCells_Row9" I R 6750 1700 30 
F38 "ParallelCells_Row10" I R 6750 1750 30 
F39 "ParallelCells_Row11" I R 6750 1800 30 
F40 "ParallelCells_Row12" I R 6750 1850 30 
F41 "ParallelCells_Row13" I R 6750 1900 30 
F42 "ParallelCells_Row14" I R 6750 1950 30 
F43 "ParallelCells_Row15" I R 6750 2000 30 
F44 "ParallelCells_Row16" I R 6750 2050 30 
F45 "ParallelCells_Row17" I R 6750 2100 30 
F46 "ParallelCells_Row18" I R 6750 2150 30 
F47 "ThermistorA_GND" O L 5650 850 30 
F48 "ThermistorG_GND" O L 5650 1450 30 
F49 "ThermistorL_GND" O L 5650 1950 30 
F50 "ThermistorR_GND" O L 5650 2550 30 
F51 "ThermistorB_GND" O L 5650 950 30 
F52 "ThermistorC_GND" O L 5650 1050 30 
F53 "ThermistorD_GND" O L 5650 1150 30 
F54 "ThermistorE_GND" O L 5650 1250 30 
F55 "ThermistorH_GND" O L 5650 1550 30 
F56 "ThermistorI_GND" O L 5650 1650 30 
F57 "ThermistorJ_GND" O L 5650 1750 30 
F58 "ThermistorK_GND" O L 5650 1850 30 
F59 "ThermistorM_GND" O L 5650 2050 30 
F60 "ThermistorN_GND" O L 5650 2150 30 
F61 "ThermistorO_GND" O L 5650 2250 30 
F62 "ThermistorP_GND" O L 5650 2350 30 
F63 "ThermistorS_GND" O L 5650 2650 30 
F64 "ThermistorT_GND" O L 5650 2750 30 
F65 "ThermistorU_GND" O L 5650 2850 30 
F66 "ThermistorV_GND" O L 5650 2950 30 
$EndSheet
$Sheet
S 4150 750  1350 2250
U 6031BDF8
F0 "sheet6031BD85" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 5500 800 30 
F3 "ThermistorB" I R 5500 900 30 
F4 "ThermistorC" I R 5500 1000 30 
F5 "ThermistorD" I R 5500 1100 30 
F6 "ThermistorE" I R 5500 1200 30 
F7 "ThermistorF" I R 5500 1300 30 
F8 "ThermistorF_GND" I R 5500 1350 30 
F9 "ThermistorL" I R 5500 1900 30 
F10 "ThermistorM" I R 5500 2000 30 
F11 "ThermistorN" I R 5500 2100 30 
F12 "ThermistorO" I R 5500 2200 30 
F13 "ThermistorP" I R 5500 2300 30 
F14 "ThermistorQ" I R 5500 2400 30 
F15 "ThermistorQ_GND" I R 5500 2450 30 
F16 "ThermistorG" I R 5500 1400 30 
F17 "ThermistorH" I R 5500 1500 30 
F18 "ThermistorI" I R 5500 1600 30 
F19 "ThermistorJ" I R 5500 1700 30 
F20 "ThermistorK" I R 5500 1800 30 
F21 "ThermistorR" I R 5500 2500 30 
F22 "ThermistorT" I R 5500 2700 30 
F23 "ThermistorU" I R 5500 2800 30 
F24 "ThermistorV" I R 5500 2900 30 
F25 "ThermistorS" I R 5500 2600 30 
F26 "Thermistors_NonCritical" O L 4150 800 50 
F27 "Thermistors_Critical" O L 4150 900 50 
F28 "ThermistorA_GND" I R 5500 850 30 
F29 "ThermistorB_GND" I R 5500 950 30 
F30 "ThermistorC_GND" I R 5500 1050 30 
F31 "ThermistorD_GND" I R 5500 1150 30 
F32 "ThermistorE_GND" I R 5500 1250 30 
F33 "ThermistorG_GND" I R 5500 1450 30 
F34 "ThermistorH_GND" I R 5500 1550 30 
F35 "ThermistorI_GND" I R 5500 1650 30 
F36 "ThermistorJ_GND" I R 5500 1750 30 
F37 "ThermistorK_GND" I R 5500 1850 30 
F38 "ThermistorL_GND" I R 5500 1950 30 
F39 "ThermistorM_GND" I R 5500 2050 30 
F40 "ThermistorN_GND" I R 5500 2150 30 
F41 "ThermistorO_GND" I R 5500 2250 30 
F42 "ThermistorP_GND" I R 5500 2350 30 
F43 "ThermistorR_GND" I R 5500 2550 30 
F44 "ThermistorS_GND" I R 5500 2650 30 
F45 "ThermistorT_GND" I R 5500 2750 30 
F46 "ThermistorU_GND" I R 5500 2850 30 
F47 "ThermistorV_GND" I R 5500 2950 30 
$EndSheet
Wire Wire Line
	5500 800  5650 800 
Wire Wire Line
	5500 850  5650 850 
Wire Wire Line
	5500 900  5650 900 
Wire Wire Line
	5500 950  5650 950 
Wire Wire Line
	5500 1000 5650 1000
Wire Wire Line
	5500 1050 5650 1050
Wire Wire Line
	5500 1100 5650 1100
Wire Wire Line
	5500 1150 5650 1150
Wire Wire Line
	5500 1200 5650 1200
Wire Wire Line
	5500 1250 5650 1250
Wire Wire Line
	5500 1300 5650 1300
Wire Wire Line
	5500 1350 5650 1350
Wire Wire Line
	5500 1400 5650 1400
Wire Wire Line
	5500 1450 5650 1450
Wire Wire Line
	5500 1500 5650 1500
Wire Wire Line
	5500 1550 5650 1550
Wire Wire Line
	5500 1600 5650 1600
Wire Wire Line
	5500 1650 5650 1650
Wire Wire Line
	5500 1700 5650 1700
Wire Wire Line
	5500 1750 5650 1750
Wire Wire Line
	5500 1800 5650 1800
Wire Wire Line
	5500 1850 5650 1850
Wire Wire Line
	5500 1900 5650 1900
Wire Wire Line
	5500 1950 5650 1950
Wire Wire Line
	5500 2000 5650 2000
Wire Wire Line
	5500 2050 5650 2050
Wire Wire Line
	5500 2100 5650 2100
Wire Wire Line
	5500 2150 5650 2150
Wire Wire Line
	5500 2200 5650 2200
Wire Wire Line
	5500 2250 5650 2250
Wire Wire Line
	5500 2300 5650 2300
Wire Wire Line
	5500 2350 5650 2350
Wire Wire Line
	5500 2400 5650 2400
Wire Wire Line
	5500 2450 5650 2450
Wire Wire Line
	5500 2500 5650 2500
Wire Wire Line
	5500 2550 5650 2550
Wire Wire Line
	5500 2600 5650 2600
Wire Wire Line
	5500 2650 5650 2650
Wire Wire Line
	5500 2700 5650 2700
Wire Wire Line
	5500 2750 5650 2750
Wire Wire Line
	5500 2800 5650 2800
Wire Wire Line
	5500 2850 5650 2850
Wire Wire Line
	5500 2900 5650 2900
Wire Wire Line
	5500 2950 5650 2950
Wire Bus Line
	9700 10750 9700 11350
Wire Bus Line
	9800 8550 9800 11250
Wire Bus Line
	9900 6350 9900 11150
Wire Bus Line
	10000 4150 10000 11050
Wire Bus Line
	4450 12750 4450 13700
Wire Bus Line
	17650 6900 19650 6900
Wire Bus Line
	6300 15250 6300 16050
Wire Bus Line
	6400 14200 6400 16100
$EndSCHEMATC
