db DEX_EXCADRILL ; pokedex id
db 110 ; base hp
db 135 ; base attack
db 60 ; base defense
db 88 ; base speed
db 50 ; base special
db GROUND ; species type 1
db STEEL ; species type 2
db 60 ; catch rate
db 178 ; base exp yield
INCBIN "pic/bmon/excadrill.pic",0,1 ; 77, sprite dimensions
dw ExcadrillPicFront
dw ExcadrillPicBack
; attacks known at lvl 0
db SCRATCH
db FURY_SWIPES
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,7,8
	tmlearn 9,10,15
	tmlearn 17,20
	tmlearn 26,27,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(ExcadrillPicFront)
