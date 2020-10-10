db DEX_CHANDELURE ; pokedex id
db 60 ; base hp
db 55 ; base attack
db 90 ; base defense
db 80 ; base speed
db 145 ; base special
db GHOST ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 234 ; base exp yield
INCBIN "pic/bmon/chandelure.pic",0,1 ; sprite dimensions
dw ChandelurePicFront
dw ChandelurePicBack
; attacks known at lvl 0
db EMBER
db CONFUSE_RAY
db NIGHT_SHADE
db 0
db 3 ; growth rate
; learnset
	tmlearn 6
	tmlearn 15
	tmlearn 20,22
	tmlearn 29,31,32
	tmlearn 34,38
	tmlearn 42,44
	tmlearn 50,55
db BANK(ChandelurePicFront)
