Route4Object:
	db $2c ; border block

	db 3 ; warps
	warp 11, 5, 0, MT_MOON_POKECENTER
	warp 18, 5, 0, MT_MOON_1
	warp 24, 5, 7, MT_MOON_2

	db 3 ; signs
	sign 12, 5, 5 ; PokeCenterSignText   ; antes 4
	sign 17, 7, 6 ; Route4Text5 ; antes 5
	sign 27, 7, 7 ; Route4Text6 ; antes 6

	db 4 ; objects  ; ANTES db 3
	object SPRITE_LASS, 9, 8, WALK, 0, 1 ; person
	object SPRITE_LASS, 63, 3, STAY, RIGHT, 2, OPP_LASS, 4
	object SPRITE_GUARD, 80,  9, STAY, DOWN, 3, OPP_TSURUKO, 1
	object SPRITE_BALL, 57, 3, STAY, NONE, 4, TM_04  ; antes NONE, 3

	; warp-to
	warp_to 11, 5, ROUTE_4_WIDTH ; MT_MOON_POKECENTER
	warp_to 18, 5, ROUTE_4_WIDTH ; MT_MOON_1
	warp_to 24, 5, ROUTE_4_WIDTH ; MT_MOON_2
