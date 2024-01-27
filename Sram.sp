* Row

x0 sel_x0 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x1 sel_x1 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x2 sel_x2 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x3 sel_x3 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x4 sel_x4 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x5 sel_x5 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x6 sel_x6 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x7 sel_x7 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x8 sel_x8 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x9 sel_x9 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x10 sel_x10 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x11 sel_x11 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x12 sel_x12 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x13 sel_x13 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x14 sel_x14 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 row
x15 sel_x15 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7 Row

xd A B C D sel_x0 sel_x1 sel_x2 sel_x3 sel_x4 sel_x5 sel_x6 sel_x7 sel_x8 sel_x9 sel_x10 sel_x11 sel_x12 sel_x13 sel_x14 sel_x15 decoder



* TEST
Va A 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vb B 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
Vc C 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vd D 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Ve write 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
Vf I0 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vg I1 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
Vh I2 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vi I3 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vj I4 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
Vk I5 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vl I6 0 PWL(1ps 5v, 9ns 5v, 12ns 5v, 20ns 5v, 23ns 5v)
Vm I7 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)


Vn clk 0 PWL(1ps 0v, 9ns 0v, 12ns 5v, 20ns 5v, 23ns 5v)
.TRAN 1PS 30NS


.inc 'Row.sp'
.inc 'Decoder.sp'
.end