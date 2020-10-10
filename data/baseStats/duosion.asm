db DEX_DUOSION ; pokedex id
db 65 ; base hp
db 40 ; base attack
db 50 ; base defense
db 30 ; base speed
db 125 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 100 ; catch rate
db 130 ; base exp yield
INCBIN "pic/bmon/duosion.pic",0,1 ; 66, sprite dimensions
dw DuosionPicFront
dw DuosionPicBack
; attacks known at lvl 0
db PSYWAVE
db REFLECT
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
db BANK(DuosionPicFront)
