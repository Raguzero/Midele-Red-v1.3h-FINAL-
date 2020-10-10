db DEX_DRAMPA ; pokedex id
db 78 ; base hp
db 60 ; base attack
db 85 ; base defense
db 36 ; base speed
db 135 ; base special
db NORMAL ; species type 1
db DRAGON ; species type 2
db 70 ; catch rate
db 170 ; base exp yield
INCBIN "pic/bmon/drampa.pic",0,1 ; 77, sprite dimensions
dw DrampaPicFront
dw DrampaPicBack
; attacks known at lvl 0
db DRAGON_RAGE
db GLARE
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,13,14,15
	tmlearn 20,22,23,24
	tmlearn 25,26,31,32
	tmlearn 34,38
	tmlearn 44,45,48
	tmlearn 50,52,53
db BANK(DrampaPicFront)
