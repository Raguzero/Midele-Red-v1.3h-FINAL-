db DEX_NUMEL ; pokedex id
db 60 ; base hp
db 60 ; base attack
db 40 ; base defense
db 35 ; base speed
db 65 ; base special
db FIRE ; species type 1
db GROUND ; species type 2
db 255 ; catch rate
db 88 ; base exp yield
INCBIN "pic/bmon/numel.pic",0,1 ; 55, sprite dimensions
dw NumelPicFront
dw NumelPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20
	tmlearn 26,28,31,32
	tmlearn 38
	tmlearn 44,48
	tmlearn 50,54
db BANK(NumelPicFront)
