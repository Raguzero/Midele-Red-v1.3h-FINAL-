db DEX_LUDICOLO ; pokedex id
db 80 ; base hp
db 70 ; base attack
db 70 ; base defense
db 70 ; base speed
db 100 ; base special
db WATER ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 181 ; base exp yield
INCBIN "pic/bmon/ludicolo.pic",0,1 ; 66, sprite dimensions
dw LudicoloPicFront
dw LudicoloPicBack
; attacks known at lvl 0
db MEGA_DRAIN
db GROWL
db WATER_GUN
db 0
db 3 ; growth rate
; learnset
	tmlearn 1,3,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 18,19,20,21,22
	tmlearn 31,32
	tmlearn 34,35
	tmlearn 44
	tmlearn 50,53,54,55
db BANK(LudicoloPicFront)
