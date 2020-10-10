MicoloMap1Object:
	db $f ; border block

	db 4 ; warps
	warp 8, 1, 1, UNKNOWN_DUNGEON_3
	warp 6, 37, 2, MICOLOMAP2
	warp 34, 39, 0, MICOLOMAP3
	warp 35, 39, 1, MICOLOMAP3

	db 10 ; signs
	sign 4, 0, 16 ; MicoloMap1PC
	sign 10, 25, 17 ; MicoloMap1diario
	sign 11, 25, 18 ; MicoloMap1diario2
	sign 18, 25, 19 ; MicoloMap1diario3
	sign 19, 25, 20 ; MicoloMap1diario4
	sign 10, 33, 21 ; MicoloMap1diario5
	sign 11, 33, 22 ; MicoloMap1diario6
	sign 18, 33, 23 ; MicoloMap1diario7
	sign 19, 33, 24 ; MicoloMap1diario8
	sign 7, 37, 25 ; MicoloMap1cartel

	db 15 ; objects
	object SPRITE_GIRL, 24, 20, STAY, UP, 1, OPP_GOOSES, 1
	object SPRITE_BLACK_HAIR_BOY_2, 14, 9, STAY, RIGHT, 2, OPP_KRAFT, 1 ; KRAFT
	object SPRITE_BLACK_HAIR_BOY_1, 5, 3, STAY, RIGHT, 3, OPP_SANTYGRASS, 1 ; person SANTY
	object SPRITE_COOK, 5, 27, STAY, LEFT, 4, OPP_PACOCHEF, 2; PACOCHEF
	object SPRITE_BLACK_HAIR_BOY_2, 26, 35, STAY, UP, 5, OPP_DISCAL, 1, ; person TIPO DISFRAZADO DE DISCAL
	object SPRITE_BLACK_HAIR_BOY_1, 16, 32, STAY, LEFT, 6, OPP_SAULGP, 1 ; person SAULGP
	object SPRITE_BIKER, 26, 30, STAY, DOWN, 7, OPP_CHARZ, 1; person CHARZ
	object SPRITE_BUG_CATCHER, 34, 38, STAY, UP, 8 ; person GIRATINA_MASTER
	object SPRITE_BLACK_HAIR_BOY_2, 24, 10, STAY, UP, 9 ; person
	object SPRITE_BLACK_HAIR_BOY_1, 34, 10, STAY, UP, 10 ; person
	object SPRITE_OAK_AIDE, 23, 4, STAY, RIGHT, 11 ; person
	object SPRITE_GAMBLER, 28, 2, STAY, DOWN, 12 ; person
	object SPRITE_OAK_AIDE, 36, 4, STAY, LEFT, 13 ; person
	object SPRITE_FISHER2, 29, 7, STAY, UP, 14	; person
	object SPRITE_BALL, 24, 32, STAY, NONE, 15 ; person

	; warp-to
	warp_to 8, 1, MICOLOMAP1_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
	warp_to 6, 37, MICOLOMAP1_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
	warp_to 34, 39, MICOLOMAP1_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
	warp_to 35, 39, MICOLOMAP1_WIDTH ; MICOLO MAP1 ;NUEVO MAPA MICOLO LAB
