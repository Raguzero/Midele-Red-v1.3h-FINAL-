db DEX_NAGANADEL ; pokedex id
db 73 ; base hp
db 73 ; base attack
db 73 ; base defense
db 121 ; base speed
db 127 ; base special
db POISON ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 243 ; base exp yield
INCBIN "pic/bmon/naganadel.pic",0,1 ; 55, sprite dimensions
dw NaganadelPicFront
dw NaganadelPicBack
; attacks known at lvl 0
db PECK
db GROWL
db ACID
db FURY_ATTACK
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,15
	tmlearn 20,24
	tmlearn 31,32
	tmlearn 34,38
	tmlearn 43,44
	tmlearn 50,52
db BANK(NaganadelPicFront)
