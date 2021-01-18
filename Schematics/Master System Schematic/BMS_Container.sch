EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 21 23
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
Text HLabel 5150 3500 0    50   Input ~ 0
GLV
Text HLabel 10200 2150 2    50   UnSpc ~ 0
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
Text HLabel 7600 2150 0    50   Input ~ 0
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
Text HLabel 10200 3000 2    50   BiDi ~ 0
GLV(Pre_BRB)
Text HLabel 10200 3700 2    50   Output ~ 0
CoolingPumpPower_OUT
Text HLabel 5100 7450 0    50   Input ~ 0
CAN_H(Charger)
Text HLabel 5100 7350 0    50   Input ~ 0
CAN_L(Charger)
Text HLabel 10200 2300 2    50   UnSpc ~ 0
GND(Charger)
Text HLabel 5100 6000 0    50   Output ~ 0
Discharge_En
Text HLabel 5100 6100 0    50   Output ~ 0
Charge_En
Text HLabel 5100 6900 0    50   Output ~ 0
Discharge_Limit
Text Notes 550  800  0    50   ~ 0
Mode 1: Ready to drive | No charger power, GLV power present, pump running, BMS not in charge mode\nMode 2: Charging | Charger power present, GLV present, pump off, BMS in charge mode\nMode 3: Shutdown | GLV not present, BMS not in charge mode, pump off
Wire Wire Line
	7100 5500 7950 5500
Wire Wire Line
	5100 5900 7950 5900
Wire Wire Line
	5100 6000 7950 6000
Wire Wire Line
	7950 6100 5100 6100
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
	5100 6900 7950 6900
Wire Wire Line
	5800 6800 5800 7100
Wire Wire Line
	5650 6800 5650 7200
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
Wire Wire Line
	5300 4950 6600 4950
Wire Wire Line
	5300 4950 5300 6400
Connection ~ 6600 4950
Wire Wire Line
	6600 4950 6600 6500
Wire Wire Line
	7100 4950 6600 4950
Wire Wire Line
	7100 4950 7100 5500
Wire Wire Line
	5150 3500 5300 3500
Wire Wire Line
	5300 3500 5300 4950
Connection ~ 5300 4950
$Sheet
S 8050 2050 1650 1750
U 61127439
F0 "Vehicle Power Managment Board" 50
F1 "VPMBoard.sch" 50
F2 "Pump_PWR" O R 9700 3700 50 
F3 "GLV_PreBRB" I R 9700 3000 50 
F4 "ChargerSupply12V" I L 8050 2150 50 
F5 "GLV_BMSContainer" I L 8050 3500 50 
F6 "BMS_GND" I R 9700 2150 50 
F7 "ChargerGND" U R 9700 2300 50 
F8 "PWR_Charge" O L 8050 3700 50 
$EndSheet
Wire Wire Line
	9700 3700 10200 3700
Wire Wire Line
	9700 3000 10200 3000
Wire Wire Line
	10200 2300 9700 2300
Wire Wire Line
	9700 2150 10200 2150
Wire Wire Line
	8050 2150 7600 2150
Wire Wire Line
	5300 3500 8050 3500
Connection ~ 5300 3500
Wire Wire Line
	7950 5600 7200 5600
Wire Wire Line
	7200 5600 7200 3700
Wire Wire Line
	7200 3700 8050 3700
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
