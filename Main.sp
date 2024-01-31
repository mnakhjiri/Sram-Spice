
xsram1 write clk enableout A0 A1 A2 A3 I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 sram

Vaenableout enableout 0 PULSE(5v 5v 0 0.1ps 0.1ps 100ns 100ns) 
Va0 A0 0 PULSE(5v 5v 0 0.1ps 0.1ps 100ns 110ns) 
Va1 A1 0 PULSE(5v 5v 0 0.1ps 0.1ps 100ns 110ns) 
Va2 A2 0 PULSE(0v 0v 0 0.1ps 0.1ps 100ns 110ns) 
Va3 A3 0 PULSE(0v 0v 0 0.1ps 0.1ps 100ns 110ns) 
Vwrite write 0 PULSE(5v 0v 0 0.1ps 0.1ps 25ns 50ns)

Vi0 I0 0 PWL(1ps 0v,19.9ns 0v , 20ns 5v, 45ns 5v, 45.1ns 0v, 100ns 0v)
Vi7 I7 0 PWL(1ps 0v,74.9ns 0v , 75ns 5v, 110ns 5v, 200ns 5v)


* Va A 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vb B 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
* Vc C 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vd D 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
* Ve write 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
* * Vtest write_cell 0 PWL(1ps 0v, 9ns 0v, 12ns 5v, 20ns 5v, 23ns 5v)
* Vf I0 0 PWL(1ps 5v, 9ns 0v, 12ns 0v, 20ns 5v, 23ns 5v)
* Vg I1 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
* Vh I2 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vi I3 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vj I4 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
* Vk I5 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vl I6 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
* Vm I7 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vz enable_dec 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)


* clk with period 10ns
Vclk clk 0 PULSE(0v 5v 0 0.1ps 0.1ps 10ns 20ns) 
.TRAN 1PS 150NS
.inc 'Sram.sp'
.inc 'Gates.sp'
.inc 'Amps.sp'
.end