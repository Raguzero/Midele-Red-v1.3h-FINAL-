IslandMonsB1:
	db $0A
	IF DEF(_RED)
		db 36,STARYU
		db 36,HORSEA
		db 36,SHELLDER
		db 38,SNOVER
		db 38,SLOWPOKE
		db 38,SEEL
		db 38,SLOWPOKE
		db 37,SNEASEL
		db 40,DEWGONG
		db 41,SEADRA
	ENDC
	IF DEF(_BLUE)
		db 30,SHELLDER
		db 30,KRABBY
		db 32,STARYU
		db 32,KRABBY
		db 28,PSYDUCK
		db 30,SEEL
		db 30,PSYDUCK
		db 28,SEEL
		db 38,DEWGONG
		db 37,KINGLER
	ENDC
	db $00
