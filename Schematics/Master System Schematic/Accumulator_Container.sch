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
$Sheet
S 6300 9350 1100 1700
U 5F7F6054
F0 "Battery Segment 1" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 7400 9400 50 
F3 "Segment-" O R 7400 9500 50 
F4 "ThermistorA" O L 6300 9400 30 
F5 "ThermistorB" O L 6300 9450 30 
F6 "ThermistorC" O L 6300 9500 30 
F7 "ThermistorD" O L 6300 9550 30 
F8 "ThermistorE" O L 6300 9600 30 
F9 "ThermistorF" O L 6300 9750 30 
F10 "ThermistorG" O L 6300 9900 30 
F11 "ThermistorH" O L 6300 9950 30 
F12 "ThermistorI" O L 6300 10000 30 
F13 "ThermistorJ" O L 6300 10050 30 
F14 "ThermistorK" O L 6300 10100 30 
F15 "ThermistorL" O L 6300 10250 30 
F16 "ThermistorM" O L 6300 10300 30 
F17 "ThermistorN" O L 6300 10350 30 
F18 "ThermistorO" O L 6300 10400 30 
F19 "ThermistorP" O L 6300 10450 30 
F20 "ThermistorQ" O L 6300 10600 30 
F21 "ThermistorR" O L 6300 10750 30 
F22 "ThermistorS" O L 6300 10800 30 
F23 "ThermistorU" O L 6300 10900 30 
F24 "ThermistorV" O L 6300 10950 30 
F25 "ThermistorT" O L 6300 10850 30 
F26 "ThermistorF_GND" O L 6300 9800 30 
F27 "ThermistorQ_GND" O L 6300 10650 30 
F28 "ThermistorA-E_GND" O L 6300 9650 30 
F29 "ThermistorG-K_GND" O L 6300 10150 30 
F30 "ThermistorL-P_GND" O L 6300 10500 30 
F31 "ThermistorR-V_GND" O L 6300 11000 30 
F32 "ParallelCells_GND" I R 7400 9850 30 
F33 "ParallelCells_Row1" I R 7400 9900 30 
F34 "ParallelCells_Row2" I R 7400 9950 30 
F35 "ParallelCells_Row3" I R 7400 10000 30 
F36 "ParallelCells_Row4" I R 7400 10050 30 
F37 "ParallelCells_Row5" I R 7400 10100 30 
F38 "ParallelCells_Row6" I R 7400 10150 30 
F39 "ParallelCells_Row7" I R 7400 10200 30 
F40 "ParallelCells_Row8" I R 7400 10250 30 
F41 "ParallelCells_Row9" I R 7400 10300 30 
F42 "ParallelCells_Row10" I R 7400 10350 30 
F43 "ParallelCells_Row11" I R 7400 10400 30 
F44 "ParallelCells_Row12" I R 7400 10450 30 
F45 "ParallelCells_Row13" I R 7400 10500 30 
F46 "ParallelCells_Row14" I R 7400 10550 30 
F47 "ParallelCells_Row15" I R 7400 10600 30 
F48 "ParallelCells_Row16" I R 7400 10650 30 
F49 "ParallelCells_Row17" I R 7400 10700 30 
F50 "ParallelCells_Row18" I R 7400 10750 30 
$EndSheet
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
S 6300 7150 1100 1700
U 602AD660
F0 "Battery Segment 2" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 7400 7200 50 
F3 "Segment-" O R 7400 7300 50 
F4 "ThermistorA" O L 6300 7200 30 
F5 "ThermistorB" O L 6300 7250 30 
F6 "ThermistorC" O L 6300 7300 30 
F7 "ThermistorD" O L 6300 7350 30 
F8 "ThermistorE" O L 6300 7400 30 
F9 "ThermistorF" O L 6300 7550 30 
F10 "ThermistorG" O L 6300 7700 30 
F11 "ThermistorH" O L 6300 7750 30 
F12 "ThermistorI" O L 6300 7800 30 
F13 "ThermistorJ" O L 6300 7850 30 
F14 "ThermistorK" O L 6300 7900 30 
F15 "ThermistorL" O L 6300 8050 30 
F16 "ThermistorM" O L 6300 8100 30 
F17 "ThermistorN" O L 6300 8150 30 
F18 "ThermistorO" O L 6300 8200 30 
F19 "ThermistorP" O L 6300 8250 30 
F20 "ThermistorQ" O L 6300 8400 30 
F21 "ThermistorR" O L 6300 8550 30 
F22 "ThermistorS" O L 6300 8600 30 
F23 "ThermistorU" O L 6300 8700 30 
F24 "ThermistorV" O L 6300 8750 30 
F25 "ThermistorT" O L 6300 8650 30 
F26 "ThermistorF_GND" O L 6300 7600 30 
F27 "ThermistorQ_GND" O L 6300 8450 30 
F28 "ThermistorA-E_GND" O L 6300 7450 30 
F29 "ThermistorG-K_GND" O L 6300 7950 30 
F30 "ThermistorL-P_GND" O L 6300 8300 30 
F31 "ThermistorR-V_GND" O L 6300 8800 30 
F32 "ParallelCells_GND" I R 7400 7650 30 
F33 "ParallelCells_Row1" I R 7400 7700 30 
F34 "ParallelCells_Row2" I R 7400 7750 30 
F35 "ParallelCells_Row3" I R 7400 7800 30 
F36 "ParallelCells_Row4" I R 7400 7850 30 
F37 "ParallelCells_Row5" I R 7400 7900 30 
F38 "ParallelCells_Row6" I R 7400 7950 30 
F39 "ParallelCells_Row7" I R 7400 8000 30 
F40 "ParallelCells_Row8" I R 7400 8050 30 
F41 "ParallelCells_Row9" I R 7400 8100 30 
F42 "ParallelCells_Row10" I R 7400 8150 30 
F43 "ParallelCells_Row11" I R 7400 8200 30 
F44 "ParallelCells_Row12" I R 7400 8250 30 
F45 "ParallelCells_Row13" I R 7400 8300 30 
F46 "ParallelCells_Row14" I R 7400 8350 30 
F47 "ParallelCells_Row15" I R 7400 8400 30 
F48 "ParallelCells_Row16" I R 7400 8450 30 
F49 "ParallelCells_Row17" I R 7400 8500 30 
F50 "ParallelCells_Row18" I R 7400 8550 30 
$EndSheet
$Sheet
S 6300 4950 1100 1700
U 602C1510
F0 "Battery Segment 3" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 7400 5000 50 
F3 "Segment-" O R 7400 5100 50 
F4 "ThermistorA" O L 6300 5000 30 
F5 "ThermistorB" O L 6300 5050 30 
F6 "ThermistorC" O L 6300 5100 30 
F7 "ThermistorD" O L 6300 5150 30 
F8 "ThermistorE" O L 6300 5200 30 
F9 "ThermistorF" O L 6300 5350 30 
F10 "ThermistorG" O L 6300 5500 30 
F11 "ThermistorH" O L 6300 5550 30 
F12 "ThermistorI" O L 6300 5600 30 
F13 "ThermistorJ" O L 6300 5650 30 
F14 "ThermistorK" O L 6300 5700 30 
F15 "ThermistorL" O L 6300 5850 30 
F16 "ThermistorM" O L 6300 5900 30 
F17 "ThermistorN" O L 6300 5950 30 
F18 "ThermistorO" O L 6300 6000 30 
F19 "ThermistorP" O L 6300 6050 30 
F20 "ThermistorQ" O L 6300 6200 30 
F21 "ThermistorR" O L 6300 6350 30 
F22 "ThermistorS" O L 6300 6400 30 
F23 "ThermistorU" O L 6300 6500 30 
F24 "ThermistorV" O L 6300 6550 30 
F25 "ThermistorT" O L 6300 6450 30 
F26 "ThermistorF_GND" O L 6300 5400 30 
F27 "ThermistorQ_GND" O L 6300 6250 30 
F28 "ThermistorA-E_GND" O L 6300 5250 30 
F29 "ThermistorG-K_GND" O L 6300 5750 30 
F30 "ThermistorL-P_GND" O L 6300 6100 30 
F31 "ThermistorR-V_GND" O L 6300 6600 30 
F32 "ParallelCells_GND" I R 7400 5450 30 
F33 "ParallelCells_Row1" I R 7400 5500 30 
F34 "ParallelCells_Row2" I R 7400 5550 30 
F35 "ParallelCells_Row3" I R 7400 5600 30 
F36 "ParallelCells_Row4" I R 7400 5650 30 
F37 "ParallelCells_Row5" I R 7400 5700 30 
F38 "ParallelCells_Row6" I R 7400 5750 30 
F39 "ParallelCells_Row7" I R 7400 5800 30 
F40 "ParallelCells_Row8" I R 7400 5850 30 
F41 "ParallelCells_Row9" I R 7400 5900 30 
F42 "ParallelCells_Row10" I R 7400 5950 30 
F43 "ParallelCells_Row11" I R 7400 6000 30 
F44 "ParallelCells_Row12" I R 7400 6050 30 
F45 "ParallelCells_Row13" I R 7400 6100 30 
F46 "ParallelCells_Row14" I R 7400 6150 30 
F47 "ParallelCells_Row15" I R 7400 6200 30 
F48 "ParallelCells_Row16" I R 7400 6250 30 
F49 "ParallelCells_Row17" I R 7400 6300 30 
F50 "ParallelCells_Row18" I R 7400 6350 30 
$EndSheet
$Sheet
S 6300 2750 1100 1700
U 602C155C
F0 "Battery Segment 4" 50
F1 "BatterySegment.sch" 50
F2 "Segment+" O R 7400 2800 50 
F3 "Segment-" O R 7400 2900 50 
F4 "ThermistorA" O L 6300 2800 30 
F5 "ThermistorB" O L 6300 2850 30 
F6 "ThermistorC" O L 6300 2900 30 
F7 "ThermistorD" O L 6300 2950 30 
F8 "ThermistorE" O L 6300 3000 30 
F9 "ThermistorF" O L 6300 3150 30 
F10 "ThermistorG" O L 6300 3300 30 
F11 "ThermistorH" O L 6300 3350 30 
F12 "ThermistorI" O L 6300 3400 30 
F13 "ThermistorJ" O L 6300 3450 30 
F14 "ThermistorK" O L 6300 3500 30 
F15 "ThermistorL" O L 6300 3650 30 
F16 "ThermistorM" O L 6300 3700 30 
F17 "ThermistorN" O L 6300 3750 30 
F18 "ThermistorO" O L 6300 3800 30 
F19 "ThermistorP" O L 6300 3850 30 
F20 "ThermistorQ" O L 6300 4000 30 
F21 "ThermistorR" O L 6300 4150 30 
F22 "ThermistorS" O L 6300 4200 30 
F23 "ThermistorU" O L 6300 4300 30 
F24 "ThermistorV" O L 6300 4350 30 
F25 "ThermistorT" O L 6300 4250 30 
F26 "ThermistorF_GND" O L 6300 3200 30 
F27 "ThermistorQ_GND" O L 6300 4050 30 
F28 "ThermistorA-E_GND" O L 6300 3050 30 
F29 "ThermistorG-K_GND" O L 6300 3550 30 
F30 "ThermistorL-P_GND" O L 6300 3900 30 
F31 "ThermistorR-V_GND" O L 6300 4400 30 
F32 "ParallelCells_GND" I R 7400 3250 30 
F33 "ParallelCells_Row1" I R 7400 3300 30 
F34 "ParallelCells_Row2" I R 7400 3350 30 
F35 "ParallelCells_Row3" I R 7400 3400 30 
F36 "ParallelCells_Row4" I R 7400 3450 30 
F37 "ParallelCells_Row5" I R 7400 3500 30 
F38 "ParallelCells_Row6" I R 7400 3550 30 
F39 "ParallelCells_Row7" I R 7400 3600 30 
F40 "ParallelCells_Row8" I R 7400 3650 30 
F41 "ParallelCells_Row9" I R 7400 3700 30 
F42 "ParallelCells_Row10" I R 7400 3750 30 
F43 "ParallelCells_Row11" I R 7400 3800 30 
F44 "ParallelCells_Row12" I R 7400 3850 30 
F45 "ParallelCells_Row13" I R 7400 3900 30 
F46 "ParallelCells_Row14" I R 7400 3950 30 
F47 "ParallelCells_Row15" I R 7400 4000 30 
F48 "ParallelCells_Row16" I R 7400 4050 30 
F49 "ParallelCells_Row17" I R 7400 4100 30 
F50 "ParallelCells_Row18" I R 7400 4150 30 
$EndSheet
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
$Sheet
S 4800 2750 1350 1700
U 6015F1FE
F0 "Thermistor PCB 4" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 6150 2800 30 
F3 "ThermistorB" I R 6150 2850 30 
F4 "ThermistorC" I R 6150 2900 30 
F5 "ThermistorD" I R 6150 2950 30 
F6 "ThermistorE" I R 6150 3000 30 
F7 "ThermistorA-E_GND" I R 6150 3050 30 
F8 "ThermistorF" I R 6150 3150 30 
F9 "ThermistorF_GND" I R 6150 3200 30 
F10 "ThermistorL" I R 6150 3650 30 
F11 "ThermistorM" I R 6150 3700 30 
F12 "ThermistorN" I R 6150 3750 30 
F13 "ThermistorO" I R 6150 3800 30 
F14 "ThermistorP" I R 6150 3850 30 
F15 "ThermistorL-P_GND" I R 6150 3900 30 
F16 "ThermistorQ" I R 6150 4000 30 
F17 "ThermistorQ_GND" I R 6150 4050 30 
F18 "ThermistorG" I R 6150 3300 30 
F19 "ThermistorH" I R 6150 3350 30 
F20 "ThermistorI" I R 6150 3400 30 
F21 "ThermistorJ" I R 6150 3450 30 
F22 "ThermistorK" I R 6150 3500 30 
F23 "ThermistorG-K_GND" I R 6150 3550 30 
F24 "ThermistorR" I R 6150 4150 30 
F25 "ThermistorT" I R 6150 4250 30 
F26 "ThermistorU" I R 6150 4300 30 
F27 "ThermistorV" I R 6150 4350 30 
F28 "ThermistorR-V_GND" I R 6150 4400 30 
F29 "ThermistorS" I R 6150 4200 30 
F30 "Thermistors_NonCritical" O L 4800 2800 50 
F31 "Thermistors_Critical" O L 4800 2900 50 
$EndSheet
Wire Wire Line
	6150 2800 6300 2800
