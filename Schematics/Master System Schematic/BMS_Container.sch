EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 22 22
Title "BMS & MC Container"
Date "2020-11-11"
Rev "6"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4850 2000 0    50   BiDi ~ 0
CAN_H(BMS)
Text HLabel 4850 1900 0    50   BiDi ~ 0
CAN_L(BMS)
Text HLabel 4850 1650 0    50   Input ~ 0
GLV(BMS)
Text HLabel 4850 1550 0    50   UnSpc ~ 0
GND
Text HLabel 6300 7450 0    50   Input ~ 0
Segment4_VoltageTaps
Text HLabel 6250 7200 0    50   Output ~ 0
BMS_Fault
Text HLabel 9250 5200 2    50   Input ~ 0
Current_Sensor
Text HLabel 9000 8400 2    50   Input ~ 0
Segment3_VoltageTaps
Text HLabel 9000 7450 2    50   Input ~ 0
Segment2_VoltageTaps
Entry Wire Line
	8750 8700 8850 8600
Entry Wire Line
	8750 8800 8850 8700
Entry Wire Line
	8750 8900 8850 8800
Wire Bus Line
	8950 8400 9000 8400
Wire Wire Line
	8700 8600 8750 8600
Wire Wire Line
	8600 8700 8750 8700
Wire Wire Line
	8750 8800 8700 8800
Wire Wire Line
	8600 8900 8750 8900
Wire Wire Line
	6600 7850 6550 7850
Wire Wire Line
	6700 7750 6550 7750
Wire Wire Line
	6600 7650 6550 7650
Wire Wire Line
	6700 7950 6550 7950
Entry Wire Line
	6450 7550 6550 7650
Entry Wire Line
	6450 7650 6550 7750
Entry Wire Line
	6450 7750 6550 7850
Entry Wire Line
	6450 7850 6550 7950
Entry Bus Bus
	6350 7450 6450 7550
Wire Bus Line
	6350 7450 6300 7450
Wire Wire Line
	9000 5900 8600 5900
Entry Wire Line
	8750 5800 8850 5700
Entry Wire Line
	8750 5100 8850 5000
Wire Wire Line
	8700 5100 8750 5100
Wire Wire Line
	8700 5800 8750 5800
Entry Bus Bus
	8850 5000 8950 4900
Wire Bus Line
	9000 4900 8950 4900
Text HLabel 9000 4900 2    50   Input ~ 0
Segment1_Thermistors
Text HLabel 9000 4800 2    50   Input ~ 0
Segment2_Thermistors
Text HLabel 9000 4700 2    50   Input ~ 0
Segment3_Thermistors
Text HLabel 9000 4600 2    50   Input ~ 0
Segment4_Thermistors
Wire Bus Line
	8950 4900 8950 4800
Wire Bus Line
	8950 4600 9000 4600
Wire Bus Line
	8950 4700 9000 4700
Connection ~ 8950 4700
Wire Bus Line
	8950 4700 8950 4600
Wire Bus Line
	8950 4800 9000 4800
Connection ~ 8950 4800
Wire Bus Line
	8950 4800 8950 4700
NoConn ~ 6700 4700
NoConn ~ 6700 5000
NoConn ~ 6700 5100
NoConn ~ 6700 5300
NoConn ~ 6700 5400
NoConn ~ 6700 5500
NoConn ~ 6700 5900
NoConn ~ 6700 6000
NoConn ~ 6700 6100
NoConn ~ 6700 6200
NoConn ~ 6700 6600
NoConn ~ 6700 6700
NoConn ~ 6700 6800
NoConn ~ 6700 6900
NoConn ~ 6700 7000
NoConn ~ 8600 4700
NoConn ~ 8600 4800
NoConn ~ 8600 4900
NoConn ~ 8600 5000
NoConn ~ 8600 5600
NoConn ~ 8600 5700
Wire Bus Line
	9250 5200 9200 5200
Entry Bus Bus
	9200 5200 9100 5300
Wire Bus Line
	8850 5000 8850 5700
Wire Wire Line
	8600 5300 9000 5300
Wire Wire Line
	8600 5200 9000 5200
Wire Wire Line
	8600 6000 9000 6000
Entry Wire Line
	9000 5200 9100 5300
Entry Wire Line
	9000 5300 9100 5400
Entry Wire Line
	9000 5900 9100 5800
Entry Wire Line
	9000 6000 9100 5900
Text HLabel 4850 5200 0    50   Output ~ 0
ChargerSafety
Wire Wire Line
	6250 7200 6700 7200
