db DEX_VIBRAVA ; pokedex id
db 50 ; base hp
db 70 ; base attack
db 50 ; base defense
db 70 ; base speed
db 50 ; base special
db GROUND ; species type 1
db DRAGON ; species type 2
db 120 ; catch rate
db 126 ; base exp yield
INCBIN "pic/bmon/vibrava.pic",0,1 ; 66, sprite dimensions
dw VibravaPicFront
dw VibravaPicBack
; attacks known at lvl 0
db QUICK_ATTACK
db SAND_ATTACK
db SONICBOOM
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,22,23
	tmlearn 26,27,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,52,54
db BANK(VibravaPicFront)
