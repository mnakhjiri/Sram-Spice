* Row
.subckt row sel_active_low write_active_low clk cell0_in cell1_in cell2_in cell3_in cell4_in cell5_in cell6_in cell7_in cell0_out cell1_out cell2_out cell3_out cell4_out cell5_out cell6_out cell7_out

* cells
x1 cell0_in clk_en cell0_out_line cell 
x2 cell1_in clk_en cell1_out_line cell
x3 cell2_in clk_en cell2_out_line cell
x4 cell3_in clk_en cell3_out_line cell 

x5 cell4_in clk_en cell4_out_line cell 
x6 cell5_in clk_en cell5_out_line cell
x7 cell6_in clk_en cell6_out_line cell
x8 cell7_in clk_en cell7_out_line cell 

* 
xinv0 clk clk_inv inv
xnor00 write_active_low clk_inv write_clk nor2
xinv1 write_clk write_clk_inv inv
xnor01 sel_active_low write_clk_inv clk_en nor2

xinvcell1 cell0_out_line cell0_out_line_inv inv
xinvcell2 cell1_out_line cell1_out_line_inv inv
xinvcell3 cell2_out_line cell2_out_line_inv inv
xinvcell4 cell3_out_line cell3_out_line_inv inv
xinvcell5 cell4_out_line cell4_out_line_inv inv
xinvcell6 cell5_out_line cell5_out_line_inv inv
xinvcell7 cell6_out_line cell6_out_line_inv inv
xinvcell8 cell7_out_line cell7_out_line_inv inv

* outputs
xnor sel_active_low cell0_out_line_inv cell0_out nor2
xnor1 sel_active_low cell1_out_line_inv cell1_out nor2
xnor2 sel_active_low cell2_out_line_inv cell2_out nor2
xnor3 sel_active_low cell3_out_line_inv cell3_out nor2
xnor4 sel_active_low cell4_out_line_inv cell4_out nor2
xnor5 sel_active_low cell5_out_line_inv cell5_out nor2
xnor6 sel_active_low cell6_out_line_inv cell6_out nor2
xnor7 sel_active_low cell7_out_line_inv cell7_out nor2


* TEST
* Va cell0_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
* Vb cell1_in 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vc cell2_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
* Vd cell3_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
* Ve cell4_in 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vf cell5_in 0 PWL(1ps 0v, 9ns 0v, 12ns 0v, 20ns 0v, 23ns 0v)
* Vg cell6_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
* Vh cell7_in 0 PWL(1ps 0v, 9ns 2.5v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)

* Vn clk 0 PWL(1ps 0v, 9ns 0v, 12ns 2.5v, 20ns 2.5v, 23ns 2.5v)
* .TRAN 1PS 30NS


.inc 'Cell.sp'
.inc 'Gates.sp'
.ends