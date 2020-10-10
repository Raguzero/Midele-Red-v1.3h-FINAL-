db DEX_SANDYGAST ; pokedex id
db 55 ; base hp
db 55 ; base attack
db 80 ; base defense
db 15 ; base speed
db 70 ; base special
db GHOST ; species type 1
db GROUND ; species type 2
db 140 ; catch rate
db 64 ; base exp yield
INCBIN "pic/bmon/sandygast.pic",0,1 ; 66, sprite dimensions
dw SandygastPicFront
dw SandygastPicBack
; attacks known at lvl 0
db HARDEN
db ABSORB
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 0
	tmlearn 20,21
	tmlearn 26,29,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50
db BANK(SandygastPicFront)
