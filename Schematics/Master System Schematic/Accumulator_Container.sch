EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 7 25
Title "Accumulator Container"
Date "2021-11-10"
Rev "7"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7000 4000 2000 4000
U 6082840F
F0 "HV_Plate" 50
F1 "HV_Plate.sch" 50
F2 "CurrentSensor" I R 9000 4200 50 
F3 "TS+" I L 7000 7400 50 
F4 "TS-" I L 7000 7500 50 
F5 "AIR-_SigL" I R 9000 4800 50 
F6 "DCharge_SigH" I R 9000 4900 50 
F7 "Segment-" I L 7000 6450 50 
F8 "Segment+" I L 7000 6350 50 
F9 "AIR+_SigH" I R 9000 4500 50 
F10 "AIR+_SigL" I R 9000 4600 50 
F11 "AIR-_SigH" I R 9000 4700 50 
F12 "DCharge_SigL" I R 9000 5000 50 
F13 "TSMP-" I R 9000 7800 50 
F14 "IMD_HV_Sense+" I R 9000 5950 50 
F15 "TSMP+" I R 9000 7700 50 
F16 "IMD_HV_Sense-" I R 9000 6050 50 
F17 "PCharge_SigH" I R 9000 5100 50 
F18 "PCharge_SigL" I R 9000 5200 50 
F19 "TSAL_TS+" I R 9000 6150 50 
F20 "TSAL_TS-" I R 9000 6250 50 
F21 "TSAL_BATT+" I R 9000 6350 50 
F22 "TSAL_BATT-" I R 9000 6450 50 
$EndSheet
Text Notes 4000 4450 0    50   ~ 0
2AWG
$Sheet
S 1850 1500 2000 5700
U 60828791
F0 "Segment_Layer" 50
F1 "Segment_Layer.sch" 50
F2 "Batt+" I R 3850 6350 50 
F3 "Batt-" I R 3850 6450 50 
F4 "SMD_2-" I R 3850 5850 50 
F5 "SMD_2+" I R 3850 5750 50 
F6 "HVD-" I R 3850 5200 50 
F7 "HVD+" I R 3850 5100 50 
F8 "SMD_1-" I R 3850 4550 50 
F9 "SMD_1+" I R 3850 4450 50 
F10 "ThermsNC_4" I R 3850 2000 50 
F11 "ThermsNC_3" I R 3850 2100 50 
F12 "ThermsNC_2" I R 3850 2200 50 
F13 "ThermsNC_1" I R 3850 2300 50 
F14 "VT_Seg1" I R 3850 3000 50 
F15 "VT_Seg2" I R 3850 2900 50 
F16 "VT_Seg3" I R 3850 2800 50 
F17 "VT_Seg4" I R 3850 2700 50 
F18 "ThermsC" I R 3850 2400 50 
$EndSheet
Wire Bus Line
	3850 3000 12050 3000
Wire Bus Line
	3850 2900 12050 2900
Wire Bus Line
	3850 2800 12050 2800
Wire Bus Line
	3850 2700 12050 2700
Wire Bus Line
	3850 2400 12050 2400
Wire Bus Line
	3850 2300 12050 2300
Wire Bus Line
	3850 2200 12050 2200
Wire Bus Line
	3850 2100 12050 2100
Wire Bus Line
	3850 2000 12050 2000
Wire Wire Line
	12050 4500 9000 4500
Wire Wire Line
	9000 4600 12050 4600
Wire Wire Line
	12050 4700 9000 4700
Wire Wire Line
	9000 4800 12050 4800
Wire Wire Line
	12050 4900 9000 4900
Wire Wire Line
	9000 5000 12050 5000
Wire Wire Line
	12050 5100 9000 5100
Wire Wire Line
	9000 5200 12050 5200
Wire Wire Line
	9000 5950 12050 5950
Wire Wire Line
	12050 6050 9000 6050
Wire Wire Line
	14250 3700 14050 3700
Wire Wire Line
	14250 3800 14050 3800
Wire Wire Line
	14250 3900 14050 3900
Wire Wire Line
	14250 4000 14050 4000
Wire Wire Line
	14250 4100 14050 4100
Wire Wire Line
	14250 4200 14050 4200