Wire Wire Line
	6300 2850 6150 2850
Wire Wire Line
	6150 2900 6300 2900
Wire Wire Line
	6300 2950 6150 2950
Wire Wire Line
	6150 3000 6300 3000
Wire Wire Line
	6150 3050 6300 3050
Wire Wire Line
	6150 3150 6300 3150
Wire Wire Line
	6150 3200 6300 3200
Wire Wire Line
	6150 3300 6300 3300
Wire Wire Line
	6150 3350 6300 3350
Wire Wire Line
	6150 3400 6300 3400
Wire Wire Line
	6150 3450 6300 3450
Wire Wire Line
	6150 3500 6300 3500
Wire Wire Line
	6150 3550 6300 3550
Wire Wire Line
	6150 3650 6300 3650
Wire Wire Line
	6150 3700 6300 3700
Wire Wire Line
	6150 3750 6300 3750
Wire Wire Line
	6150 3800 6300 3800
Wire Wire Line
	6150 3850 6300 3850
Wire Wire Line
	6150 3900 6300 3900
Wire Wire Line
	6150 4000 6300 4000
Wire Wire Line
	6150 4050 6300 4050
Wire Wire Line
	6150 4150 6300 4150
Wire Wire Line
	6150 4200 6300 4200
Wire Wire Line
	6150 4250 6300 4250
