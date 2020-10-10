SilverCavePokecenter_h:
	db POKECENTER ; tileset
	db SILVER_CAVE_POKECENTER_HEIGHT, SILVER_CAVE_POKECENTER_WIDTH ; dimensions (y, x)
	dw SilverCavePokecenterBlocks, SilverCavePokecenterTextPointers, SilverCavePokecenterScript ; blocks, texts, scripts
	db $00 ; connections
	dw SilverCavePokecenterObject ; objects
