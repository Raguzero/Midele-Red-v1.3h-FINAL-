db DEX_BELDUM ; pokedex id
db 40 ; base hp
db 55 ; base attack
db 80 ; base defense
db 30 ; base speed
db 35 ; base special
db STEEL ; species type 1
db PSYCHIC ; species type 2
db 200 ; catch rate
db 73 ; base exp yield
INCBIN "pic/bmon/beldum.pic",0,1 ; 55, sprite dimensions
dw BeldumPicFront
dw BeldumPicBack
; attacks known at lvl 0
db PSYWAVE
db 0
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 46
	tmlearn 0
db BANK(BeldumPicFront)
