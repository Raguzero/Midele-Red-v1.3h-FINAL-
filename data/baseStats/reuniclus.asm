db DEX_REUNICLUS ; pokedex id
db 110 ; base hp
db 65 ; base attack
db 75 ; base defense
db 30 ; base speed
db 125 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 50 ; catch rate
db 221 ; base exp yield
INCBIN "pic/bmon/reuniclus.pic",0,1 ; 77, sprite dimensions
dw ReuniclusPicFront
dw ReuniclusPicBack
; attacks known at lvl 0
db PSYWAVE
db REFLECT
db DIZZY_PUNCH
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 15
	tmlearn 20
	tmlearn 25,29,31,32
	tmlearn 33,34
	tmlearn 42,44,45,46,47,48
	tmlearn 50,54,55
db BANK(ReuniclusPicFront)
