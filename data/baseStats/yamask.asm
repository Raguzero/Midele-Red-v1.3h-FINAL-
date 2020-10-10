db DEX_YAMASK ; pokedex id
db 38 ; base hp
db 30 ; base attack
db 85 ; base defense
db 30 ; base speed
db 65 ; base special
db GHOST ; species type 1
db GHOST ; species type 2
db 190 ; catch rate
db 61 ; base exp yield
INCBIN "pic/bmon/yamask.pic",0,1 ; 77, sprite dimensions
dw YamaskPicFront
dw YamaskPicBack
; attacks known at lvl 0
db NIGHT_SHADE
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 0
	tmlearn 20
	tmlearn 29,31,32
	tmlearn 34
	tmlearn 42,44
	tmlearn 50,55
db BANK(YamaskPicFront)