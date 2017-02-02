EESchema Schematic File Version 2
LIBS:communications-module-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:bme280
LIBS:nrf52832
LIBS:ina219
LIBS:fgpmmopa6h_gps
LIBS:fona_3g
LIBS:lis3dh_breakout
LIBS:sn74lv4052a
LIBS:lxdc2ur33a-122
LIBS:i2c_connector
LIBS:cmsis-dap
LIBS:lxdc55kaaa-205
LIBS:ufl_conn
LIBS:cmsis_dap_breakout
LIBS:rockblock
LIBS:pwr_conn
LIBS:communications-module-cache
LIBS:idc12
LIBS:tps2034
LIBS:tps2064
LIBS:tps79133
LIBS:raspberrypi
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4890 2585 4820 2585
Wire Wire Line
	4820 2585 4820 2785
Wire Wire Line
	4660 2785 4890 2785
Connection ~ 4820 2785
Wire Wire Line
	4890 2685 4745 2685
Wire Wire Line
	4745 2685 4745 2485
Wire Wire Line
	4660 2485 4890 2485
Connection ~ 4745 2485
Wire Wire Line
	4820 2270 4820 2485
Wire Wire Line
	6000 2585 5765 2585
Connection ~ 4820 2485
Wire Wire Line
	4660 2270 6000 2270
Connection ~ 4820 2270
Wire Wire Line
	6000 2270 6000 2585
Wire Wire Line
	8110 3935 8580 3935
Wire Wire Line
	8110 4235 8870 4235
Wire Wire Line
	8870 4175 8870 4295
Connection ~ 8870 4235
$Comp
L BME280 U8
U 1 1 589C0F89
P 5390 2610
F 0 "U8" H 5315 2825 60  0000 C CNN
F 1 "BME280" H 5325 2330 60  0000 C CNN
F 2 "BME280:BME280" H 5340 2210 60  0001 C CNN
F 3 "" H 5390 2610 60  0000 C CNN
	1    5390 2610
	1    0    0    -1  
$EndComp
$Comp
L I2C_connector U7
U 1 1 589C0F90
P 4725 4030
F 0 "U7" H 4775 4280 60  0000 C CNN
F 1 "I2C_connector" H 4725 3780 60  0000 C CNN
F 2 "DIP Grove 4P-2.0:DIP_Grove_4P-2_0" H 4800 3680 60  0001 C CNN
F 3 "" H 4725 4180 60  0000 C CNN
	1    4725 4030
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR50
U 1 1 589C0F97
P 4660 2785
F 0 "#PWR50" H 4660 2535 50  0001 C CNN
F 1 "GND" H 4660 2635 50  0000 C CNN
F 2 "" H 4660 2785 60  0000 C CNN
F 3 "" H 4660 2785 60  0000 C CNN
	1    4660 2785
	0    1    1    0   
$EndComp
$Comp
L GND #PWR51
U 1 1 589C0F9D
P 5765 2485
F 0 "#PWR51" H 5765 2235 50  0001 C CNN
F 1 "GND" H 5765 2335 50  0000 C CNN
F 2 "" H 5765 2485 60  0000 C CNN
F 3 "" H 5765 2485 60  0000 C CNN
	1    5765 2485
	0    -1   -1   0   
$EndComp
Text GLabel 5765 2685 2    60   Input ~ 0
TWI_SDA
Text GLabel 5765 2785 2    60   Input ~ 0
TWI_SCL
$Comp
L C C2
U 1 1 589C0FA5
P 4510 2270
F 0 "C2" V 4715 2230 50  0000 L CNN
F 1 "100nF" V 4640 2160 50  0000 L CNN
F 2 "0603_handsolder:0603_HandSoldering" H 4548 2120 30  0001 C CNN
F 3 "" H 4510 2270 60  0000 C CNN
	1    4510 2270
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR48
U 1 1 589C0FAC
P 4360 2270
F 0 "#PWR48" H 4360 2020 50  0001 C CNN
F 1 "GND" H 4360 2120 50  0000 C CNN
F 2 "" H 4360 2270 60  0000 C CNN
F 3 "" H 4360 2270 60  0000 C CNN
	1    4360 2270
	0    1    1    0   
