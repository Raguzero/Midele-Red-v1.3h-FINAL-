PewterPokecenterScript:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

PewterPokecenterTextPointers:
	dw PewterHealNurseText
	dw PewterPokecenterText2
	dw PewterJigglypuffText
	dw PewterTradeNurseText
	dw PewterPokecenterText3

PewterHealNurseText:
	TX_POKECENTER_NURSE

PewterPokecenterText2:
	TX_FAR _PewterPokecenterText2
	db "@"
	
PewterPokecenterText3:
	TX_FAR MoveRelearnerText1
	db "@"

PewterJigglypuffText:
	TX_ASM
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .Text
	call PrintText
	StopAllMusic
	ld c, 32
	call DelayFrames
	ld hl, JigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections
	ld bc, JigglypuffFacingDirectionsEnd - JigglypuffFacingDirections
	call CopyData

	ld a, [Sprite03SpriteImageIdx]
	ld hl, wJigglypuffFacingDirections
.findMatchingFacingDirectionLoop
	cp [hl]
	inc hl
	jr nz, .findMatchingFacingDirectionLoop
	dec hl
	push hl
	ld c, 0 ; BANK(Music_JigglypuffSong)
	ld a, MUSIC_JIGGLYPUFF_SONG
	call PlayMusic
	pop hl
.loop
	ld a, [hl]
	ld [Sprite03SpriteImageIdx], a

; rotate the array
	push hl
	ld hl, wJigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections - 1
	ld bc, JigglypuffFacingDirectionsEnd - JigglypuffFacingDirections
	call CopyData
	ld a, [wJigglypuffFacingDirections - 1]
	ld [wJigglypuffFacingDirections + 3], a
	pop hl

	ld c, 24
	call DelayFrames

	push hl
	call IsSongPlaying
	pop hl
	jr c, .loop

	ld c, 48
	call DelayFrames
	call PlayDefaultMusic
	jp TextScriptEnd
	
.Text
	TX_FAR _PewterJigglypuffText
	db "@"

IsSongPlaying::
	; ch1 on?
	ld hl, Channel1 + Channel1Flags - Channel1
	bit 0, [hl]
	jr nz, .playing
	; ch2 on?
	ld hl, Channel2 + Channel1Flags - Channel1
	bit 0, [hl]
	jr nz, .playing
	; ch3 on?
	ld hl, Channel3 + Channel1Flags - Channel1
	bit 0, [hl]
	jr nz, .playing
	; ch4 on?
	ld hl, Channel4 + Channel1Flags - Channel1
	bit 0, [hl]
	jr z, .notPlaying
.playing
	scf
	ret
.notPlaying
	xor a
	ret

JigglypuffFacingDirections:
	db $30 | SPRITE_FACING_DOWN
	db $30 | SPRITE_FACING_LEFT
	db $30 | SPRITE_FACING_UP
	db $30 | SPRITE_FACING_RIGHT
JigglypuffFacingDirectionsEnd:

PewterTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST
