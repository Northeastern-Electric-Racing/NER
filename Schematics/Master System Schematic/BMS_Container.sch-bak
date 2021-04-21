EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 39 27
Title "BMS Container"
Date "2021-03-24"
Rev "9.1"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7350 2100 0    50   BiDi ~ 0
CAN_H(BMS)
Text HLabel 7350 2200 0    50   BiDi ~ 0
CAN_L(BMS)
Text HLabel 7350 1800 0    50   Input ~ 0
GLV
Text HLabel 9950 1600 2    50   UnSpc ~ 0
GND
Text HLabel 7200 7600 0    50   Input ~ 0
Segment4_VoltageTaps
Text HLabel 7350 2000 0    50   Output ~ 0
BMS_Fault
Text HLabel 10250 5350 2    50   Input ~ 0
Current_Sensor
Text HLabel 10250 8550 2    50   Input ~ 0
Segment3_VoltageTaps
Text HLabel 10250 7600 2    50   Input ~ 0
Segment2_VoltageTaps
Entry Wire Line
	9750 8850 9850 8750
Entry Wire Line
	9750 8950 9850 8850
Entry Wire Line
	9750 9050 9850 8950
Wire Bus Line
	9950 8550 10250 8550
Wire Wire Line
	9700 8750 9750 8750
Wire Wire Line
	9600 8850 9750 8850
Wire Wire Line
	9750 8950 9700 8950
Wire Wire Line
	9600 9050 9750 9050
Wire Wire Line
	7600 8000 7550 8000
Wire Wire Line
	7700 7900 7550 7900
Wire Wire Line
	7600 7800 7550 7800
Wire Wire Line
	7700 8100 7550 8100
Entry Wire Line
	7450 7700 7550 7800
Entry Wire Line
	7450 7800 7550 7900
Entry Wire Line
	7450 7900 7550 8000
Entry Wire Line
	7450 8000 7550 8100
Entry Bus Bus
	7350 7600 7450 7700
Wire Bus Line
	7350 7600 7200 7600
Wire Wire Line
	10000 6050 9600 6050
Entry Wire Line
	9750 5950 9850 5850
Entry Wire Line
	9750 5250 9850 5150
Wire Wire Line
	9700 5250 9750 5250
Wire Wire Line
	9700 5950 9750 5950
Entry Bus Bus
	9850 5150 9950 5050
NoConn ~ 7700 4850
NoConn ~ 7700 5150
NoConn ~ 7700 5250
NoConn ~ 7700 5650
NoConn ~ 7700 6050
NoConn ~ 7700 6150
NoConn ~ 7700 6250
NoConn ~ 7700 6750
NoConn ~ 7700 6850
NoConn ~ 7700 6950
NoConn ~ 7700 7050
NoConn ~ 9600 4850
NoConn ~ 9600 4950
NoConn ~ 9600 5050
NoConn ~ 9600 5150
NoConn ~ 9600 5750
NoConn ~ 9600 5850
Wire Bus Line
	10250 5350 10200 5350
Entry Bus Bus
	10200 5350 10100 5450
Wire Bus Line
	9850 5150 9850 5850
Wire Wire Line
	9600 5450 10000 5450
Wire Wire Line
	9600 5350 10000 5350
Wire Wire Line
	9600 6150 10000 6150
Entry Wire Line
	10000 5350 10100 5450
Entry Wire Line
	10000 5450 10100 5550
Entry Wire Line
	10000 6050 10100 5950
Entry Wire Line
	10000 6150 10100 6050
Text HLabel 9950 2050 2    50   Output ~ 0
ChargerSafety
Text HLabel 7350 1600 0    50   Input ~ 0
ChargerPWR
$Comp
L NER:OrionBMS2 U6
U 1 1 60E83DDC
P 8650 5700
F 0 "U6" H 8650 7065 50  0000 C CNN
F 1 "OrionBMS2" H 8650 6974 50  0000 C CNN
F 2 "" H 8650 7000 50  0001 C CNN
F 3 "" H 8650 7000 50  0001 C CNN
	1    8650 5700
	1    0    0    -1  
$EndComp
Wire Bus Line
	9950 6650 10250 6650
