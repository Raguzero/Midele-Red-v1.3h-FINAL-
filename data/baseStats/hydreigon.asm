db DEX_HYDREIGON ; pokedex id
db 92 ; base hp
db 105 ; base attack
db 90 ; base defense
db 98 ; base speed
db 125 ; base special
db DARK ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 255 ; base exp yield
INCBIN "pic/bmon/hydreigon.pic",0,1 ; 77, sprite dimensions
dw HydreigonPicFront
dw HydreigonPicBack
; attacks known at lvl 0
db DRAGON_RAGE
db FOCUS_ENERGY
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,23
	tmlearn 26,31,32
	tmlearn 33,34,38
	tmlearn 44,45,48,49
	tmlearn 50,52,53,54
db BANK(HydreigonPicFront)
