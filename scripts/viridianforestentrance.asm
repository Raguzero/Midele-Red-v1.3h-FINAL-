ViridianForestEntranceScript:
	jp EnableAutoTextBoxDrawing

ViridianForestEntranceTextPointers:
	dw ViridianForestEntranceText1
	dw ViridianForestEntranceText2
	dw ViridianForestEntranceText3 ; NUEVO PARA TOGEPI REGALO

ViridianForestEntranceText1:
	TX_FAR _ViridianForestEntranceText1
	db "@"

ViridianForestEntranceText2:
	TX_FAR _ViridianForestEntranceText2
	db "@"

; NUEVO REGALO TOGEPI
ViridianForestEntranceText3:
	TX_ASM
	CheckEvent EVENT_TOGEPI
	jr nz, .asm_515d5
	ld hl, MeetTogepiGuyText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_515d0
	ld a, TOGEPI
	ld [wd11e], a
	ld [wcf91], a
	call GetMonName
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	lb bc, TOGEPI, 5
	call GivePokemon
	jp nc, TextScriptEnd
	ld a, [wAddedToParty]
	and a
	call z, WaitForTextScrollButtonPress
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, HeresYourTogepiText
	call PrintText
	SetEvent EVENT_TOGEPI
	jp TextScriptEnd

.asm_515d0
	ld hl, TogepiGuySavedText
	jr .asm_515d8

.asm_515d5
	ld hl, TogepiGuySavedText2
.asm_515d8
	call PrintText
	jp TextScriptEnd

MeetTogepiGuyText:
	TX_FAR _MeetTogepiGuyText
	db "@"

HeresYourTogepiText:
	TX_FAR _HeresYourTogepiText
	db $d
	db "@"

TogepiGuySavedText:
	TX_FAR _TogepiGuySavedText
	db "@"

TogepiGuySavedText2:
	TX_FAR _TogepiGuySavedText2
	db "@"
; NUEVO REGALO TOGEPI
