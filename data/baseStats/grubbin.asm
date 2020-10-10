db DEX_GRUBBIN ; pokedex id
db 47 ; base hp
db 62 ; base attack
db 45 ; base defense
db 46 ; base speed
db 55 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 255 ; catch rate
db 60 ; base exp yield
INCBIN "pic/bmon/grubbin.pic",0,1 ; sprite dimensions
dw GrubbinPicFront
dw GrubbinPicBack
; attacks known at lvl 0
db VICEGRIP
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 0
	tmlearn 20,24
	tmlearn 28,31,32
	tmlearn 34
	tmlearn 44,45
	tmlearn 50
db BANK(GrubbinPicFront)
