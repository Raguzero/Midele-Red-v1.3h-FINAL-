MicoloMap2_h:
	db INTERIOR ; tileset
	db MICOLOMAP2_HEIGHT, MICOLOMAP2_WIDTH ; dimensions (y, x)
	dw MicoloMap2Blocks, MicoloMap2TextPointers, MicoloMap2Script ; blocks, texts, scripts
	db 0 ; connections
	dw MicoloMap2Object ; objects

	db $0