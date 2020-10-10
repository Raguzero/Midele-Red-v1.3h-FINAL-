db DEX_DECIDUEYE ; pokedex id
db 78 ; base hp
db 107 ; base attack
db 75 ; base defense
db 70 ; base speed
db 100 ; base special
db GRASS ; species type 1
db GHOST ; species type 2
db 45 ; catch rate
db 239 ; base exp yield
INCBIN "pic/bmon/decidueye.pic",0,1 ; 77, sprite dimensions
dw DecidueyePicFront
dw DecidueyePicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db PECK
db MEGA_DRAIN
db 3 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 32
	tmlearn 34
	tmlearn 43,44
	tmlearn 50
db BANK(DecidueyePicFront)
