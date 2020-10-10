DrawHP:
; Draws the HP bar in the stats screen
	call GetPredefRegisters
	ld a, $1
	jr DrawHP_

DrawHP2:
; Draws the HP bar in the party screen
	call GetPredefRegisters
	ld a, $2

DrawHP_:
	ld [wHPBarType], a
	push hl
	ld a, [wLoadedMonHP]
	ld b, a
	ld a, [wLoadedMonHP + 1]
	ld c, a
	or b
	jr nz, .nonzeroHP
	xor a
	ld c, a
	ld e, a
	ld a, $6
	ld d, a
	jp .drawHPBarAndPrintFraction
.nonzeroHP
	ld a, [wLoadedMonMaxHP]
	ld d, a
	ld a, [wLoadedMonMaxHP + 1]
	ld e, a
	predef HPBarLength
	ld a, $6
	ld d, a
	ld c, a
.drawHPBarAndPrintFraction
	pop hl
	push de
	push hl
	push hl
	call DrawHPBar
	pop hl
	ld a, [hFlags_0xFFF6]
	bit 0, a
	jr z, .printFractionBelowBar
	ld bc, $9 ; right of bar
	jr .printFraction
.printFractionBelowBar
	ld bc, SCREEN_WIDTH + 1 ; below bar
.printFraction
	add hl, bc
	ld de, wLoadedMonHP
	lb bc, 2, 3
	call PrintNumber
	ld a, "/"
	ld [hli], a
	ld de, wLoadedMonMaxHP
	lb bc, 2, 3
	call PrintNumber
	pop hl
	pop de
	ret


; Predef 0x37
StatusScreen:
	call LoadMonData
	ld a, [wMonDataLocation]
	cp BOX_DATA
	jr c, .DontRecalculate
; mon is in a box or daycare
	ld a, [wLoadedMonBoxLevel]
	ld [wLoadedMonLevel], a
	ld [wCurEnemyLVL], a
	ld hl, wLoadedMonHPExp - 1
	ld de, wLoadedMonStats
	ld b, $1
	call CalcStats ; Recalculate stats
.DontRecalculate
	ld hl, wd72c
	set 1, [hl]
	ld a, $33
	ld [rNR50], a ; Reduce the volume
	call GBPalWhiteOutWithDelay3
	call ClearScreen
	call UpdateSprites
	call LoadHpBarAndStatusTilePatterns
	ld de, BattleHudTiles1  ; source
	ld hl, vChars2 + $6d0 ; dest
	lb bc, BANK(BattleHudTiles1), $03
	call CopyVideoDataDouble ; ·│ :L and halfarrow line end
	ld de, BattleHudTiles2
	ld hl, vChars2 + $780
	lb bc, BANK(BattleHudTiles2), $01
	call CopyVideoDataDouble ; │
	ld de, BattleHudTiles3
	ld hl, vChars2 + $760
	lb bc, BANK(BattleHudTiles3), $02
	call CopyVideoDataDouble ; ─┘
	ld de, PTile
	ld hl, vChars2 + $720
	lb bc, BANK(PTile), (PTileEnd - PTile) / $8
	call CopyVideoDataDouble ; P (for PP), inline
	ld a, [hTilesetType]
	push af
	xor a
	ld [hTilesetType], a
	coord hl, 19, 1
	lb bc, 6, 10
	call DrawLineBox ; Draws the box around name, HP and status
	ld de, -6
	add hl, de
	ld [hl], "⠄" ; . after No ("." is a different one)
	dec hl
	ld [hl], "№"
	coord hl, 19, 9
	lb bc, 8, 6
	call DrawLineBox ; Draws the box around types, ID No. and OT
	coord hl, 10, 9
	ld de, Type1Text
	call PlaceString ; "TYPE1/"
	coord hl, 11, 3
	predef DrawHP
	ld hl, wStatusScreenHPBarColor
	call GetHealthBarColor
	; NUEVO PARA SHINY
	ld de, wLoadedMonDVs
	callba IsMonShiny
	ld hl, wShinyMonFlag
	jr nz, .shiny
	res 0, [hl]
	jr .setPal
