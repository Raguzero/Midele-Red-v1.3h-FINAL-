db DEX_CATERMANO ; pokedex id
db 45 ; base hp
db 255 ; base attack
db 69 ; base defense
db 140 ; base speed
db 69 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 3 ; catch rate
db 183 ; base exp yield
INCBIN "pic/bmon/catermano.pic",0,1 ; 55, sprite dimensions
dw CatermanoPicFront
dw CatermanoPicBack
; attacks known at lvl 0
db TACKLE
db STRING_SHOT
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db BANK(CatermanoPicFront)
