SilverCaveOutside_h:
	db OVERWORLD ; tileset
	db SILVER_CAVE_OUTSIDE_HEIGHT, SILVER_CAVE_OUTSIDE_WIDTH ; dimensions (y, x)
	dw SilverCaveOutsideBlocks, SilverCaveOutsideTextPointers, SilverCaveOutsideScript ; blocks, texts, scripts
	db EAST ; connections
    EAST_MAP_CONNECTION SILVER_CAVE_OUTSIDE, ROUTE_28, 0, -9, Route28Blocks
	dw SilverCaveOutsideObject ; objects