.shiny
	set 0, [hl]
.setPal
; NUEVO PARA SHINY
	ld b, SET_PAL_STATUS_SCREEN
	call RunPaletteCommand
	coord hl, 16, 6
	ld de, wLoadedMonStatus
	call PrintStatusCondition
	jr nz, .StatusWritten
	coord hl, 16, 6
	ld de, OKText
	call PlaceString ; "OK"
.StatusWritten
	coord hl, 9, 6
	ld de, StatusText
	call PlaceString ; "STATUS/"
	coord hl, 14, 2
	call PrintLevel ; Pokémon level
	ld a, [wMonHIndex]
	ld [wd11e], a
	ld [wd0b5], a
	predef IndexToPokedex
	coord hl, 3, 7
	ld de, wd11e
	lb bc, LEADING_ZEROES | 1, 3
	call PrintNumber ; Pokémon no.
	coord hl, 11, 10
	predef PrintMonType
	ld hl, NamePointers2
	call .GetStringPointer
	ld d, h
	ld e, l
	coord hl, 9, 1
	call PlaceString ; Pokémon name
	ld hl, OTPointers
	call .GetStringPointer
	ld d, h
	ld e, l
	coord hl, 12, 16
	call PlaceString ; OT
	coord hl, 12, 14
	ld de, wLoadedMonOTID
	lb bc, LEADING_ZEROES | 2, 5
	call PrintNumber ; ID Number
	call PrintGenderStatusScreen ; NUEVO PARA GENEROS
	ld d, $0
	call PrintStatsBox
	call PrintShinySymbol ; NUEVO PARA SHINY
	call Delay3
	call GBPalNormal
	coord hl, 1, 0
	call LoadFlippedFrontSpriteByMonIndex ; draw Pokémon picture
	ld a, [wcf91]
	call PlayCry ; play Pokémon cry
	call WaitForTextScrollButtonPress ; wait for button
	pop af
	ld [hTilesetType], a
	ret

.GetStringPointer
	ld a, [wMonDataLocation]
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMonDataLocation]
	cp DAYCARE_DATA
	ret z
	ld a, [wWhichPokemon]
	jp SkipFixedLengthTextEntries

OTPointers:
	dw wPartyMonOT
	dw wEnemyMonOT
	dw wBoxMonOT
	dw wDayCareMonOT

NamePointers2:
	dw wPartyMonNicks
	dw wEnemyMonNicks
	dw wBoxMonNicks
	dw wDayCareMonName

Type1Text:
	db "TYPE1/", $4e

Type2Text:
	db "TYPE2/", $4e

IDNoText:
	db $73, "№/", $4e

OTText:
	db   "OT/"
	next "@"

StatusText:
	db "STATUS/@"

OKText:
	db "OK@"

; Draws a line starting from hl high b and wide c
DrawLineBox:
	ld de, SCREEN_WIDTH ; New line
.PrintVerticalLine
	ld [hl], $78 ; │
	add hl, de
	dec b
	jr nz, .PrintVerticalLine
	ld [hl], $77 ; ┘
	dec hl
.PrintHorizLine
	ld [hl], $76 ; ─
	dec hl
	dec c
	jr nz, .PrintHorizLine
	ld [hl], $6f ; ← (halfarrow ending)
	ret

PTile: ; This is a single 1bpp "P" tile
	INCBIN "gfx/p_tile.1bpp"
PTileEnd:

; NUEVO PARA SHINY
PrintShinySymbol:
	ld de, wLoadedMonDVs
	callba IsMonShiny
	ret z
	coord hl, 6, 7
	ld [hl], "⁂"
	ret
;NUEVO PARA SHINY

