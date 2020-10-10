SilverCavePokecenterObject:
	db $0 ; border block

	db $2 ; warps
    db $7, $3, $0, $ff
	db $7, $4, $0, $ff

	db $0 ; signs

	db $3 ; objects
	object SPRITE_NURSE, $3, $1, STAY, DOWN, $1 ; person
	object SPRITE_MEDIUM, $a, $5, WALK, $0, $2 ; person
	object SPRITE_CABLE_CLUB_WOMAN, $b, $2, STAY, DOWN, $3 ; person

	; warp-to
	EVENT_DISP SILVER_CAVE_POKECENTER_WIDTH, $7, $3
	EVENT_DISP SILVER_CAVE_POKECENTER_WIDTH, $7, $4