; gets current max valid level base on
; number of badges
GetBadgeLevel::
	; outputs b = max valid level
	push de
	push hl
	ld hl, wObtainedBadges
	ld b, 1
	call CountSetBits
	ld a, [wNumSetBits]
	ld b, 0
	ld c, a
	ld hl, BadgeLevelTable
	add hl, bc
	ld a, [hl]
	ld b, a
	pop hl
	pop de
	ret

BadgeLevelTable: ; 3fef
	db 20 ; 0 badges, level 20
	db 30 ; 1 badge, level 30
	db 35 ; 2 badges, level 35
	db 45 ; 3 badges, level 45
	db 55 ; 4 badges, level 55
	db 55 ; 5 badges, level 55
	db 60 ; 6 badges, level 60
	db 65 ; 7 badges, level 65
	db 150 ; 8 badges, level 100
