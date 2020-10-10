db DEX_LUCARIO ; pokedex id
db 70 ; base hp
db 110 ; base attack
db 70 ; base defense
db 90 ; base speed
db 115 ; base special
db FIGHTING ; species type 1
db STEEL ; species type 2
db 45 ; catch rate
db 204 ; base exp yield
INCBIN "pic/bmon/lucario.pic",0,1 ; 55, sprite dimensions
dw LucarioPicFront
dw LucarioPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db COUNTER
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,15
	tmlearn 18,20,
	tmlearn 26,28,29,31,32
	tmlearn 34,39
	tmlearn 44,48
	tmlearn 50,54
db BANK(LucarioPicFront)
