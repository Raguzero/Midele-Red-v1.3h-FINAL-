SilverCave1Object:
	db $3 ; border block

	db $3 ; warps
	db $23, $8, $1, SILVER_CAVE_OUTSIDE
	db $23, $9, $1, SILVER_CAVE_OUTSIDE
	db $3, $F, $0, SILVER_CAVE_ROOM_2

	db $0 ; signs
	
	db 7 ; objects 
	object SPRITE_BUG_CATCHER, 8, 7, STAY, DOWN, 1, OPP_FANBOY, 1 
	object SPRITE_BLACK_HAIR_BOY_2, 11, 17, STAY, DOWN, 2, OPP_HATER, 1 
	object SPRITE_OAK_AIDE, 7, 30, STAY, RIGHT, 3, OPP_HYPEANTO, 1
	object SPRITE_BLACK_HAIR_BOY_2, 14, 18, STAY, DOWN, 4, OPP_ESCROTO, 1 
	object SPRITE_FOULARD_WOMAN, 16, 5, STAY, LEFT, 5, OPP_ENTROPIA, 1  
	object SPRITE_BALL, $9, $3, STAY, NONE, 6, ESCAPE_ROPE
    object SPRITE_BALL, $6, $12, STAY, NONE, 7, PP_UP

	; warp-to
	EVENT_DISP SILVER_CAVE_ROOM_1_WIDTH, $23, $8 
	EVENT_DISP SILVER_CAVE_ROOM_1_WIDTH, $23, $9 
	EVENT_DISP SILVER_CAVE_ROOM_1_WIDTH, $3, $F