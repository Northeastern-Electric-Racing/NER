EESchema Schematic File Version 4
LIBS:Master System Schematic-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 24 24
Title "BattBox PCB"
Date "2021-11-10"
Rev "1.0"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4600 5400 2    50   Input ~ 0
GLV_GND
Text HLabel 7100 4800 2    50   Input ~ 0
AIR+_SigH
Text HLabel 7100 4900 2    50   Input ~ 0
AIR+_SigL
Text HLabel 7100 5000 2    50   Input ~ 0
AIR-_SigH
Text HLabel 7100 5100 2    50   Input ~ 0
AIR-_SigL
Text HLabel 7100 5200 2    50   Input ~ 0
DCharge-_SigH
Text HLabel 7100 5300 2    50   Input ~ 0
DCharge-_SigL
Text HLabel 7100 5400 2    50   Input ~ 0
PCharge-_SigH
Text HLabel 7100 5500 2    50   Input ~ 0
PCharge-_SigL
Text HLabel 7150 2800 2    50   Input ~ 0
BMS_R_12V
Text HLabel 7150 3000 2    50   Input ~ 0
BMS_GND
Text HLabel 2350 4900 2    50   Input ~ 0
Therm_12V
Text HLabel 2350 5000 2    50   Input ~ 0
Therm_GND
Text HLabel 4500 2800 2    50   Input ~ 0
IMD_12V
Text HLabel 4500 2900 2    50   Input ~ 0
IMD_GND
Text HLabel 7150 2900 2    50   Input ~ 0
BMS_C_12V
Text HLabel 4600 4900 2    50   Input ~ 0
GLV_CANH
Text HLabel 4600 5000 2    50   Input ~ 0
GLV_CANL
Text HLabel 4600 5100 2    50   Input ~ 0
GLV_CANS
Text HLabel 2350 5300 2    50   Input ~ 0
THRM_CANH
Text HLabel 2350 5200 2    50   Input ~ 0
THRM_CANL
Text HLabel 2350 5100 2    50   Input ~ 0
THRM_CANS
Text HLabel 7150 3100 2    50   Input ~ 0
BMS_CANH
Text HLabel 7150 3200 2    50   Input ~ 0
BMS_CANL
Text HLabel 7150 3300 2    50   Input ~ 0
BMS_CANS
Text HLabel 4600 5800 2    50   Input ~ 0
MC_Precharge+
Text HLabel 4600 5900 2    50   Input ~ 0
MC_AIR+
Text HLabel 2350 2800 2    50   Input ~ 0
CHRG_12V
Text HLabel 4500 3000 2    50   Input ~ 0
IMD_Status
Text HLabel 4600 6700 2    50   Input ~ 0
GLV_IMD_Fault
Wire Notes Line
	6450 4450 8250 4450
Wire Notes Line
	8250 4450 8250 5850
Wire Notes Line
	8250 5850 6450 5850
Wire Notes Line
	6450 5850 6450 4450
Text Notes 7150 4350 0    50   ~ 0
HV Plate
Text HLabel 4600 6300 2    50   Input ~ 0
RadFanPWR
Wire Notes Line
	5900 4450 5900 7250
Wire Notes Line
	5900 7250 3800 7250
Wire Notes Line
	3800 7250 3800 4450
Wire Notes Line
	3800 4450 5900 4450
Text Notes 4550 4300 0    50   ~ 0
GLV Connector
Text HLabel 4600 6400 2    50   Input ~ 0
PumpPWR
Wire Notes Line
	3800 2350 5900 2350
Wire Notes Line
	5900 2350 5900 3900
Wire Notes Line
	5900 3900 3800 3900
Wire Notes Line
	3800 3900 3800 2350
Text Notes 4700 2250 0    50   ~ 0
IMD
Text HLabel 4500 3100 2    50   Input ~ 0
IMDChassis1
Text HLabel 4500 3200 2    50   Input ~ 0
IMDChassis2
Wire Notes Line
	6450 3900 8250 3900
Wire Notes Line
	8250 3900 8250 2350
Wire Notes Line
	8250 2350 6450 2350
Wire Notes Line
	6450 2350 6450 3900
Text Notes 7300 2250 0    50   ~ 0
BMS
Text HLabel 7150 3400 2    50   Input ~ 0
BMS_Status
Wire Notes Line
	3250 2350 3250 3900
Wire Notes Line
	3250 3900 1900 3900
Wire Notes Line
	1900 3900 1900 2350
Wire Notes Line
	1900 2350 3250 2350
Text HLabel 2350 2900 2    50   Input ~ 0
CHRG_GND
Text HLabel 2350 3000 2    50   Input ~ 0
CHRG_CANH
Text HLabel 2350 3100 2    50   Input ~ 0
CHRG_CANL
Text HLabel 2350 3200 2    50   Input ~ 0
CHRG_CANS
Text Notes 2250 2250 0    50   ~ 0
Charger Connector
Wire Notes Line
	3250 4400 3250 5950
Wire Notes Line
	1900 5950 1900 4400
Wire Notes Line
	1900 4400 3250 4400
Text Notes 2250 4300 0    50   ~ 0
Thermistor Expansion\n
Wire Notes Line
	1900 5950 3250 5950
Text HLabel 2350 3300 2    50   Input ~ 0
CHRG_Safety
Text HLabel 7150 3500 2    50   Input ~ 0
BMS_CHRGSafety
Text HLabel 4600 6800 2    50   Input ~ 0
GLV_BMS_Fault
Text HLabel 7150 3600 2    50   Input ~ 0
BMS_RadFanSig
Text HLabel 4600 6100 2    50   Input ~ 0
Shutdown_12V
Text HLabel 4600 6900 2    50   Input ~ 0
GLV_Chassis1
Text HLabel 4600 7000 2    50   Input ~ 0
GLV_Chassis2
Text HLabel 7150 3700 2    50   Input ~ 0
BMS_BattFanPWM
Wire Notes Line
	8550 2350 8550 3900
Wire Notes Line
	8550 3900 9950 3900
Wire Notes Line
	9950 3900 9950 2350
Wire Notes Line
	9950 2350 8550 2350
Text Notes 9450 2250 2    50   ~ 0
BattFans\n
Text HLabel 9100 2700 2    50   Input ~ 0
BattFan12V
Text HLabel 9100 2800 2    50   Input ~ 0
BattFanGND
Text HLabel 9100 2900 2    50   Input ~ 0
BattFanPWM
Text HLabel 4600 5300 2    50   Input ~ 0
GLV_12V
Text Notes 2850 1300 0    157  ~ 0
SEE ALTIUM SCHEMATIC FOR FINAL IMPLEMENTATION
$EndSCHEMATC
