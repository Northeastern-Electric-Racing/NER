EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 4 25
Title "LV_Plate"
Date "2021-04-19"
Rev "1.0"
Comp "All connections not going to a cutout go to the GLV connector"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NER:Bender_Isometer_IR155-3204 U?
U 1 1 61396B9E
P 7850 8750
AR Path="/61396B9E" Ref="U?"  Part="1" 
AR Path="/626EC638/61396B9E" Ref="U?"  Part="1" 
AR Path="/5F45B05E/60827CB0/61396B9E" Ref="U?"  Part="1" 
F 0 "U?" H 7850 8865 50  0000 C CNN
F 1 "Bender_Isometer_IR155-3204" H 7850 8774 50  0000 C CNN
F 2 "" H 7850 8750 50  0001 C CNN
F 3 "" H 7850 8750 50  0001 C CNN
	1    7850 8750
	-1   0    0    -1  
$EndComp
$Sheet
S 2800 6150 2200 1850
U 6139C054
F0 "TSAL PCB" 50
F1 "TSAL.sch" 50
$EndSheet
NoConn ~ 11300 2050
NoConn ~ 11300 2350
NoConn ~ 11300 2450
NoConn ~ 11300 2650
NoConn ~ 11300 2750
NoConn ~ 11300 2850
NoConn ~ 11300 3250
NoConn ~ 11300 3350
NoConn ~ 11300 3550
NoConn ~ 11300 3950
NoConn ~ 11300 4050
NoConn ~ 11300 4150
NoConn ~ 11300 4250
NoConn ~ 13200 2950
NoConn ~ 13200 3050
NoConn ~ 13200 2050
NoConn ~ 13200 2150
NoConn ~ 13200 2250
NoConn ~ 13200 2350
Text HLabel 15000 7450 2    50   Input ~ 0
CurrentSense
$Comp
L NER:OrionBMS2 U?
U 1 1 613916C2
P 12250 2900
AR Path="/60D53BFB/613916C2" Ref="U?"  Part="1" 
AR Path="/5F45B05E/60827CB0/613916C2" Ref="U?"  Part="1" 
F 0 "U?" H 12250 4265 50  0000 C CNN
F 1 "OrionBMS2" H 12250 4174 50  0000 C CNN
F 2 "" H 12250 4200 50  0001 C CNN
F 3 "" H 12250 4200 50  0001 C CNN
	1    12250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 2550 13200 2550
Wire Wire Line
	13500 2650 13200 2650
Wire Wire Line
	13200 3250 13500 3250
Wire Wire Line
	13200 3350 13500 3350
Text HLabel 15000 4450 2    50   Input ~ 0
VT_Seg1
Text HLabel 15000 4550 2    50   Input ~ 0
VT_Seg2
Text HLabel 15000 4650 2    50   Input ~ 0
VT_Seg3
Text HLabel 15000 4750 2    50   Input ~ 0
VT_Seg4
Entry Wire Line
	13400 5000 13500 4900
Entry Wire Line
	13400 5100 13500 5000
Entry Wire Line
	13400 5200 13500 5100
Entry Wire Line
	13400 5300 13500 5200
Entry Wire Line
	13400 5000 13500 4900
Entry Wire Line
	13400 5100 13500 5000
Entry Wire Line
	13400 5200 13500 5100
Entry Wire Line
	13400 5300 13500 5200
Wire Wire Line
	13400 5000 13300 5000
Wire Wire Line
	13400 5100 13200 5100
Wire Wire Line
	13400 5200 13300 5200
Wire Wire Line
	13400 5300 13200 5300
Entry Wire Line
	13550 5950 13650 5850
Entry Wire Line
	13550 6050 13650 5950
Entry Wire Line
	13550 6150 13650 6050
Entry Wire Line
	13550 6250 13650 6150
Wire Wire Line
	13550 5950 13300 5950
Wire Wire Line
	13550 6050 13200 6050
Wire Wire Line
	13550 6150 13300 6150
Wire Wire Line
	13550 6250 13200 6250
Entry Wire Line
	11100 5300 11000 5400
Entry Wire Line
	11100 5200 11000 5300
Entry Wire Line
	11100 5100 11000 5200
Entry Wire Line
	11100 5000 11000 5100
Wire Wire Line
	11100 5000 11200 5000
Wire Wire Line
	11100 5100 11300 5100
Wire Wire Line
	11100 5200 11200 5200
Wire Wire Line
	11100 5300 11300 5300
Entry Wire Line
	11100 5300 11000 5400
