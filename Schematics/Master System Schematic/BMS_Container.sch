EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 21 22
Title "BMS & MC Container"
Date "2020-11-12"
Rev "7"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4900 6600 0    50   BiDi ~ 0
CAN_H(BMS)
Text HLabel 4900 6700 0    50   BiDi ~ 0
CAN_L(BMS)
Text HLabel 4900 3350 0    50   Input ~ 0
GLV
Text HLabel 11700 1150 2    50   UnSpc ~ 0
GND
Text HLabel 7250 7650 0    50   Input ~ 0
Segment4_VoltageTaps
Text HLabel 4850 7400 0    50   Output ~ 0
BMS_Fault
Text HLabel 10300 5400 2    50   Input ~ 0
Current_Sensor
Text HLabel 10300 8600 2    50   Input ~ 0
Segment3_VoltageTaps
Text HLabel 10300 7650 2    50   Input ~ 0
Segment2_VoltageTaps
Entry Wire Line
	9800 8900 9900 8800
Entry Wire Line
	9800 9000 9900 8900
Entry Wire Line
	9800 9100 9900 9000
Wire Bus Line
	10000 8600 10300 8600
Wire Wire Line
	9750 8800 9800 8800
Wire Wire Line
	9650 8900 9800 8900
Wire Wire Line
	9800 9000 9750 9000
Wire Wire Line
	9650 9100 9800 9100
Wire Wire Line
	7650 8050 7600 8050
Wire Wire Line
	7750 7950 7600 7950
Wire Wire Line
	7650 7850 7600 7850
Wire Wire Line
	7750 8150 7600 8150
Entry Wire Line
	7500 7750 7600 7850
Entry Wire Line
	7500 7850 7600 7950
Entry Wire Line
	7500 7950 7600 8050
Entry Wire Line
	7500 8050 7600 8150
Entry Bus Bus
	7400 7650 7500 7750
Wire Bus Line
	7400 7650 7250 7650
Wire Wire Line
	10050 6100 9650 6100
Entry Wire Line
	9800 6000 9900 5900
Entry Wire Line
	9800 5300 9900 5200
Wire Wire Line
	9750 5300 9800 5300
Wire Wire Line
	9750 6000 9800 6000
Entry Bus Bus
	9900 5200 10000 5100
Wire Bus Line
	10300 5100 10000 5100
Text HLabel 10300 5100 2    50   Input ~ 0
Segment1_Thermistors
Text HLabel 10300 5000 2    50   Input ~ 0
Segment2_Thermistors
Text HLabel 10300 4900 2    50   Input ~ 0
Segment3_Thermistors
Text HLabel 10300 4800 2    50   Input ~ 0
Segment4_Thermistors
Wire Bus Line
	10000 5100 10000 5000
Wire Bus Line
	10000 4800 10300 4800
Wire Bus Line
	10000 4900 10300 4900
Connection ~ 10000 4900
Wire Bus Line
	10000 4900 10000 4800
Wire Bus Line
	10000 5000 10300 5000
Connection ~ 10000 5000
Wire Bus Line
	10000 5000 10000 4900
NoConn ~ 7750 4900
NoConn ~ 7750 5200
NoConn ~ 7750 5300
NoConn ~ 7750 5700
NoConn ~ 7750 6100
NoConn ~ 7750 6200
NoConn ~ 7750 6300
NoConn ~ 7750 6800
NoConn ~ 7750 6900
NoConn ~ 7750 7000
NoConn ~ 7750 7100
NoConn ~ 7750 7200
NoConn ~ 9650 4900
NoConn ~ 9650 5000
NoConn ~ 9650 5100
NoConn ~ 9650 5200
NoConn ~ 9650 5800
NoConn ~ 9650 5900
Wire Bus Line
	10300 5400 10250 5400
Entry Bus Bus
	10250 5400 10150 5500
Wire Bus Line
	9900 5200 9900 5900
Wire Wire Line
	9650 5500 10050 5500
Wire Wire Line
	9650 5400 10050 5400
Wire Wire Line
	9650 6200 10050 6200
Entry Wire Line
	10050 5400 10150 5500
Entry Wire Line
	10050 5500 10150 5600
Entry Wire Line
	10050 6100 10150 6000
