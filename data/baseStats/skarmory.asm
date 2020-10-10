db DEX_SKARMORY ; pokedex id
db 65 ; base hp
db 80 ; base attack
db 140 ; base defense
db 70 ; base speed
db 70 ; base special
db STEEL ; species type 1
db FLYING ; species type 2
db 25 ; catch rate
db 168 ; base exp yield
INCBIN "pic/bmon/skarmory.pic",0,1 ; 77, sprite dimensions
dw SkarmoryPicFront
dw SkarmoryPicBack
; attacks known at lvl 0
db PECK
db LEER
db SAND_ATTACK
db FURY_ATTACK
db 5 ; growth rate
; learnset
	tmlearn 3,4,6
	tmlearn 9,10,15
	tmlearn 18,20
	tmlearn 31,32
	tmlearn 34,39
	tmlearn 43,44,48
	tmlearn 50,51,52,55
db BANK(SkarmoryPicFront)
