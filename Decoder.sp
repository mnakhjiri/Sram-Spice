.subckt decoder A B C D Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Y10 Y11 Y12 Y13 Y14 Y15
xnota A nota inverter
xnotb B notb inverter
xnotc C notc inverter
xnotd D notd inverter

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
.ends