db DEX_EELEKTROSS ; pokedex id
db 85 ; base hp
db 115 ; base attack
db 80 ; base defense
db 50 ; base speed
db 105 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 30 ; catch rate
db 232 ; base exp yield
INCBIN "pic/bmon/eelektross.pic",0,1 ; 55, sprite dimensions
dw EelektrossPicFront
dw EelektrossPicBack
; attacks known at lvl 0
db HEADBUTT
db THUNDER_WAVE
db THUNDERSHOCK
db CRUNCH
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,21,24
	tmlearn 25,26,31,32
	tmlearn 34
	tmlearn 44,45,48
	tmlearn 50,51,54,55
db BANK(EelektrossPicFront)
