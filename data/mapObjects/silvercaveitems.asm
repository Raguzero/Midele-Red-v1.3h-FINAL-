SilverCaveItemsObject:
	db $3 ; border block

	db $2 ; warps
	db $5, $B, $1, SILVER_CAVE_ROOM_2
	db $F, $B, $2, SILVER_CAVE_ROOM_2

	db $0 ; signs
	
	db $2 ; objects
	object SPRITE_BALL, $F, $3, STAY, NONE, $1, MAX_REVIVE
	object SPRITE_BALL, $3, $10, STAY, NONE, $2, FULL_RESTORE

	; warp-to
	EVENT_DISP SILVER_CAVE_ITEM_ROOMS_WIDTH, $5, $B 
	EVENT_DISP SILVER_CAVE_ITEM_ROOMS_WIDTH, $F, $B 