PrintStatsBox:
	ld a, d
	and a ; a is 0 from the status screen
	jr nz, .DifferentBox
	coord hl, 0, 8
	ld b, 8
	ld c, 8
	call TextBoxBorder ; Draws the box
	coord hl, 1, 9 ; Start printing stats from here
	ld bc, $0019 ; Number offset
	jr .PrintStats
.DifferentBox
	coord hl, 9, 2
	ld b, 8
	ld c, 9
	call TextBoxBorder
	coord hl, 11, 3
	ld bc, $0018
.PrintStats
	push bc
	push hl
	ld de, StatsText
	call PlaceString
	pop hl
	pop bc
	add hl, bc
	ld de, wLoadedMonAttack
	lb bc, 2, 3
	call PrintStat
	ld de, wLoadedMonDefense
	call PrintStat
	ld de, wLoadedMonSpeed
	call PrintStat
	ld de, wLoadedMonSpecial
	jp PrintNumber
PrintStat:
	push hl
	call PrintNumber
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ret

StatsText:
	db   "ATTACK"
	next "DEFENSE"
	next "SPEED"
	next "SPECIAL@"

StatusScreen2:
	ld a, [hTilesetType]
	push af
	xor a
	ld [hTilesetType], a
	ld [H_AUTOBGTRANSFERENABLED], a
	ld bc, NUM_MOVES + 1
	ld hl, wMoves
	call FillMemory
	ld hl, wLoadedMonMoves
	ld de, wMoves
	ld bc, NUM_MOVES
	call CopyData
	callab FormatMovesString
	coord hl, 9, 2
	lb bc, 5, 10
	call ClearScreenArea ; Clear under name
	coord hl, 19, 3
	ld [hl], $78
	coord hl, 0, 8
	ld b, 8
	ld c, 18
	call TextBoxBorder ; Draw move container
	coord hl, 2, 9
	ld de, wMovesString
	call PlaceString ; Print moves
	ld a, [wNumMovesMinusOne]
	inc a
	ld c, a
	ld a, $4
	sub c
	ld b, a ; Number of moves ?
	coord hl, 11, 10
	ld de, SCREEN_WIDTH * 2
	ld a, $72 ; special P tile id
	call StatusScreen_PrintPP ; Print "PP"
	ld a, b
	and a
	jr z, .InitPP
	ld c, a
	ld a, "-"
	call StatusScreen_PrintPP ; Fill the rest with --
.InitPP
	ld hl, wLoadedMonMoves
	coord de, 14, 10
	ld b, 0
.PrintPP
	ld a, [hli]
	and a
	jr z, .PPDone
	push bc
	push hl
	push de
	ld hl, wCurrentMenuItem
	ld a, [hl]
	push af
	ld a, b
	ld [hl], a
	push hl
	callab GetMaxPP
	pop hl
	pop af
	ld [hl], a
	pop de
	pop hl
	push hl
	ld bc, wPartyMon1PP - wPartyMon1Moves - 1
	add hl, bc
	ld a, [hl]
	and $3f
	ld [wStatusScreenCurrentPP], a
	ld h, d
	ld l, e
	push hl
	ld de, wStatusScreenCurrentPP
	lb bc, 1, 2
	call PrintNumber
	ld a, "/"
	ld [hli], a
	ld de, wMaxPP
	lb bc, 1, 2
	call PrintNumber
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ld d, h
	ld e, l
	pop hl
	pop bc
	inc b
	ld a, b
	cp $4
	jr nz, .PrintPP
.PPDone
; NUEVO TERCERA VENTANA DE STATS
    coord hl, 9, 3
	ld de, StatusScreenExpText
	call PlaceString
	ld a, [wLoadedMonLevel]
	push af
; NUEVO PARA MICOMON, DARKPIKA Y CATERMANO
	;cp MAX_LEVEL
	  push af
  ld a, [wLoadedMonSpecies]
  cp DARK_PIKA
  jr z, .especial
  cp MICOMON
  jr z, .especial
  cp CATERMANO
  jr z, .especial
  pop af
  cp MAX_LEVEL
  jr .topePuesto
