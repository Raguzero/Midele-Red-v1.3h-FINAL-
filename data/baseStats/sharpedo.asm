db DEX_SHARPEDO ; pokedex id
db 70 ; base hp
db 120 ; base attack
db 40 ; base defense
db 95 ; base speed
db 95 ; base special
db WATER ; species type 1
db DARK ; species type 2
db 60 ; catch rate
db 175 ; base exp yield
INCBIN "pic/bmon/sharpedo.pic",0,1 ; 55, sprite dimensions
dw SharpedoPicFront
dw SharpedoPicBack
; attacks known at lvl 0
db BITE
db LEER
db RAGE
db FOCUS_ENERGY
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,11,12,13,14
	tmlearn 15,20
	tmlearn 26,31,32
	tmlearn 34,39,40
	tmlearn 44
	tmlearn 50,53,54
db BANK(SharpedoPicFront)
