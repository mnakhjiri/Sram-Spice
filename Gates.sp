* .global VDD SUP 0 5V
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
VDD SUP 0 5V
VGND GND 0 0V

* TEST
* Va A 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)
* Vb B 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)

* .TRAN 1PS 10NS
* .PROBE
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
VDD SUP 0 5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends nand3

***************************************
***************** NOR2 *****************
***************************************

.subckt nor2 A B OUT 

* Mosfets
M1 OUT A X1 0 MODP W=2u L=1u
M2 X1 B SUP 0 MODP W=2u L=1u

M4 GND B OUT 0 MODN W=2u L=1u
M5 GND A OUT 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends nor2


***************************************
************** inverter ***************
***************************************

.subckt inv A OUT 

* Mosfets
M1 OUT A SUP SUP MODP W=2u L=1u

M2 OUT A GND 0 MODN W=2u L=1u

* VDD and GND
VDD SUP 0 5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends inv

.subckt inv64 A OUT 

* Mosfets
M1 OUT A SUP SUP MODP W=64u L=1u

M2 OUT A GND 0 MODN W=64u L=1u

* VDD and GND
VDD SUP 0 5V
VGND GND 0 0V


.inc 'tsmc025.txt'
.ends inv64

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
VDD SUP 0 5V
VGND GND 0 0V

* TEST
*Va A 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)
*Vb B 0 PULSE(0 0 0 1NS 1NS 1NS 2NS)
*Vb C 0 PULSE(0 2.5 2.5 1NS 1NS 1NS 2NS)
*Vb D 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)

.TRAN 1PS 10NS
.PROBE

.inc 'tsmc025.txt'
.ends nand4

* .subckt nand16 A0 A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14 A15 OUT 

* * Mosfets
* M1 OUT A0 SUP SUP MODP W=2u L=1u
* M2 OUT A1 SUP SUP MODP W=2u L=1u
* M3 OUT A2 SUP SUP MODP W=2u L=1u
* M4 OUT A3 SUP SUP MODP W=2u L=1u
* M5 OUT A4 SUP SUP MODP W=2u L=1u
* M6 OUT A5 SUP SUP MODP W=2u L=1u
* M7 OUT A6 SUP SUP MODP W=2u L=1u
* M8 OUT A7 SUP SUP MODP W=2u L=1u
* M9 OUT A8 SUP SUP MODP W=2u L=1u
* M10 OUT A9 SUP SUP MODP W=2u L=1u
* M11 OUT A10 SUP SUP MODP W=2u L=1u
* M12 OUT A11 SUP SUP MODP W=2u L=1u
* M13 OUT A12 SUP SUP MODP W=2u L=1u
* M14 OUT A13 SUP SUP MODP W=2u L=1u
* M15 OUT A14 SUP SUP MODP W=2u L=1u
* M16 OUT A15 SUP SUP MODP W=2u L=1u

* M17 OUT A0 X1 0 MODN W=2u L=1u
* M18 X1 A1 X2 0 MODN W=2u L=1u
* M19 X2 A2 X3 0 MODN W=2u L=1u
* M20 X3 A3 X4 0 MODN W=2u L=1u
* M21 X4 A4 X5 0 MODN W=2u L=1u
* M22 X5 A5 X6 0 MODN W=2u L=1u
* M23 X6 A6 X7 0 MODN W=2u L=1u
* M24 X7 A7 X8 0 MODN W=2u L=1u
* M25 X8 A8 X9 0 MODN W=2u L=1u
* M26 X9 A9 X10 0 MODN W=2u L=1u
* M27 X10 A9 X11 0 MODN W=2u L=1u
* M28 X11 A10 X12 0 MODN W=2u L=1u
* M29 X12 A11 X13 0 MODN W=2u L=1u
* M30 X13 A12 X14 0 MODN W=2u L=1u
* M31 X14 A13 X15 0 MODN W=2u L=1u
* M32 X15 A14 X16 0 MODN W=2u L=1u
* M33 X16 A15 GND 0 MODN W=2u L=1u

* * VDD and GND
* VDD SUP 0 5V
* VGND GND 0 0V

* .inc 'tsmc025.txt'
* .ends nand16

.subckt nor4 A B C D OUT 

xnor20 A B A_or_B nor2
xnor20_inv A_or_B A_or_B A_or_B_inv nand

xnor21 C D C_or_D nor2
xnor21_inv C_or_D C_or_D C_or_D_inv nand

xnor22 A_or_B_inv C_or_D_inv OUT nor2

* VDD and GND
VDD SUP 0 5V
VGND GND 0 0V

.ends nor4

.subckt nor8 A0 A1 A2 A3 A4 A5 A6 A7 OUT 

xnor20 A0 A1 A2 A3 out1_inv nor4
xnor20_inv out1_inv out1_inv out1 nand

xnor21 A4 A5 A6 A7 out2_inv nor4
xnor21_inv out2_inv out2_inv out2 nand


xnor22 out1 out2 OUT nor2

.ends nor8


.subckt nor16 A0 A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14 A15 OUT

xnor20 A0 A1 A2 A3 A4 A5 A6 A7 out1_inv nor8
xnor20_inv out1_inv out1_inv out1 nand

xnor21 A8 A9 A10 A11 A12 A13 A14 A15 out2_inv nor8
xnor21_inv out2_inv out2_inv out2 nand

xnor22 out1 out2 OUT nor2

.ends nor16


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