Wire Wire Line
	6150 4300 6300 4300
Wire Wire Line
	6150 4350 6300 4350
Wire Wire Line
	6300 4400 6150 4400
$Sheet
S 4800 4950 1350 1700
U 616A3BA9
F0 "Thermistor PCB 3" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 6150 5000 30 
F3 "ThermistorB" I R 6150 5050 30 
F4 "ThermistorC" I R 6150 5100 30 
F5 "ThermistorD" I R 6150 5150 30 
F6 "ThermistorE" I R 6150 5200 30 
F7 "ThermistorA-E_GND" I R 6150 5250 30 
F8 "ThermistorF" I R 6150 5350 30 
F9 "ThermistorF_GND" I R 6150 5400 30 
F10 "ThermistorL" I R 6150 5850 30 
F11 "ThermistorM" I R 6150 5900 30 
F12 "ThermistorN" I R 6150 5950 30 
F13 "ThermistorO" I R 6150 6000 30 
F14 "ThermistorP" I R 6150 6050 30 
F15 "ThermistorL-P_GND" I R 6150 6100 30 
F16 "ThermistorQ" I R 6150 6200 30 
F17 "ThermistorQ_GND" I R 6150 6250 30 
F18 "ThermistorG" I R 6150 5500 30 
F19 "ThermistorH" I R 6150 5550 30 
F20 "ThermistorI" I R 6150 5600 30 
F21 "ThermistorJ" I R 6150 5650 30 
F22 "ThermistorK" I R 6150 5700 30 
F23 "ThermistorG-K_GND" I R 6150 5750 30 
F24 "ThermistorR" I R 6150 6350 30 
F25 "ThermistorT" I R 6150 6450 30 
F26 "ThermistorU" I R 6150 6500 30 
F27 "ThermistorV" I R 6150 6550 30 
F28 "ThermistorR-V_GND" I R 6150 6600 30 
F29 "ThermistorS" I R 6150 6400 30 
F30 "Thermistors_NonCritical" O L 4800 5000 50 
F31 "Thermistors_Critical" O L 4800 5100 50 
$EndSheet
Wire Wire Line
	6150 5000 6300 5000
