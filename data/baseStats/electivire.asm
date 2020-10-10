db DEX_ELECTIVIRE ; pokedex id
db 75 ; base hp
db 123 ; base attack
db 67 ; base defense
db 95 ; base speed
db 95 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 30 ; catch rate
db 199 ; base exp yield
INCBIN "pic/bmon/electivire.pic",0,1 ; 66, sprite dimensions
dw ElectivirePicFront
dw ElectivirePicBack
; attacks known at lvl 0
db QUICK_ATTACK
db LEER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,24
	tmlearn 25,26,29,30,31,32
	tmlearn 33,34,35,39,40
	tmlearn 44,45,46,48
	tmlearn 50,54,55
db BANK(ElectivirePicFront)
