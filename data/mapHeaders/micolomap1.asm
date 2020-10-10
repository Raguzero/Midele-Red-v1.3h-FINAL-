MicoloMap1_h:
	db MANSION ; tileset
	db MICOLOMAP1_HEIGHT, MICOLOMAP1_WIDTH ; dimensions (y, x)
	dw MicoloMap1Blocks, MicoloMap1TextPointers, MicoloMap1Script ; blocks, texts, scripts
	db 0 ; connections
	dw MicoloMap1Object ; objects

	db $0