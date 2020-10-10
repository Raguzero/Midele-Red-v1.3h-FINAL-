db DEX_MILTANK ; pokedex id
db 95 ; base hp
db 80 ; base attack
db 105 ; base defense
db 100 ; base speed
db 70 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 200 ; base exp yield
INCBIN "pic/bmon/miltank.pic",0,1 ; 77, sprite dimensions
dw MiltankPicFront
dw MiltankPicBack
; attacks known at lvl 0
db TACKLE
db GROWL
db DEFENSE_CURL
db 0
db 5 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,13,14,15
	tmlearn 18,19,20,22,24
	tmlearn 25,26,31,32
	tmlearn 34,35
	tmlearn 41,44,45,48
	tmlearn 50,53,54
db BANK(MiltankPicFront)
