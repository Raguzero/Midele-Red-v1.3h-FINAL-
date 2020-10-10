VictoryRoad2Object:
	db $7d ; border block

	db 7 ; warps
	warp 0, 8, 2, VICTORY_ROAD_1
	warp 29, 7, 3, -1
	warp 29, 8, 3, -1
	warp 23, 7, 0, VICTORY_ROAD_3
	warp 25, 14, 2, VICTORY_ROAD_3
	warp 27, 7, 1, VICTORY_ROAD_3
	warp 1, 1, 3, VICTORY_ROAD_3

	db 0 ; signs

	db 13 ; objects
	object SPRITE_HIKER, 12, 9, STAY, LEFT, 1, OPP_BLACKBELT, 9
	object SPRITE_BLACK_HAIR_BOY_2, 21, 13, STAY, LEFT, 2, OPP_JUGGLER, 2
	object SPRITE_BLACK_HAIR_BOY_1, 19, 8, STAY, DOWN, 3, OPP_TAMER, 5
	object SPRITE_BLACK_HAIR_BOY_2, 4, 2, STAY, DOWN, 4, OPP_POKEMANIAC, 6
	object SPRITE_BLACK_HAIR_BOY_2, 26, 3, STAY, LEFT, 5, OPP_JUGGLER, 5
	; NUEVO PARA ENTRENADORES NO SON POKEMON
	;object SPRITE_BIRD, 11, 5, STAY, UP, 6, MOLTRES, 50
	object SPRITE_BIRD, 11, 5, STAY, UP, 6, MOLTRES, 50 | OW_POKEMON
	; NUEVO PARA ENTRENADORES NO SON POKEMON
	object SPRITE_BALL, 27, 5, STAY, NONE, 7, TM_17
	object SPRITE_BALL, 18, 9, STAY, NONE, 8, FULL_HEAL
	object SPRITE_BALL, 9, 11, STAY, NONE, 9, TM_05
	object SPRITE_BALL, 11, 0, STAY, NONE, 10, RARE_CANDY
	object SPRITE_BOULDER, 4, 14, STAY, BOULDER_MOVEMENT_BYTE_2, 11 ; person
	object SPRITE_BOULDER, 5, 5, STAY, BOULDER_MOVEMENT_BYTE_2, 12 ; person
	object SPRITE_BOULDER, 23, 16, STAY, BOULDER_MOVEMENT_BYTE_2, 13 ; person

	; warp-to
	warp_to 0, 8, VICTORY_ROAD_2_WIDTH ; VICTORY_ROAD_1
	warp_to 29, 7, VICTORY_ROAD_2_WIDTH
	warp_to 29, 8, VICTORY_ROAD_2_WIDTH
	warp_to 23, 7, VICTORY_ROAD_2_WIDTH ; VICTORY_ROAD_3
	warp_to 25, 14, VICTORY_ROAD_2_WIDTH ; VICTORY_ROAD_3
	warp_to 27, 7, VICTORY_ROAD_2_WIDTH ; VICTORY_ROAD_3
	warp_to 1, 1, VICTORY_ROAD_2_WIDTH ; VICTORY_ROAD_3
