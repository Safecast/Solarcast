# IoT battery pack requirements

 * Capacity: 1P-6P Li-Po 18650 (3600mAh - 20000mAh)
 * Input: 2A at 5V, input range 3-6V default, optimal 3-36V
 * Output: 2A at 5V, 1A at 3.3V, direct battery voltage output
 * BLE processor on board
 * Over-voltage protection, under-voltage protection, short-circuit protection, thermal protection
 * Battery voltage, current measurement, fuel gauge
 * I2C and BLE interface for measurements
 * Configurable max and min battery voltage
 * Individually controllable output through mosfet
 * Batteries connected in 3 branches of two, each branch fuse protected
 * Charge input disconnect mosfet, reverse output protection
 * Simultaneous charging and discharging
 * Low quiescent current - standby mode with 3.3V branch active no more then 100uA
 * Input current limiter with configurable voltage level
 * Dual DC input USB & DC jack, when USB connected DC jack is disconnected
 * Expose GPIO pins on a header

 * Target production cost ~15EUR@1k