Wire Wire Line
	14250 4300 14050 4300
Wire Wire Line
	14250 4400 14050 4400
Wire Wire Line
	14250 4500 14050 4500
Wire Wire Line
	14250 4600 14050 4600
Wire Wire Line
	14250 4700 14050 4700
Wire Wire Line
	14250 4800 14050 4800
Wire Wire Line
	14250 4900 14050 4900
Wire Wire Line
	14250 5000 14050 5000
Text HLabel 14750 4500 2    50   Input ~ 0
IMD_GND1
Text HLabel 14750 4600 2    50   Input ~ 0
IMD_GND2
Text HLabel 14750 4400 2    50   Input ~ 0
IMD_Fault
Text HLabel 14750 3800 2    50   Input ~ 0
GLV_GND
Text HLabel 14750 4200 2    50   Input ~ 0
Shutdown_12V
Text HLabel 14750 3900 2    50   Input ~ 0
GLV_CANH
Text HLabel 14750 4100 2    50   Input ~ 0
GLV_CANS
Text HLabel 14750 3700 2    50   Input ~ 0
GLV_12V
Text HLabel 14750 4300 2    50   Input ~ 0
BMS_Fault
Text HLabel 14750 2350 2    50   Input ~ 0
Charge_Safety
Text HLabel 14750 1850 2    50   Input ~ 0
CHRG_12V
Text HLabel 14750 4900 2    50   Input ~ 0
TSAL150V
Wire Wire Line
	7000 6350 3850 6350
Wire Wire Line
	3850 6450 7000 6450
Text HLabel 14750 4700 2    50   Input ~ 0
MC_Precharge+
Text HLabel 14750 4800 2    50   Input ~ 0
MC_AIR+
Wire Wire Line
	9000 7700 14150 7700
Wire Wire Line
	9000 6150 12050 6150
Wire Wire Line
	12050 6250 9000 6250
Wire Wire Line
	9000 6350 12050 6350
Wire Wire Line
	12050 6450 9000 6450
Text Notes 6300 2000 0    50   ~ 0
30AWG
Text Notes 6300 2700 0    50   ~ 0
22AWG
Wire Notes Line
	4350 7500 850  7500
Wire Notes Line
	850  7500 850  1000
Wire Notes Line
	850  1000 4350 1000
Wire Notes Line
	4350 1000 4350 7500
Wire Notes Line
	11750 7500 11750 1000
Wire Notes Line
	11750 1000 15500 1000
Wire Notes Line
	15500 1000 15500 7500
Wire Notes Line
	15500 7500 11750 7500
Text Notes 850  900  0    157  ~ 0
Segment Layer
Text Notes 5550 3400 0    157  ~ 0
HV Plate
Text Notes 11750 900  0    157  ~ 0
LV Plate
Wire Notes Line
	5550 3500 10350 3500
Text HLabel 14750 5200 2    50   Input ~ 0
RadFanPWR
Text Notes 4000 6350 0    50   ~ 0
2AWG
Wire Wire Line
	11200 4200 9000 4200
Wire Wire Line
	11200 2500 11200 4200
Text Notes 10500 4200 0    50   ~ 0
??" Conduit
Text Notes 10950 4500 0    50   ~ 0
20AWG\n
Text Notes 10950 5900 0    50   ~ 0
??AWG
Wire Wire Line
	3850 5100 3850 5200
Text Notes 6850 7400 2    50   ~ 0
2AWG
Wire Wire Line
	6500 7500 7000 7500
Wire Wire Line
	7000 7400 6500 7400
Text HLabel 6000 7500 0    50   Output ~ 0
TS-
Text HLabel 6000 7400 0    50   Output ~ 0
TS+
$Comp
L NER:2-Pos_Generic J701
U 1 1 6102FC5C
P 6250 7300
F 0 "J701" H 6250 7425 50  0000 C CNN
F 1 "Main TS Connector" H 6250 7334 50  0000 C CNN
F 2 "" H 6250 7300 50  0001 C CNN
F 3 "" H 6250 7300 50  0001 C CNN
	1    6250 7300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12050 6750 10850 6750
Wire Wire Line
	12050 6850 10950 6850
