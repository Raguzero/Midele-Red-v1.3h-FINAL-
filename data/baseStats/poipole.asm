db DEX_POIPOLE ; pokedex id
db 67 ; base hp
db 73 ; base attack
db 67 ; base defense
db 73 ; base speed
db 73 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 189 ; base exp yield
INCBIN "pic/bmon/poipole.pic",0,1 ; 55, sprite dimensions
dw PoipolePicFront
dw PoipolePicBack
; attacks known at lvl 0
db PECK
db GROWL
db ACID
db 0
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10
	tmlearn 20
	tmlearn 31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50
db BANK(PoipolePicFront)
