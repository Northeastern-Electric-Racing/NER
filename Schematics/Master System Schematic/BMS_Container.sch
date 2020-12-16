EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 21 22
Title "BMS & MC Container"
Date "2020-11-23"
Rev "8"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5100 7100 0    50   BiDi ~ 0
CAN_H(BMS)
Text HLabel 5100 7200 0    50   BiDi ~ 0
CAN_L(BMS)
Text HLabel 4800 3500 0    50   Input ~ 0
GLV
Text HLabel 11900 1300 2    50   UnSpc ~ 0
GND
Text HLabel 7450 8150 0    50   Input ~ 0
Segment4_VoltageTaps
Text HLabel 5050 7900 0    50   Output ~ 0
BMS_Fault
Text HLabel 10500 5900 2    50   Input ~ 0
Current_Sensor
Text HLabel 10500 9100 2    50   Input ~ 0
Segment3_VoltageTaps
Text HLabel 10500 8150 2    50   Input ~ 0
Segment2_VoltageTaps
Entry Wire Line
	10000 9400 10100 9300
Entry Wire Line
	10000 9500 10100 9400
Entry Wire Line
	10000 9600 10100 9500
Wire Bus Line
	10200 9100 10500 9100
Wire Wire Line
	9950 9300 10000 9300
Wire Wire Line
	9850 9400 10000 9400
Wire Wire Line
	10000 9500 9950 9500
Wire Wire Line
	9850 9600 10000 9600
Wire Wire Line
	7850 8550 7800 8550
Wire Wire Line
	7950 8450 7800 8450
Wire Wire Line
	7850 8350 7800 8350
Wire Wire Line
	7950 8650 7800 8650
Entry Wire Line
	7700 8250 7800 8350
Entry Wire Line
	7700 8350 7800 8450
Entry Wire Line
	7700 8450 7800 8550
Entry Wire Line
	7700 8550 7800 8650
Entry Bus Bus
	7600 8150 7700 8250
Wire Bus Line
	7600 8150 7450 8150
Wire Wire Line
	10250 6600 9850 6600
Entry Wire Line
	10000 6500 10100 6400
Entry Wire Line
	10000 5800 10100 5700
Wire Wire Line
	9950 5800 10000 5800
Wire Wire Line
	9950 6500 10000 6500
Entry Bus Bus
	10100 5700 10200 5600
Wire Bus Line
	10500 5600 10200 5600
Text HLabel 10500 5600 2    50   Input ~ 0
Segment1_Thermistors
Text HLabel 10500 5500 2    50   Input ~ 0
Segment2_Thermistors
Text HLabel 10500 5400 2    50   Input ~ 0
Segment3_Thermistors
Text HLabel 10500 5300 2    50   Input ~ 0
Segment4_Thermistors
Wire Bus Line
	10200 5600 10200 5500
Wire Bus Line
	10200 5300 10500 5300
Wire Bus Line
	10200 5400 10500 5400
Connection ~ 10200 5400
Wire Bus Line
	10200 5400 10200 5300
Wire Bus Line
	10200 5500 10500 5500
Connection ~ 10200 5500
Wire Bus Line
	10200 5500 10200 5400
NoConn ~ 7950 5400
NoConn ~ 7950 5700
NoConn ~ 7950 5800
NoConn ~ 7950 6200
NoConn ~ 7950 6600
NoConn ~ 7950 6700
NoConn ~ 7950 6800
NoConn ~ 7950 7300
NoConn ~ 7950 7400
NoConn ~ 7950 7500
NoConn ~ 7950 7600
NoConn ~ 7950 7700
NoConn ~ 9850 5400
NoConn ~ 9850 5500
NoConn ~ 9850 5600
NoConn ~ 9850 5700
NoConn ~ 9850 6300
NoConn ~ 9850 6400
Wire Bus Line
	10500 5900 10450 5900
Entry Bus Bus
	10450 5900 10350 6000
Wire Bus Line
	10100 5700 10100 6400
Wire Wire Line
	9850 6000 10250 6000
Wire Wire Line
	9850 5900 10250 5900
Wire Wire Line
	9850 6700 10250 6700
Entry Wire Line
	10250 5900 10350 6000
Entry Wire Line
	10250 6000 10350 6100
Entry Wire Line
	10250 6600 10350 6500
