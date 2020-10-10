DiglettsCaveScript:
; NUEVO ENTRENADORES CUEVA DIGGLET
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, DiglettsCaveTrainerHeaders
	ld de, DiglettsCaveScriptPointers
	ld a, [wDiglettsCaveCurScript]
	call ExecuteCurMapScriptInTable
	ld [wDiglettsCaveCurScript], a
	ret

DiglettsCaveScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
; NUEVO ENTRENADORES CUEVA DIGGLET

DiglettsCaveTextPointers:
; NUEVO ENTRENADORES CUEVA DIGGLET
    dw DiglettsCaveText5
	dw DiglettsCaveText6
	dw DiglettsCaveText7 
	dw DiglettsCaveText8 
	;db "@"

DiglettsCaveTrainerHeaders:
DiglettsCaveTrainerHeader0:
	dbEventFlagBit EVENT_CUEVA_DIGGLET_1   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CUEVA_DIGGLET_1  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw DiglettsCaveBattleText2 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText2 ; TextAfterBattle
	dw DiglettsCaveEndBattleText2 ; TextEndBattle
	dw DiglettsCaveEndBattleText2 ; TextEndBattle

DiglettsCaveTrainerHeader1:
	dbEventFlagBit EVENT_CUEVA_DIGGLET_2   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CUEVA_DIGGLET_2  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw DiglettsCaveBattleText3 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText3 ; TextAfterBattle
	dw DiglettsCaveEndBattleText3 ; TextEndBattle
	dw DiglettsCaveEndBattleText3 ; TextEndBattle

DiglettsCaveTrainerHeader2:
	dbEventFlagBit EVENT_CUEVA_DIGGLET_3   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CUEVA_DIGGLET_3  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw DiglettsCaveBattleText4 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText4 ; TextAfterBattle
	dw DiglettsCaveEndBattleText4 ; TextEndBattle
	dw DiglettsCaveEndBattleText4 ; TextEndBattle

DiglettsCaveTrainerHeader3:
	dbEventFlagBit EVENT_CUEVA_DIGGLET_4   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CUEVA_DIGGLET_4  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw DiglettsCaveBattleText5 ; TextBeforeBattle
	dw DiglettsCaveAfterBattleText5 ; TextAfterBattle
	dw DiglettsCaveEndBattleText5 ; TextEndBattle
	dw DiglettsCaveEndBattleText5 ; TextEndBattle
	
	db $ff
	
DiglettsCaveText5:
	TX_ASM
	ld hl, DiglettsCaveTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

DiglettsCaveBattleText2:
	TX_FAR _DiglettsCaveBattleText2
	db "@"

DiglettsCaveEndBattleText2:
	TX_FAR _DiglettsCaveEndBattleText2
	db "@"

DiglettsCaveAfterBattleText2:
	TX_FAR _DiglettsCaveAfterBattleText2
	db "@"

DiglettsCaveText6:
	TX_ASM
	ld hl, DiglettsCaveTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

DiglettsCaveBattleText3:
	TX_FAR _DiglettsCaveBattleText3
	db "@"

DiglettsCaveEndBattleText3:
	TX_FAR _DiglettsCaveEndBattleText3
	db "@"

DiglettsCaveAfterBattleText3:
	TX_FAR _DiglettsCaveAfterBattleText3
	db "@"

DiglettsCaveText7:
	TX_ASM
	ld hl, DiglettsCaveTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

DiglettsCaveBattleText4:
	TX_FAR _DiglettsCaveBattleText4
	db "@"

DiglettsCaveEndBattleText4:
	TX_FAR _DiglettsCaveEndBattleText4
	db "@"

DiglettsCaveAfterBattleText4:
	TX_FAR _DiglettsCaveAfterBattleText4
	db "@"

DiglettsCaveText8:
	TX_ASM
	ld hl, DiglettsCaveTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

DiglettsCaveBattleText5:
	TX_FAR _DiglettsCaveBattleText5
	db "@"

DiglettsCaveEndBattleText5:
	TX_FAR _DiglettsCaveEndBattleText5
	db "@"

DiglettsCaveAfterBattleText5:
	TX_FAR _DiglettsCaveAfterBattleText5
	db "@"
; NUEVO ENTRENADORES CUEVA DIGGLET
