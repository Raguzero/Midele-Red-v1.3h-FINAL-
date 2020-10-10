db DEX_DARK_PIKA ; pokedex id
db 45 ; base hp
db 80 ; base attack
db 50 ; base defense
db 120 ; base speed
db 75 ; base special
db ELECTRIC ; species type 1
db DARK ; species type 2
db 3 ; catch rate
db 182 ; base exp yield
INCBIN "pic/bmon/darkpika.pic",0,1 ; 55, sprite dimensions
dw Dark_PikaPicFront
dw Dark_PikaPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db LEER
db RAGE
db 0
db 5 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,16
	tmlearn 17,19,20,24
	tmlearn 25,31,32
	tmlearn 33,34,39,40
	tmlearn 44,45
	tmlearn 50,52,53,55
db BANK(Dark_PikaPicFront)
