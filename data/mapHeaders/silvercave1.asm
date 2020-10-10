SilverCave1_h:
	db CAVERN ; tileset
	db SILVER_CAVE_ROOM_1_HEIGHT, SILVER_CAVE_ROOM_1_WIDTH ; dimensions (y, x)
	dw SilverCave1Blocks, SilverCave1TextPointers, SilverCave1Script ; blocks, texts, scripts
	db $00 ; connections
	dw SilverCave1Object ; objects
