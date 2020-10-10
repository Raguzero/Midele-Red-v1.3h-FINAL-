db DEX_ZOROARK ; pokedex id
db 60 ; base hp
db 105 ; base attack
db 60 ; base defense
db 105 ; base speed
db 120 ; base special
db DARK ; species type 1
db DARK ; species type 2
db 45 ; catch rate
db 179 ; base exp yield
INCBIN "pic/bmon/zoroark.pic",0,1 ; sprite dimensions
dw ZoroarkPicFront
dw ZoroarkPicBack
; attacks known at lvl 0
db SCRATCH
db LEER
db FURY_SWIPES
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15
	tmlearn 18,20
	tmlearn 28,31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50,51
db BANK(ZoroarkPicFront)