Wire Wire Line
	6300 5050 6150 5050
Wire Wire Line
	6150 5100 6300 5100
Wire Wire Line
	6300 5150 6150 5150
Wire Wire Line
	6150 5200 6300 5200
Wire Wire Line
	6150 5250 6300 5250
Wire Wire Line
	6150 5350 6300 5350
Wire Wire Line
	6150 5400 6300 5400
Wire Wire Line
	6150 5500 6300 5500
Wire Wire Line
	6150 5550 6300 5550
Wire Wire Line
	6150 5600 6300 5600
Wire Wire Line
	6150 5650 6300 5650
Wire Wire Line
	6150 5700 6300 5700
Wire Wire Line
	6150 5750 6300 5750
Wire Wire Line
	6150 5850 6300 5850
Wire Wire Line
	6150 5900 6300 5900
Wire Wire Line
	6150 5950 6300 5950
Wire Wire Line
	6150 6000 6300 6000
Wire Wire Line
	6150 6050 6300 6050
Wire Wire Line
	6150 6100 6300 6100
Wire Wire Line
	6150 6200 6300 6200
Wire Wire Line
	6150 6250 6300 6250
Wire Wire Line
	6150 6350 6300 6350
Wire Wire Line
	6150 6400 6300 6400
Wire Wire Line
	6150 6450 6300 6450