.especial
  pop af
  cp MAX_LEVEL_ESPECIAL
.topePuesto
; NUEVO PARA MICOMON, DARKPIKA Y CATERMANO
	jr z, .Level100
	inc a
	ld [wLoadedMonLevel], a ; Increase temporarily if not 100
.Level100
	coord hl, 14, 6
	ld [hl], $70 ; 1-tile "to"
	inc hl
	inc hl
	call PrintLevel
	pop af
	ld [wLoadedMonLevel], a
	; NUEVO PARA TERCERA VENTANA DE STATS
	; backup loaded mon exp
	call BackupLoadedMonExp
	; NUEVO PARA TERCERA VENTANA DE STATS
	ld de, wLoadedMonExp
	coord hl, 12, 4
	lb bc, 3, 7
	call PrintNumber ; exp
	call CalcExpToLevelUp
	ld de, wLoadedMonExp
	coord hl, 7, 6
	lb bc, 3, 7
	call PrintNumber ; exp needed to level up
	; NUEVO PARA TERCERA VENTANA DE STATS
	; restore loaded mon exp
	call RestoreLoadedMonExp
	; NUEVO PARA TERCERA VENTANA DE STATS
	coord hl, 9, 0
	call StatusScreen_ClearName
	coord hl, 9, 1
	call StatusScreen_ClearName
	ld a, [wMonHIndex]
	ld [wd11e], a
	call GetMonName
	coord hl, 9, 1
	call PlaceString
	ld a, $1
	ld [H_AUTOBGTRANSFERENABLED], a
	call Delay3
	call WaitForTextScrollButtonPress ; wait for button
	pop af
	ld [hTilesetType], a
	ret
; DV and Stat Experience screen
StatusScreen3:
	ld a, [hTilesetType]
	push af
	xor a
	ld [hTilesetType], a
	ld [H_AUTOBGTRANSFERENABLED], a
	coord hl, 9, 2
	lb bc, 5, 10
	call ClearScreenArea ; Clear under name
	coord hl, 19, 3
	ld [hl], $78
	coord hl, 0, 8
	ld b, 8
	ld c, 18
	call TextBoxBorder ; Draw move container
	call StatusScreenPlaceDVLabels
	call StatusScreenPlaceDVStats
	call StatusScreenPlaceStatExpLabels
	call StatusScreenPlaceStatExpStats

; NUEVO TERCERA VENTANA DE STATS
	coord hl, 9, 3
	ld de, StatusScreenExpText
	call PlaceString
	ld a, [wLoadedMonLevel]
	push af
; NUEVO PARA MICOMON, DARKPIKA Y CATERMANO
	;cp MAX_LEVEL
	  push af
  ld a, [wLoadedMonSpecies]
  cp DARK_PIKA
  jr z, .especial2
  cp MICOMON
  jr z, .especial2
  cp CATERMANO
  jr z, .especial2
  pop af
  cp MAX_LEVEL
  jr .topePuesto2
.especial2
  pop af
  cp MAX_LEVEL_ESPECIAL
.topePuesto2
; NUEVO PARA MICOMON, DARKPIKA Y CATERMANO
	jr z, .Level100
	inc a
	ld [wLoadedMonLevel], a ; Increase temporarily if not 100
.Level100
	coord hl, 14, 6
	ld [hl], $70 ; 1-tile "to"
	inc hl
	inc hl
	call PrintLevel
	pop af
	ld [wLoadedMonLevel], a
	ld de, wLoadedMonExp
	coord hl, 12, 4
	lb bc, 3, 7
	call PrintNumber ; exp
	call CalcExpToLevelUp
	ld de, wLoadedMonExp
	coord hl, 7, 6
	lb bc, 3, 7
	call PrintNumber ; exp needed to level up
	coord hl, 9, 0
	call StatusScreen_ClearName
	coord hl, 9, 1
	call StatusScreen_ClearName
	ld a, [wMonHIndex]
	ld [wd11e], a
	call GetMonName
	coord hl, 9, 1
	call PlaceString
	ld a, $1
	ld [H_AUTOBGTRANSFERENABLED], a
	call Delay3
	call WaitForTextScrollButtonPress ; wait for button
	pop af
	ld [hTilesetType], a
	ld hl, wd72c
	res 1, [hl]
	ld a, $77
	ld [rNR50], a
	call GBPalWhiteOut
	jp ClearScreen

