db DEX_TYNAMO ; pokedex id
db 35 ; base hp
db 55 ; base attack
db 40 ; base defense
db 60 ; base speed
db 45 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 190 ; catch rate
db 55 ; base exp yield
INCBIN "pic/bmon/tynamo.pic",0,1 ; 55, sprite dimensions
dw TynamoPicFront
dw TynamoPicBack
; attacks known at lvl 0
db TACKLE
db THUNDER_WAVE
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 45
	tmlearn 0
db BANK(TynamoPicFront)
