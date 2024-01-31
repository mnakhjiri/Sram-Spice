***************************************
***************** amp ***************
***************************************

.subckt amp A OUT 
* Mosfets
x1 A A_inv inv
x2 A_inv OUT inv64
.inc 'Gates.sp'
.ends amp


.subckt amp2 A o0 o1 

amp1 A o0 amp
amp2 A o1 amp

.ends amp2

.subckt amp4 A o0 o1 o2 o3 

amp1 A o0 o1 amp2
amp2 A o2 o3 amp2

.ends amp4

.subckt amp8 A o0 o1 o2 o3 o4 o5 o6 o7  

amp1 A o0 o1 o2 o3 amp4
amp2 A o4 o5 o6 o7 amp4

.ends amp8


.subckt amp16 A o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 

amp1 A o0 o1 o2 o3 o4 o5 o6 o7 amp8
amp2 A o8 o9 o10 o11 o12 o13 o14 o15 amp8

.ends amp16