Entry Wire Line
	10050 6200 10150 6100
Text HLabel 4900 5400 0    50   Output ~ 0
ChargerSafety
Wire Wire Line
	4850 7400 7750 7400
Text HLabel 4850 1650 0    50   Input ~ 0
ChargerPWR
$Comp
L NER:OrionBMS2 U6
U 1 1 60E83DDC
P 8700 5750
F 0 "U6" H 8700 7115 50  0000 C CNN
F 1 "OrionBMS2" H 8700 7024 50  0000 C CNN
F 2 "" H 8700 7050 50  0001 C CNN
F 3 "" H 8700 7050 50  0001 C CNN
	1    8700 5750
	1    0    0    -1  
$EndComp
Wire Bus Line
	10000 6700 10300 6700
Entry Bus Bus
	9900 6800 10000 6700
Text HLabel 10300 6700 2    50   Input ~ 0
Segment1_VoltageTaps
Wire Wire Line
	9650 7000 9800 7000
Wire Wire Line
	9650 7200 9800 7200
Wire Wire Line
	9750 7100 9800 7100
Wire Wire Line
	9750 6900 9800 6900
Entry Wire Line
	9800 7200 9900 7100
Entry Wire Line
	9800 7100 9900 7000
Entry Wire Line
	9800 7000 9900 6900
Entry Wire Line
	9800 6900 9900 6800
Wire Bus Line
	10000 7650 10300 7650
Entry Bus Bus
	9900 7750 10000 7650
Entry Wire Line
	9800 8800 9900 8700
Entry Bus Bus
	9900 8700 10000 8600
NoConn ~ 7650 8800
NoConn ~ 7750 8900
NoConn ~ 7650 9000
NoConn ~ 7750 9100
Wire Wire Line
	9650 7950 9800 7950
Wire Wire Line
	9650 8150 9800 8150
Wire Wire Line
	9750 8050 9800 8050
Wire Wire Line
	9750 7850 9800 7850
Entry Wire Line
	9800 8150 9900 8050
Entry Wire Line
	9800 8050 9900 7950
Entry Wire Line
	9800 7950 9900 7850
Entry Wire Line
	9800 7850 9900 7750
Wire Wire Line
	7750 6500 4900 6500
Text HLabel 4900 6500 0    50   BiDi ~ 0
CAN_SHIELD(BMS)
$Comp
L Relay:DIPxx-1Axx-11x K1
U 1 1 60E83E04
P 5750 3800
F 0 "K1" V 6200 3850 50  0000 R CNN
F 1 "BMS_PWR_Relay" V 6100 4100 50  0000 R CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 6100 3750 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 5750 3800 50  0001 C CNN
	1    5750 3800
	-1   0    0    1   
$EndComp
$Comp
L Simulation_SPICE:DIODE D2
U 1 1 60E83E0C
P 6400 3800
F 0 "D2" H 6400 3600 50  0000 C CNN
F 1 "DIODE" H 6400 3700 50  0000 C CNN
F 2 "" H 6400 3800 50  0001 C CNN
F 3 "~" H 6400 3800 50  0001 C CNN
F 4 "Y" H 6400 3800 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 6400 3800 50  0001 L CNN "Spice_Primitive"
	1    6400 3800
	0    -1   -1   0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 60E83E1C
P 9400 3550
AR Path="/60E83E1C" Ref="K?"  Part="1" 
AR Path="/60D53BFB/60E83E1C" Ref="K55"  Part="1" 
F 0 "K55" V 8833 3550 50  0000 C CNN
F 1 "Cooling Pump Relay" V 8924 3550 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 9750 3500 50  0001 L CNN
F 3 "" H 9400 3550 50  0001 C CNN
	1    9400 3550
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Bxx-75 K?
U 1 1 60E83E22
P 7650 3150
AR Path="/5F45B05E/60E83E22" Ref="K?"  Part="1" 
AR Path="/60E83E22" Ref="K?"  Part="1" 
AR Path="/60D53BFB/60E83E22" Ref="K54"  Part="1" 
F 0 "K54" V 7083 3150 50  0000 C CNN
F 1 "Cooling Pump Shutoff Relay" V 7174 3150 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 8000 3100 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 7650 3150 50  0001 C CNN
	1    7650 3150
	0    1    1    0   
