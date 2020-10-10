SilverCave2_h:
	db CAVERN ; tileset
	db SILVER_CAVE_ROOM_2_HEIGHT, SILVER_CAVE_ROOM_2_WIDTH ; dimensions (y, x)
	dw SilverCave2Blocks, SilverCave2TextPointers, SilverCave2Script ; blocks, texts, scripts
	db $00 ; connections
	dw SilverCave2Object ; objects
