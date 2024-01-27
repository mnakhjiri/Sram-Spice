.subckt cell D E OUT 
* D Latch cell

*‌ Nands
x1 D E out1 nand
x2 out1 E out2 nand
x3 out1 outp out nand
x4 out out2 outp nand



* TEST
* Va D 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v, 25ns 0v, 30ns 0v, 35ns 0v, 40ns 0v)
* Vb E 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 2.5v, 23ns 2.5v, 25ns 0v, 30ns 0v, 35ns 2.5v, 40ns 2.5v)
* .TRAN 1PS 40NS

.inc 'Gates.sp'
.ends