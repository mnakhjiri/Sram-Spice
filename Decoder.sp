.subckt decoder A B C D Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Y10 Y11 Y12 Y13 Y14 Y15
xnota A nota inv
xnotb B notb inv
xnotc C notc inv
xnotd D notd inv

xy0 nota notb notc notd Y0 nand4
xy1 nota notb notc D Y1 nand4
xy2 nota notb C notd Y2 nand4
xy3 nota notb C D Y3 nand4

xy4 nota B notc notd Y4 nand4
xy5 nota B notc D Y5 nand4
xy6 nota B C notd Y6 nand4
xy7 nota B C D Y7 nand4

xy8 A notb notc notd Y8 nand4
xy9 A notb notc D Y9 nand4
xy10 A notb C notd Y10 nand4
xy11 A notb C D Y11 nand4

xy12 A B notc notd Y12 nand4
xy13 A B notc D Y13 nand4
xy14 A B C notd Y14 nand4
xy15 A B C D Y15 nand4


.inc 'Gates.sp'
.ends decoder



.subckt decoder24 A B enable Y0 Y1 Y2 Y3
xnanda A enable outnanda nand
xnandb B enable outnandb nand
xnandc outnanda outnanda outnandc nand 
xnandd outnandb outnandb outnandd nand
xnand0 outnanda outnandb outnand0 nand 
xnand1 outnandb outnandc outnand1 nand
xnand2 outnandd outnanda outnand2 nand
xnand3 outnandc outnandd outnand3 nand
xnand4 outnand0 outnand0 Y0_temp nand
xnand40 Y0_temp enable Y0_inv nand
xnand5 Y0_inv Y0_inv Y0 nand 
xnand6 outnand1 outnand1 Y1 nand
xnand7 outnand2 outnand2 Y2 nand
xnand8 outnand3 outnand3 Y3 nand

.inc 'Gates.sp'
.ends decoder24


.subckt decoder16 A B C D enable Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Y10 Y11 Y12 Y13 Y14 Y15
xdecoder0 B A enable enable0 enable1 enable2 enable3 decoder24
xdecoder1 D C enable0 Y0 Y1 Y2 Y3 decoder24
xdecoder2 D C enable1 Y4 Y5 Y6 Y7 decoder24
xdecoder3 D C enable2 Y8 Y9 Y10 Y11 decoder24
xdecoder4 D C enable3 Y12 Y13 Y14 Y15 decoder24
.inc 'Gates.sp'
.inc 'Amps.sp'
.ends decoder16

* .subckt decoder16 A B enable Y0 Y1 Y2 Y3
* xnanda A enable outnanda nand
* xnandb B enable outnandb nand
* xnandc outnanda outnanda outnandc nand 
* xnandd outnandb outnandb outnandd nand
* xnand0 outnanda outnandb outnand0 nand 
* xnand1 outnandb outnandc outnand1 nand
* xnand2 outnandd outnanda outnand2 nand
* xnand3 outnandc outnandd outnand3 nand
* xnand4 outnand0 outnand0 Y0_temp nand
* xnand40 Y0_temp enable Y0_inv nand
* xnand4 Y0_inv Y0_inv Y0 nand 
* xnand5 outnand1 outnand1 Y1 nand
* xnand6 outnand2 outnand2 Y2 nand
* xnand7 outnand3 outnand3 Y3 nand

* .inc 'Gates.sp'
* .ends decoder16