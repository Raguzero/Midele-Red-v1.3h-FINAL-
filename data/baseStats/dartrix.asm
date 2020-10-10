db DEX_DARTRIX ; pokedex id
db 78 ; base hp
db 75 ; base attack
db 75 ; base defense
db 52 ; base speed
db 70 ; base special
db GRASS ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 147 ; base exp yield
INCBIN "pic/bmon/dartrix.pic",0,1 ; 77, sprite dimensions
dw DartrixPicFront
dw DartrixPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db PECK
db MEGA_DRAIN
db 3 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10
	tmlearn 20,21,22
	tmlearn 32
	tmlearn 34
	tmlearn 43,44
	tmlearn 50
db BANK(DartrixPicFront)
