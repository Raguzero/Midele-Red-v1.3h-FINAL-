Route22GateObject:
	db $a ; border block

	db 6 ; warps
	warp 4, 7, 0, -1
	warp 5, 7, 0, -1
	warp 4, 0, 0, -1
	warp 5, 0, 1, -1
	warp 0, 2, 0, ROUTE_28 ; NUEVO MAPAS
	warp 0, 3, 0, ROUTE_28 ; NUEVO MAPAS

	db 0 ; signs

	db 3 ; objects ; NUEVO MAPAS
	object SPRITE_GUARD, 6, 2, STAY, LEFT, 1 ; person
	; NUEVO MAPAS
	object SPRITE_GUARD, 0, 2, STAY, RIGHT, 2 ; person
	object SPRITE_GUARD, 0, 3, STAY, RIGHT, 3 ; person
	; NUEVO MAPAS

	; warp-to
	warp_to 4, 7, ROUTE_22_GATE_WIDTH
	warp_to 5, 7, ROUTE_22_GATE_WIDTH
	warp_to 4, 0, ROUTE_22_GATE_WIDTH
	warp_to 5, 0, ROUTE_22_GATE_WIDTH
	warp_to 0, 2, ROUTE_22_GATE_WIDTH ; NUEVO MAPAS
	warp_to 0, 3, ROUTE_22_GATE_WIDTH ; NUEVO MAPAS
