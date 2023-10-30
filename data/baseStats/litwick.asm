db DEX_LITWICK ; pokedex id
db 50 ; base hp
db 30 ; base attack
db 55 ; base defense
db 20 ; base speed
db 65 ; base special
db GHOST ; species type 1
db FIRE ; species type 2
db 190 ; catch rate
db 55 ; base exp yield
INCBIN "pic/bmon/litwick.pic",0,1 ; sprite dimensions
dw LitwickPicFront
dw LitwickPicBack
; attacks known at lvl 0
db EMBER
db SMOG
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 0
	tmlearn 20,22
	tmlearn 29,31,32
	tmlearn 34,38
	tmlearn 42,44
	tmlearn 50,55
db BANK(LitwickPicFront)
