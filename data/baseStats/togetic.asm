db DEX_TOGETIC ; pokedex id
db 55 ; base hp
db 40 ; base attack
db 85 ; base defense
db 40 ; base speed
db 105 ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 75 ; catch rate
db 114 ; base exp yield
INCBIN "pic/bmon/togetic.pic",0,1 ; 77, sprite dimensions
dw TogeticPicFront
dw TogeticPicBack
; attacks known at lvl 0
db PECK
db GROWL
db METRONOME
db MIRROR_MOVE
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12
	tmlearn 18,19,20,22
	tmlearn 29,31,32
	tmlearn 33,34,35,37,38,39
	tmlearn 41,42,43,44,45
	tmlearn 49,50,52,55
db BANK(TogeticPicFront)