Wire Wire Line
	12050 6950 11050 6950
Wire Wire Line
	2850 8250 3900 8250
Connection ~ 2850 8250
Connection ~ 1800 8250
Wire Wire Line
	1800 8250 2850 8250
Wire Wire Line
	3900 8750 3900 8250
Wire Wire Line
	4100 8750 3900 8750
Wire Wire Line
	2850 8750 2850 8250
Wire Wire Line
	3050 8750 2850 8750
Wire Wire Line
	1800 8250 750  8250
Wire Wire Line
	3900 9050 2850 9050
Wire Wire Line
	2850 9050 1800 9050
Connection ~ 2850 9050
Wire Wire Line
	1800 8750 1800 8250
Wire Wire Line
	2000 8750 1800 8750
Wire Wire Line
	750  8750 750  8250
Wire Wire Line
	950  8750 750  8750
Wire Wire Line
	3900 9550 3900 9050
Wire Wire Line
	4100 9550 3900 9550
Wire Wire Line
	2850 9550 2850 9050
Wire Wire Line
	3050 9550 2850 9550
Wire Wire Line
	1800 9050 750  9050
Connection ~ 1800 9050
Wire Wire Line
	1800 9550 1800 9050
Wire Wire Line
	2000 9550 1800 9550
Wire Wire Line
	4400 8850 3350 8850
Wire Wire Line
	3350 8850 2300 8850
Connection ~ 3350 8850
Wire Wire Line
	2300 8850 1250 8850
Connection ~ 2300 8850
Wire Wire Line
	4400 9650 3350 9650
Wire Wire Line
	3350 9650 2300 9650
Connection ~ 3350 9650
Wire Wire Line
	2300 9650 1250 9650
Connection ~ 2300 9650
Wire Wire Line
	11050 6950 11050 9650
Wire Wire Line
	750  9550 950  9550
Wire Wire Line
	750  9050 750  9550
Wire Wire Line
	4400 8350 3350 8350
Wire Wire Line
	3350 8350 2300 8350
Connection ~ 3350 8350
Wire Wire Line
	2300 8350 1250 8350
Connection ~ 2300 8350
Wire Wire Line
	4400 9150 3350 9150
Wire Wire Line
	3350 9150 2300 9150
Connection ~ 3350 9150
Wire Wire Line
	2300 9150 1250 9150
Connection ~ 2300 9150
NoConn ~ 950  9350
NoConn ~ 2000 8550
NoConn ~ 3050 8550
NoConn ~ 4100 8550
NoConn ~ 2000 9350
NoConn ~ 3050 9350
NoConn ~ 4100 9350
$Comp
L Motor:Fan_4pin M?
U 1 1 609373E5
P 1250 9450
AR Path="/609373E5" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373E5" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373E5" Ref="M702"  Part="1" 
F 0 "M702" H 1408 9546 50  0000 L CNN
F 1 "Fan_4pin" H 1408 9455 50  0000 L CNN
F 2 "" H 1250 9460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 1250 9460 50  0001 C CNN
	1    1250 9450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 609373DF
P 2300 9450
AR Path="/609373DF" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373DF" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373DF" Ref="M704"  Part="1" 
F 0 "M704" H 2458 9546 50  0000 L CNN
F 1 "Fan_4pin" H 2458 9455 50  0000 L CNN
F 2 "" H 2300 9460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 2300 9460 50  0001 C CNN
	1    2300 9450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 609373D9
P 3350 9450
AR Path="/609373D9" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373D9" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373D9" Ref="M706"  Part="1" 
F 0 "M706" H 3508 9546 50  0000 L CNN
F 1 "Fan_4pin" H 3508 9455 50  0000 L CNN
F 2 "" H 3350 9460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 3350 9460 50  0001 C CNN
	1    3350 9450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 609373D3
P 4400 9450
AR Path="/609373D3" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373D3" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373D3" Ref="M708"  Part="1" 
F 0 "M708" H 4558 9546 50  0000 L CNN
F 1 "Fan_4pin" H 4558 9455 50  0000 L CNN
F 2 "" H 4400 9460 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 4400 9460 50  0001 C CNN
	1    4400 9450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 609373CD