Wire Wire Line
	6150 6500 6300 6500
Wire Wire Line
	6150 6550 6300 6550
Wire Wire Line
	6300 6600 6150 6600
Wire Wire Line
	6150 7200 6300 7200
Wire Wire Line
	6300 7250 6150 7250
Wire Wire Line
	6150 7300 6300 7300
Wire Wire Line
	6300 7350 6150 7350
Wire Wire Line
	6150 7400 6300 7400
Wire Wire Line
	6150 7450 6300 7450
Wire Wire Line
	6150 7550 6300 7550
Wire Wire Line
	6150 7600 6300 7600
Wire Wire Line
	6150 7700 6300 7700
Wire Wire Line
	6150 7750 6300 7750
Wire Wire Line
	6150 7800 6300 7800
Wire Wire Line
	6150 7850 6300 7850
Wire Wire Line
	6150 7900 6300 7900
Wire Wire Line
	6150 7950 6300 7950
Wire Wire Line
	6150 8050 6300 8050
Wire Wire Line
	6150 8100 6300 8100
Wire Wire Line
	6150 8150 6300 8150
Wire Wire Line
	6150 8200 6300 8200
Wire Wire Line
	6150 8250 6300 8250
Wire Wire Line
	6150 8300 6300 8300
Wire Wire Line
	6150 8400 6300 8400
Wire Wire Line
	6150 8450 6300 8450
Wire Wire Line
	6150 8550 6300 8550
Wire Wire Line
	6150 8600 6300 8600
Wire Wire Line
	6150 8650 6300 8650
Wire Wire Line
	6150 8700 6300 8700
Wire Wire Line
	6150 8750 6300 8750
Wire Wire Line
	6300 8800 6150 8800
Wire Wire Line
	6150 9400 6300 9400
Wire Wire Line
	6300 9450 6150 9450
Wire Wire Line
	6150 9500 6300 9500
