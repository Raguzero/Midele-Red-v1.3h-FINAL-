MicoloMap3_h:
	db SHIP_PORT ; tileset
	db MICOLOMAP3_HEIGHT, MICOLOMAP3_WIDTH ; dimensions (y, x)
	dw MicoloMap3Blocks, MicoloMap3TextPointers, MicoloMap3Script ; blocks, texts, scripts
	db 0 ; connections
	dw MicoloMap3Object ; objects

	db $0