$EndComp
Text GLabel 7640 2035 2    60   Input ~ 0
TWI_SDA
Text GLabel 7640 2365 2    60   Input ~ 0
TWI_SCL
$Comp
L R R4
U 1 1 589C0FB4
P 7490 2035
F 0 "R4" V 7570 2035 50  0000 C CNN
F 1 "10K" V 7490 2035 50  0000 C CNN
F 2 "0603_handsolder:0603_HandSoldering" V 7420 2035 30  0001 C CNN
F 3 "" H 7490 2035 30  0000 C CNN
	1    7490 2035
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 589C0FBB
P 7490 2365
F 0 "R5" V 7570 2365 50  0000 C CNN
F 1 "10K" V 7490 2365 50  0000 C CNN
F 2 "0603_handsolder:0603_HandSoldering" V 7420 2365 30  0001 C CNN
F 3 "" H 7490 2365 30  0000 C CNN
	1    7490 2365
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR49
U 1 1 589C0FC2
P 4525 3880
F 0 "#PWR49" H 4525 3630 50  0001 C CNN
F 1 "GND" H 4525 3730 50  0000 C CNN
F 2 "" H 4525 3880 60  0000 C CNN
F 3 "" H 4525 3880 60  0000 C CNN
	1    4525 3880
	-1   0    0    1   
$EndComp
Text GLabel 4525 4080 0    60   Input ~ 0
TWI_SDA
Text GLabel 4525 4180 0    60   Input ~ 0
TWI_SCL
$Comp
L GND #PWR52
U 1 1 589C0FCA
P 5970 3885
F 0 "#PWR52" H 5970 3635 50  0001 C CNN
F 1 "GND" H 5970 3735 50  0000 C CNN
F 2 "" H 5970 3885 60  0000 C CNN
F 3 "" H 5970 3885 60  0000 C CNN
	1    5970 3885
	-1   0    0    1   
$EndComp
Text GLabel 5970 4185 0    60   Input ~ 0
TWI_SCL
$Comp
L LIS3DH_breakout U10
U 1 1 589C0FD1
P 7785 4285
F 0 "U10" H 7660 4860 60  0000 C CNN
F 1 "LIS3DH_breakout" V 7535 4210 60  0000 C CNN
F 2 "LIS3DH_breakout:LIS3DH_breakout_vertical" V 7435 4210 60  0001 C CNN
F 3 "" H 7810 4710 60  0000 C CNN
	1    7785 4285
	1    0    0    -1  
$EndComp
NoConn ~ 8110 4835
NoConn ~ 8110 4735
NoConn ~ 8110 4635
$Comp
L GND #PWR58
U 1 1 589C0FDB
P 8580 3935
F 0 "#PWR58" H 8580 3685 50  0001 C CNN
F 1 "GND" H 8580 3785 50  0000 C CNN
F 2 "" H 8580 3935 60  0000 C CNN
F 3 "" H 8580 3935 60  0000 C CNN
	1    8580 3935
	0    -1   -1   0   
$EndComp
Text GLabel 8110 4135 2    60   Input ~ 0
TWI_SDA
Text GLabel 8110 4035 2    60   Input ~ 0
TWI_SCL
Text GLabel 8110 4435 2    60   Input ~ 0
ACC_INT
$Comp
L R R7
U 1 1 589C0FE5
P 8870 4445
F 0 "R7" V 8950 4445 50  0000 C CNN
F 1 "0R" V 8870 4445 50  0000 C CNN
F 2 "0603_handsolder:0603_HandSoldering" V 8800 4445 30  0001 C CNN
F 3 "" H 8870 4445 30  0000 C CNN
	1    8870 4445
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 589C0FEC
P 8870 4025
F 0 "R6" V 8950 4025 50  0000 C CNN
F 1 "0R" V 8870 4025 50  0000 C CNN
F 2 "0603_handsolder:0603_HandSoldering" V 8800 4025 30  0001 C CNN
F 3 "" H 8870 4025 30  0000 C CNN
	1    8870 4025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR61
