db DEX_AMAURA ; pokedex id
db 77 ; base hp
db 59 ; base attack
db 50 ; base defense
db 46 ; base speed
db 67 ; base special
db ROCK ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 72 ; base exp yield
INCBIN "pic/bmon/amaura.pic",0,1 ; 66, sprite dimensions
dw AmauraPicFront
dw AmauraPicBack
; attacks known at lvl 0
db GROWL
db ROCK_THROW
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 20,24
	tmlearn 31,32
	tmlearn 33,34
	tmlearn 42,44,45,48
	tmlearn 50,55
db BANK(AmauraPicFront)