Entry Wire Line
	11100 5200 11000 5300
Entry Wire Line
	11100 5100 11000 5200
Entry Wire Line
	11100 5000 11000 5100
Entry Wire Line
	6950 7100 6850 7200
Entry Wire Line
	6950 7000 6850 7100
Entry Wire Line
	6950 6900 6850 7000
Entry Wire Line
	6950 6800 6850 6900
Entry Wire Line
	6950 6700 6850 6800
Entry Wire Line
	6950 6600 6850 6700
Entry Wire Line
	6950 6500 6850 6600
Entry Wire Line
	6950 6400 6850 6500
Entry Wire Line
	6750 6050 6650 6150
Entry Wire Line
	6750 5950 6650 6050
Entry Wire Line
	6750 5850 6650 5950
Entry Wire Line
	6750 5750 6650 5850
Entry Wire Line
	6750 5650 6650 5750
Entry Wire Line
	6750 5550 6650 5650
Entry Wire Line
	6750 5450 6650 5550
Entry Wire Line
	6750 5350 6650 5450
Wire Wire Line
	7050 5550 6750 5550
Wire Wire Line
	7050 6600 6950 6600
Wire Wire Line
	6950 6500 7150 6500
Wire Wire Line
	6750 5450 7150 5450
Wire Wire Line
	6950 7100 7150 7100
Wire Wire Line
	6750 6050 7150 6050
Wire Wire Line
	6950 7000 7050 7000
Wire Wire Line
	6750 5950 7050 5950
Wire Wire Line
	6950 6900 7150 6900
Wire Wire Line
	6750 5850 7150 5850
Wire Wire Line
	6950 6800 7050 6800
Wire Wire Line
	6750 5750 7050 5750
Wire Wire Line
	6750 5650 7150 5650
Wire Wire Line
	6950 6700 7150 6700
Wire Wire Line
	7050 6400 6950 6400
Wire Wire Line
	7050 5350 6750 5350
NoConn ~ 8550 4650
Wire Wire Line
	8650 6400 8750 6400
Wire Wire Line
	8750 6500 8550 6500
Wire Wire Line
	8650 6600 8750 6600
Wire Wire Line
	8750 6700 8550 6700
Wire Wire Line
	8750 6800 8650 6800
Wire Wire Line
	8750 6900 8550 6900
Wire Wire Line
	8750 7000 8650 7000
Wire Wire Line
	8750 7100 8550 7100
Entry Wire Line
	8750 6400 8850 6500
Entry Wire Line
	8750 6500 8850 6600
Entry Wire Line
	8750 6600 8850 6700
Entry Wire Line
	8750 6700 8850 6800
Entry Wire Line
	8750 6800 8850 6900
Entry Wire Line
	8750 6900 8850 7000
Entry Wire Line
	8750 7000 8850 7100
Entry Wire Line
	8750 7100 8850 7200
Wire Wire Line
	8650 5350 8900 5350
Wire Wire Line
	8900 5450 8550 5450
Wire Wire Line
	8650 5550 8900 5550
Wire Wire Line
	8900 5650 8550 5650
Wire Wire Line
	8900 5750 8650 5750
Wire Wire Line
	8900 5850 8550 5850
Wire Wire Line
	8900 5950 8650 5950
Wire Wire Line
	8900 6050 8550 6050
Entry Wire Line
	8900 5350 9000 5450
Entry Wire Line
	8900 5450 9000 5550
Entry Wire Line
	8900 5550 9000 5650
Entry Wire Line
	8900 5650 9000 5750
Entry Wire Line
	8900 5750 9000 5850
Entry Wire Line
	8900 5850 9000 5950
Entry Wire Line
	8900 5950 9000 6050
Entry Wire Line
	8900 6050 9000 6150
$Comp
L NER:OrionThermExp U?
U 1 1 61399F97
P 7850 4450
AR Path="/60D53BFB/61399F97" Ref="U?"  Part="1" 
AR Path="/5F45B05E/61399F97" Ref="U?"  Part="1" 
AR Path="/5F45B05E/60827CB0/61399F97" Ref="U?"  Part="1" 
F 0 "U?" H 7850 4615 50  0000 C CNN
F 1 "OrionThermExp" H 7850 4524 50  0000 C CNN
F 2 "" H 7850 4350 50  0001 C CNN
F 3 "" H 7850 4350 50  0001 C CNN
	1    7850 4450
	-1   0    0    -1  
