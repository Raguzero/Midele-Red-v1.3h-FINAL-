UnknownDungeon3Object:
	db $7d ; border block

	db 3 ; warps  ; ANTES 1    NUEVO MICOLO LAB
	warp 3, 6, 8, UNKNOWN_DUNGEON_1
	; NUEVO MAPA LAB MICOLO
	warp 27, 17, 0, MICOLOMAP1
	warp 27, 14, 4, MICOLOMAP2
	; NUEVO MAPA LAB MICOLO

	db 0 ; signs

	db 3 ; objects
	; NUEVO PARA ENTRENADORES NO SON POKEMON
	;object SPRITE_SLOWBRO, 27, 13, STAY, DOWN, 1, MEWTWO, 70
	object SPRITE_SLOWBRO, 27, 13, STAY, DOWN, 1, MEWTWO, 70 | OW_POKEMON
	; NUEVO PARA ENTRENADORES NO SON POKEMON
	object SPRITE_BALL, 16, 9, STAY, NONE, 2, ULTRA_BALL
	object SPRITE_BALL, 18, 1, STAY, NONE, 3, MAX_REVIVE

	; warp-to
	warp_to 3, 6, UNKNOWN_DUNGEON_3_WIDTH ; UNKNOWN_DUNGEON_1
    warp_to 27, 17, UNKNOWN_DUNGEON_3_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
    warp_to 27, 14, UNKNOWN_DUNGEON_3_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
