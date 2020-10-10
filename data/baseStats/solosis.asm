db DEX_SOLOSIS ; pokedex id
db 45 ; base hp
db 30 ; base attack
db 40 ; base defense
db 20 ; base speed
db 105 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 200 ; catch rate
db 58 ; base exp yield
INCBIN "pic/bmon/solosis.pic",0,1 ; 55, sprite dimensions
dw SolosisPicFront
dw SolosisPicBack
; attacks known at lvl 0
db PSYWAVE
db 0
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 0
	tmlearn 20
	tmlearn 25,29,31,32
	tmlearn 33,34
	tmlearn 42,44,45,46,47,48
	tmlearn 50,55
db BANK(SolosisPicFront)
