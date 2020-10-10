SilverCave3Object:
	db $3 ; border block

	db $1 ; warps
	db $21, $9, $3, SILVER_CAVE_ROOM_2
	
	db $0 ; signs

	; SILVER CAVE BATALLA ESPECIAL
	db $1 ; objects  , antes 0
	object SPRITE_SLOWBRO, $9, $4, STAY, UP, $1, OPP_GARM, $1
	; SILVER CAVE BATALLA ESPECIAL
	

	; warp-to
	EVENT_DISP SILVER_CAVE_ROOM_3_WIDTH, $21, $9 