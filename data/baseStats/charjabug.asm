db DEX_CHARJABUG ; pokedex id
db 57 ; base hp
db 82 ; base attack
db 95 ; base defense
db 36 ; base speed
db 75 ; base special
db BUG ; species type 1
db ELECTRIC ; species type 2
db 120 ; catch rate
db 140 ; base exp yield
INCBIN "pic/bmon/charjabug.pic",0,1 ; sprite dimensions
dw CharjabugPicFront
dw CharjabugPicBack
; attacks known at lvl 0
db VICEGRIP
db STRING_SHOT
db BITE
db HARDEN
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 0
	tmlearn 20,24
	tmlearn 28,31,32
	tmlearn 34
	tmlearn 44,45
	tmlearn 50
db BANK(CharjabugPicFront)
