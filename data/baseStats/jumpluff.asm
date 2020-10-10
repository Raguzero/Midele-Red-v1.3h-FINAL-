db DEX_JUMPLUFF ; pokedex id
db 75 ; base hp
db 55 ; base attack
db 70 ; base defense
db 110 ; base speed
db 55 ; base special
db GRASS ; species type 1
db FLYING ; species type 2
db 120 ; catch rate
db 136 ; base exp yield
INCBIN "pic/bmon/jumpluff.pic",0,1 ; 66, sprite dimensions
dw JumpluffPicFront
dw JumpluffPicBack
; attacks known at lvl 0
db TACKLE
db SPLASH
db TAIL_WHIP
db ABSORB
db 3 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,15,16
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 33,34
	tmlearn 44
	tmlearn 50,55
db BANK(JumpluffPicFront)