Entry Bus Bus
	9850 6750 9950 6650
Text HLabel 10250 6650 2    50   Input ~ 0
Segment1_VoltageTaps
Wire Wire Line
	9600 6950 9750 6950
Wire Wire Line
	9600 7150 9750 7150
Wire Wire Line
	9700 7050 9750 7050
Wire Wire Line
	9700 6850 9750 6850
Entry Wire Line
	9750 7150 9850 7050
Entry Wire Line
	9750 7050 9850 6950
Entry Wire Line
	9750 6950 9850 6850
Entry Wire Line
	9750 6850 9850 6750
Wire Bus Line
	9950 7600 10250 7600
Entry Bus Bus
	9850 7700 9950 7600
Entry Wire Line
	9750 8750 9850 8650
Entry Bus Bus
	9850 8650 9950 8550
NoConn ~ 7600 8750
NoConn ~ 7700 8850
NoConn ~ 7600 8950
NoConn ~ 7700 9050
Wire Wire Line
	9600 7900 9750 7900
Wire Wire Line
	9600 8100 9750 8100
Wire Wire Line
	9700 8000 9750 8000
Wire Wire Line
	9700 7800 9750 7800
Entry Wire Line
	9750 8100 9850 8000
Entry Wire Line
	9750 8000 9850 7900
Entry Wire Line
	9750 7900 9850 7800
Entry Wire Line
	9750 7800 9850 7700
Text HLabel 7350 2300 0    50   BiDi ~ 0
CAN_SHIELD(BMS)
Text HLabel 7350 1700 0    50   BiDi ~ 0
GLV(Pre_BRB)
Text HLabel 9950 3150 2    50   Output ~ 0
CoolingPumpPower_OUT
Text HLabel 9950 2150 2    50   Input ~ 0
CAN_H(Charger)
Text HLabel 9950 2250 2    50   Input ~ 0
CAN_L(Charger)
Text HLabel 9950 1850 2    50   UnSpc ~ 0
GND(Charger)
Text Notes 550  800  0    50   ~ 0
Mode 1: Ready to drive | No charger power, GLV power present, pump running, BMS not in charge mode\nMode 2: Charging | Charger power present, GLV present, pump off, BMS in charge mode\nMode 3: Shutdown | GLV not present, BMS not in charge mode, pump off
Wire Wire Line
	7350 4950 7700 4950
Text HLabel 6650 2400 0    50   BiDi ~ 0
Temperature_Data
$Sheet
S 7800 1500 1650 2500
U 61127439
F0 "Vehicle Power Managment Board" 50
F1 "VPMBoard.sch" 50
F2 "Pump_PWR" O R 9450 3150 50 
F3 "GLV_PreBRB" I L 7800 1700 50 
F4 "ChargerSupply12V" I L 7800 1600 50 
F5 "GLV_BMSContainer" I L 7800 1800 50 
F6 "BMS_GND" I R 9450 1600 50 
F7 "ChargerGND" U R 9450 1850 50 
F8 "PWR_Charge" O L 7800 3900 50 
F9 "PWR_Ready" O L 7800 3800 50 
F10 "ThermEX_GND" O L 7800 2600 50 
F11 "ThermEX_PWR" O L 7800 2500 50 
F12 "CANS_Chrg" I R 9450 2350 50 
F13 "CANL_Chrg" I R 9450 2250 50 
F14 "CANH_Chrg" I R 9450 2150 50 
F15 "ChargerSafety" I R 9450 2050 50 
F16 "CANS_Main" I L 7800 2300 50 
F17 "CANL_Main" I L 7800 2200 50 
F18 "CANH_Main" I L 7800 2100 50 
F19 "BMS_Fault" I L 7800 2000 50 
F20 "CANS_Thrm" I L 7800 2900 50 
F21 "CANH_Thrm" I L 7800 2700 50 
F22 "CANL_Thrm" I L 7800 2800 50 
F23 "Charge_Safety" I L 7800 3100 50 
F24 "MP_EN" I L 7800 3200 50 
F25 "CANH_BMS" I L 7800 3300 50 
F26 "CANL_BMS" I L 7800 3400 50 
F27 "CANS_BMS" I L 7800 3500 50 
F28 "RadFan_PWR" I R 9450 3050 50 
F29 "BatFan_PWM" I L 7800 3000 50 
F30 "MPO4" I L 7800 3600 50 
F31 "MPO3" I L 7800 3700 50 
$EndSheet
Wire Wire Line
	9450 3150 9950 3150