$EndComp
Text HLabel 11700 2050 2    50   BiDi ~ 0
GLV(Pre_BRB)
Text HLabel 11750 3750 2    50   Output ~ 0
CoolingPumpPower_OUT
Text HLabel 4900 6950 0    50   Input ~ 0
CAN_H(Charger)
Text HLabel 4900 6850 0    50   Input ~ 0
CAN_L(Charger)
Text HLabel 11700 1650 2    50   UnSpc ~ 0
GND(Charger)
Text HLabel 4900 5500 0    50   Output ~ 0
Discharge_En
Text HLabel 4900 5600 0    50   Output ~ 0
Charge_En
Text HLabel 4900 6400 0    50   Output ~ 0
Discharge_Limit
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 60E83E76
P 6300 1850
AR Path="/60E83E76" Ref="K?"  Part="1" 
AR Path="/60D53BFB/60E83E76" Ref="K53"  Part="1" 
F 0 "K53" V 5733 1850 50  0000 C CNN
F 1 "Charging Isolation Relay" V 5824 1850 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 6650 1800 50  0001 L CNN
F 3 "" H 6300 1850 50  0001 C CNN
	1    6300 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 3350 10500 3350
Wire Wire Line
	7950 2950 10500 2950
Connection ~ 10500 2950
Wire Wire Line
	7950 3350 8750 3350
Wire Wire Line
	5550 1650 6000 1650
Wire Wire Line
	4850 1650 5550 1650
Wire Wire Line
	8350 2050 8350 3750
Wire Wire Line
	5550 1650 5550 2050
Connection ~ 5550 2050
Wire Wire Line
	5550 2050 6000 2050
Wire Wire Line
	6600 2050 8350 2050
Wire Wire Line
	5550 2050 5550 2950
Connection ~ 5550 2950
Wire Wire Line
	5550 2950 6900 2950
Wire Wire Line
	9700 3750 11750 3750
Wire Wire Line
	10500 2950 10500 3350
Text Notes 550  800  0    50   ~ 0
Mode 1: Ready to drive | No charger power, GLV power present, pump running, BMS not in charge mode\nMode 2: Charging | Charger power present, GLV present, pump off, BMS in charge mode\nMode 3: Shutdown | GLV not present, BMS not in charge mode, pump off
Wire Wire Line
	5550 2950 5550 3500
Wire Wire Line
	5950 3350 6400 3350
Connection ~ 6900 3350
Wire Wire Line
	6900 3350 7350 3350
Wire Wire Line
	6900 5000 7750 5000
Connection ~ 5950 3350
Wire Wire Line
	8350 3750 9100 3750
Wire Wire Line
	6900 3350 6900 5000
Wire Wire Line
	4900 5400 7750 5400
Wire Wire Line
	4900 5500 7750 5500
Wire Wire Line
	7750 5600 4900 5600
Connection ~ 5550 1650
Wire Wire Line
	8350 2050 11700 2050
Connection ~ 8350 2050
Wire Wire Line
	6600 1650 10500 1650
Wire Wire Line
	10500 4250 10500 3350
Connection ~ 10500 3350
Wire Wire Line
	11700 1650 10500 1650
Wire Wire Line
	10500 1150 11700 1150
Connection ~ 10500 1650
Wire Wire Line
	5550 5100 5550 4100
Wire Wire Line
	5950 3350 5950 3500
Wire Wire Line
	6400 3650 6400 3350
Wire Wire Line
	5950 4100 5950 4250
Wire Wire Line
	5950 4250 6400 4250
Connection ~ 6400 4250
Wire Wire Line
	6400 4250 6400 3950
Connection ~ 6400 3350
Wire Wire Line
	6400 3350 6900 3350
Wire Wire Line
	5550 5100 7750 5100
$Comp
L Simulation_SPICE:DIODE D31
U 1 1 6064F904
P 7650 2400
F 0 "D31" H 7650 2200 50  0000 C CNN
F 1 "DIODE" H 7650 2300 50  0000 C CNN
F 2 "" H 7650 2400 50  0001 C CNN
F 3 "~" H 7650 2400 50  0001 C CNN
F 4 "Y" H 7650 2400 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 7650 2400 50  0001 L CNN "Spice_Primitive"
	1    7650 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 2400 6900 2950
