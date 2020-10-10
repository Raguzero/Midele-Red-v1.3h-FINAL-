db DEX_UMBREON ; pokedex id
db 95 ; base hp
db 65 ; base attack
db 110 ; base defense
db 65 ; base speed
db 130 ; base special
db DARK ; species type 1
db DARK ; species type 2
db 45 ; catch rate
db 197 ; base exp yield
INCBIN "pic/bmon/umbreon.pic",0,1 ; 66, sprite dimensions
dw UmbreonPicFront
dw UmbreonPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db QUICK_ATTACK
db CONFUSE_RAY
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15,16
	tmlearn 20
	tmlearn 29,31,32
	tmlearn 33,34,39,40
	tmlearn 42,44
	tmlearn 50,51,55
db BANK(UmbreonPicFront)
