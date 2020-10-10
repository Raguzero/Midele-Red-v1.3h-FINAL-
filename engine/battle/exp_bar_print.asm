PrintEXPBar:
	call CalcEXPBarPixelLength
	ld a, [H_QUOTIENT + 3] ; pixel length
	ld [wEXPBarPixelLength], a
	ld b, a
	ld c, $08
	ld d, $08
	coord hl, 17, 11
.loop
	ld a, b
	sub c
	jr nc, .skip
	ld c, b
	jr .loop
.skip
	ld b, a
	ld a, $c0
	add c
.loop2
	ld [hld], a
	dec d
	ret z
	ld a, b
	and a
	jr nz, .loop
	ld a, $c0
	jr .loop2
CalcEXPBarPixelLength:
	ld hl, wEXPBarKeepFullFlag
	bit 0, [hl]
	jr z, .start
	res 0, [hl]
	ld a, $40
	ld [H_QUOTIENT + 3], a
	ret
.start
	; get the base exp needed for the current level
	ld a, [wPlayerBattleStatus3]
	ld hl, wBattleMonSpecies
	bit 3, a
	jr z, .skip
	ld hl, wPartyMon1
	call BattleMonPartyAttr
.skip
	ld a, [hl]
	ld [wd0b5], a
	call GetMonHeader
	ld a, [wBattleMonLevel]
	ld d, a
	ld hl, CalcExperience
	ld b, BANK(CalcExperience)
	call Bankswitch
	ld hl, H_MULTIPLICAND
	ld de, wEXPBarBaseEXP
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	
	; get the exp needed to gain a level
	ld a, [wBattleMonLevel]
	ld d, a
	inc d
	ld hl, CalcExperience
	ld b, BANK(CalcExperience)
	call Bankswitch
	
	; get the address of the active Pokemon's current experience
	ld hl, wPartyMon1Exp
	call BattleMonPartyAttr
	
	; current exp - base exp
	ld b, h
	ld c, l
	ld hl, wEXPBarBaseEXP
	ld de, wEXPBarCurEXP
	call SubThreeByteNum
	
	; exp needed - base exp
	ld bc, H_MULTIPLICAND
	ld hl, wEXPBarBaseEXP
	ld de, wEXPBarNeededEXP
	call SubThreeByteNum
	
	; make the divisor an 8-bit number
	ld hl, wEXPBarNeededEXP
	ld de, wEXPBarCurEXP + 1
	ld a, [hli]
	and a
	jr z, .twoBytes
	ld a, [hli]
	ld [hld], a
	dec hl
	ld a, [hli]
	ld [hld], a
	ld a, [de]
	inc de
	ld [de], a
	dec de
	dec de
	ld a, [de]
	inc de
	ld [de], a
	dec de
	xor a
	ld [hli], a
	ld [de], a
	inc de
.twoBytes
	ld a, [hl]
	and a
	jr z, .oneByte
	srl a
	ld [hli], a
	ld a, [hl]
	rr a
	ld [hld], a
	ld a, [de]
	srl a
	ld [de], a
	inc de
	ld a, [de]
	rr a
	ld [de], a
	dec de
	jr .twoBytes
.oneByte
	; current exp * (8 tiles * 8 pixels)
	ld hl, H_MULTIPLICAND
	ld de, wEXPBarCurEXP
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hl], a
	ld a, $40
	ld [H_MULTIPLIER], a
	call Multiply
	
	; product / needed exp = pixel length
	ld a, [wEXPBarNeededEXP + 2]
	ld [H_DIVISOR], a
	ld b, $04
	jp Divide
	
; calculates the three byte number starting at [bc]
; minus the three byte number starting at [hl]
; and stores it into the three bytes starting at [de]
; assumes that [hl] is smaller than [bc]
SubThreeByteNum:
	call .subByte
	call .subByte
.subByte
	ld a, [bc]
	inc bc
	sub [hl]
	inc hl
	ld [de], a
	jr nc, .noCarry
	dec de
	ld a, [de]
	dec a
	ld [de], a
	inc de
.noCarry
	inc de
	ret
; return the address of the BattleMon's party struct attribute in hl
BattleMonPartyAttr:
	ld a, [wPlayerMonNumber]
	ld bc, wPartyMon2 - wPartyMon1
	jp AddNTimes