CalcExpToLevelUp:
	ld a, [wLoadedMonLevel]
; NUEVO PARA MICOMON, DARKPIKA Y CATERMANO
	;cp MAX_LEVEL
		  push af
  ld a, [wLoadedMonSpecies]
  cp DARK_PIKA
  jr z, .especial3
  cp MICOMON
  jr z, .especial3
  cp CATERMANO
  jr z, .especial3
  pop af
  cp MAX_LEVEL
  jr .topePuesto3
.especial3
  pop af
  cp MAX_LEVEL_ESPECIAL
.topePuesto3
; NUEVO PARA MICOMON, DARKPIKA Y CATERMANO
	jr z, .atMaxLevel
	inc a
	ld d, a
	callab CalcExperience
	ld hl, wLoadedMonExp + 2
	ld a, [hExperience + 2]
	sub [hl]
	ld [hld], a
	ld a, [hExperience + 1]
	sbc [hl]
	ld [hld], a
	ld a, [hExperience]
	sbc [hl]
	ld [hld], a
	ret
.atMaxLevel
	ld hl, wLoadedMonExp
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

StatusScreenExpText:
	db   "EXP POINTS"
	next "LEVEL UP@"

StatusScreen_ClearName:
	ld bc, 10
	ld a, " "
	jp FillMemory

StatusScreen_PrintPP:
; print PP or -- c times, going down two rows each time
	ld [hli], a
	ld [hld], a
	add hl, de
	dec c
	jr nz, StatusScreen_PrintPP
	ret

; NUEVO TERCERA VENTANA DE STATS
; places DV labels on screen
StatusScreenPlaceDVLabels:
	coord hl, 1, 9
	ld de, DVsString
	call PlaceString
	coord hl, 1, 11
	ld de, HPString
	call PlaceString
	coord hl, 1, 12
	ld de, AttackString
	call PlaceString
	coord hl, 1, 13
	ld de, DefenseString
	call PlaceString
	coord hl, 1, 14
	ld de, SpeedString
	call PlaceString
	coord hl, 1, 15
	ld de, SpecialString
	call PlaceString
	ret

; places DV data on screen
StatusScreenPlaceDVStats:
	; modified, originally by:
	; by Aurelio Mannara - BitBuilt 2017
	; ShockSlayer helped ( °v°)
	ld de, wLoadedMonDVs
	ld a, [de]
	ld b, a
	inc de
	ld a, [de]
	ld c, a
	push bc
	

	ld de, wLoadedMonDVs
	ld a, 0
	ld [de], a
	inc de
	pop bc
	ld a, b
	push bc
	and $f0
	swap a
	ld [de], a
	coord hl, 5, 12 ; atk disp coords
	lb bc, LEADING_ZEROES | 2, 2
	ld de, wLoadedMonDVs
	call PrintNumber

	ld de, wLoadedMonDVs
	ld a, 0
	ld [de], a
	inc de
	pop bc
	ld a, b
	push bc
	and $f
	ld [de], a
	coord hl, 5, 13 ; def disp coords
	lb bc, LEADING_ZEROES | 2, 2
	ld de, wLoadedMonDVs
	call PrintNumber

	ld de, wLoadedMonDVs
	ld a, 0
	ld [de], a
	inc de
	pop bc
	ld a, c
	push bc
	and $f0
	swap a
	ld [de], a
	coord hl, 5, 14 ; spe disp coords
	lb bc, LEADING_ZEROES | 2, 2
	ld de, wLoadedMonDVs
	call PrintNumber

	ld de, wLoadedMonDVs
	ld a, 0
	ld [de], a
	inc de
	pop bc
	ld a, c
	push bc
	and $f
	ld [de], a
	coord hl, 5, 15 ; spc disp coords
	lb bc, LEADING_ZEROES | 2, 2
	ld de, wLoadedMonDVs
	call PrintNumber

	ld de, wLoadedMonDVs
	ld a, 0
	ld [de], a
	inc de
	pop bc
	bit 4, b
	jr z, .noAttackHP
	set 3, a
