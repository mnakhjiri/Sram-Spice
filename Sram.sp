.subckt sram write clk enableout A B C D I0 I1 I2 I3 I4 I5 I6 I7 O0 O1 O2 O3 O4 O5 O6 O7

* Rows
x0 sel_x0 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_0 O1_0 O2_0 O3_0 O4_0 O5_0 O6_0 O7_0 row
x1 sel_x1 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_1 O1_1 O2_1 O3_1 O4_1 O5_1 O6_1 O7_1 row
x2 sel_x2 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_2 O1_2 O2_2 O3_2 O4_2 O5_2 O6_2 O7_2 row
x3 sel_x3 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_3 O1_3 O2_3 O3_3 O4_3 O5_3 O6_3 O7_3 row
x4 sel_x4 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_4 O1_4 O2_4 O3_4 O4_4 O5_4 O6_4 O7_4 row
x5 sel_x5 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_5 O1_5 O2_5 O3_5 O4_5 O5_5 O6_5 O7_5 row
x6 sel_x6 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_6 O1_6 O2_6 O3_6 O4_6 O5_6 O6_6 O7_6 row
x7 sel_x7 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_7 O1_7 O2_7 O3_7 O4_7 O5_7 O6_7 O7_7 row
x8 sel_x8 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_8 O1_8 O2_8 O3_8 O4_8 O5_8 O6_8 O7_8 row
x9 sel_x9 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_9 O1_9 O2_9 O3_9 O4_9 O5_9 O6_9 O7_9 row
x10 sel_x10 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_10 O1_10 O2_10 O3_10 O4_10 O5_10 O6_10 O7_10 row
x11 sel_x11 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_11 O1_11 O2_11 O3_11 O4_11 O5_11 O6_11 O7_11 row
x12 sel_x12 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_12 O1_12 O2_12 O3_12 O4_12 O5_12 O6_12 O7_12 row
x13 sel_x13 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_13 O1_13 O2_13 O3_13 O4_13 O5_13 O6_13 O7_13 row
x14 sel_x14 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_14 O1_14 O2_14 O3_14 O4_14 O5_14 O6_14 O7_14 row
x15 sel_x15 write clk I0 I1 I2 I3 I4 I5 I6 I7 O0_15 O1_15 O2_15 O3_15 O4_15 O5_15 O6_15 O7_15 row


* Decoder
xd A B C D enableout sel_x0 sel_x1 sel_x2 sel_x3 sel_x4 sel_x5 sel_x6 sel_x7 sel_x8 sel_x9 sel_x10 sel_x11 sel_x12 sel_x13 sel_x14 sel_x15 decoder16


* nor gates
xnor160 O0_0 O0_1 O0_2 O0_3 O0_4 O0_5 O0_6 O0_7 O0_8 O0_9 O0_10 O0_11 O0_12 O0_13 O0_14 O0_15 O0_inv nor16
xnand01 O0_inv O0_inv O0 nand
xnor161 O1_0 O1_1 O1_2 O1_3 O1_4 O1_5 O1_6 O1_7 O1_8 O1_9 O1_10 O1_11 O1_12 O1_13 O1_14 O1_15 O1_inv nor16
xnand12 O1_inv O1_inv O1 nand
xnor162 O2_0 O2_1 O2_2 O2_3 O2_4 O2_5 O2_6 O2_7 O2_8 O2_9 O2_10 O2_11 O2_12 O2_13 O2_14 O2_15 O2_inv nor16
xnand23 O2_inv O2_inv O2 nand
xnor163 O3_0 O3_1 O3_2 O3_3 O3_4 O3_5 O3_6 O3_7 O3_8 O3_9 O3_10 O3_11 O3_12 O3_13 O3_14 O3_15 O3_inv nor16
xnand34 O3_inv O3_inv O3 nand
xnor164 O4_0 O4_1 O4_2 O4_3 O4_4 O4_5 O4_6 O4_7 O4_8 O4_9 O4_10 O4_11 O4_12 O4_13 O4_14 O4_15 O4_inv nor16
xnand45 O4_inv O4_inv O4 nand
xnor165 O5_0 O5_1 O5_2 O5_3 O5_4 O5_5 O5_6 O5_7 O5_8 O5_9 O5_10 O5_11 O5_12 O5_13 O5_14 O5_15 O5_inv nor16
xnand56 O5_inv O5_inv O5 nand
xnor166 O6_0 O6_1 O6_2 O6_3 O6_4 O6_5 O6_6 O6_7 O6_8 O6_9 O6_10 O6_11 O6_12 O6_13 O6_14 O6_15 O6_inv nor16
xnand67 O6_inv O6_inv O6 nand
xnor167 O7_0 O7_1 O7_2 O7_3 O7_4 O7_5 O7_6 O7_7 O7_8 O7_9 O7_10 O7_11 O7_12 O7_13 O7_14 O7_15 O7_inv nor16
xnand78 O7_inv O7_inv O7 nand


.inc 'Row.sp'
.inc 'Decoder.sp'
.inc 'Gates.sp'
.inc 'Cell.sp'
.ends