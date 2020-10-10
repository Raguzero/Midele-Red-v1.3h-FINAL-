SilverCaveItems_h:
	db CAVERN ; tileset
	db SILVER_CAVE_ITEM_ROOMS_HEIGHT, SILVER_CAVE_ITEM_ROOMS_WIDTH ; dimensions (y, x)
	dw SilverCaveItemsBlocks, SilverCaveItemsTextPointers, SilverCaveItemsScript ; blocks, texts, scripts
	db $00 ; connections
	dw SilverCaveItemsObject ; objects