Wire Wire Line
	6300 9550 6150 9550
Wire Wire Line
	6150 9600 6300 9600
Wire Wire Line
	6150 9650 6300 9650
Wire Wire Line
	6150 9750 6300 9750
Wire Wire Line
	6150 9800 6300 9800
Wire Wire Line
	6150 9900 6300 9900
Wire Wire Line
	6150 9950 6300 9950
Wire Wire Line
	6150 10000 6300 10000
Wire Wire Line
	6150 10050 6300 10050
Wire Wire Line
	6150 10100 6300 10100
Wire Wire Line
	6150 10150 6300 10150
Wire Wire Line
	6150 10250 6300 10250
Wire Wire Line
	6150 10300 6300 10300
Wire Wire Line
	6150 10350 6300 10350
Wire Wire Line
	6150 10400 6300 10400
Wire Wire Line
	6150 10450 6300 10450
Wire Wire Line
	6150 10500 6300 10500
Wire Wire Line
	6150 10600 6300 10600
Wire Wire Line
	6150 10650 6300 10650
Wire Wire Line
	6150 10750 6300 10750
Wire Wire Line
	6150 10800 6300 10800
Wire Wire Line
	6150 10850 6300 10850
Wire Wire Line
	6150 10900 6300 10900
Wire Wire Line
	6150 10950 6300 10950
Wire Wire Line
	6300 11000 6150 11000
$Sheet
S 4800 9350 1350 1700
U 616F2C65
F0 "Thermistor PCB 1" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 6150 9400 30 
F3 "ThermistorB" I R 6150 9450 30 
F4 "ThermistorC" I R 6150 9500 30 
F5 "ThermistorD" I R 6150 9550 30 
F6 "ThermistorE" I R 6150 9600 30 
F7 "ThermistorA-E_GND" I R 6150 9650 30 
F8 "ThermistorF" I R 6150 9750 30 
F9 "ThermistorF_GND" I R 6150 9800 30 
F10 "ThermistorL" I R 6150 10250 30 
F11 "ThermistorM" I R 6150 10300 30 
F12 "ThermistorN" I R 6150 10350 30 
F13 "ThermistorO" I R 6150 10400 30 
F14 "ThermistorP" I R 6150 10450 30 
F15 "ThermistorL-P_GND" I R 6150 10500 30 
F16 "ThermistorQ" I R 6150 10600 30 
F17 "ThermistorQ_GND" I R 6150 10650 30 
F18 "ThermistorG" I R 6150 9900 30 
F19 "ThermistorH" I R 6150 9950 30 
F20 "ThermistorI" I R 6150 10000 30 
F21 "ThermistorJ" I R 6150 10050 30 
F22 "ThermistorK" I R 6150 10100 30 
F23 "ThermistorG-K_GND" I R 6150 10150 30 
F24 "ThermistorR" I R 6150 10750 30 
F25 "ThermistorT" I R 6150 10850 30 
F26 "ThermistorU" I R 6150 10900 30 
F27 "ThermistorV" I R 6150 10950 30 
F28 "ThermistorR-V_GND" I R 6150 11000 30 
F29 "ThermistorS" I R 6150 10800 30 
F30 "Thermistors_NonCritical" O L 4800 9400 50 
F31 "Thermistors_Critical" O L 4800 9500 50 
$EndSheet
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
	4100 14300 4000 14200
Entry Wire Line
	4100 14100 4000 14000
Entry Wire Line
	4100 14000 4000 13900
Entry Wire Line
	4100 13900 4000 13800
Entry Wire Line
	4100 13800 4000 13700
Entry Wire Line
	4100 13700 4000 13600
Entry Wire Line
	4100 13600 4000 13500
Entry Wire Line
	4050 14650 3950 14550
Entry Wire Line
	4050 14750 3950 14650
Entry Wire Line
	4050 14850 3950 14750
Entry Wire Line
	4050 14950 3950 14850
Entry Wire Line
	4050 15050 3950 14950
Entry Wire Line
	4050 15150 3950 15050
Entry Wire Line
	4050 15250 3950 15150
Entry Wire Line
	4050 15350 3950 15250
