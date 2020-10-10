CeruleanPoliceObject:
	db $17 ; border block

	db 2 ; warps
	warp 8, 19, 10, CERULEAN_CITY
	warp 9, 19, 10, CERULEAN_CITY

	db 2 ; signs
	sign 2, 3, 13 ; Cartelinfo
	sign 16, 3, 14 ; Cartelinfo

	db 15 ; objects
	object SPRITE_FAT_BALD_GUY, 15, 5, STAY, LEFT, 1, OPP_FURRY, 1
	object SPRITE_BLACK_HAIR_BOY_1, 7, 9, WALK, 3, 2 ; person
	object SPRITE_GUARD, 6, 7, STAY, UP, 3 ; person
	object SPRITE_GUARD, 14, 7, STAY, UP, 4 ; person
	object SPRITE_GUARD, 14, 11, STAY, UP, 5 ; person
	object SPRITE_BLACK_HAIR_BOY_1, 11, 11, WALK, 3, 6 ; person
	object SPRITE_LASS, 4, 11, STAY, UP, 7 ; person
	object SPRITE_GUARD, 18, 15, STAY, UP, 8 ; person
	object SPRITE_GUARD, 6, 15, STAY, UP, 9 ; person
	object SPRITE_GUARD, 8, 17, STAY, DOWN, 10 ; person
	object SPRITE_BUG_CATCHER, 8, 6, STAY, DOWN, 11 ; person
	object SPRITE_LASS, 6, 11, STAY, UP, 12 ; person
	object SPRITE_GAMBLER, 13, 1, STAY, DOWN, 13 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 10, 1, STAY, DOWN, 14 ; person
	object SPRITE_FISHER2, 6, 1, STAY, DOWN, 15 ; person
	
	; warp-to
	warp_to 9, 19, CERULEAN_POLICE_WIDTH
	warp_to 8, 19, CERULEAN_POLICE_WIDTH
