SilverCaveOutsideObject:
    db $2c ; border block

	db $2 ; warps
	db $13, $17, $0, SILVER_CAVE_POKECENTER
	db $B, $12, $0, SILVER_CAVE_ROOM_1
	
	db 2 ; signs
	db $D, $11, 6 ; SCOutsideText1
	db $13, $18, 7 ; pokemon center sign

	db 5 ; objects
	object SPRITE_BLACK_HAIR_BOY_1, 23, 25, STAY, RIGHT, 1, OPP_DUNK, 1
	object SPRITE_BLACK_HAIR_BOY_1, 17, 19, STAY, RIGHT, 2, OPP_FELIPEX, 1
	object SPRITE_BLACK_HAIR_BOY_1, 28, 30, STAY, RIGHT, 3, OPP_KASTY, 1
	object SPRITE_BUG_CATCHER, 37, 30, STAY, DOWN, 4, OPP_JOEL, 1
	object SPRITE_BLACK_HAIR_BOY_1, 16, 12, STAY, RIGHT, 5, OPP_MANEC, 2

	; warp-to
	EVENT_DISP SILVER_CAVE_OUTSIDE_WIDTH, $13, $17
	EVENT_DISP SILVER_CAVE_OUTSIDE_WIDTH, $B, $12
