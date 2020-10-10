db DEX_LOTAD ; pokedex id
db 35 ; base hp
db 100 ; base attack
db 50 ; base defense
db 120 ; base speed
db 70 ; base special
db WATER ; species type 1
db GRASS ; species type 2
db 50 ; catch rate
db 153 ; base exp yield
INCBIN "pic/bmon/lotad.pic",0,1 ; 66, sprite dimensions
dw LotadPicFront
dw LotadPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db DIG
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 26,27,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 49,50,51
db BANK(LotadPicFront)
