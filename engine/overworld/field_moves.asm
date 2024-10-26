; Copied pretty much verbatim from code by Yenatch
; Then copied from Mateo - Cheers for all the help, dude! 
TryFieldMove:: ; predef
	call GetPredefRegisters

.Main:
	call TrySurf
	ret z
	call TryCut
;	ret z
	ret

TrySurf:
	ld a, [wWalkBikeSurfState]
	cp 2
	jr z, .no

	call IsSurfTile
	jr nc, .no
	
; Check to make sure you aren't on top of a cliff or something.
	ld hl,TilePairCollisionsWater
	call CheckForTilePairCollisions2
	jr c, .no

	ld d, SURF
	call HasPartyMove
	jr z, .checkBadge
	call CanPartyLearnMove
	jr nz, .no
	ld b, HM_03
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	jr z, .no
.checkBadge
	ld a, [wObtainedBadges]
	bit 4, a ; SOUL_BADGE
	jr z, .no
	
; Are we allowed to surf here?
	call Text2_EnterTheText
	callba IsSurfingAllowed
	ld hl,wd728
	bit 1,[hl]
	res 1,[hl]
	jr z,.no2

	ld hl,WaterIsCalmTxt
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .no2

	call GetPartyMonName2
	ld a, SURFBOARD
	ld [wcf91], a
	ld [wPseudoItemID], a
	call UseItem
	call Text3_DrakesDeception

.yes
	xor a
	ret

.no2
	call Text3_DrakesDeception
	
.no
	ld a, 1
	and a
	ret

TryCut:
	call IsCutTile
	jr nc, .no
	
	call Text2_EnterTheText
	ld hl,CanBeCutTxt
	call PrintText
	call ManualTextScroll

	ld d, CUT
	call HasPartyMove
	jr z, .checkBadge
	call CanPartyLearnMove
	jr nz, .no2
	ld b, HM_01
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	jr z, .no2
.checkBadge
	ld a, [wObtainedBadges]
    bit 1, a ; CASCADE_BADGE
	jr z, .no2

	ld hl,WantToCutTxt
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .no2
	
	call GetPartyMonName2
	farcall Cut2
	call Text3_DrakesDeception

.yes
	xor a
	ret

.no2
	call Text3_DrakesDeception

.no
	ld a, 1
	and a
	ret


IsSurfTile:
	ld a, [wCurMapTileset]
	ld hl, WaterTilesets2
	ld de,1
	call IsInArray
	jr nc, .no

	ld a, [wCurMapTileset]
	cp SHIP_PORT
	ld a, [wTileInFrontOfPlayer]
	jr z, .ok
	cp $48 ; east shore (safari zone)
	jr z, .yes
	cp $32 ; east shore
	jr z, .yes
.ok
	cp $14 ; water
	jr z, .yes
.no
	and a
	ret
.yes
	scf
	ret

; tilesets with water
WaterTilesets2: ; e8e0 (3:68e0)
	db OVERWORLD
	db FOREST
	db GYM
	db SHIP
	db SHIP_PORT
	db CAVERN
	db FACILITY
	db PLATEAU
	db -1

IsCutTile:
	ld a, [wCurMapTileset]
	and a ; OVERWORLD
	jr z, .overworld

	cp GYM
	jr z, .gym

	jr .no

.gym
	ld a, [wTileInFrontOfPlayer]
	cp $50 ; gym cut tree
	jr z, .yes
	jr .no

.overworld
	ld a, [wTileInFrontOfPlayer]
	cp $3d ; cut tree
	jr z, .yes
;	cp $52 ; grass
;	jr z, .yes
;	jr .no

.no
	and a
	ret
.yes
	scf
	ret


HasPartyMove::
; Return z (optional: in wWhichTrade) if a PartyMon has move d.
; Updates wWhichPokemon.

	push bc
	push de
	push hl

	ld a, [wPartyCount]
	and a
	jr z, .no
	ld b, a
	ld c, 0
	ld hl, wPartyMons + (wPartyMon1Moves - wPartyMon1)
.loop
	ld e, NUM_MOVES
.check_move
	ld a, [hli]
	cp d
	jr z, .yes
	dec e
	jr nz, .check_move

	ld a, wPartyMon2 - wPartyMon1 - NUM_MOVES
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a

	inc c
	ld a, c
	cp b
	jr c, .loop
	jr .no

.yes
	ld a, c
	ld [wWhichPokemon], a
	xor a ; probably redundant
	ld [wWhichTrade], a
	jr .done
.no
	ld a, 1
	and a
	ld [wWhichTrade], a
.done
	pop hl
	pop de
	pop bc
	ret

CanPartyLearnMove::
; Return z (optional: in wWhichTrade) if a PartyMon can learn move d.
; Updates wWhichPokemon.
	push bc
	push de
	push hl
	ld a, d
	ld [wMoveNum], a
	ld a, [wPartyCount]
	and a
	jr z, .no
	ld e, a
	ld d, 0
	ld hl, wPartyMon1Species
.loop
	ld a, [hl]
	ld [wcf91],a
	push de
	predef CanLearnTM ; check if the pokemon can learn the move
	pop de
	ld a,c
	and a
	jr nz,.yes
	inc d
	ld a, d
	cp e
	jr z, .no
	ld hl, wPartyMon1Species
    ld bc, wPartyMon2 - wPartyMon1
    call AddNTimes
	jr .loop
.yes
	ld a, d
	ld [wWhichPokemon], a
	xor a ; probably redundant
	ld [wWhichTrade], a
	jr .done
.no
	ld a, 1
	and a
	ld [wWhichTrade], a
.done
	pop hl
	pop de
	pop bc
	ret

Text2_EnterTheText:
	call EnableAutoTextBoxDrawing
	ld a, 1 ; not 0
	ld [hSpriteIndexOrTextID], a
	farcall DisplayTextIDInit
	ret

Text3_DrakesDeception:
	ld a,[H_LOADEDROMBANK]
	push af
	jp CloseTextDisplay
	
CanBeCutTxt:
	text "This tree can be"
	line "CUT!@@"
	
WantToCutTxt:
	text "Would you like to"
	line "use CUT?@@"
	
WaterIsCalmTxt:
	text "The water is calm."
	line "Would you like to"
	cont "use SURF?@@"
