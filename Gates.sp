* VDD SUP 0 5V
* VGND GND 0 0V
***************************************
***************** nand ****************
**************
*************************

.subckt nand A B OUT 

* Mosfets
M1 OUT B SUP SUP MODP W=2u L=1u
M2 OUT A SUP SUP MODP W=2u L=1u

M3 OUT A X 0 MODN W=2u L=1u
M4 X B GND 0 MODN W=2u L=1u

VDD SUP 0 5V
VGND GND 0 0V

* .MEASURE pwr AVG P(VDD) FROM 0ns TO 150ns

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

.MEASURE pwr AVG P(VDD) FROM 0ns TO 150ns

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
* VDD SUP 0 5V
* VGND GND 0 0V

* TEST
*Va A 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)
*Vb B 0 PULSE(0 0 0 1NS 1NS 1NS 2NS)
*Vb C 0 PULSE(0 2.5 2.5 1NS 1NS 1NS 2NS)
*Vb D 0 PULSE(0 2.5 0 1NS 1NS 1NS 2NS)

* .TRAN 1PS 10NS
* .PROBE

.inc 'tsmc025.txt'
.ends nand4

.subckt nor4 A B C D OUT 

xnor20 A B A_or_B nor2
xnor20_inv A_or_B A_or_B A_or_B_inv nand

xnor21 C D C_or_D nor2
xnor21_inv C_or_D C_or_D C_or_D_inv nand

xnor22 A_or_B_inv C_or_D_inv OUT nor2

* VDD and GND
* VDD SUP 0 5V
* VGND GND 0 0V

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

* Subcircuit Definition for Standard Inverter (INV)
.subckt inv_simple A OUT VDD GND
M1 OUT A VDD VDD MODP L=1u W=2u
M2 OUT A GND GND MODN L=1u W=2u
.inc 'tsmc025.txt'
.ends inv_simple

* Subcircuit Definition for Stronger Inverter (INV_STRONG)
.subckt inv_strong A OUT VDD GND
M1 OUT A VDD VDD MODP L=1u W=8u  
M2 OUT A GND GND MODN L=1u W=8u  
.inc 'tsmc025.txt'
.ends inv_strong

* CMOS Buffer using INV and INV_STRONG
.subckt cmos_buffer_cap A OUT VDD GND
* First inverter stage
X1 A mid VDD GND inv_simple

* Capacitor added for timing/filtering between the inverters
* C1 mid mid_cap 10pF

* Second inverter stage with stronger drive capability
X2 mid_cap OUT VDD GND inv_strong
.ends cmos_buffer_cap

