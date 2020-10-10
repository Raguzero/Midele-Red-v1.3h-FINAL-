db DEX_HONCHKROW ; pokedex id
db 100 ; base hp
db 125 ; base attack
db 52 ; base defense
db 71 ; base speed
db 105 ; base special
db DARK ; species type 1
db FLYING ; species type 2
db 30 ; catch rate
db 187 ; base exp yield
INCBIN "pic/bmon/honchkrow.pic",0,1 ; 66, sprite dimensions
dw HonchkrowPicFront
dw HonchkrowPicBack
; attacks known at lvl 0
db PECK
db HAZE
db WING_ATTACK
db 0
db 3 ; growth rate
; learnset
	tmlearn 4,6
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 29,31,32
	tmlearn 34,39
	tmlearn 42,43,44,45
	tmlearn 50,52
db BANK(HonchkrowPicFront)
