* .global VDD SUP 0 2.5V
***************************************
***************** nand ****************
***************************************

.subckt nand A B OUT 

* Mosfets
M1 OUT B SUP SUP MODP W=2u L=1u
M2 OUT A SUP SUP MODP W=2u L=1u

M3 OUT A X 0 MODN W=2u L=1u
M4 X B GND 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V

.inc 'tsmc025.txt'
.ends nand
***************************************
***************** nand3 ***************
***************************************

.subckt nand3 A B C OUT 

* Mosfets
M1 OUT B SUP SUP MODP W=2u L=1u
M2 OUT A SUP SUP MODP W=2u L=1u
M3 OUT C SUP SUP MODP W=2u L=1u

M4 OUT A X1 0 MODN W=2u L=1u
M5 X1 B X2 0 MODN W=2u L=1u
M6 X2 C GND 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends nand3

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
.ends or3


***************************************
************** inverter ***************
***************************************

.subckt inv A OUT 

* Mosfets
M1 OUT A SUP SUP MODP W=2u L=1u

M2 OUT A GND 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends inv

***************************************
***************** nand4 ***************
***************************************

.subckt nand4 A B C D OUT 

* Mosfets
M1 OUT B SUP SUP MODP W=2u L=1u
M2 OUT A SUP SUP MODP W=2u L=1u
M3 OUT C SUP SUP MODP W=2u L=1u
M4 OUT D SUP SUP MODP W=2u L=1u

M5 OUT A X1 0 MODN W=2u L=1u
M6 X1 B X2 0 MODN W=2u L=1u
M7 X2 C X3 0 MODN W=2u L=1u
M8 X3 C GND 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 2.5V
VGND GND 0 0V

.inc 'tsmc025.txt'
.ends nand4

* *TEST
* Va A 0 PWL(1P 0v, 9.9N 0v,
* +          10N 2.5v, 19.9N 2.5v,
* +          20N 2.5v)
* Vb B 0 PWL(1P 0V, 9.9N 0V,
* +          10N 2.5V, 19.9N 2.5V,
* +          20N 2.5V)
* Vc C 0 PWL(1P 0V, 9.9N 0V,
* +          10N 2.5V, 19.9N 2.5V,
* +          20N 2.5V)
* Vd D 0 PWL(1P 0V, 9.9N 0V,
* +          10N 2.5V, 19.9N 2.5V,
* +          20N 2.5V)

* xout A B C D out nand4
* .TRAN 1PS 30NS
* .PROBE
* .End