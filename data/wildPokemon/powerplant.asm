PowerPlantMons:
	db $0A
	db 38,MAGNEMITE
	db 38,EELEKTRIK
	db 37,PIKACHU
	db 37,MAGNETON
	db 36,CHARJABUG
	db 37,ELECTABUZZ
	db 38,PORYGON
	db 39,PORYGON
	IF DEF(_RED)
		db 37,ELECTABUZZ
		db 39,ELECTABUZZ
	ENDC
	IF DEF(_BLUE)
		db 33,RAICHU
		db 36,RAICHU
	ENDC
	db $00