Wire Wire Line
	7800 1700 7350 1700
Wire Wire Line
	9950 1850 9450 1850
Wire Wire Line
	7800 1600 7350 1600
Wire Wire Line
	7700 5050 7450 5050
Wire Wire Line
	7350 1800 7800 1800
Wire Wire Line
	9950 2050 9450 2050
Wire Wire Line
	9950 2150 9450 2150
Wire Wire Line
	9950 2250 9450 2250
Wire Wire Line
	7350 2100 7800 2100
Wire Wire Line
	7350 2200 7800 2200
Wire Wire Line
	7350 2300 7800 2300
Wire Wire Line
	7350 2000 7800 2000
Entry Wire Line
	7200 2400 7300 2500
Entry Wire Line
	7200 2500 7300 2600
Entry Wire Line
	7200 2600 7300 2700
Entry Wire Line
	7200 2700 7300 2800
Wire Bus Line
	7200 2400 6650 2400
Wire Wire Line
	7300 2500 7800 2500
Wire Wire Line
	7300 2600 7800 2600
Wire Wire Line
	7300 2700 7800 2700
Wire Wire Line
	7300 2800 7800 2800
Wire Wire Line
	6550 6550 7700 6550
Wire Wire Line
	6650 6650 7700 6650
Wire Wire Line
	6750 6450 7700 6450
Wire Wire Line
	6350 5350 7700 5350
Wire Wire Line
	6450 7350 7700 7350
Text HLabel 7550 5950 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7550 5950 7700 5950
Text HLabel 9950 2350 2    50   UnSpc ~ 0
CAN_S(Charger)
Wire Wire Line
	9450 2350 9950 2350
Wire Wire Line
	6750 3500 6750 6450
Wire Wire Line
	6650 3400 6650 6650
Wire Wire Line
	6550 3300 6550 6550
Wire Wire Line
	6450 3200 6450 7350
Wire Wire Line
	6350 3100 6350 5350
Wire Wire Line
	6350 3100 7800 3100
Wire Wire Line
	6450 3200 7800 3200
Wire Wire Line
	6550 3300 7800 3300
Wire Wire Line
	6650 3400 7800 3400
Wire Wire Line
	6750 3500 7800 3500
Wire Wire Line
	9450 1600 9950 1600
Entry Wire Line
	7200 2800 7300 2900
Wire Wire Line
	7300 2900 7800 2900
NoConn ~ 7700 6350
NoConn ~ 7700 5550
NoConn ~ 7700 5450
Wire Bus Line
	9950 4250 9950 5050
Entry Bus Bus
	7200 4150 7300 4250
Wire Bus Line
	7300 4250 9950 4250
Entry Wire Line
	7200 2900 7300 3000
Wire Wire Line
	7300 3000 7800 3000
Wire Wire Line
	7800 3800 7350 3800
Wire Wire Line
	7350 3800 7350 4950
Wire Wire Line
	7450 3900 7800 3900
Wire Wire Line
	7450 3900 7450 5050
Wire Wire Line
	7800 3600 6850 3600
Wire Wire Line
	6850 3600 6850 7150
Wire Wire Line
	6850 7150 7700 7150
Wire Wire Line
	7800 3700 6950 3700
Wire Wire Line
	6950 3700 6950 5750
Wire Wire Line
	6950 5750 7700 5750
Text HLabel 9950 3050 2    50   Input ~ 0
RadFan_PWR
Wire Wire Line
	9950 3050 9450 3050
Wire Bus Line
	9850 8650 9850 8950
Wire Bus Line
	7450 7700 7450 8000
Wire Bus Line
	10100 5450 10100 6050
Wire Bus Line
	9850 6750 9850 7050
Wire Bus Line
	9850 7700 9850 8000
Wire Bus Line
	7200 2400 7200 4150
$EndSCHEMATC
