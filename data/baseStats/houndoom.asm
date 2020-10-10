db DEX_HOUNDOOM ; pokedex id
db 75 ; base hp
db 90 ; base attack
db 50 ; base defense
db 95 ; base speed
db 110 ; base special
db FIRE ; species type 1
db DARK ; species type 2
db 45 ; catch rate
db 204 ; base exp yield
INCBIN "pic/bmon/houndoom.pic",0,1 ; 55, sprite dimensions
dw HoundoomPicFront
dw HoundoomPicBack
; attacks known at lvl 0
db LEER
db EMBER
db SMOG
db 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 18,20,22
	tmlearn 31,32
	tmlearn 34,38,39
	tmlearn 42,44
	tmlearn 50,54
db BANK(HoundoomPicFront)