U 1 1 589C0FF3
P 8870 4595
F 0 "#PWR61" H 8870 4345 50  0001 C CNN
F 1 "GND" H 8870 4445 50  0000 C CNN
F 2 "" H 8870 4595 60  0000 C CNN
F 3 "" H 8870 4595 60  0000 C CNN
	1    8870 4595
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 589C0FFA
P 7945 3355
F 0 "C3" V 8080 3310 50  0000 L CNN
F 1 "100nF" V 7820 3240 50  0000 L CNN
F 2 "0603_handsolder:0603_HandSoldering" H 7983 3205 30  0001 C CNN
F 3 "" H 7945 3355 60  0000 C CNN
	1    7945 3355
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR55
U 1 1 589C1001
P 7795 3355
F 0 "#PWR55" H 7795 3105 50  0001 C CNN
F 1 "GND" H 7795 3205 50  0000 C CNN
F 2 "" H 7795 3355 60  0000 C CNN
F 3 "" H 7795 3355 60  0000 C CNN
	1    7795 3355
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR53
U 1 1 589C100D
P 7340 2035
F 0 "#PWR53" H 7340 1885 50  0001 C CNN
F 1 "+3.3V" H 7340 2175 50  0000 C CNN
F 2 "" H 7340 2035 60  0000 C CNN
F 3 "" H 7340 2035 60  0000 C CNN
	1    7340 2035
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR54
U 1 1 589C1013
P 7340 2365
F 0 "#PWR54" H 7340 2215 50  0001 C CNN
F 1 "+3.3V" H 7340 2505 50  0000 C CNN
F 2 "" H 7340 2365 60  0000 C CNN
F 3 "" H 7340 2365 60  0000 C CNN
	1    7340 2365
	0    -1   -1   0   
$EndComp
Text GLabel 5970 4085 0    60   Input ~ 0
TWI_SDA
$Comp
L I2C_connector U9
U 1 1 589C101C
P 6170 4035
F 0 "U9" H 6220 4285 60  0000 C CNN
F 1 "I2C_connector" H 6170 3785 60  0000 C CNN
F 2 "DIP Grove 4P-2.0:DIP_Grove_4P-2_0" H 6245 3685 60  0001 C CNN
F 3 "" H 6170 4185 60  0000 C CNN
	1    6170 4035
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR56
U 1 1 589C102B
P 8095 3355
F 0 "#PWR56" H 8095 3205 50  0001 C CNN
F 1 "+3.3V" H 8095 3495 50  0000 C CNN
F 2 "" H 8095 3355 60  0000 C CNN
F 3 "" H 8095 3355 60  0000 C CNN
	1    8095 3355
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR57
U 1 1 589C1031
P 8545 3790
F 0 "#PWR57" H 8545 3640 50  0001 C CNN
F 1 "+3.3V" H 8545 3930 50  0000 C CNN
F 2 "" H 8545 3790 60  0000 C CNN
F 3 "" H 8545 3790 60  0000 C CNN
	1    8545 3790
	1    0    0    -1  
$EndComp
Wire Wire Line
	8110 3835 8545 3835
Wire Wire Line
	8545 3835 8545 3790
$Comp
L +3.3V #PWR59
U 1 1 589C1039
P 8635 4510
F 0 "#PWR59" H 8635 4360 50  0001 C CNN
F 1 "+3.3V" H 8635 4650 50  0000 C CNN
F 2 "" H 8635 4510 60  0000 C CNN
F 3 "" H 8635 4510 60  0000 C CNN
	1    8635 4510
	-1   0    0    1   
$EndComp
Text GLabel 2590 3200 2    60   Input ~ 0
TWI_SDA
Text GLabel 2590 3345 2    60   Input ~ 0
TWI_SCL
$Comp
L GND #PWR43
U 1 1 589C1D19
P 2595 2690
F 0 "#PWR43" H 2595 2440 50  0001 C CNN
F 1 "GND" H 2595 2540 50  0000 C CNN
F 2 "" H 2595 2690 60  0000 C CNN
F 3 "" H 2595 2690 60  0000 C CNN
	1    2595 2690
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR44
U 1 1 589C1D42
P 2600 2930
F 0 "#PWR44" H 2600 2780 50  0001 C CNN
F 1 "+3.3V" H 2600 3070 50  0000 C CNN
F 2 "" H 2600 2930 60  0000 C CNN
F 3 "" H 2600 2930 60  0000 C CNN
	1    2600 2930
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR60
U 1 1 589C1DC7
P 8870 3875
F 0 "#PWR60" H 8870 3725 50  0001 C CNN
F 1 "+3.3V" H 8870 4015 50  0000 C CNN
F 2 "" H 8870 3875 60  0000 C CNN
F 3 "" H 8870 3875 60  0000 C CNN
	1    8870 3875
	1    0    0    -1  