Entry Wire Line
	10250 6700 10350 6600
Text HLabel 5100 5900 0    50   Output ~ 0
ChargerSafety
Wire Wire Line
	5050 7900 7950 7900
Text HLabel 4800 1800 0    50   Input ~ 0
ChargerPWR
$Comp
L NER:OrionBMS2 U6
U 1 1 60E83DDC
P 8900 6250
F 0 "U6" H 8900 7615 50  0000 C CNN
F 1 "OrionBMS2" H 8900 7524 50  0000 C CNN
F 2 "" H 8900 7550 50  0001 C CNN
F 3 "" H 8900 7550 50  0001 C CNN
	1    8900 6250
	1    0    0    -1  
$EndComp
Wire Bus Line
	10200 7200 10500 7200
Entry Bus Bus
	10100 7300 10200 7200
Text HLabel 10500 7200 2    50   Input ~ 0
Segment1_VoltageTaps
Wire Wire Line
	9850 7500 10000 7500
Wire Wire Line
	9850 7700 10000 7700
Wire Wire Line
	9950 7600 10000 7600
Wire Wire Line
	9950 7400 10000 7400
Entry Wire Line
	10000 7700 10100 7600
Entry Wire Line
	10000 7600 10100 7500
Entry Wire Line
	10000 7500 10100 7400
Entry Wire Line
	10000 7400 10100 7300
Wire Bus Line
	10200 8150 10500 8150
Entry Bus Bus
	10100 8250 10200 8150
Entry Wire Line
	10000 9300 10100 9200
Entry Bus Bus
	10100 9200 10200 9100
NoConn ~ 7850 9300
NoConn ~ 7950 9400
NoConn ~ 7850 9500
NoConn ~ 7950 9600
Wire Wire Line
	9850 8450 10000 8450
Wire Wire Line
	9850 8650 10000 8650
Wire Wire Line
	9950 8550 10000 8550
Wire Wire Line
	9950 8350 10000 8350
Entry Wire Line
	10000 8650 10100 8550
Entry Wire Line
	10000 8550 10100 8450
Entry Wire Line
	10000 8450 10100 8350
Entry Wire Line
	10000 8350 10100 8250
Wire Wire Line
	7950 7000 5100 7000
Text HLabel 5100 7000 0    50   BiDi ~ 0
CAN_SHIELD(BMS)
$Comp
L Relay:DIPxx-1Axx-11x K1
U 1 1 60E83E04
P 5950 3950
F 0 "K1" V 6400 4000 50  0000 R CNN
F 1 "BMS_PWR_Relay" V 6300 4250 50  0000 R CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 6300 3900 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 5950 3950 50  0001 C CNN
	1    5950 3950
	-1   0    0    1   
$EndComp
$Comp
L Simulation_SPICE:DIODE D2
U 1 1 60E83E0C
P 6600 3950
F 0 "D2" H 6600 3750 50  0000 C CNN
F 1 "DIODE" H 6600 3850 50  0000 C CNN
F 2 "" H 6600 3950 50  0001 C CNN
F 3 "~" H 6600 3950 50  0001 C CNN
F 4 "Y" H 6600 3950 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 6600 3950 50  0001 L CNN "Spice_Primitive"
	1    6600 3950
	0    -1   -1   0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 60E83E1C
P 9600 3700
AR Path="/60E83E1C" Ref="K?"  Part="1" 
AR Path="/60D53BFB/60E83E1C" Ref="K55"  Part="1" 
F 0 "K55" V 9033 3700 50  0000 C CNN
F 1 "Cooling Pump Relay" V 9124 3700 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 9950 3650 50  0001 L CNN
F 3 "" H 9600 3700 50  0001 C CNN
	1    9600 3700
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Bxx-75 K?
U 1 1 60E83E22
P 7850 3300
AR Path="/5F45B05E/60E83E22" Ref="K?"  Part="1" 
AR Path="/60E83E22" Ref="K?"  Part="1" 
AR Path="/60D53BFB/60E83E22" Ref="K54"  Part="1" 
F 0 "K54" V 7283 3300 50  0000 C CNN
F 1 "Cooling Pump Shutoff Relay" V 7374 3300 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 8200 3250 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 7850 3300 50  0001 C CNN
	1    7850 3300
	0    1    1    0   
