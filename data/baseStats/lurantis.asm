db DEX_LURANTIS ; pokedex id
db 70 ; base hp
db 105 ; base attack
db 90 ; base defense
db 45 ; base speed
db 90 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 75 ; catch rate
db 168 ; base exp yield
INCBIN "pic/bmon/lurantis.pic",0,1 ; 77, sprite dimensions
dw LurantisPicFront
dw LurantisPicBack
; attacks known at lvl 0
db ABSORB
db GROWTH
db RAZOR_LEAF
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,15
	tmlearn 17,20,21,22
	tmlearn 31,32
	tmlearn 34
	tmlearn 44
	tmlearn 50,51,54
db BANK(LurantisPicFront)