$EndComp
Text GLabel 2590 3490 2    60   Input ~ 0
ACC_INT
Text HLabel 2595 2690 0    60   Input ~ 0
GND
Text HLabel 2600 2930 0    60   Input ~ 0
3V3
Text HLabel 2590 3200 0    60   Input ~ 0
TWI_SDA
Text HLabel 2590 3345 0    60   Input ~ 0
TWI_SCL
Text HLabel 2590 3490 0    60   Input ~ 0
ACC_INT
NoConn ~ 8110 4535
$Comp
L GND #PWR46
U 1 1 58A819AA
P 3470 5760
F 0 "#PWR46" H 3470 5510 50  0001 C CNN
F 1 "GND" H 3470 5610 50  0000 C CNN
F 2 "" H 3470 5760 60  0000 C CNN
F 3 "" H 3470 5760 60  0000 C CNN
	1    3470 5760
	-1   0    0    1   
$EndComp
Wire Wire Line
	3235 5835 3470 5835
Wire Wire Line
	4395 5835 4455 5835
Wire Wire Line
	4455 5835 4455 5795
Wire Wire Line
	4455 5795 4520 5795
Wire Wire Line
	4395 5760 4395 5680
Wire Wire Line
	4395 5680 4520 5680
Wire Wire Line
	4395 5985 4395 6025
Wire Wire Line
	4395 6025 4520 6025
$Comp
L Jumper_NC_Small JP17
U 1 1 58A819BC
P 4370 5410
F 0 "JP17" H 4370 5490 50  0000 C CNN
F 1 "Jumper_NC_Small" H 4380 5350 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 4370 5410 60  0001 C CNN
F 3 "" H 4370 5410 60  0000 C CNN
	1    4370 5410
	1    0    0    -1  
$EndComp
Text GLabel 3410 5910 0    60   Input ~ 0
ENABLE-TWI
$Comp
L TPS2064 U6
U 1 1 58A819D1
P 3920 5885
F 0 "U6" H 3770 6135 60  0000 C CNN
F 1 "TPS2064" H 3920 5660 60  0000 C CNN
F 2 "TPS2064:TPS2064" H 3920 5585 60  0001 C CNN
F 3 "" H 3820 5660 60  0000 C CNN
	1    3920 5885
	1    0    0    -1  
$EndComp
Text GLabel 4520 6025 2    60   Input ~ 0
PWR_SWITCH_OC
Text GLabel 4520 5680 2    60   Input ~ 0
PWR_SWITCH_OC
Text GLabel 4470 5410 2    60   Input ~ 0
TWI_3V3
$Comp
L +3.3V #PWR47
U 1 1 58A81AAE
P 4270 5410
F 0 "#PWR47" H 4270 5260 50  0001 C CNN
F 1 "+3.3V" H 4270 5550 50  0000 C CNN
F 2 "" H 4270 5410 60  0000 C CNN
F 3 "" H 4270 5410 60  0000 C CNN
	1    4270 5410
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR45
U 1 1 58A8257B
P 3235 5755
F 0 "#PWR45" H 3235 5605 50  0001 C CNN
F 1 "+3.3V" H 3235 5895 50  0000 C CNN
F 2 "" H 3235 5755 60  0000 C CNN
F 3 "" H 3235 5755 60  0000 C CNN
	1    3235 5755
	1    0    0    -1  
$EndComp
Wire Wire Line
	3235 5755 3235 5835
Text GLabel 4520 5795 2    60   Input ~ 0
TWI_3V3
NoConn ~ 4395 5910
NoConn ~ 3470 5985
Wire Wire Line
	3410 5910 3470 5910
Text GLabel 4660 2485 0    60   Input ~ 0
TWI_3V3
Text GLabel 4525 3980 0    60   Input ~ 0
TWI_3V3
Text GLabel 5970 3985 0    60   Input ~ 0
TWI_3V3
Text GLabel 2590 3765 2    60   Input ~ 0
ENABLE-TWI
Text GLabel 2590 3630 2    60   Input ~ 0
PWR_SWITCH_OC
Text HLabel 2590 3630 0    60   Input ~ 0
PWR_SWITCH_OC
Text HLabel 2590 3765 0    60   Input ~ 0
ENABLE-TWI
Wire Wire Line
	8635 4335 8635 4510
Wire Wire Line
	8110 4335 8635 4335
$EndSCHEMATC
