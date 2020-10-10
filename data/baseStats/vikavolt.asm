db DEX_VIKAVOLT ; pokedex id
db 77 ; base hp
db 70 ; base attack
db 90 ; base defense
db 43 ; base speed
db 145 ; base special
db BUG ; species type 1
db ELECTRIC ; species type 2
db 45 ; catch rate
db 225 ; base exp yield
INCBIN "pic/bmon/vikavolt.pic",0,1 ; sprite dimensions
dw VikavoltPicFront
dw VikavoltPicBack
; attacks known at lvl 0
db VICEGRIP
db STRING_SHOT
db BITE
db HARDEN
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 15
	tmlearn 20,22,24
	tmlearn 25,28,31,32
	tmlearn 34
	tmlearn 44,45
	tmlearn 50
db BANK(VikavoltPicFront)
