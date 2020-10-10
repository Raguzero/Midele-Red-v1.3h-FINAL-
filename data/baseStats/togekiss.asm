db DEX_TOGEKISS ; pokedex id
db 85 ; base hp
db 50 ; base attack
db 95 ; base defense
db 80 ; base speed
db 115 ; base special
db NORMAL ; species type 1
db FLYING ; species type 2
db 30 ; catch rate
db 220 ; base exp yield
INCBIN "pic/bmon/togekiss.pic",0,1 ; 77, sprite dimensions
dw TogekissPicFront
dw TogekissPicBack
; attacks known at lvl 0
db SKY_ATTACK
db GROWL
db METRONOME
db MIRROR_MOVE
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,15
	tmlearn 18,19,20,22
	tmlearn 29,31,32
	tmlearn 33,34,35,37,38,39
	tmlearn 41,42,43,44,45
	tmlearn 49,50,52,55
db BANK(TogekissPicFront)