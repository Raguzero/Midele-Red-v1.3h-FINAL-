db DEX_WEAVILE ; pokedex id
db 70 ; base hp
db 120 ; base attack
db 65 ; base defense
db 125 ; base speed
db 85 ; base special
db DARK ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 199 ; base exp yield
INCBIN "pic/bmon/weavile.pic",0,1 ; 77, sprite dimensions
dw WeavilePicFront
dw WeavilePicBack
; attacks known at lvl 0
db SCRATCH
db LEER
db QUICK_ATTACK
db FURY_SWIPES
db 3 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,13,14,15,16
	tmlearn 18,20
	tmlearn 28,31,32
	tmlearn 33,34,39
	tmlearn 44
	tmlearn 50,51,53,54
db BANK(WeavilePicFront)
