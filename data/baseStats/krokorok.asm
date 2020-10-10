db DEX_KROKOROK; pokedex id
db 60 ; base hp
db 82 ; base attack
db 45 ; base defense
db 74 ; base speed
db 45 ; base special
db GROUND ; species type 1
db DARK ; species type 2
db 90 ; catch rate
db 123 ; base exp yield
INCBIN "pic/bmon/krokorok.pic",0,1 ; 77, sprite dimensions
dw KrokorokPicFront
dw KrokorokPicBack
; attacks known at lvl 0
db TACKLE
db LEER
db RAGE
db SAND_ATTACK
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 18,20
	tmlearn 26,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(KrokorokPicFront)
