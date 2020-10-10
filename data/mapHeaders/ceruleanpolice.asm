Cerulean_Police_h:
	db LAB ; tileset
	db CERULEAN_POLICE_HEIGHT, CERULEAN_POLICE_WIDTH ; dimensions (y, x)
	dw CeruleanPoliceBlocks, CeruleanPoliceTextPointers, CeruleanPoliceScript ; blocks, texts, scripts
	db 0 ; connections
	dw CeruleanPoliceObject ; objects
