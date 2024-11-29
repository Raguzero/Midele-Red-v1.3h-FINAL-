db DEX_SNOVER ; pokedex id
db 60 ; base hp
db 62 ; base attack
db 50 ; base defense
db 40 ; base speed
db 62 ; base special
db GRASS ; species type 1
db ICE ; species type 2
db 120 ; catch rate
db 131 ; base exp yield
INCBIN "pic/bmon/snover.pic",0,1 ; 77, sprite dimensions
dw SnoverPicFront
dw SnoverPicBack
; attacks known at lvl 0
db LEER
db RAZOR_LEAF
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 1,3,6,8
	tmlearn 9,10,13,14
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50,55
db BANK(SnoverPicFront)
