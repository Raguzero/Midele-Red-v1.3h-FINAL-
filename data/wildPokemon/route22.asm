Route22Mons:
	db $19
	IF DEF(_RED)
		db 2,NIDORAN_M
		db 2,NIDORAN_F
		db 3,MANKEY
		db 3,PONYTA
		db 2,POLIWAG
		db 4,SPEAROW
		db 4,POLIWAG
		db 7,SPEAROW
		db 4,MANKEY
		db 5,MANKEY
	ENDC
	IF DEF(_BLUE)
		db 3,RATTATA
		db 3,NIDORAN_F
		db 4,RATTATA
		db 4,NIDORAN_F
		db 2,RATTATA
		db 2,NIDORAN_F
		db 3,SPEAROW
		db 5,SPEAROW
		db 3,NIDORAN_M
		db 4,NIDORAN_M
	ENDC
	db $00
