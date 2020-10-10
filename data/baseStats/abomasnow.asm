db DEX_ABOMASNOW ; pokedex id
db 90 ; base hp
db 92 ; base attack
db 75 ; base defense
db 60 ; base speed
db 92 ; base special
db GRASS ; species type 1
db ICE ; species type 2
db 60 ; catch rate
db 214 ; base exp yield
INCBIN "pic/bmon/abomasnow.pic",0,1 ; 77, sprite dimensions
dw AbomasnowPicFront
dw AbomasnowPicBack
; attacks known at lvl 0
db RAZOR_LEAF
db LEER
db ICE_PUNCH
db 0
db 5 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,13,14,15
	tmlearn 20,21,22
	tmlearn 26,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,54,55
db BANK(AbomasnowPicFront)
