UnknownDungeon2Script:
    ; NUEVO RESPAWN LEGEND
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, UnknownDungeon2TrainerHeaders
	ld de, UnknownDungeon2ScriptPointers
	ld a, [wUnknownDungeon2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wUnknownDungeon2CurScript], a
	ResetUncaughtPokemon MEWTWO     ; NUEVO RESPAWN LEGEND
	ret
	
UnknownDungeon2ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	; NUEVO
	
	
UnknownDungeon2TextPointers:
	dw UnknownDungeon2Text2
	dw UnknownDungeon2Text3
	dw UnknownDungeon2Text4
	dw UnknownDungeon2Text5
	dw UnknownDungeon2Text6
	dw UnknownDungeon2Text7
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText

UnknownDungeon2TrainerHeaders:
UnknownDungeon2TrainerHeader0:
	dbEventFlagBit EVENT_GRIM   ; DE MOMENTO ESTE
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_GRIM  ; DE MOMENTO ESTE
	dw UnknownDungeon2BattleText3 ; TextBeforeBattle
	dw UnknownDungeon2AfterBattleText3 ; TextAfterBattle
	dw UnknownDungeon2EndBattleText3 ; TextEndBattle
	dw UnknownDungeon2WinBattleText3 ; TextEndBattle	

UnknownDungeon2TrainerHeader1:
	dbEventFlagBit EVENT_VLADILAND   ; DE MOMENTO ESTE
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_VLADILAND  ; DE MOMENTO ESTE
	dw UnknownDungeon2BattleText4 ; TextBeforeBattle
	dw UnknownDungeon2AfterBattleText4 ; TextAfterBattle
	dw UnknownDungeon2EndBattleText4 ; TextEndBattle
	dw UnknownDungeon2WinBattleText4 ; TextEndBattle	
	
UnknownDungeon2TrainerHeader2:
	dbEventFlagBit EVENT_JPROGAMER   ; DE MOMENTO ESTE
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_JPROGAMER  ; DE MOMENTO ESTE
	dw UnknownDungeon2BattleText5 ; TextBeforeBattle
	dw UnknownDungeon2AfterBattleText5 ; TextAfterBattle
	dw UnknownDungeon2EndBattleText5 ; TextEndBattle
	dw UnknownDungeon2WinBattleText5 ; TextEndBattle	

UnknownDungeon2TrainerHeader3:
	dbEventFlagBit EVENT_MAUS   ; DE MOMENTO ESTE
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MAUS  ; DE MOMENTO ESTE
	dw UnknownDungeon2BattleText6 ; TextBeforeBattle
	dw UnknownDungeon2AfterBattleText6 ; TextAfterBattle
	dw UnknownDungeon2EndBattleText6 ; TextEndBattle
	dw UnknownDungeon2WinBattleText6 ; TextEndBattle
	
UnknownDungeon2TrainerHeader4:
	dbEventFlagBit EVENT_MERUM   ; DE MOMENTO ESTE
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MERUM  ; DE MOMENTO ESTE
	dw UnknownDungeon2BattleText7 ; TextBeforeBattle
	dw UnknownDungeon2AfterBattleText7 ; TextAfterBattle
	dw UnknownDungeon2EndBattleText7 ; TextEndBattle
	dw UnknownDungeon2WinBattleText7 ; TextEndBattle

UnknownDungeon2TrainerHeader5:
	dbEventFlagBit EVENT_SAPPHIRE   ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_SAPPHIRE  ; DE MOMENTO ESTE
	dw UnknownDungeon2BattleText8 ; TextBeforeBattle
	dw UnknownDungeon2AfterBattleText8 ; TextAfterBattle
	dw UnknownDungeon2EndBattleText8 ; TextEndBattle
	dw UnknownDungeon2WinBattleText8 ; TextEndBattle

	db $ff

UnknownDungeon2Text2:
	TX_ASM
	ld hl, UnknownDungeon2TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon2BattleText3:
	TX_FAR _UnknownDungeon2BattleText3
	db "@"

UnknownDungeon2EndBattleText3:
	TX_FAR _UnknownDungeon2EndBattleText3
	db "@"

UnknownDungeon2AfterBattleText3:
	TX_FAR _UnknownDungeon2AfterBattleText3
	db "@"

UnknownDungeon2WinBattleText3:
	TX_FAR _UnknownDungeon2WinBattleText3
	db "@"

UnknownDungeon2Text3:
	TX_ASM
	ld hl, UnknownDungeon2TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon2BattleText4:
	TX_FAR _UnknownDungeon2BattleText4
	db "@"

UnknownDungeon2EndBattleText4:
	TX_FAR _UnknownDungeon2EndBattleText4
	db "@"

UnknownDungeon2AfterBattleText4:
	TX_FAR _UnknownDungeon2AfterBattleText4
	db "@"

UnknownDungeon2WinBattleText4:
	TX_FAR _UnknownDungeon2WinBattleText4
	db "@"

UnknownDungeon2Text4:
	TX_ASM
	ld hl, UnknownDungeon2TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon2BattleText5:
	TX_FAR _UnknownDungeon2BattleText5
	db "@"

UnknownDungeon2EndBattleText5:
	TX_FAR _UnknownDungeon2EndBattleText5
	db "@"

UnknownDungeon2AfterBattleText5:
	TX_FAR _UnknownDungeon2AfterBattleText5
	db "@"

UnknownDungeon2WinBattleText5:
	TX_FAR _UnknownDungeon2WinBattleText5
	db "@"

UnknownDungeon2Text5:
	TX_ASM
	ld hl, UnknownDungeon2TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon2BattleText6:
	TX_FAR _UnknownDungeon2BattleText6
	db "@"

UnknownDungeon2EndBattleText6:
	TX_FAR _UnknownDungeon2EndBattleText6
	db "@"

UnknownDungeon2AfterBattleText6:
	TX_FAR _UnknownDungeon2AfterBattleText6
	db "@"

UnknownDungeon2WinBattleText6:
	TX_FAR _UnknownDungeon2WinBattleText6
	db "@"

UnknownDungeon2Text6:
	TX_ASM
	ld hl, UnknownDungeon2TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon2BattleText7:
	TX_FAR _UnknownDungeon2BattleText7
	db "@"

UnknownDungeon2EndBattleText7:
	TX_FAR _UnknownDungeon2EndBattleText7
	db "@"

UnknownDungeon2AfterBattleText7:
	TX_FAR _UnknownDungeon2AfterBattleText7
	db "@"

UnknownDungeon2WinBattleText7:
	TX_FAR _UnknownDungeon2WinBattleText7
	db "@"

UnknownDungeon2Text7:
	TX_ASM
	ld hl, UnknownDungeon2TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon2BattleText8:
	TX_FAR _UnknownDungeon2BattleText8
	db "@"

UnknownDungeon2EndBattleText8:
	TX_FAR _UnknownDungeon2EndBattleText8
	db "@"

UnknownDungeon2AfterBattleText8:
	TX_FAR _UnknownDungeon2AfterBattleText8
	db "@"

UnknownDungeon2WinBattleText8:
	TX_FAR _UnknownDungeon2WinBattleText8
	db "@"
; NUEVO