NoConn ~ 4350 13100
NoConn ~ 4350 13200
NoConn ~ 5750 12900
$Sheet
S 4800 7150 1350 1700
U 616C72F3
F0 "Thermistor PCB 2" 50
F1 "ThermistorPCB.sch" 50
F2 "ThermistorA" I R 6150 7200 30 
F3 "ThermistorB" I R 6150 7250 30 
F4 "ThermistorC" I R 6150 7300 30 
F5 "ThermistorD" I R 6150 7350 30 
F6 "ThermistorE" I R 6150 7400 30 
F7 "ThermistorA-E_GND" I R 6150 7450 30 
F8 "ThermistorF" I R 6150 7550 30 
F9 "ThermistorF_GND" I R 6150 7600 30 
F10 "ThermistorL" I R 6150 8050 30 
F11 "ThermistorM" I R 6150 8100 30 
F12 "ThermistorN" I R 6150 8150 30 
F13 "ThermistorO" I R 6150 8200 30 
F14 "ThermistorP" I R 6150 8250 30 
F15 "ThermistorL-P_GND" I R 6150 8300 30 
F16 "ThermistorQ" I R 6150 8400 30 
F17 "ThermistorQ_GND" I R 6150 8450 30 
F18 "ThermistorG" I R 6150 7700 30 
F19 "ThermistorH" I R 6150 7750 30 
F20 "ThermistorI" I R 6150 7800 30 
F21 "ThermistorJ" I R 6150 7850 30 
F22 "ThermistorK" I R 6150 7900 30 
F23 "ThermistorG-K_GND" I R 6150 7950 30 
F24 "ThermistorR" I R 6150 8550 30 
F25 "ThermistorT" I R 6150 8650 30 
F26 "ThermistorU" I R 6150 8700 30 
F27 "ThermistorV" I R 6150 8750 30 
F28 "ThermistorR-V_GND" I R 6150 8800 30 
F29 "ThermistorS" I R 6150 8600 30 
F30 "Thermistors_NonCritical" O L 4800 7200 50 
F31 "Thermistors_Critical" O L 4800 7300 50 
$EndSheet
Entry Bus Bus
	4350 3000 4450 2900
Entry Bus Bus
	4450 5200 4550 5100
Entry Bus Bus
	4550 7400 4650 7300
Wire Bus Line
	4800 9500 4750 9500
Entry Bus Bus
	4650 9600 4750 9500
Wire Bus Line
	4650 9600 4650 11550
Text HLabel 10900 11550 2    50   Output ~ 0
Segment1_CriticalThermistors
Text HLabel 10900 11650 2    50   Output ~ 0
Segment2_CriticalThermistors
Text HLabel 10900 11750 2    50   Output ~ 0
Segment3_CriticalThermistors
Text HLabel 10900 11850 2    50   Output ~ 0
Segment4_CriticalThermistors
Wire Bus Line
	10900 11550 4650 11550
Wire Bus Line
	4450 5200 4450 11750
Wire Bus Line
	4550 7400 4550 11650
Wire Bus Line
	4550 11650 10900 11650
Wire Bus Line
	4450 11750 10900 11750
Wire Bus Line
	4350 11850 10900 11850
Wire Bus Line
	4350 3000 4350 11850
Wire Bus Line
	4450 2900 4800 2900
Wire Bus Line
	4550 5100 4800 5100
Wire Bus Line
	4650 7300 4800 7300
Wire Wire Line
	4100 13600 4250 13600
Wire Wire Line
	4100 13700 4350 13700
Wire Wire Line
	4100 13800 4250 13800
Wire Wire Line
	4100 13900 4350 13900
Wire Wire Line
	4100 14000 4250 14000
Wire Wire Line
	4100 14100 4350 14100
Wire Wire Line
	4100 14200 4250 14200
Wire Wire Line
	4100 14300 4350 14300
Wire Bus Line
	4800 2800 3850 2800
Wire Bus Line
	4800 5000 3900 5000
Wire Bus Line
	4800 7200 3950 7200
Wire Bus Line
	4800 9400 4000 9400
Entry Wire Line
	4100 14200 4000 14100
Wire Wire Line
	4050 14650 4250 14650
Wire Wire Line
	4050 14750 4350 14750
Wire Wire Line
	4050 14850 4250 14850
Wire Wire Line
	4050 14950 4350 14950
Wire Wire Line
	4050 15050 4250 15050
Wire Wire Line
	4050 15150 4350 15150
Wire Wire Line
	4050 15250 4250 15250
