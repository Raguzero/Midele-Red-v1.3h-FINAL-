db DEX_GLIGAR ; pokedex id
db 65 ; base hp
db 75 ; base attack
db 105 ; base defense
db 85 ; base speed
db 35 ; base special
db GROUND ; species type 1
db FLYING ; species type 2
db 60 ; catch rate
db 108 ; base exp yield
INCBIN "pic/bmon/gligar.pic",0,1 ; 77, sprite dimensions
dw GligarPicFront
dw GligarPicBack
; attacks known at lvl 0
db POISON_STING
db HARDEN
db SAND_ATTACK
db 0
db 3 ; growth rate
; learnset
	tmlearn 2,3,6
	tmlearn 9,10
	tmlearn 18,20
	tmlearn 26,28,31,32
	tmlearn 34,39
	tmlearn 42,43,44,48
	tmlearn 50,51,54
db BANK(GligarPicFront)
