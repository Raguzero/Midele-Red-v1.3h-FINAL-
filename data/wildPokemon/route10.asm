Route10Mons:
	db $0F
	IF DEF(_RED)
		db 20,VOLTORB
		db 20,GRIMER
		db 21,MAGNEMITE
		db 21,EKANS
		db 21,GRIMER
		db 21,SANDSHREW
		db 22,VOLTORB
		db 22,GRIMER
		db 22,EKANS
		db 23,EKANS
	ENDC
	IF DEF(_BLUE)
		db 16,VOLTORB
		db 16,SPEAROW
		db 14,VOLTORB
		db 11,SANDSHREW
		db 13,SPEAROW
		db 15,SANDSHREW
		db 17,VOLTORB
		db 17,SPEAROW
		db 13,SANDSHREW
		db 17,SANDSHREW
	ENDC
	db $00
