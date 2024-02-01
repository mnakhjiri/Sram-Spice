* Row
.subckt row sel write clk cell0_in cell1_in cell2_in cell3_in cell4_in cell5_in cell6_in cell7_in cell0_out cell1_out cell2_out cell3_out cell4_out cell5_out cell6_out cell7_out

* cells
x1 cell0_in clk_en cell0_out_line cell 
x2 cell1_in clk_en cell1_out_line cell
x3 cell2_in clk_en cell2_out_line cell
x4 cell3_in clk_en cell3_out_line cell 

x5 cell4_in clk_en cell4_out_line cell 
x6 cell5_in clk_en cell5_out_line cell
x7 cell6_in clk_en cell6_out_line cell
x8 cell7_in clk_en cell7_out_line cell 

* gates
xnand0 sel clk write clk_en_inv nand3
xnand2 clk_en_inv clk_en_inv clk_en nand
xnand4 sel cell0_out_line cell0_out_inv nand
xnand5 cell0_out_inv cell0_out_inv cell0_out nand
xnand6 sel cell1_out_line cell1_out_inv nand
xnand7 cell1_out_inv cell1_out_inv cell1_out nand
xnand8 sel cell2_out_line cell2_out_inv nand
xnand9 cell2_out_inv cell2_out_inv cell2_out nand
xnand10 sel cell3_out_line cell3_out_inv nand
xnand11 cell3_out_inv cell3_out_inv cell3_out nand
xnand12 sel cell4_out_line cell4_out_inv nand
xnand13 cell4_out_inv cell4_out_inv cell4_out nand
xnand14 sel cell5_out_line cell5_out_inv nand
xnand15 cell5_out_inv cell5_out_inv cell5_out nand
xnand16 sel cell6_out_line cell6_out_inv nand
xnand17 cell6_out_inv cell6_out_inv cell6_out nand
xnand18 sel cell7_out_line cell7_out_inv nand
xnand19 cell7_out_inv cell7_out_inv cell7_out nand


.inc 'Cell.sp'
.inc 'Gates.sp'
.ends