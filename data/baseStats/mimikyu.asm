db DEX_MIMIKYU ; pokedex id
db 55 ; base hp
db 90 ; base attack
db 80 ; base defense
db 96 ; base speed
db 105 ; base special
db GHOST ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 167 ; base exp yield
INCBIN "pic/bmon/mimikyu.pic",0,1 ; 77, sprite dimensions
dw MimikyuPicFront
dw MimikyuPicBack
; attacks known at lvl 0
db SCRATCH
db SPLASH
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6
	tmlearn 9,10,15
	tmlearn 20,24
	tmlearn 25,29,31,32
	tmlearn 34,35
	tmlearn 42,44,45
	tmlearn 50
db BANK(MimikyuPicFront)