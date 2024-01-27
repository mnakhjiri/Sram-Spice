* Row

* cells
x1 cell0_in clk cell0_out cell 
x2 cell1_in clk cell1_out cell
x3 cell2_in clk cell2_out cell
x4 cell3_in clk cell3_out cell 

x5 cell4_in clk cell4_out cell 
x6 cell5_in clk cell5_out cell
x7 cell6_in clk cell6_out cell
x8 cell7_in clk cell7_out cell 

* TEST
Va cell0_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
Vb cell1_in 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vc cell2_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
Vd cell3_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
Ve cell4_in 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vf cell5_in 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
Vg cell6_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
Vh cell7_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)

Vn clk 0 PWL(1ps 0v, 9ns 0v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
.TRAN 1PS 30NS


.inc 'Cell.sp'
.end