P 4400 8650
AR Path="/609373CD" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373CD" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373CD" Ref="M707"  Part="1" 
F 0 "M707" H 4557 8654 50  0000 L CNN
F 1 "Fan_4pin" H 4557 8745 50  0000 L CNN
F 2 "" H 4400 8660 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 4400 8660 50  0001 C CNN
	1    4400 8650
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 609373C7
P 3350 8650
AR Path="/609373C7" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373C7" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373C7" Ref="M705"  Part="1" 
F 0 "M705" H 3507 8654 50  0000 L CNN
F 1 "Fan_4pin" H 3507 8745 50  0000 L CNN
F 2 "" H 3350 8660 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 3350 8660 50  0001 C CNN
	1    3350 8650
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 609373C1
P 2300 8650
AR Path="/609373C1" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373C1" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373C1" Ref="M703"  Part="1" 
F 0 "M703" H 2457 8654 50  0000 L CNN
F 1 "Fan_4pin" H 2457 8745 50  0000 L CNN
F 2 "" H 2300 8660 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 2300 8660 50  0001 C CNN
	1    2300 8650
	1    0    0    -1  
$EndComp
$Comp
L Motor:Fan_4pin M?
U 1 1 609373BB
P 1250 8650
AR Path="/609373BB" Ref="M?"  Part="1" 
AR Path="/5F45B05E/609373BB" Ref="M?"  Part="1" 
AR Path="/60C39CCE/609373BB" Ref="M701"  Part="1" 
F 0 "M701" H 1407 8654 50  0000 L CNN
F 1 "Fan_4pin" H 1407 8745 50  0000 L CNN
F 2 "" H 1250 8660 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 1250 8660 50  0001 C CNN
	1    1250 8650
	1    0    0    -1  
$EndComp
Wire Notes Line
	5550 8500 10350 8500
Wire Notes Line
	10350 8500 10350 3500
Wire Notes Line
	5550 3500 5550 8500
Wire Wire Line
	11050 9650 5050 9650
Wire Wire Line
	5050 8850 4400 8850
Connection ~ 4400 8850
Wire Wire Line
	5050 9650 4400 9650
Connection ~ 5050 9650
Connection ~ 4400 9650
Wire Wire Line
	10950 6850 10950 9550
Wire Wire Line
	5050 8850 5050 9650
Wire Wire Line
	10950 9550 5150 9550
Wire Wire Line
	5150 9550 5150 9150
Wire Wire Line
	5150 9150 4400 9150
Connection ~ 4400 9150
Wire Wire Line
	5150 9150 5150 8350
Wire Wire Line
	5150 8350 4400 8350
Connection ~ 5150 9150
Connection ~ 4400 8350
Wire Wire Line
	10850 9450 5250 9450
Wire Wire Line
	5250 9450 5250 9050
Wire Wire Line
	5250 8250 3900 8250
Wire Wire Line
	10850 6750 10850 9450
Connection ~ 3900 8250
Wire Wire Line
	3900 9050 5250 9050
Connection ~ 3900 9050
Connection ~ 5250 9050
Wire Wire Line
	5250 9050 5250 8250
Text Notes 11200 6750 0    50   ~ 0
??AWG
Wire Wire Line
	11200 2500 12050 2500
Text Notes 2100 8150 0    157  ~ 0
Segment Fans
Wire Wire Line
	3850 5750 5950 5750
Wire Wire Line
	3850 5100 5950 5100
Wire Wire Line
	3850 4450 5950 4450
