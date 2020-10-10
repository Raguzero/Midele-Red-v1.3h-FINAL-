db DEX_AURORUS ; pokedex id
db 123 ; base hp
db 77 ; base attack
db 72 ; base defense
db 58 ; base speed
db 99 ; base special
db ROCK ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 104 ; base exp yield
INCBIN "pic/bmon/aurorus.pic",0,1 ; 66, sprite dimensions
dw AurorusPicFront
dw AurorusPicBack
; attacks known at lvl 0
db AURORA_BEAM
db GROWL
db ROCK_THROW
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 20,24
	tmlearn 25,26,29,31,32
	tmlearn 33,34
	tmlearn 42,44,45,48
	tmlearn 50,55
db BANK(AurorusPicFront)