Text HLabel 14100 1650 2    50   Input ~ 0
ChargerPWR
$Comp
L NER:OrionBMS2 U6
U 1 1 5F91103C
P 7650 5550
F 0 "U6" H 7650 6915 50  0000 C CNN
F 1 "OrionBMS2" H 7650 6824 50  0000 C CNN
F 2 "" H 7650 6850 50  0001 C CNN
F 3 "" H 7650 6850 50  0001 C CNN
	1    7650 5550
	1    0    0    -1  
$EndComp
Wire Bus Line
	8950 6500 9000 6500
Entry Bus Bus
	8850 6600 8950 6500
Text HLabel 9000 6500 2    50   Input ~ 0
Segment1_VoltageTaps
Wire Wire Line
	8600 6800 8750 6800
Wire Wire Line
	8600 7000 8750 7000
Wire Wire Line
	8700 6900 8750 6900
Wire Wire Line
	8700 6700 8750 6700
Entry Wire Line
	8750 7000 8850 6900
Entry Wire Line
	8750 6900 8850 6800
Entry Wire Line
	8750 6800 8850 6700
Entry Wire Line
	8750 6700 8850 6600
Wire Bus Line
	8950 7450 9000 7450
Entry Bus Bus
	8850 7550 8950 7450
Entry Wire Line
	8750 8600 8850 8500
Entry Bus Bus
	8850 8500 8950 8400
NoConn ~ 6600 8600
NoConn ~ 6700 8700
NoConn ~ 6600 8800
NoConn ~ 6700 8900
Wire Wire Line
	8600 7750 8750 7750
Wire Wire Line
	8600 7950 8750 7950
Wire Wire Line
	8700 7850 8750 7850
Wire Wire Line
	8700 7650 8750 7650
Entry Wire Line
	8750 7950 8850 7850
Entry Wire Line
	8750 7850 8850 7750
Entry Wire Line
	8750 7750 8850 7650
Entry Wire Line
	8750 7650 8850 7550
Wire Wire Line
	5250 2100 4850 2100
Text HLabel 4850 2100 0    50   BiDi ~ 0
CAN_SHIELD(BMS)
Wire Wire Line
	5050 6500 6700 6500
Wire Wire Line
	5150 6400 6700 6400
Wire Wire Line
	5250 6300 6700 6300
Wire Wire Line
	5550 5800 6700 5800
Wire Wire Line
	4850 5200 6700 5200
$Comp
L Relay:DIPxx-1Axx-11x K53
U 1 1 5FD72BB2
P 6150 4700
F 0 "K53" V 6600 4750 50  0000 R CNN
F 1 "BMS_PWR_Relay" V 6500 5000 50  0000 R CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 6500 4650 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 6150 4700 50  0001 C CNN
	1    6150 4700
	0    1    1    0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D32
U 1 1 5FF47374
P 6150 4100
F 0 "D32" H 6150 4317 50  0000 C CNN
F 1 "DIODE" H 6150 4226 50  0000 C CNN
F 2 "" H 6150 4100 50  0001 C CNN
F 3 "~" H 6150 4100 50  0001 C CNN
F 4 "Y" H 6150 4100 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 6150 4100 50  0001 L CNN "Spice_Primitive"
	1    6150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4900 6700 4900
Wire Wire Line
	6700 4800 6550 4800
Wire Wire Line
	6550 4800 6550 4500
Wire Wire Line
	6550 4500 6450 4500
Connection ~ 6550 4500
Wire Wire Line
	6550 4500 6550 4100
Wire Wire Line
	6300 4100 6550 4100
Wire Wire Line
	6000 4100 5750 4100
Wire Wire Line
	5750 4100 5750 4500
Wire Wire Line
	5750 4500 5850 4500
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 5FA8A81B
P 9400 3400
AR Path="/5FA8A81B" Ref="K?"  Part="1" 
AR Path="/60D53BFB/5FA8A81B" Ref="K54"  Part="1" 
F 0 "K54" V 8833 3400 50  0000 C CNN
F 1 "Cooling Pump Relay" V 8924 3400 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 9750 3350 50  0001 L CNN
F 3 "" H 9400 3400 50  0001 C CNN
	1    9400 3400
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Bxx-75 K?
U 1 1 5FA8A821
P 8650 3000
AR Path="/5F45B05E/5FA8A821" Ref="K?"  Part="1" 
AR Path="/5FA8A821" Ref="K?"  Part="1" 
AR Path="/60D53BFB/5FA8A821" Ref="K1"  Part="1" 
F 0 "K1" V 8083 3000 50  0000 C CNN
F 1 "Cooling Pump Shutoff Relay" V 8174 3000 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 9000 2950 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 8650 3000 50  0001 C CNN
	1    8650 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 3200 9100 3200
Wire Wire Line
	9700 3200 9850 3200
Wire Wire Line
	9700 3600 9900 3600
Wire Wire Line
	8950 2800 9850 2800
