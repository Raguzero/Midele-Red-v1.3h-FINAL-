db DEX_SWAMPERT ; pokedex id
db 100 ; base hp
db 110 ; base attack
db 90 ; base defense
db 60 ; base speed
db 90 ; base special
db WATER ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 210 ; base exp yield
INCBIN "pic/bmon/swampert.pic",0,1 ; sprite dimensions
dw SwampertPicFront
dw SwampertPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db WATER_GUN
db BIDE
db 3 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 18,19,20
	tmlearn 25,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,53,54
db BANK(SwampertPicFront)
