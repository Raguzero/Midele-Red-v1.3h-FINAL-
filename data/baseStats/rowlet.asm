db DEX_ROWLET ; pokedex id
db 68 ; base hp
db 55 ; base attack
db 55 ; base defense
db 42 ; base speed
db 50 ; base special
db GRASS ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 64 ; base exp yield
INCBIN "pic/bmon/rowlet.pic",0,1 ; 77, sprite dimensions
dw RowletPicFront
dw RowletPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10
	tmlearn 20,21,22
	tmlearn 32
	tmlearn 34
	tmlearn 43,44
	tmlearn 50
db BANK(RowletPicFront)
