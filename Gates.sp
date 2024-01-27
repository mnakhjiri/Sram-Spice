* .global VDD SUP 0 2.5V
***************************************
***************** nand ****************
***************************************

.subckt nand A B OUT 

* Mosfets
M1 SUP B OUT 0 MODP W=2u L=1u
M2 SUP A OUT 0 MODP W=2u L=1u
M3 OUT A X 0 MODN W=2u L=1u
M4 X B GND 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V

* TEST
* Va A 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)
* Vb B 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)

* .TRAN 1PS 10NS
* .PROBE
.inc 'tsmc025.txt'
.ends
***************************************
***************** nand3 ***************
***************************************

.subckt nand3 A B C OUT 

* Mosfets
M1 SUP B OUT 0 MODP W=2u L=1u
M2 SUP A OUT 0 MODP W=2u L=1u
M3 SUP C OUT 0 MODP W=2u L=1u

M4 OUT A X1 0 MODN W=2u L=1u
M5 X1 B X2 0 MODN W=2u L=1u
M6 X2 C GND 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends

***************************************
***************** OR3 *****************
***************************************

.subckt or3 A B C OUT 

* Mosfets
M1 OUT A X1 0 MODP W=2u L=1u
M2 X1 B X2 0 MODP W=2u L=1u
M3 X2 C SUP 0 MODP W=2u L=1u



M4 GND B OUT 0 MODN W=2u L=1u
M5 GND A OUT 0 MODN W=2u L=1u
M6 GND C OUT 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends


***************************************
************** inverter ***************
***************************************

.subckt inv A OUT 

* Mosfets
M1 OUT A SUP 0 MODP W=2u L=1u

M2 GND A OUT 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends