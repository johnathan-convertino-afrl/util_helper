# AFRL Util Helper Functions
### Various reusable funtions for verilog
---

![image](docs/manual/img/AFRL.png)

---

   author: Jay Convertino   
   
   date: 2022.08.10  
   
   details: Various helper funtions.   
   
   license: MIT   
   
---

### Version
#### Current
  - V1.0.0 - initial release

#### Previous
  - none

### DOCUMENTATION
  For detailed usage information, please navigate to one of the following sources. They are the same, just in a different format.

  - [util_helper.pdf](docs/manual/util_helper.pdf)
  - [github page](https://johnathan-convertino-afrl.github.io/util_helper/)

### DEPENDENCIES
  - N/A

### COMPONENTS
#### SRC

* util_helper_math.vh ... functions written in C syntax for clarification.
  * int clogb2(value) ... will return the log base 2 of the argument (value), rounded up to the nearest integer.
  * int cmax(max1, max2) ... will return the number that is the max of the arguments max1, max2.
  * int abs(value) ... will return the absolute value of the argument passed.
  
#### TB

* tb_helper.v
  
### FUSESOC

* fusesoc_info.core created.
* Simulation uses icarus to run data through the core.

#### Targets

* RUN WITH: (fusesoc run --target=sim VENDER:CORE:NAME:VERSION)
  - default (for IP integration builds)
  - sim
