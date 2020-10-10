db DEX_CAMERUPT ; pokedex id
db 70 ; base hp
db 100 ; base attack
db 70 ; base defense
db 40 ; base speed
db 105 ; base special
db FIRE ; species type 1
db GROUND ; species type 2
db 150 ; catch rate
db 175 ; base exp yield
INCBIN "pic/bmon/camerupt.pic",0,1 ; 55, sprite dimensions
dw CameruptPicFront
dw CameruptPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db FISSURE
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,22
	tmlearn 26,27,28,31,32
	tmlearn 36,38
	tmlearn 44,47,48
	tmlearn 50,54
db BANK(CameruptPicFront)
