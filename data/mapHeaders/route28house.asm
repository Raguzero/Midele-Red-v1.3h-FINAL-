Route28House_h:
	db HOUSE ; tileset
	db ROUTE_28_HOUSE_HEIGHT, ROUTE_28_HOUSE_WIDTH ; dimensions (y, x)
	dw Route28HouseBlocks, Route28HouseTextPointers, Route28HouseScript ; blocks, texts, scripts
	db $00 ; connections
	dw Route28HouseObject ; objects
