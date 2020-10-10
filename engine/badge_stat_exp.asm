; gets current stat experience based on
; the number of badges obtained
; outputs bc = current stat experience
GetBadgeStatExp::
	push de
	push hl
	ld hl, wObtainedBadges
	ld b, 1
	call CountSetBits
	ld a, [wNumSetBits]
	ld b, 0
	ld c, a
	CheckEventHL EVENT_SUBESTATEXP1
    jr z, .finIncrementos
    inc c
    CheckEventHL EVENT_SUBESTATEXP2
    jr z, .finIncrementos
    inc c
.finIncrementos
	ld hl, BadgeStatExpTable
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld c, a
    ld a, [hl]
	ld b, a
	pop hl
	pop de
	ret

BadgeStatExpTable:
	dw 0  ; 0 badges
	dw 3000 ; 1 badge
	dw 6000 ; 2 badges
	dw 9000 ; 3 badges
	dw 12000 ; 4 badges
	dw 15000 ; 5 badges
	dw 20000 ; 6 badges
	dw 25000 ; 7 badges
	dw 30000 ; 8 badges
	dw 45000 ; COMPLETA LIGA 
	dw 65535 ; COMPLETA MONTE PLATEADO 
