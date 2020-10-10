db DEX_ALTARIA ; pokedex id
db 75 ; base hp
db 70 ; base attack
db 90 ; base defense
db 80 ; base speed
db 105 ; base special
db DRAGON ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 188 ; base exp yield
INCBIN "pic/bmon/altaria.pic",0,1 ; sprite dimensions
dw AltariaPicFront
dw AltariaPicBack
; attacks known at lvl 0
db PECK
db GROWL
db SING
db SKY_ATTACK
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 10,13,15
	tmlearn 20,22,23
	tmlearn 26,31,32
	tmlearn 34,38,39
	tmlearn 42,43,44
	tmlearn 50,52
db BANK(AltariaPicFront)