Wire Wire Line
	4050 15350 4350 15350
Entry Wire Line
	6000 14300 6100 14400
Entry Wire Line
	6000 14200 6100 14300
Entry Wire Line
	6000 14100 6100 14200
Entry Wire Line
	6000 14000 6100 14100
Entry Wire Line
	6000 13900 6100 14000
Entry Wire Line
	6000 13800 6100 13900
Entry Wire Line
	6000 13700 6100 13800
Entry Wire Line
	6000 13600 6100 13700
Wire Wire Line
	5900 15350 5750 15350
Wire Wire Line
	5900 15250 5850 15250
Wire Wire Line
	5900 15150 5750 15150
Wire Wire Line
	5850 15050 5900 15050
Wire Wire Line
	5900 14950 5750 14950
Wire Wire Line
	5900 14850 5850 14850
Wire Wire Line
	5900 14750 5750 14750
Wire Wire Line
	5900 14650 5850 14650
Entry Wire Line
	5900 15350 6000 15450
Entry Wire Line
	5900 15250 6000 15350
Entry Wire Line
	5900 15150 6000 15250
Entry Wire Line
	5900 15050 6000 15150
Entry Wire Line
	5900 14950 6000 15050
Entry Wire Line
	5900 14850 6000 14950
Entry Wire Line
	5900 14750 6000 14850
Entry Wire Line
	5900 14650 6000 14750
Wire Bus Line
	3900 15550 6000 15550
Wire Bus Line
	3850 15600 6100 15600
Wire Wire Line
	5750 14300 6000 14300
Wire Wire Line
	5850 14200 6000 14200
Wire Wire Line
	5750 14100 6000 14100
Wire Wire Line
	5850 14000 6000 14000
Wire Wire Line
	5750 13900 6000 13900
Wire Wire Line
	5850 13800 6000 13800
Wire Wire Line
	5750 13700 6000 13700
Wire Wire Line
	5850 13600 6000 13600
Wire Bus Line
	3900 5000 3900 15550
Wire Bus Line
	3850 2800 3850 15600
Wire Wire Line
	4350 13000 4250 13000
Text HLabel 10900 12150 2    50   Output ~ 0
Thermistor_Expansion
Entry Wire Line
	4150 13200 4250 13300
$Comp
L NER:OrionThermExp U?
U 1 1 5FB81724
P 5050 12700
AR Path="/60D53BFB/5FB81724" Ref="U?"  Part="1" 
AR Path="/5F45B05E/5FB81724" Ref="U7"  Part="1" 
F 0 "U7" H 5050 12865 50  0000 C CNN
F 1 "OrionThermExp" H 5050 12774 50  0000 C CNN
F 2 "" H 5050 12600 50  0001 C CNN
F 3 "" H 5050 12600 50  0001 C CNN
	1    5050 12700
	-1   0    0    -1  
$EndComp
Entry Wire Line
	4150 12900 4250 13000
Wire Wire Line
	4350 13300 4250 13300
Entry Wire Line
	4150 12800 4250 12900
Wire Wire Line
	4350 12900 4250 12900
Wire Wire Line
	5750 13300 5850 13300
Entry Wire Line
	5850 13300 5950 13200
Wire Bus Line
	5950 13200 5950 12250
Entry Bus Bus
	5950 12250 6050 12150
Entry Bus Bus
	4150 12250 4250 12150
Wire Notes Line
	10700 10600 10700 12300
Wire Notes Line
	10700 12300 12350 12300
Wire Notes Line
	12350 12300 12350 10600
Wire Notes Line
	12350 10600 10700 10600
Wire Bus Line
	9700 10750 9700 11350
Wire Bus Line
	9800 8550 9800 11250
Wire Bus Line
	9900 6350 9900 11150
Wire Bus Line
	10000 4150 10000 11050
Wire Bus Line
	4250 12150 10900 12150
Wire Bus Line
	4150 12250 4150 13200
Wire Bus Line
	17650 6900 19650 6900
Wire Bus Line
	4000 9400 4000 14200
Wire Bus Line
	6000 14750 6000 15550
Wire Bus Line
	6100 13700 6100 15600
Wire Bus Line
	3950 7200 3950 15250
Text Notes 10700 12400 0    50   ~ 0
All leave the accumulator container via cord grips
$EndSCHEMATC
