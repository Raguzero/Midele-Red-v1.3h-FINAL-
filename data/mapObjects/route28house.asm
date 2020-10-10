Route28HouseObject:
	db $a ; border block

	db $2 ; warps
    db $7, $2, $1, $ff
	db $7, $3, $1, $ff

	db $0 ; signs

	db $2 ; objects
	object SPRITE_GIRL, $5, $3, STAY, LEFT, $1 ; person
	object SPRITE_BIRD, $3, $5, STAY, $2, $2 ; person

	; warp-to
	EVENT_DISP ROUTE_28_HOUSE_WIDTH, $7, $2
	EVENT_DISP ROUTE_28_HOUSE_WIDTH, $7, $3