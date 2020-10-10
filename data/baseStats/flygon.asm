db DEX_FLYGON ; pokedex id
db 80 ; base hp
db 100 ; base attack
db 80 ; base defense
db 100 ; base speed
db 80 ; base special
db GROUND ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 197 ; base exp yield
INCBIN "pic/bmon/flygon.pic",0,1 ; 66, sprite dimensions
dw FlygonPicFront
dw FlygonPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db SAND_ATTACK
db SONICBOOM
db BIDE
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,22,23
	tmlearn 26,27,28,31,32
	tmlearn 34,38
	tmlearn 44,48
	tmlearn 50,52,54
db BANK(FlygonPicFront)
