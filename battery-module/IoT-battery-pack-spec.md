# IoT battery pack requirements
IoT battery pack is designed to provide power in various sensing applications, being able to deliver sufficient power for a wide range of sensors for short periods of time and have a long standby operation time between them. BLE interface allows users to configure it as well as provide a communication channel to talk to other sensors in the vicinity.

 * Capacity: 1P-6P Li-Po 18650 (3600mAh - 20000mAh)
  * Batteries connected in 3 branches of two, each branch fuse protected
  * User can connect 1-6 cells in parallel. For safety, no more then two can be directly connected in parallel, thus the 6 cells in parallel are split in 3 pairs of 2 cells in parallel, the sets connected together each via its own fuse.
 * Input: 2A at 5V, input range 3-6V
  * DC jack input for solar cell, no diode used
  * Micro USB input for wall-socket
  * USB input must disconnect the solar cell and prevent discharge into it, can be done with a relay.
 * Output: 2A at 5V, 1A at 3.3V, direct battery voltage output
  * 5V - High-side switch or DC-DC module disable
  * 3.3V - High-side switch or DC-DC module disable
  * battery voltage - High-side switch and a fuse
 * BLE processor (preferred Nordic nRF52832) on board implementing the following features in software:
  * battery voltage and current measurement
  * configurable thermal protection/shutdown
  * configurable battery charge voltage (over-voltage protection)
  * configurable battery discharge voltage (under-voltage protection)
  * I2C interface
  * Enable/disable outputs as defined above
  * Expose remaining GPIO, about 8-10 are sufficient
 * Simultaneous charging and discharging
 * Low quiescent current - standby mode with 3.3V branch active no more then 100uA battery discharge current
 * Input DC-DC with current limiter
  * Dynamic adjustment of charge current, such that the input voltage does not drop below 4.5V or other configurable level if possible. This prevents overloading of the supply, for example when solar cell is connected holds it reasonably close to maximum power output voltage. If possible the voltage level should be software controlled via BLE.


 * Target production cost ~15EUR@1k
  * Batteries excluded
 * Prototyping process: 10 units for testing in first batch, 30 units in second batch

## Diagram
Diagram is made in http://draw.io

![diagram][IoT-battery-pack.svg]
