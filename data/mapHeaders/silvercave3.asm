SilverCave3_h:
	db CAVERN ; tileset
	db SILVER_CAVE_ROOM_3_HEIGHT, SILVER_CAVE_ROOM_3_WIDTH ; dimensions (y, x)
	dw SilverCave3Blocks, SilverCave3TextPointers, SilverCave3Script ; blocks, texts, scripts
	db $00 ; connections
	dw SilverCave3Object ; objects
