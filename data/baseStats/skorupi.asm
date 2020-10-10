db DEX_SKORUPI ; pokedex id
db 40 ; base hp
db 50 ; base attack
db 90 ; base defense
db 65 ; base speed
db 55 ; base special
db POISON ; species type 1
db BUG ; species type 2
db 120 ; catch rate
db 114 ; base exp yield
INCBIN "pic/bmon/skorupi.pic",0,1 ; 55, sprite dimensions
dw SkorupiPicFront
dw SkorupiPicBack
; attacks known at lvl 0
db POISON_STING
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 3,4,6
	tmlearn 9,10
	tmlearn 20
	tmlearn 28,31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50,51,54,55
db BANK(SkorupiPicFront)