Text Notes 10950 5400 0    50   ~ 0
??AWG
$Sheet
S 12050 1500 2000 5700
U 60827CB0
F0 "LV_Plate" 50
F1 "LV_Plate.sch" 50
F2 "CurrentSense" I L 12050 2500 50 
F3 "VT_Seg1" I L 12050 3000 50 
F4 "VT_Seg2" I L 12050 2900 50 
F5 "VT_Seg3" I L 12050 2800 50 
F6 "VT_Seg4" I L 12050 2700 50 
F7 "IMD_Fault" I R 14050 4400 50 
F8 "HV_Sense+" I L 12050 5950 50 
F9 "HV_Sense-" I L 12050 6050 50 
F10 "ThermsNC_4" I L 12050 2000 50 
F11 "ThermsNC_3" I L 12050 2100 50 
F12 "ThermsNC_1" I L 12050 2300 50 
F13 "ThermsNC_2" I L 12050 2200 50 
F14 "ThermsC" I L 12050 2400 50 
F15 "AIR+_SigH" I L 12050 4500 50 
F16 "AIR+_SigL" I L 12050 4600 50 
F17 "AIR-_SigL" I L 12050 4800 50 
F18 "DCharge_SigL" I L 12050 5000 50 
F19 "PCharge_SigL" I L 12050 5200 50 
F20 "AIR-_SigH" I L 12050 4700 50 
F21 "DCharge_SigH" I L 12050 4900 50 
F22 "PCharge_SigH" I L 12050 5100 50 
F23 "Shutdown_12V" I R 14050 4200 50 
F24 "GLV_CANH" I R 14050 3900 50 
F25 "GLV_CANL" I R 14050 4000 50 
F26 "GLV_CANS" I R 14050 4100 50 
F27 "MC_Precharge+" I R 14050 4700 50 
F28 "MC_AIR+" I R 14050 4800 50 
F29 "CHRG_12V" I R 14050 1850 50 
F30 "TSAL_TS+" I L 12050 6150 50 
F31 "TSAL_TS-" I L 12050 6250 50 
F32 "TSAL_BATT+" I L 12050 6350 50 
F33 "TSAL_BATT-" I L 12050 6450 50 
F34 "BattFanPWM" I L 12050 6750 50 
F35 "RadFanPWR" I R 14050 5200 50 
F36 "TSAL_LED+" I L 12050 5400 50 
F37 "TSAL_LED-" I L 12050 5500 50 
F38 "GLV_Chassis1" I R 14050 4500 50 
F39 "GLV_Chassis2" I R 14050 4600 50 
F40 "CHRG_GND" I R 14050 2250 50 
F41 "CHRG_CANH" I R 14050 2050 50 
F42 "CHRG_CANL" I R 14050 2150 50 
F43 "CHRG_CANS" I R 14050 1950 50 
F44 "CHRG_SAFETY" I R 14050 2350 50 
F45 "BMS_Fault" I R 14050 4300 50 
F46 "BattFan12V" I L 12050 6850 50 
F47 "BattFanGND" I L 12050 6950 50 
F48 "GLV_GND" I R 14050 3800 50 
F49 "GLV_12V" I R 14050 3700 50 
F50 "Pump+" I R 14050 3000 50 
F51 "Pump-" I R 14050 3100 50 
F52 "GLV_12V_Fusebox" I R 14050 5100 50 
F53 "TSAL150V" I R 14050 4900 50 
F54 "TSAL30V" I R 14050 5000 50 
$EndSheet
$Comp
L NER:2-Pos_Generic J705
U 1 1 61893EBD
P 14500 5650
F 0 "J705" H 14500 5775 50  0000 C CNN
F 1 "TSMP Connector" H 14500 5684 50  0000 C CNN
F 2 "" H 14500 5650 50  0001 C CNN
F 3 "" H 14500 5650 50  0001 C CNN
	1    14500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 7800 9000 7800
Text HLabel 14750 5750 2    50   Input ~ 0
TSMP+
Text HLabel 14750 5850 2    50   Input ~ 0
TSMP-
$Comp
L NER:6-Pos_Generic J702
U 1 1 6189FE11
P 14500 1750
F 0 "J702" H 14500 1875 50  0000 C CNN
F 1 "Charger Connector" H 14500 1784 50  0000 C CNN
F 2 "" H 14500 1750 50  0001 C CNN
F 3 "" H 14500 1750 50  0001 C CNN
	1    14500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14050 1850 14250 1850
Wire Wire Line
	14250 1950 14050 1950
Wire Wire Line
	14250 2050 14050 2050
Wire Wire Line
	14250 2150 14050 2150
Wire Wire Line
	14250 2250 14050 2250
Wire Wire Line
	14250 2350 14050 2350
Wire Wire Line
	14250 5100 14050 5100
Wire Wire Line
	14250 5200 14050 5200
