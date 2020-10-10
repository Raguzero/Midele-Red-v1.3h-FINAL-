db DEX_CARVANHA ; pokedex id
db 45 ; base hp
db 90 ; base attack
db 20 ; base defense
db 65 ; base speed
db 65 ; base special
db WATER ; species type 1
db DARK ; species type 2
db 225 ; catch rate
db 88 ; base exp yield
INCBIN "pic/bmon/carvanha.pic",0,1 ; 55, sprite dimensions
dw CarvanhaPicFront
dw CarvanhaPicBack
; attacks known at lvl 0
db BITE
db LEER
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,11,12,13,14
	tmlearn 20
	tmlearn 31,32
	tmlearn 34,39
	tmlearn 44
	tmlearn 50,53
db BANK(CarvanhaPicFront)
