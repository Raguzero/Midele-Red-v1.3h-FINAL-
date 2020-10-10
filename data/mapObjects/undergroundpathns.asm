UndergroundPathNSObject:
	db $1 ; border block

	db 2 ; warps
	warp 5, 4, 2, PATH_ENTRANCE_ROUTE_5
	warp 2, 41, 2, PATH_ENTRANCE_ROUTE_6

	db 0 ; signs

	db 6 ; objects
	object SPRITE_BUG_CATCHER, 3, 25, STAY, RIGHT, 1, OPP_ANGELFS, 1  ;alfombre
	object SPRITE_GIRL, 2, 12, STAY, WALK, 2, OPP_LASS, 20 
	object SPRITE_GIRL, 5, 13, STAY, WALK, 3, OPP_LASS, 21 
	object SPRITE_GIRL, 2, 16, STAY, WALK, 4, OPP_LASS, 22 
	object SPRITE_GIRL, 5, 19, STAY, WALK, 5, OPP_BLUE, 1 
	object SPRITE_GIRL, 2, 22, STAY, WALK, 6, OPP_YELLOW, 1 

	; warp-to
	warp_to 5, 4, UNDERGROUND_PATH_NS_WIDTH ; PATH_ENTRANCE_ROUTE_5
	warp_to 2, 41, UNDERGROUND_PATH_NS_WIDTH ; PATH_ENTRANCE_ROUTE_6
