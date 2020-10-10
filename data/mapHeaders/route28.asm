Route28_h:
	db OVERWORLD ; tileset
	db ROUTE_28_HEIGHT, ROUTE_28_WIDTH ; dimensions (y, x)
	dw Route28Blocks, Route28TextPointers, Route28Script ; blocks, texts, scripts
	db WEST ; connections
	WEST_MAP_CONNECTION ROUTE_28, SILVER_CAVE_OUTSIDE, -9, 0, SilverCaveOutsideBlocks
	dw Route28Object ; objects
