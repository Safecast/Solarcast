# Power module
Power module connects the solar cell and battery and provides a 5V output to the rest of the system with the following features. [Battery academy article](http://batteryuniversity.com/learn/article/how_to_prolong_lithium_based_batteries) highlights some methods for prolonged life of cells and respective charge voltages and profiles, decreasing the charge voltage to 4.0V and depth of discharge to 50%, several thousand cycles can be expected. As the battery life for Solarcast is rather low, we expect charging every day, but about 11 days operation on a single charge. Thus even without reduced charge voltage, we should expect a lifetime of 1000s of cycles, sufficient for a few years operation.

# Features
 1. Charge battery from 6W Solar cell or USB power input
 2. Output 5V with at least 2A current capability
 3. Provide current measurement and battery voltage data, best via I2C
 4. Low standby current consumption/self-discharge

# Implementation
The most straightforward implementation is using a pre-built power bank module, provided one exist satisfying the following requirements:
 * Solar cell input for charging
 * No minimal current shut-off (low standby mode consumption ~0.1mA)
 * Battery protection (under-voltage, over-voltage, cell-failure)
 * Low-quiescent current of the DC-DC 5V output stage

## Power bank candidates
Three options have been selected for detailed analysis to determine the best option for implementation:

### LiPo cell + Adafruit LiPo charger
Constructing a single cell LiPo power unit from components is feasible and has been tested, however does not feature cell protection and has a single cell configuration, increasing the complexity of the power system due to its operation in battery voltage operational range.

### Cheero Power Plus 3 CHE067
The [Cheero Power Plus 3](https://www.cheero.net/product_tag/power-plus-3/) is a 13400mAh rated power bank with 2S2P cell configuration  with 4 cells LGEBF1L1865 and a measured capacity at the 5V output of 8800mAh. It features a step-up converter for charging with under-voltage protection to prevent the supply from overloading when below 4.5V input and over-voltage protection at about 7V. Modification with an INA219 current measurement module on the positive battery output allows measuring the charge and discharge currents as well as the cell battery. Low-cut off voltage: 5.97V Charge voltage: 8.22V for 2S configuration.

Step-up controller: U1 marked AWF608 32pin IC with integrated switch, output connected directly to the battery. Boost DC/DC Charger With Input Current Limiter
Step-down controller: U11 marked MPFP 8758


### Voltaics V44 solar power bank
The [Voltaics V44 USB battery](https://www.voltaicsystems.com/v44) is a purpose built solar power bank for charging via solar cell or USB with 12000mAh capacity. Internally it uses a 4P configuration of flat li-po cells. An OTP ht46r066b microcontroller implements the thermal protection, current sensing and other protection features.

### Voltaics V44 solar power bank
The [Voltaics V15 USB battery](https://www.voltaicsystems.com/v15) is an USB power bank with 4000mAh capacity. Internally it uses a 2P configuration of flat cells. An OTP ht46r066b microcontroller implements the thermal protection, current sensing and other protection features.
