db DEX_PALOSSAND ; pokedex id
db 85 ; base hp
db 75 ; base attack
db 110 ; base defense
db 35 ; base speed
db 100 ; base special
db GHOST ; species type 1
db GROUND ; species type 2
db 60 ; catch rate
db 168 ; base exp yield
INCBIN "pic/bmon/palossand.pic",0,1 ; 66, sprite dimensions
dw PalossandPicFront
dw PalossandPicBack
; attacks known at lvl 0
db HARDEN
db ABSORB
db SAND_ATTACK
db MEGA_DRAIN
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 15
	tmlearn 20,21
	tmlearn 26,29,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50
db BANK(PalossandPicFront)
