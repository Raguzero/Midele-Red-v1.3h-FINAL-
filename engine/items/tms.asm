; tests if mon [wcf91] can learn move [wMoveNum]
CanLearnTM:
	ld a, [wcf91]
	ld [wd0b5], a
	call GetMonHeader
	ld hl, wMonHLearnset
	push hl
	ld a, [wMoveNum]
	ld b, a
	ld c, $0
	ld hl, TechnicalMachines
.findTMloop
	ld a, [hli]
	cp -1 ; reached terminator?
	jr z, .done
	cp b
	jr z, .TMfoundLoop
	inc c
	jr .findTMloop
.TMfoundLoop
	pop hl
	ld b, FLAG_TEST
	predef_jump FlagActionPredef
.done
	pop hl
	ld c, 0
	ret

; converts TM/HM number in wd11e into move number
; HMs start at 51
TMToMove:
	ld a, [wd11e]
	dec a
	ld hl, TechnicalMachines
	ld b, $0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wd11e], a
	ret

GetTMMoves:
    push hl
    ld de, wRelearnableMoves ; reusing from move relearner for tmhm move list
    ld hl, TechnicalMachines
.checkTMloop
    ld a, [hli]
    cp -1 ; reached terminator?
    jr z, .done
    push hl
    ld [wMoveNum], a
    ld [wd11e], a
    push de
    push bc
    predef CanLearnTM
    ld a, c
    and a ; can the pokemon learn the move?
    pop bc
    pop de
    pop hl
    jr z, .checkTMloop
.canLearn
	push hl
	push de
	ld de, -1 - TechnicalMachines
	add hl, de
	ld a, l
	pop de
	pop hl
	ld [de], a ; add TM ID to list of learnable moves
    inc de
    jr .checkTMloop
.done
    ld a, -1 ; terminator
    ld [de], a
    pop hl
    ret

INCLUDE "data/tms.asm"
