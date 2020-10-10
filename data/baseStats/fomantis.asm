db DEX_FOMANTIS ; pokedex id
db 40 ; base hp
db 55 ; base attack
db 35 ; base defense
db 35 ; base speed
db 35 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 190 ; catch rate
db 50 ; base exp yield
INCBIN "pic/bmon/fomantis.pic",0,1 ; 77, sprite dimensions
dw FomantisPicFront
dw FomantisPicBack
; attacks known at lvl 0
db ABSORB
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50,51
db BANK(FomantisPicFront)
