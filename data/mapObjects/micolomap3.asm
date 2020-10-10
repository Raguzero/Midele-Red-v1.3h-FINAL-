MicoloMap3Object:
	db $f ; border block

	db 2 ; warps
	warp 8, 0, 2, MICOLOMAP1
	warp 9, 0, 3, MICOLOMAP1

	db 2 ; signs
	sign 7, 7, 9 ; Micomandamientos
	sign 15, 17, 10 ; Textobarco

	db 8 ; objects
	object SPRITE_BLACK_HAIR_BOY_2,  7,  5, STAY, RIGHT, 1, OPP_LAVENDER, 2
	object SPRITE_BLACK_HAIR_BOY_2, 1, 11, STAY, RIGHT, 2, OPP_ARTEMIS, 1
	object SPRITE_BLACK_HAIR_BOY_1, 11,  9, STAY, LEFT, 3, OPP_KADERETE, 2  ; KADERETE AQUI
	object SPRITE_OAK_AIDE,  8, 14, STAY, DOWN, 4, OPP_AVADER, 1  ; AVADER AQUI
	object SPRITE_BUG_CATCHER, 14, 17, STAY, UP, 5, OPP_MICOLO, 2  ; MICOLO AQUI
	object SPRITE_BALL, 17, 13, STAY, NONE, 6, MASTER_BALL
	object SPRITE_BALL, 17, 14, STAY, NONE, 7, PK_HEX
	object SPRITE_BALL, 17, 15, STAY, NONE, 8, ; REGALO MICOMON

	; warp-to
	warp_to 8, 0, MICOLOMAP3_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
	warp_to 9, 0, MICOLOMAP3_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
