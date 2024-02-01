
xsram1 write clk enableout A0 A1 A2 A3 I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 sram
Vaenableout enableout 0 PULSE(5v 5v 0 0.1ps 0.1ps 100ns 100ns) 
Va0 A0 0 PULSE(5v 5v 0 0.1ps 0.1ps 100ns 110ns) 
Va1 A1 0 PULSE(5v 5v 0 0.1ps 0.1ps 100ns 110ns) 
Va2 A2 0 PULSE(0v 0v 0 0.1ps 0.1ps 100ns 110ns) 
Va3 A3 0 PULSE(0v 0v 0 0.1ps 0.1ps 100ns 110ns) 
Vwrite write 0 PULSE(5v 0v 0 0.1ps 0.1ps 25ns 50ns)

* for measuring the delay
* Vwrite write 0 PULSE(5v 5v 0 0.1ps 0.1ps 25ns 50ns)
* Vi0 I0 0 PWL(1ps 0v,19.9ns 0v , 20ns 5v, 45ns 5v, 45.1ns 0v, 100ns 0v)
* Vi7 I7 0 PWL(1ps 0v,74.9ns 0v , 75ns 5v, 110ns 5v, 200ns 5v)
* .MEASURE tpdf TRIG V(I0) VAL=1.73.3V RISE=1 TARG V(O0) VAL=1.73.3V FALL=1
* .MEASURE tpdr TRIG V(I0) VAL=1.73.3V FALL=1 TARG V(O0) VAL=1.73.3V RISE=1
* .MEASURE td param='tpdr+tpdf/2'

Vi0 I0 0 PWL(1ps 0v,19.9ns 0v , 20ns 5v, 45ns 5v, 45.1ns 0v, 100ns 0v)
Vi7 I7 0 PWL(1ps 0v,74.9ns 0v , 75ns 5v, 110ns 5v, 200ns 5v)

Vclk clk 0 PULSE(5v 0v 0 0.1ps 0.1ps 10ns 20ns) 

.TRAN 1PS 150NS
.inc 'Sram.sp'
.inc 'Gates.sp'
.end