Text HLabel 4800 3600 0    50   BiDi ~ 0
GLV(Pre_BRB)
Text HLabel 9900 3600 2    50   Output ~ 0
CoolingPumpPower_OUT
Wire Wire Line
	5850 4900 5350 4900
Text HLabel 14100 2000 2    50   Input ~ 0
CAN_H(Charger)
Text HLabel 14100 1900 2    50   Input ~ 0
CAN_L(Charger)
Text HLabel 14100 1550 2    50   UnSpc ~ 0
GND(Charger)
$Comp
L Simulation_SPICE:DIODE D31
U 1 1 6026F91C
P 8000 3000
F 0 "D31" V 8050 3200 50  0000 C CNN
F 1 "DIODE" V 7950 3200 50  0000 C CNN
F 2 "" H 8000 3000 50  0001 C CNN
F 3 "~" H 8000 3000 50  0001 C CNN
F 4 "Y" H 8000 3000 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 8000 3000 50  0001 L CNN "Spice_Primitive"
	1    8000 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2850 8000 2800
Connection ~ 8000 2800
Wire Wire Line
	8000 2800 8350 2800
Wire Wire Line
	8000 3150 8000 3600
Connection ~ 8000 3600
Wire Wire Line
	8000 3600 9100 3600
Wire Wire Line
	4850 1900 5050 1900
Wire Wire Line
	4850 1550 5550 1550
Wire Wire Line
	4850 2000 5150 2000
Connection ~ 9850 1550
Wire Wire Line
	5350 2800 5350 4900
Wire Wire Line
	5350 2800 8000 2800
Wire Wire Line
	5250 2100 5250 6300
Wire Wire Line
	5150 2000 5150 6400
Connection ~ 5150 2000
Wire Wire Line
	5050 1900 5050 6500
Connection ~ 5050 1900
Wire Wire Line
	5550 1550 5550 5800
Connection ~ 5550 1550
Wire Wire Line
	5550 1550 5750 1550
Wire Wire Line
	4850 1650 4950 1650
Wire Wire Line
	5750 1550 5750 4100
Connection ~ 5750 1550
Connection ~ 5750 4100
Wire Wire Line
	5750 1550 9850 1550
Connection ~ 6550 4100
Wire Wire Line
	5150 2000 14100 2000
Wire Wire Line
	5050 1900 14100 1900
Wire Wire Line
	9850 1550 14100 1550
Wire Wire Line
	4800 3600 8000 3600
Wire Wire Line
	8000 1650 8000 2800
Wire Wire Line
	8000 1650 14100 1650
Wire Wire Line
	6700 5600 4150 5600
Text HLabel 2900 6000 0    50   Output ~ 0
BMS_Fan
Wire Wire Line
	3100 6000 2900 6000
Wire Wire Line
	3700 6000 4150 6000
Wire Wire Line
	4950 6000 4950 4900
Connection ~ 4950 1650
Wire Wire Line
	4950 1650 6550 1650
$Comp
L Device:R R10
U 1 1 64558B5B
P 4150 5800
F 0 "R10" H 4220 5846 50  0000 L CNN
F 1 "2.2k" H 4220 5755 50  0000 L CNN
F 2 "" V 4080 5800 50  0001 C CNN
F 3 "~" H 4150 5800 50  0001 C CNN
	1    4150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5650 4150 5600
Connection ~ 4150 5600
Wire Wire Line
	4150 5600 3700 5600
Wire Wire Line
	4150 5950 4150 6000
Connection ~ 4150 6000
Wire Wire Line
	4150 6000 4950 6000
Wire Wire Line
	3100 5600 2900 5600
Wire Wire Line
	2900 5600 2900 4900
Wire Wire Line
	2900 4900 4950 4900
Connection ~ 4950 4900
Wire Wire Line
	4950 4900 4950 1650
$Comp
L Relay:DIPxx-1Axx-11x K55
U 1 1 5FB9D72C
P 3400 5800
F 0 "K55" V 3850 5850 50  0000 R CNN
F 1 "BMS_Fan_Relay" V 3750 6100 50  0000 R CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 3750 5750 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 3400 5800 50  0001 C CNN
	1    3400 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3200 6550 3200
Wire Wire Line
	9850 1550 9850 2800
Wire Wire Line
	6550 1650 6550 3200
Connection ~ 6550 3200
Wire Wire Line
	6550 3200 6550 4100
Connection ~ 9850 2800
Wire Wire Line
	9850 2800 9850 3200
Wire Bus Line
	8850 8500 8850 8800
Wire Bus Line
	6450 7550 6450 7850
Wire Bus Line
	9100 5300 9100 5900
Wire Bus Line
	8850 6600 8850 6900
Wire Bus Line
	8850 7550 8850 7850
$EndSCHEMATC
