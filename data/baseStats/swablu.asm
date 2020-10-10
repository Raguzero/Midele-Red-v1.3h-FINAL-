db DEX_SWABLU ; pokedex id
db 45 ; base hp
db 40 ; base attack
db 60 ; base defense
db 50 ; base speed
db 75 ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 255 ; catch rate
db 74 ; base exp yield
INCBIN "pic/bmon/swablu.pic",0,1 ; sprite dimensions
dw SwabluPicFront
dw SwabluPicBack
; attacks known at lvl 0
db PECK
db GROWL
db 0
db 0
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 10,13
	tmlearn 20,22,23
	tmlearn 31,32
	tmlearn 34,39
	tmlearn 42,43,44
	tmlearn 50,52
db BANK(SwabluPicFront)
