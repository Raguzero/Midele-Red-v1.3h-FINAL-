db DEX_DRAPION ; pokedex id
db 70 ; base hp
db 90 ; base attack
db 110 ; base defense
db 95 ; base speed
db 75 ; base special
db POISON ; species type 1
db DARK ; species type 2
db 45 ; catch rate
db 204 ; base exp yield
INCBIN "pic/bmon/drapion.pic",0,1 ; 55, sprite dimensions
dw DrapionPicFront
dw DrapionPicBack
; attacks known at lvl 0
db POISON_STING
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 3,4,6
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 26,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,51,54,55
db BANK(DrapionPicFront)