$EndComp
Text HLabel 11900 2200 2    50   BiDi ~ 0
GLV(Pre_BRB)
Text HLabel 11950 3900 2    50   Output ~ 0
CoolingPumpPower_OUT
Text HLabel 5100 7450 0    50   Input ~ 0
CAN_H(Charger)
Text HLabel 5100 7350 0    50   Input ~ 0
CAN_L(Charger)
Text HLabel 11900 1800 2    50   UnSpc ~ 0
GND(Charger)
Text HLabel 5100 6000 0    50   Output ~ 0
Discharge_En
Text HLabel 5100 6100 0    50   Output ~ 0
Charge_En
Text HLabel 5100 6900 0    50   Output ~ 0
Discharge_Limit
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 60E83E76
P 6500 2000
AR Path="/60E83E76" Ref="K?"  Part="1" 
AR Path="/60D53BFB/60E83E76" Ref="K53"  Part="1" 
F 0 "K53" V 5933 2000 50  0000 C CNN
F 1 "Charging Isolation Relay" V 6024 2000 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 6850 1950 50  0001 L CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6500 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 3500 10700 3500
Wire Wire Line
	8150 3100 10700 3100
Connection ~ 10700 3100
Wire Wire Line
	8150 3500 8950 3500
Wire Wire Line
	5750 1800 6200 1800
Wire Wire Line
	8550 2200 8550 3900
Wire Wire Line
	5750 1800 5750 2200
Connection ~ 5750 2200
Wire Wire Line
	5750 2200 6200 2200
Wire Wire Line
	6800 2200 8550 2200
Wire Wire Line
	5750 2200 5750 3100
Connection ~ 5750 3100
Wire Wire Line
	5750 3100 7100 3100
Wire Wire Line
	9900 3900 11950 3900
Wire Wire Line
	10700 3100 10700 3500
Text Notes 550  800  0    50   ~ 0
Mode 1: Ready to drive | No charger power, GLV power present, pump running, BMS not in charge mode\nMode 2: Charging | Charger power present, GLV present, pump off, BMS in charge mode\nMode 3: Shutdown | GLV not present, BMS not in charge mode, pump off
Wire Wire Line
	5750 3100 5750 3650
Wire Wire Line
	6150 3500 6600 3500
Wire Wire Line
	7100 5500 7950 5500
Connection ~ 6150 3500
Wire Wire Line
	8550 3900 9300 3900
Wire Wire Line
	7100 3500 7100 5500
Wire Wire Line
	5100 5900 7950 5900
Wire Wire Line
	5100 6000 7950 6000
Wire Wire Line
	7950 6100 5100 6100
Connection ~ 5750 1800
Wire Wire Line
	8550 2200 11900 2200
Connection ~ 8550 2200
Wire Wire Line
	6800 1800 10700 1800
Wire Wire Line
	10700 4400 10700 3500
Connection ~ 10700 3500
Wire Wire Line
	11900 1800 10700 1800
Wire Wire Line
	10700 1300 11900 1300
Connection ~ 10700 1800
Wire Wire Line
	5750 5600 5750 4250
Wire Wire Line
	6150 3500 6150 3650
Wire Wire Line
	6600 3800 6600 3500
Wire Wire Line
	6150 4250 6150 4400
Wire Wire Line
	6150 4400 6600 4400
Connection ~ 6600 4400
Wire Wire Line
	6600 4400 6600 4100
Connection ~ 6600 3500
Wire Wire Line
	5750 5600 7950 5600
$Comp
L Simulation_SPICE:DIODE D31
U 1 1 6064F904
P 7850 2550
F 0 "D31" H 7850 2350 50  0000 C CNN
F 1 "DIODE" H 7850 2450 50  0000 C CNN
F 2 "" H 7850 2550 50  0001 C CNN
F 3 "~" H 7850 2550 50  0001 C CNN
F 4 "Y" H 7850 2550 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 7850 2550 50  0001 L CNN "Spice_Primitive"
	1    7850 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 2550 7100 3100
Wire Wire Line
	7100 2550 7700 2550
Connection ~ 7100 3100
Wire Wire Line
	7100 3100 7550 3100
Wire Wire Line
	8000 2550 10700 2550
Connection ~ 10700 2550
Wire Wire Line
	10700 2550 10700 2850