$EndComp
NoConn ~ 11200 5950
NoConn ~ 11300 6050
NoConn ~ 11200 6150
NoConn ~ 11300 6250
NoConn ~ 7150 4850
NoConn ~ 7150 4950
Text HLabel 4700 10000 0    50   Input ~ 0
HV_Sense+
Text HLabel 4700 10100 0    50   Input ~ 0
HV_Sense-
Text HLabel 7150 9200 0    50   Input ~ 0
IMD_GND1
Text HLabel 7150 9100 0    50   Input ~ 0
IMD_GND2
Text HLabel 11300 4550 0    50   Input ~ 0
BMS_Fault
Text HLabel 11300 2550 0    50   Input ~ 0
Charge_Safety
Wire Notes Line
	14450 5200 14450 4050
Text Notes 14750 4000 0    50   ~ 0
VT Cutout
Wire Wire Line
	13400 4350 13200 4350
Wire Wire Line
	13400 4250 13300 4250
Wire Wire Line
	13400 4150 13200 4150
Wire Wire Line
	13400 4050 13300 4050
Entry Wire Line
	13400 4050 13500 4150
Entry Wire Line
	13400 4150 13500 4250
Entry Wire Line
	13400 4250 13500 4350
Entry Wire Line
	13400 4350 13500 4450
Wire Bus Line
	13500 4450 15000 4450
Wire Bus Line
	13500 4550 15000 4550
Wire Bus Line
	13650 4650 15000 4650
Wire Bus Line
	11000 6850 13800 6850
Wire Bus Line
	13800 4750 15000 4750
Wire Wire Line
	5000 3750 5750 3750
Wire Wire Line
	5750 3750 5750 8900
Wire Wire Line
	5750 8900 7150 8900
Wire Wire Line
	5000 3850 5650 3850
Wire Wire Line
	5650 3850 5650 9000
Entry Wire Line
	5200 2550 5300 2650
Entry Wire Line
	5200 2650 5300 2750
Entry Wire Line
	5200 2750 5300 2850
Wire Wire Line
	5000 2550 5200 2550
Wire Wire Line
	5000 2650 5200 2650
Wire Wire Line
	5000 2750 5200 2750
Wire Wire Line
	5000 2250 11300 2250
Wire Wire Line
	5000 2150 11300 2150
Wire Wire Line
	5000 2950 7100 2950
Wire Wire Line
	7100 2950 7100 4650
Wire Wire Line
	7100 4650 7150 4650
Wire Wire Line
	7000 3050 7000 4750
Wire Wire Line
	7000 4750 7150 4750
Wire Wire Line
	5000 3050 7000 3050
Entry Wire Line
	5200 3250 5300 3350
Entry Wire Line
	5200 3350 5300 3450
Entry Wire Line
	5200 3450 5300 3550
Wire Wire Line
	5000 3250 5200 3250
Wire Wire Line
	5000 3350 5200 3350
Wire Wire Line
	5000 3450 5200 3450
Wire Bus Line
	5300 3550 6850 3550
Wire Bus Line
	8850 3550 8850 4950
Entry Wire Line
	8850 4950 8750 5050
Wire Wire Line
	8750 5050 8550 5050
Entry Wire Line
	6850 4950 6950 5050
Wire Wire Line
	6950 5050 7150 5050
Wire Bus Line
	6850 4950 6850 3550
Connection ~ 6850 3550
Wire Bus Line
	6850 3550 8850 3550
Wire Notes Line
	15450 5200 14450 5200
Wire Notes Line
	15450 4050 15450 5200
Wire Notes Line
	14450 4050 15450 4050
Wire Bus Line
	9000 7550 15000 7550
Text Notes 14850 6800 0    50   ~ 0
Therm Cutout
Wire Notes Line
	15700 6850 15700 8350
Text HLabel 15000 7550 2    50   Input ~ 0
ThermsNC_4
Text HLabel 15000 7650 2    50   Input ~ 0
ThermsNC_3
Text HLabel 15000 7850 2    50   Input ~ 0
ThermsNC_1
Text HLabel 15000 7750 2    50   Input ~ 0
ThermsNC_2
Text HLabel 15000 7350 2    50   Input ~ 0
ThermsC
Wire Bus Line
	15000 7650 8850 7650
Wire Bus Line
	6850 7750 15000 7750
Wire Bus Line
	6650 7850 15000 7850
Wire Notes Line
	15700 8350 14450 8350
Wire Notes Line
	14450 6850 15700 6850
Wire Notes Line
	14450 8350 14450 6850
