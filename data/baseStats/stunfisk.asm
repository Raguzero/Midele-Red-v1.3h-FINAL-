db DEX_STUNFISK ; pokedex id
db 109 ; base hp
db 66 ; base attack
db 84 ; base defense
db 32 ; base speed
db 99 ; base special
db GROUND ; species type 1
db ELECTRIC ; species type 2
db 75 ; catch rate
db 165 ; base exp yield
INCBIN "pic/bmon/stunfisk.pic",0,1 ; 66, sprite dimensions
dw StunfiskPicFront
dw StunfiskPicBack
; attacks known at lvl 0
db WATER_GUN
db TACKLE
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 11,12,15
	tmlearn 20,24
	tmlearn 25,26,27,28,31,32
	tmlearn 34
	tmlearn 44,45,48
	tmlearn 50,53,55
db BANK(StunfiskPicFront)