$Comp
L Simulation_SPICE:DIODE D32
U 1 1 6066C741
P 9600 2850
F 0 "D32" H 9600 2650 50  0000 C CNN
F 1 "DIODE" H 9600 2750 50  0000 C CNN
F 2 "" H 9600 2850 50  0001 C CNN
F 3 "~" H 9600 2850 50  0001 C CNN
F 4 "Y" H 9600 2850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 9600 2850 50  0001 L CNN "Spice_Primitive"
	1    9600 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 2850 10700 2850
Wire Wire Line
	8950 3500 8950 2850
Connection ~ 8950 3500
Wire Wire Line
	8950 3500 9300 3500
Wire Wire Line
	8950 2850 9450 2850
Connection ~ 10700 2850
Wire Wire Line
	10700 2850 10700 3100
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 6068A356
P 6500 1300
F 0 "D1" H 6500 1100 50  0000 C CNN
F 1 "DIODE" H 6500 1200 50  0000 C CNN
F 2 "" H 6500 1300 50  0001 C CNN
F 3 "~" H 6500 1300 50  0001 C CNN
F 4 "Y" H 6500 1300 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "D" H 6500 1300 50  0001 L CNN "Spice_Primitive"
	1    6500 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 1300 5750 1800
Wire Wire Line
	5750 1300 6350 1300
Wire Wire Line
	6650 1300 10700 1300
Connection ~ 10700 1300
Wire Wire Line
	10700 1800 10700 2550
Wire Wire Line
	10700 1300 10700 1800
Wire Wire Line
	5100 7100 5800 7100
Wire Wire Line
	5100 7200 5650 7200
Wire Wire Line
	5100 7350 5650 7350
Wire Wire Line
	5650 7350 5650 7200
Connection ~ 5650 7200
Wire Wire Line
	5650 7200 7950 7200
Wire Wire Line
	5100 7450 5800 7450
Wire Wire Line
	5800 7450 5800 7100
Connection ~ 5800 7100
Wire Wire Line
	5800 7100 7950 7100
Wire Wire Line
	7950 6500 6600 6500
Wire Wire Line
	6600 4400 10700 4400
Wire Wire Line
	5100 6900 7950 6900
Wire Wire Line
	6600 4400 6600 6500
Wire Wire Line
	5800 6800 5800 7100
Wire Wire Line
	5650 6800 5650 7200
Wire Wire Line
	5300 3500 5300 6400
Entry Bus Bus
	5500 6700 5400 6600
Entry Bus Bus
	5650 6700 5550 6600
Wire Bus Line
	5550 6700 5500 6700
Wire Bus Line
	5700 6700 5650 6700
Entry Bus Bus
	5450 6500 5550 6600
Wire Bus Line
	5400 6500 5450 6500
Entry Wire Line
	5300 6400 5400 6500
Entry Wire Line
	5650 6800 5550 6700
Entry Wire Line
	5800 6800 5700 6700
Text HLabel 5100 6600 0    50   BiDi ~ 0
Thermistor_Expansion
Connection ~ 6600 6500
Wire Wire Line
	6600 6800 6600 6500
Wire Wire Line
	5950 6800 6600 6800
Entry Bus Bus
	5800 6700 5700 6600
Wire Bus Line
	5850 6700 5800 6700
Entry Wire Line
	5950 6800 5850 6700
NoConn ~ 7950 6300
Wire Notes Line
	10850 4550 10850 1000
Wire Notes Line
	10850 1000 5150 1000
Wire Notes Line
	5150 1000 5150 4550
Wire Notes Line
	5150 4550 10850 4550
Wire Wire Line
	6600 3500 7100 3500
Wire Wire Line
	5300 3500 6150 3500
Connection ~ 7100 3500
Wire Wire Line
	7100 3500 7550 3500
Text Notes 5150 950  0    50   ~ 0
Vehicle Power Management Board
Wire Wire Line
	4800 3500 5300 3500
Connection ~ 5300 3500
Wire Wire Line
	4800 1800 5750 1800
Wire Bus Line
	10100 9200 10100 9500
Wire Bus Line
	7700 8250 7700 8550
Wire Bus Line
	10350 6000 10350 6600
Wire Bus Line
	10100 7300 10100 7600
Wire Bus Line
	10100 8250 10100 8550
Wire Bus Line
	5100 6600 5700 6600
$EndSCHEMATC
