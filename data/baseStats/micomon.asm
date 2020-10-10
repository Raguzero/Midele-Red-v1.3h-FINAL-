db DEX_MICOMON ; pokedex id
db 200 ; base hp
db 50 ; base attack
db 30 ; base defense
db 150 ; base speed
db 50 ; base special
db UNKNOWN ; species type 1
db UNKNOWN ; species type 2
db 3 ; catch rate
db 183 ; base exp yield
INCBIN "pic/bmon/micomon.pic",0,1 ; 55, sprite dimensions
dw MicomonPicFront
dw MicomonPicBack
; attacks known at lvl 0
db TRANSFORM
db SPLASH
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db BANK(MicomonPicFront)
