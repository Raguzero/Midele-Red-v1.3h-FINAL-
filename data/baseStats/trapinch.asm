db DEX_TRAPINCH ; pokedex id
db 45 ; base hp
db 100 ; base attack
db 45 ; base defense
db 10 ; base speed
db 45 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 255 ; catch rate
db 73 ; base exp yield
INCBIN "pic/bmon/trapinch.pic",0,1 ; 66, sprite dimensions
dw TrapinchPicFront
dw TrapinchPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db SAND_ATTACK
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,22
	tmlearn 26,27,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,54
db BANK(TrapinchPicFront)