Entry Wire Line
	13650 3150 13750 3250
Entry Wire Line
	13650 2450 13750 2550
Wire Wire Line
	13300 2450 13650 2450
Wire Bus Line
	15900 3350 15900 5950
Wire Bus Line
	15900 5950 14150 5950
Wire Bus Line
	14150 5950 14150 7350
Wire Bus Line
	14150 7350 15000 7350
Wire Bus Line
	13800 4750 13800 6850
Text HLabel 1550 2150 0    50   Input ~ 0
AIR+_SigH
Text HLabel 1550 2250 0    50   Input ~ 0
AIR+_SigL
Text HLabel 1550 2550 0    50   Input ~ 0
AIR-_SigL
Text HLabel 1550 2850 0    50   Input ~ 0
DCharge_SigL
Text HLabel 1550 3150 0    50   Input ~ 0
PCharge_SigL
Text HLabel 1550 2450 0    50   Input ~ 0
AIR-_SigH
Text HLabel 1550 2750 0    50   Input ~ 0
DCharge_SigH
Text HLabel 1550 3050 0    50   Input ~ 0
PCharge_SigH
Wire Wire Line
	1550 3050 2800 3050
Wire Wire Line
	2800 3150 1550 3150
Wire Wire Line
	1550 2850 2800 2850
Wire Wire Line
	2800 2750 1550 2750
Wire Wire Line
	2800 2550 1550 2550
Wire Wire Line
	1550 2450 2800 2450
Wire Wire Line
	2800 2250 1550 2250
Wire Wire Line
	1550 2150 2800 2150
Text HLabel 2500 3350 0    50   Input ~ 0
Shutdown_12V
Text HLabel 2500 3450 0    50   Input ~ 0
GLV_12V
Text HLabel 2500 3550 0    50   Input ~ 0
GLV_GND
Text HLabel 2500 3750 0    50   Input ~ 0
GLV_CANH
Text HLabel 2500 3850 0    50   Input ~ 0
GLV_CANL
Text HLabel 2500 3950 0    50   Input ~ 0
GLV_CANS
Wire Wire Line
	2500 3350 2800 3350
Wire Wire Line
	2800 3450 2500 3450
Wire Wire Line
	2500 3550 2800 3550
Wire Wire Line
	2800 3750 2500 3750
Wire Wire Line
	2500 3850 2800 3850
Wire Wire Line
	2800 3950 2500 3950
Wire Wire Line
	2800 4150 2500 4150
Wire Wire Line
	2800 4250 2500 4250
Wire Wire Line
	2800 4350 2500 4350
Text HLabel 2500 4150 0    50   Input ~ 0
MC_Precharge+
Text HLabel 2500 4250 0    50   Input ~ 0
MC_AIR+
Text HLabel 2500 4350 0    50   Input ~ 0
CHRG_12V
Wire Wire Line
	5650 9000 7150 9000
Wire Wire Line
	8550 8900 8700 8900
Wire Wire Line
	8700 8900 8700 8550
Wire Wire Line
	8700 8550 5850 8550
Wire Wire Line
	5850 8550 5850 3650
Wire Wire Line
	5850 3650 5000 3650
Wire Wire Line
	2800 4450 2500 4450
Text HLabel 2500 4450 0    50   Input ~ 0
IMD_Fault
$Sheet
S 2800 1900 2200 2750
U 6139A762
F0 "MCR_PCB" 50
F1 "BattBoxPCB.sch" 50
F2 "GLV_GND" I L 2800 3550 50 
F3 "GLV_12V" I L 2800 3450 50 
F4 "Shutdown_12V" I L 2800 3350 50 
F5 "AIR+_SigH" I L 2800 2150 50 
F6 "AIR+_SigL" I L 2800 2250 50 
F7 "AIR-_SigH" I L 2800 2450 50 
F8 "AIR-_SigL" I L 2800 2550 50 
F9 "DCharge-_SigH" I L 2800 2750 50 
F10 "DCharge-_SigL" I L 2800 2850 50 
F11 "PCharge-_SigH" I L 2800 3050 50 
F12 "PCharge-_SigL" I L 2800 3150 50 
F13 "BMS_R_12V" I R 5000 2150 50 
F14 "BMS_GND" I R 5000 2350 50 
F15 "Therm_12V" I R 5000 2950 50 
F16 "Therm_GND" I R 5000 3050 50 
F17 "IMD_12V" I R 5000 3750 50 
F18 "IMD_GND" I R 5000 3850 50 
F19 "BMS_C_12V" I R 5000 2250 50 
F20 "GLV_CANH" I L 2800 3750 50 
F21 "GLV_CANL" I L 2800 3850 50 
F22 "GLV_CANS" I L 2800 3950 50 
F23 "THRM_CANH" I R 5000 3250 50 
F24 "THRM_CANL" I R 5000 3350 50 
F25 "THRM_CANS" I R 5000 3450 50 
F26 "BMS_CANH" I R 5000 2550 50 
F27 "BMS_CANL" I R 5000 2650 50 
F28 "BMS_CANS" I R 5000 2750 50 
F29 "MC_Precharge+" I L 2800 4150 50 
F30 "MC_AIR+" I L 2800 4250 50 
F31 "CHRG_12V" I L 2800 4350 50 
F32 "IMD_Fault_IN" I R 5000 3650 50 
F33 "IMD_Fault_OUT" I L 2800 4450 50 
$EndSheet
Wire Notes Line
	800  1950 1800 1950
