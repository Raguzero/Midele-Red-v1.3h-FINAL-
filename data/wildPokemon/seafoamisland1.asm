IslandMons1:
	db $0F
	IF DEF(_RED)
		db 36,SEEL
		db 36,SLOWPOKE
		db 36,SHELLDER
		db 37,HORSEA
		db 36,SNOVER
		db 37,SNEASEL
		db 39,GOLBAT
		db 37,PSYDUCK
		db 36,JYNX
		db 40,GOLDUCK
	ENDC
	IF DEF(_BLUE)
		db 30,SEEL
		db 30,PSYDUCK
		db 30,STARYU
		db 30,KRABBY
		db 28,KRABBY
		db 21,ZUBAT
		db 29,GOLBAT
		db 28,SLOWPOKE
		db 28,STARYU
		db 38,SLOWBRO
	ENDC
	db $00
