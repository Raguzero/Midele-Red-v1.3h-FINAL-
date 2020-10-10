db DEX_GLACEON ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 110 ; base defense
db 65 ; base speed
db 130 ; base special
db ICE ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 196 ; base exp yield
INCBIN "pic/bmon/glaceon.pic",0,1 ; 66, sprite dimensions
dw GlaceonPicFront
dw GlaceonPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db QUICK_ATTACK
db SWIFT
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,34,39,40
	tmlearn 44
	tmlearn 50,54
db BANK(GlaceonPicFront)
