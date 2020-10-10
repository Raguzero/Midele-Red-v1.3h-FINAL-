db DEX_DRILLBUR ; pokedex id
db 60 ; base hp
db 85 ; base attack
db 40 ; base defense
db 68 ; base speed
db 30 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 120 ; catch rate
db 66 ; base exp yield
INCBIN "pic/bmon/drillbur.pic",0,1 ; 77, sprite dimensions
dw DrillburPicFront
dw DrillburPicBack
; attacks known at lvl 0
db SCRATCH
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 17,20
	tmlearn 26,27,28,31,32
	tmlearn 34
	tmlearn 44,48
	tmlearn 50,51,54
db BANK(DrillburPicFront)