.noAttackHP
	bit 0, b
	jr z, .noDefenseHP
	set 2, a
.noDefenseHP
	bit 4, c
	jr z, .noSpeedHP
	set 1, a
.noSpeedHP
	bit 0, c
	jr z, .noSpecialHP
	set 0, a
.noSpecialHP
	push bc
	ld [de], a
	coord hl, 5, 11 ; hp disp coords
	lb bc, LEADING_ZEROES | 2, 2
	ld de, wLoadedMonDVs
	call PrintNumber

	ld de, wLoadedMonDVs
	pop bc
	ld a, b
	ld [de], a
	inc de
	ld a, c
	ld [de], a

	ret
; places stat experience labels on screen
StatusScreenPlaceStatExpLabels:
	coord hl, 10, 9
	ld de, StatExpString
	call PlaceString
	coord hl, 10, 11
	ld de, HPString
	call PlaceString
	coord hl, 10, 12
	ld de, AttackString
	call PlaceString
	coord hl, 10, 13
	ld de, DefenseString
	call PlaceString
	coord hl, 10, 14
	ld de, SpeedString
	call PlaceString
	coord hl, 10, 15
	ld de, SpecialString
	call PlaceString
	ret

; places stat experience values on screen
StatusScreenPlaceStatExpStats:
	lb bc, LEADING_ZEROES | 2, 5
	coord hl, 14, 11
	ld de, wLoadedMonHPExp
	call PrintNumber
	coord hl, 14, 12
	ld de, wLoadedMonAttackExp
	call PrintNumber
	coord hl, 14, 13
	ld de, wLoadedMonDefenseExp
	call PrintNumber
	coord hl, 14, 14
	ld de, wLoadedMonSpeedExp
	call PrintNumber
	coord hl, 14, 15
	ld de, wLoadedMonSpecialExp
	call PrintNumber
	ret
	
BackupLoadedMonExp:
	push bc
	push de
	push hl
	ld b, 0
	ld c, 3
	ld hl, wLoadedMonExp
	ld de, wBuffer
	call CopyData
	pop hl
	pop de
	pop bc
	ret

RestoreLoadedMonExp:
	push bc
	push de
	push hl
	ld b, 0
	ld c, 3
	ld hl, wBuffer
	ld de, wLoadedMonExp
	call CopyData
	pop hl
	pop de
	pop bc
	ret

; Third screen text
DVsString:     db "DVs@"
StatExpString: db "EXP@"
HPString:      db "HP@"
AttackString:  db "ATK@"
DefenseString: db "DEF@"
SpeedString:   db "SPD@"
SpecialString: db "SPC@"
DebugString:   db "DEBUG STR@"
; NUEVO TERCERA VENTANA DE STATS

; NUEVO PARA GENEROS
PrintGenderStatusScreen:
	ld a, [wLoadedMonSpecies]
	ld [wd11e], a
	ld de, wLoadedMonDVs
	callba GetMonGender
	ld a, [wd11e]
	and a
	jr z, .noGender
	dec a
	jr z, .male
	; else female
	ld a, "♀"
	jr .printSymbol
.male
	ld a, "♂"
	jr .printSymbol
.noGender
	ld a, " "
.printSymbol
	coord hl, 17, 2
	ld [hl], a
	ret
; NUEVO PARA GENEROS

