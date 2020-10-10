ViridianForestScript:
	call EnableAutoTextBoxDrawing
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
	;ld hl, ViridianForestTrainerHeader0
	ld hl, ViridianForestTrainerHeaders
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
	ld de, ViridianForestScriptPointers
	ld a, [wViridianForestCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianForestCurScript], a
	ret

ViridianForestScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

ViridianForestTextPointers:
	dw ViridianForestText1
	dw ViridianForestText2
	dw ViridianForestText3
	dw ViridianForestText4
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW	
	dw ViridianForestText5
	dw ViridianForestText6
	dw ViridianForestText7
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW	
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW	
	;dw ViridianForestText8
	;dw ViridianForestText9
	;dw ViridianForestText10
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW	
	dw ViridianForestText11
	dw ViridianForestText12
	dw ViridianForestText13
	dw ViridianForestText14
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW	
	dw ViridianForestText15
	dw ViridianForestText16
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW	

ViridianForestTrainerHeaders: ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
ViridianForestTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0
	dw ViridianForestBattleText1 ; TextBeforeBattle
	dw ViridianForestAfterBattleText1 ; TextAfterBattle
	dw ViridianForestEndBattleText1 ; TextEndBattle
	dw ViridianForestEndBattleText1 ; TextEndBattle

ViridianForestTrainerHeader1:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1
	dw ViridianForestBattleText2 ; TextBeforeBattle
	dw ViridianForestAfterBattleText2 ; TextAfterBattle
	dw ViridianForestEndBattleText2 ; TextEndBattle
	dw ViridianForestEndBattleText2 ; TextEndBattle

ViridianForestTrainerHeader2:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2
	dw ViridianForestBattleText3 ; TextBeforeBattle
	dw ViridianForestAfterBattleText3 ; TextAfterBattle
	dw ViridianForestEndBattleText3 ; TextEndBattle
	dw ViridianForestEndBattleText3 ; TextEndBattle

	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
ViridianForestTrainerHeader3:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3
	dw ViridianForestBattleText4 ; TextBeforeBattle
	dw ViridianForestAfterBattleText4 ; TextAfterBattle
	dw ViridianForestEndBattleText4 ; TextEndBattle
	dw ViridianForestEndBattleText4 ; TextEndBattle

ViridianForestTrainerHeader4:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_4
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_4
	dw ViridianForestBattleText5 ; TextBeforeBattle
	dw ViridianForestAfterBattleText5 ; TextAfterBattle
	dw ViridianForestEndBattleText5 ; TextEndBattle
	dw ViridianForestEndBattleText5 ; TextEndBattle
	; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW

	db $ff

ViridianForestText1:
	TX_FAR _ViridianForestText1
	db "@"

ViridianForestText2:
	TX_ASM
	ld hl, ViridianForestTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestText3:
	TX_ASM
	ld hl, ViridianForestTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestText4:
	TX_ASM
	ld hl, ViridianForestTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
ViridianForestText5:
	TX_ASM
	ld hl, ViridianForestTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestText6:
	TX_ASM
	ld hl, ViridianForestTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestText7:
	TX_FAR _ViridianForestText7
	db "@"
 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW

ViridianForestBattleText1:
	TX_FAR _ViridianForestBattleText1
	db "@"

ViridianForestEndBattleText1:
	TX_FAR _ViridianForestEndBattleText1
	db "@"

ViridianForestAfterBattleText1:
	TX_FAR _ViridianFrstAfterBattleText1
	db "@"

ViridianForestBattleText2:
	TX_FAR _ViridianForestBattleText2
	db "@"

ViridianForestEndBattleText2:
	TX_FAR _ViridianForestEndBattleText2
	db "@"

ViridianForestAfterBattleText2:
	TX_FAR _ViridianFrstAfterBattleText2
	db "@"

ViridianForestBattleText3:
	TX_FAR _ViridianForestBattleText3
	db "@"

ViridianForestEndBattleText3:
	TX_FAR _ViridianForestEndBattleText3
	db "@"

ViridianForestAfterBattleText3:
	TX_FAR _ViridianFrstAfterBattleText3
	db "@"

 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
;ViridianForestText8:
;	TX_FAR _ViridianForestText8

ViridianForestBattleText4:
	TX_FAR _ViridianForestBattleText4
	db "@"

ViridianForestEndBattleText4:
	TX_FAR _ViridianForestEndBattleText4
 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
    db "@"

 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
;ViridianForestText9:
;	TX_FAR _ViridianForestText9
ViridianForestAfterBattleText4:
	TX_FAR _ViridianForestAfterBattleText4
 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
	db "@"

 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
;ViridianForestText10:
;	TX_FAR _ViridianForestText10
ViridianForestBattleText5:
	TX_FAR _ViridianForestBattleText5
	db "@"

ViridianForestEndBattleText5:
	TX_FAR _ViridianForestEndBattleText5
	db "@"

ViridianForestAfterBattleText5:
	TX_FAR _ViridianForestAfterBattleText5
 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
	db "@"

ViridianForestText11:
	TX_FAR _ViridianForestText11
	db "@"

ViridianForestText12:
	TX_FAR _ViridianForestText12
	db "@"

ViridianForestText13:
	TX_FAR _ViridianForestText13
	db "@"

ViridianForestText14:
	TX_FAR _ViridianForestText14
	db "@"

; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
ViridianForestText15:
	TX_FAR _ViridianForestText15
	db "@"

ViridianForestText16:
	TX_FAR _ViridianForestText16
	db "@"
 ; NUEVO PARA ENTRENADORES BOSQUE VERDE YELLOW
 