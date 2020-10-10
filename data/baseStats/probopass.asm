db DEX_PROBOPASS ; pokedex id
db 60 ; base hp
db 55 ; base attack
db 145 ; base defense
db 40 ; base speed
db 150 ; base special
db ROCK ; species type 1
db STEEL ; species type 2
db 60 ; catch rate
db 198 ; base exp yield
INCBIN "pic/bmon/probopass.pic",0,1 ; 77, sprite dimensions
dw ProbopassPicFront
dw ProbopassPicBack
; attacks known at lvl 0
db TRI_ATTACK
db TACKLE
db HARDEN
db ROCK_THROW
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,24,25,26
	tmlearn 31,32
	tmlearn 34,36
	tmlearn 44,45,47,48
	tmlearn 49,50,54
db BANK(ProbopassPicFront)