Wire Notes Line
	1800 1950 1800 3450
Wire Notes Line
	1800 3450 800  3450
Wire Notes Line
	800  3450 800  1950
Text Notes 1000 1900 0    50   ~ 0
GLV Conn Cutout
Wire Wire Line
	13300 3150 13650 3150
Entry Wire Line
	13500 2650 13600 2750
Entry Wire Line
	13500 2550 13600 2650
Entry Wire Line
	13500 3250 13600 3350
Entry Wire Line
	13500 3350 13600 3450
Wire Bus Line
	15800 3450 15800 5850
Wire Bus Line
	15800 5850 14050 5850
Wire Bus Line
	13600 3450 15800 3450
Wire Bus Line
	15000 7450 14050 7450
Wire Bus Line
	14050 5850 14050 7450
Wire Bus Line
	15900 3350 13750 3350
Wire Notes Line
	4850 10300 4850 8800
Wire Notes Line
	4850 8800 3850 8800
Wire Notes Line
	3850 8800 3850 10300
Wire Notes Line
	3850 10300 4850 10300
Text Notes 4100 8750 0    50   ~ 0
HV Cutout
Wire Wire Line
	4700 10000 8700 10000
Wire Wire Line
	8700 10000 8700 9100
Wire Wire Line
	8700 9100 8550 9100
Wire Wire Line
	4700 10100 8800 10100
Wire Wire Line
	8800 10100 8800 9200
Wire Wire Line
	8800 9200 8550 9200
Text HLabel 4050 9500 2    50   Input ~ 0
TSMP+
Text HLabel 4050 9600 2    50   Input ~ 0
TSMP-
Text HLabel 4050 9300 2    50   Input ~ 0
TSAL_TS+
Text HLabel 4050 9400 2    50   Input ~ 0
TSAL_TS-
Text HLabel 4050 9200 2    50   Input ~ 0
TSAL_BATT-
Text HLabel 4050 9100 2    50   Input ~ 0
TSAL_BATT+
Text HLabel 11300 4350 0    50   Input ~ 0
BattFanPWM
Text HLabel 11300 2950 0    50   Input ~ 0
RadFan
Wire Wire Line
	5000 2350 10350 2350
Wire Wire Line
	10350 2350 10350 3150
Wire Wire Line
	10350 3150 11300 3150
Wire Bus Line
	13600 2650 13600 3450
Wire Bus Line
	13750 2550 13750 3350
Wire Bus Line
	5300 3350 5300 3550
Wire Bus Line
	5300 2650 5300 2850
Wire Bus Line
	13500 4150 13500 4450
Wire Bus Line
	9000 5450 9000 7550
Wire Bus Line
	8850 6500 8850 7650
Wire Bus Line
	6650 5450 6650 7850
Wire Bus Line
	6850 6500 6850 7750
Wire Bus Line
	11000 5100 11000 6850
Wire Bus Line
	13650 4650 13650 6150
Wire Bus Line
	13500 4550 13500 5200
Wire Bus Line
	5300 2850 10150 2850
Entry Wire Line
	10250 3750 10150 3650
Entry Wire Line
	10250 3650 10150 3550
Wire Wire Line
	11300 3850 10250 3850
Wire Wire Line
	11300 3750 10250 3750
Wire Wire Line
	11300 3650 10250 3650
Entry Wire Line
	10250 3850 10150 3750
Wire Bus Line
	10150 2850 10150 3750
Text HLabel 11300 3450 0    50   Input ~ 0
BMSFanSig
$EndSCHEMATC
