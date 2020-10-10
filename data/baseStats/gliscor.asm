db DEX_GLISCOR ; pokedex id
db 75 ; base hp
db 95 ; base attack
db 125 ; base defense
db 95 ; base speed
db 45 ; base special
db GROUND ; species type 1
db FLYING ; species type 2
db 30 ; catch rate
db 192 ; base exp yield
INCBIN "pic/bmon/gliscor.pic",0,1 ; 77, sprite dimensions
dw GliscorPicFront
dw GliscorPicBack
; attacks known at lvl 0
db POISON_STING
db HARDEN
db SAND_ATTACK
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,3,6
	tmlearn 9,10,15
	tmlearn 18,20
	tmlearn 26,28,31,32
	tmlearn 34,39
	tmlearn 42,43,44,48
	tmlearn 50,51,54
db BANK(GliscorPicFront)