Wire Wire Line
	6900 2400 7500 2400
Connection ~ 6900 2950
Wire Wire Line
	6900 2950 7350 2950
Wire Wire Line
	7800 2400 10500 2400
Connection ~ 10500 2400
Wire Wire Line
	10500 2400 10500 2700
$Comp
L Simulation_SPICE:DIODE D32
U 1 1 6066C741
P 9400 2700
F 0 "D32" H 9400 2500 50  0000 C CNN
F 1 "DIODE" H 9400 2600 50  0000 C CNN
F 2 "" H 9400 2700 50  0001 C CNN
F 3 "~" H 9400 2700 50  0001 C CNN
F 4 "Y" H 9400 2700 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9400 2700 50  0001 L CNN "Spice_Primitive"
	1    9400 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 2700 10500 2700
Wire Wire Line
	8750 3350 8750 2700
Connection ~ 8750 3350
Wire Wire Line
	8750 3350 9100 3350
Wire Wire Line
	8750 2700 9250 2700
Connection ~ 10500 2700
Wire Wire Line
	10500 2700 10500 2950
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 6068A356
P 6300 1150
F 0 "D1" H 6300 950 50  0000 C CNN
F 1 "DIODE" H 6300 1050 50  0000 C CNN
F 2 "" H 6300 1150 50  0001 C CNN
F 3 "~" H 6300 1150 50  0001 C CNN
F 4 "Y" H 6300 1150 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 6300 1150 50  0001 L CNN "Spice_Primitive"
	1    6300 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 1150 5550 1650
Wire Wire Line
	5550 1150 6150 1150
Wire Wire Line
	6450 1150 10500 1150
Connection ~ 10500 1150
Wire Wire Line
	10500 1650 10500 2400
Wire Wire Line
	10500 1150 10500 1650
Wire Wire Line
	4900 6600 5600 6600
Wire Wire Line
	4900 6700 5450 6700
Wire Wire Line
	4900 6850 5450 6850
Wire Wire Line
	5450 6850 5450 6700
Connection ~ 5450 6700
Wire Wire Line
	5450 6700 7750 6700
Wire Wire Line
	4900 6950 5600 6950
Wire Wire Line
	5600 6950 5600 6600
Connection ~ 5600 6600
Wire Wire Line
	5600 6600 7750 6600
Wire Wire Line
	7750 6000 6400 6000
Wire Wire Line
	6400 4250 10500 4250
Wire Wire Line
	4900 6400 7750 6400
Wire Wire Line
	6400 4250 6400 6000
Wire Wire Line
	5100 3350 5950 3350
Wire Wire Line
	4900 3350 5100 3350
Connection ~ 5100 3350
Wire Wire Line
	5600 6300 5600 6600
Wire Wire Line
	5450 6300 5450 6700
Wire Wire Line
	5100 3350 5100 5900
Entry Bus Bus
	5300 6200 5200 6100
Entry Bus Bus
	5450 6200 5350 6100
Wire Bus Line
	5350 6200 5300 6200
Wire Bus Line
	5500 6200 5450 6200
Entry Bus Bus
	5250 6000 5350 6100
Wire Bus Line
	5200 6000 5250 6000
Entry Wire Line
	5100 5900 5200 6000
Entry Wire Line
	5450 6300 5350 6200
Entry Wire Line
	5600 6300 5500 6200
Text HLabel 4900 6100 0    50   BiDi ~ 0
Thermistor_Expansion
Connection ~ 6400 6000
Wire Wire Line
	6400 6300 6400 6000
Wire Wire Line
	5750 6300 6400 6300
Entry Bus Bus
	5600 6200 5500 6100
Wire Bus Line
	5650 6200 5600 6200
Entry Wire Line
	5750 6300 5650 6200
NoConn ~ 7750 5800
Wire Bus Line
	9900 8700 9900 9000
Wire Bus Line
	7500 7750 7500 8050
Wire Bus Line
	10150 5500 10150 6100
Wire Bus Line
	9900 6800 9900 7100
Wire Bus Line
	9900 7750 9900 8050
Wire Bus Line
	4900 6100 5500 6100
$EndSCHEMATC
