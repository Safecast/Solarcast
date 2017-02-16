### IoT power module description

## GENERAL DESCRIPTION

IoT power module is powered from single lithium-ion cells (2/4/6 cells in parallel) and provides 3V3 and 5V stabilized output as well as battery output. All inputs can be turned off to avoid power consumption, however by default 3V3 output is always active (see later). Both switcher chips are buck-boost topology and operate with very low current when idle (< 100 uA)

The module itself is equipped with switcher battery charger, where charging current can be externally programmed using resistors (R56, R58) or programming through I2C interface is also possible. An add-on module enables charging from external solar panel or other input, where integrated electronics adjusts the current in a way, that current is lowered when Uin_min threshold is achieved (currently at 4V5). Other option is charging through microUSB port with 5 VDC.

The module can be equipped with Nordic nRF51822 microprocessor (M0 with BLE), that can be used to monitor and control charging process. Additionally, fuel gauge MAX17201 chip is integrated, which can monitor all battery parameters such as voltage, current, temperature, calculates state-of-charge (SOC), state-of-health (SOH) and many other parameters.

## BASIC BOARD OVERVIEW

![diagram](IoT-battery-pack-pinout.png)

### J2, J3, J4 (bottom left): Battery connectors, 3 pcs (JST 2-pole)
Connect to lithium battery pack. 3 packs can be connected simoultanously. Each branch is protected using 5A SMD fuse. 
IMPORTANT! 
 1. Always connect only battery packs with similar voltage/charging state. Connecting i.e. empty and full battery pack will drain huge current from full battery and burn fuse as well as damage to the batteries can be done!
 1. GND of the cells and GND of the system is not the same as there is a shunt resistor (R32, R57) in line between Cell_gnd and System_gnd.

### J6 (top left): PWR connector (IDC10):

1. - I2C SCL (3V3)
2. - I2C SDA (3V3)
3. - 5V0 output*
4. - 5V0_enable pin*
5. - 3V3 output (always on by default**)
6. - 3V3_enable pin (not used by default**)
7. - Vbat output (same logic as 5V0 output*)
8. - Vbat_enable pin
9. - GND
10. - GND

*By default, 5V0 output is disabled and can only be enabled if pulling 5V0 enable pin high. In case, that constant voltage is required on the 5V0 output, R36 must be populated. This will create resistor divider to define voltage level, when power will disable due to under-voltage condition.

**By default, 3V3 output is always active and is disabled only, when under-voltage condition occurs (set to approx. 3V using R26 and R31). If you want to enable 3V3_enable control, R26 must be removed.

### J8 + micro USB (middle right): +5 VDC power supply
Input for stabilized 5V power supply, which is connected to the charging chip via diode D10. By default (if no charging module is installed) charging current is set to 0,7 A. 
If you want to increase charging current, connect +5V to U_sense pin (J12, pin 3; yellow/pink).

### J9 (bottom right): external charging voltage (JST 2-pole)
Input for solar panel or other power source (voltage depends on a module installed).

### J11, J12 (bottom middle): connectors for add-on charging board
Module has prepared option to install add-on module with additional charger; this way i.e. MPPT module or wide-range DCDC charger can be installed and replaced if required.
There are also I2C pins present at J12 as well as one additional pin from MCU as well se Usense pin, which regulates charging current for the on-board charging chip.

### J13 (bottom middle): connector for battery NTC thermistor (10k)
NTC thermistor must be thermally attached to the battery cell.
