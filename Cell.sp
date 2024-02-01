.subckt cell D E OUT 
* D Latch cell

*‌ Nands
x1 D E out1 nand
x2 D D d_inv nand
x3 E d_inv out2 nand
x4 out1 OUT_inv OUT nand
x5 out2 OUT OUT_inv nand

.inc 'Gates.sp'
.ends