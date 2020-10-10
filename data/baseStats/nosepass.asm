db DEX_NOSEPASS ; pokedex id
db 30 ; base hp
db 45 ; base attack
db 135 ; base defense
db 30 ; base speed
db 90 ; base special
db ROCK ; species type 1
db ROCK ; species type 2
db 255 ; catch rate
db 108 ; base exp yield
INCBIN "pic/bmon/nosepass.pic",0,1 ; 77, sprite dimensions
dw NosepassPicFront
dw NosepassPicBack
; attacks known at lvl 0
db TACKLE
db HARDEN
db SELFDESTRUCT
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20,24,25,26,27
	tmlearn 31,32
	tmlearn 34,36
	tmlearn 44,45,47,48
	tmlearn 50,54
db BANK(NosepassPicFront)