$Comp
L NER:16-Pos_Generic J704
U 1 1 615EB286
P 14500 3700
F 0 "J704" H 14500 3925 50  0000 C CNN
F 1 "GLV Connector" H 14500 3834 50  0000 C CNN
F 2 "" H 14500 3700 50  0001 C CNN
F 3 "" H 14500 3700 50  0001 C CNN
	1    14500 3700
	1    0    0    -1  
$EndComp
Text HLabel 14750 4000 2    50   Input ~ 0
GLV_CANL
Text HLabel 14750 5000 2    50   Input ~ 0
TSAL30V
$Comp
L NER:2-Pos_Generic J703
U 1 1 6176273C
P 14500 2900
F 0 "J703" H 14500 3025 50  0000 C CNN
F 1 "Pump Connector" H 14500 2934 50  0000 C CNN
F 2 "" H 14500 2900 50  0001 C CNN
F 3 "" H 14500 2900 50  0001 C CNN
	1    14500 2900
	1    0    0    -1  
$EndComp
Text HLabel 14750 3000 2    50   Input ~ 0
PUMP+
Text HLabel 14750 3100 2    50   Input ~ 0
PUMP-
Text HLabel 14750 5100 2    50   Input ~ 0
GLV12V_Fusebox
Wire Wire Line
	14050 3000 14250 3000
Wire Wire Line
	14050 3100 14250 3100
Wire Wire Line
	14250 5750 14150 5750
Wire Wire Line
	14150 5750 14150 7700
Wire Wire Line
	14250 7800 14250 5850
Wire Wire Line
	9400 5400 9400 8200
Wire Wire Line
	9400 5400 12050 5400
Wire Wire Line
	9500 8300 9500 5500
Wire Wire Line
	9500 5500 12050 5500
Wire Wire Line
	5950 8300 9500 8300
Wire Wire Line
	5950 8200 5950 8300
Wire Wire Line
	6100 8200 5950 8200
$Comp
L Device:LED D701
U 1 1 6179B66D
P 6250 8200
F 0 "D701" H 6243 7945 50  0000 C CNN
F 1 "TSAL_LED" H 6243 8036 50  0000 C CNN
F 2 "" H 6250 8200 50  0001 C CNN
F 3 "~" H 6250 8200 50  0001 C CNN
	1    6250 8200
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 8200 9400 8200
$Comp
L Switch:SW_SPST SW701
U 1 1 618167B7
P 6150 4450
F 0 "SW701" H 6150 4685 50  0000 C CNN
F 1 "SMD_1" H 6150 4594 50  0000 C CNN
F 2 "" H 6150 4450 50  0001 C CNN
F 3 "~" H 6150 4450 50  0001 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4450 6400 4450
Wire Wire Line
	6400 4450 6400 4550
Wire Wire Line
	3850 4550 6400 4550
$Comp
L Switch:SW_SPST SW702
U 1 1 6182430D
P 6150 5100
F 0 "SW702" H 6150 5335 50  0000 C CNN
F 1 "HVD" H 6150 5244 50  0000 C CNN
F 2 "" H 6150 5100 50  0001 C CNN
F 3 "~" H 6150 5100 50  0001 C CNN
	1    6150 5100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW703
U 1 1 61824850
P 6150 5750
F 0 "SW703" H 6150 5985 50  0000 C CNN
F 1 "SMD_2" H 6150 5894 50  0000 C CNN
F 2 "" H 6150 5750 50  0001 C CNN
F 3 "~" H 6150 5750 50  0001 C CNN
	1    6150 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5100 6400 5100
Wire Wire Line
	6400 5100 6400 5200
Wire Wire Line
	3850 5200 6400 5200
Wire Wire Line
	6400 5850 6400 5750
Wire Wire Line
	6400 5750 6350 5750
Wire Wire Line
	3850 5850 6400 5850
Text HLabel 14750 2250 2    50   Input ~ 0
CHRG_GND
Text HLabel 14750 2050 2    50   Input ~ 0
CHRG_CANH
Text HLabel 14750 2150 2    50   Input ~ 0
CHRG_CANL
Text HLabel 14750 1950 2    50   Input ~ 0
CHRG_CANS
$EndSCHEMATC
