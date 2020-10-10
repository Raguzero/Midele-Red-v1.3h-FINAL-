UnknownDungeon1Script:
; NUEVO 
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, UnknownDungeon1TrainerHeader0
	ld de, UnknownDungeon1ScriptPointers
	ld a, [wUnknownDungeon1CurScript]
	call ExecuteCurMapScriptInTable
	ld [wUnknownDungeon1CurScript], a
    ResetUncaughtPokemon MEWTWO     ; NUEVO RESPAWN LEGEND
	ret
	
UnknownDungeon1ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	; NUEVO
	;jp EnableAutoTextBoxDrawing

UnknownDungeon1TextPointers:
	dw UnknownDungeon1Text
	dw UnknownDungeon1Text2
	dw UnknownDungeon1Text3
	dw UnknownDungeon1Text4
	dw UnknownDungeon1Text5
	dw UnknownDungeon1Text6
	dw UnknownDungeon1Text7
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText

; NUEVO
UnknownDungeon1TrainerHeader0:
	dbEventFlagBit EVENT_RAGU  ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_RAGU ; DE MOMENTO ESTE
	dw UnknownDungeon1BattleText2 ; TextBeforeBattle
	dw UnknownDungeon1AfterBattleText2 ; TextAfterBattle
	dw UnknownDungeon1EndBattleText2 ; TextEndBattle
	dw UnknownDungeon1WinBattleText2 ; TextEndBattle

UnknownDungeon1TrainerHeader1:
	dbEventFlagBit EVENT_GOLDY  ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_GOLDY ; DE MOMENTO ESTE
	dw UnknownDungeon1BattleText3 ; TextBeforeBattle
	dw UnknownDungeon1AfterBattleText3 ; TextAfterBattle
	dw UnknownDungeon1EndBattleText3 ; TextEndBattle
	dw UnknownDungeon1WinBattleText3 ; TextEndBattle
	
UnknownDungeon1TrainerHeader2:
	dbEventFlagBit EVENT_UTA  ; DE MOMENTO ESTE
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_UTA ; DE MOMENTO ESTE
	dw UnknownDungeon1BattleText4 ; TextBeforeBattle
	dw UnknownDungeon1AfterBattleText4 ; TextAfterBattle
	dw UnknownDungeon1EndBattleText4 ; TextEndBattle
	dw UnknownDungeon1WinBattleText4 ; TextEndBattle

UnknownDungeon1TrainerHeader3:
	dbEventFlagBit EVENT_EEVEETO  ; DE MOMENTO ESTE
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_EEVEETO ; DE MOMENTO ESTE
	dw UnknownDungeon1BattleText5 ; TextBeforeBattle
	dw UnknownDungeon1AfterBattleText5 ; TextAfterBattle
	dw UnknownDungeon1EndBattleText5 ; TextEndBattle
	dw UnknownDungeon1WinBattleText5 ; TextEndBattle

UnknownDungeon1TrainerHeader4:
	dbEventFlagBit EVENT_JAVISITO  ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_JAVISITO ; DE MOMENTO ESTE
	dw UnknownDungeon1BattleText6 ; TextBeforeBattle
	dw UnknownDungeon1AfterBattleText6 ; TextAfterBattle
	dw UnknownDungeon1EndBattleText6 ; TextEndBattle
	dw UnknownDungeon1WinBattleText6 ; TextEndBattle

UnknownDungeon1TrainerHeader5:
	dbEventFlagBit EVENT_DARKI  ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_DARKI ; DE MOMENTO ESTE
	dw UnknownDungeon1BattleText7 ; TextBeforeBattle
	dw UnknownDungeon1AfterBattleText7 ; TextAfterBattle
	dw UnknownDungeon1EndBattleText7 ; TextEndBattle
	dw UnknownDungeon1WinBattleText7 ; TextEndBattle

UnknownDungeon1TrainerHeader6:
	dbEventFlagBit EVENT_MICHOH  ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MICHOH ; DE MOMENTO ESTE
	dw UnknownDungeon1BattleText8 ; TextBeforeBattle
	dw UnknownDungeon1AfterBattleText8 ; TextAfterBattle
	dw UnknownDungeon1EndBattleText8 ; TextEndBattle
	dw UnknownDungeon1WinBattleText8 ; TextEndBattle

	db $ff
; NUEVO

; NUEVO
UnknownDungeon1Text:
	TX_ASM
	ld hl, UnknownDungeon1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon1BattleText2:
	TX_FAR _UnknownDungeon1BattleText2
	db "@"

UnknownDungeon1EndBattleText2:
	TX_FAR _UnknownDungeon1EndBattleText2
	db "@"

UnknownDungeon1AfterBattleText2:
	TX_FAR _UnknownDungeon1AfterBattleText2
	db "@"

UnknownDungeon1WinBattleText2:
	TX_FAR _UnknownDungeon1WinBattleText2
	db "@"

UnknownDungeon1Text2:
	TX_ASM
	ld hl, UnknownDungeon1TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon1BattleText3:
	TX_FAR _UnknownDungeon1BattleText3
	db "@"

UnknownDungeon1EndBattleText3:
	TX_FAR _UnknownDungeon1EndBattleText3
	db "@"

UnknownDungeon1AfterBattleText3:
	TX_FAR _UnknownDungeon1AfterBattleText3
	db "@"

UnknownDungeon1WinBattleText3:
	TX_FAR _UnknownDungeon1WinBattleText3
	db "@"
	
UnknownDungeon1Text3:
	TX_ASM
	ld hl, UnknownDungeon1TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon1BattleText4:
	TX_FAR _UnknownDungeon1BattleText4
	db "@"

UnknownDungeon1EndBattleText4:
	TX_FAR _UnknownDungeon1EndBattleText4
	db "@"

UnknownDungeon1WinBattleText4:
	TX_FAR _UnknownDungeon1WinBattleText4
	db "@"

UnknownDungeon1AfterBattleText4:
	TX_FAR _UnknownDungeon1AfterBattleText4
	db "@"

UnknownDungeon1Text4:
	TX_ASM
	ld hl, UnknownDungeon1TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon1BattleText5:
	TX_FAR _UnknownDungeon1BattleText5
	db "@"

UnknownDungeon1EndBattleText5:
	TX_FAR _UnknownDungeon1EndBattleText5
	db "@"

UnknownDungeon1AfterBattleText5:
	TX_FAR _UnknownDungeon1AfterBattleText5
	db "@"

UnknownDungeon1WinBattleText5:
	TX_FAR _UnknownDungeon1WinBattleText5
	db "@"

UnknownDungeon1Text5:
	TX_ASM
	ld hl, UnknownDungeon1TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon1BattleText6:
	TX_FAR _UnknownDungeon1BattleText6
	db "@"

UnknownDungeon1EndBattleText6:
	TX_FAR _UnknownDungeon1EndBattleText6
	db "@"

UnknownDungeon1AfterBattleText6:
	TX_FAR _UnknownDungeon1AfterBattleText6
	db "@"

UnknownDungeon1WinBattleText6:
	TX_FAR _UnknownDungeon1WinBattleText6
	db "@"

UnknownDungeon1Text6:
	TX_ASM
	ld hl, UnknownDungeon1TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon1BattleText7:
	TX_FAR _UnknownDungeon1BattleText7
	db "@"

UnknownDungeon1EndBattleText7:
	TX_FAR _UnknownDungeon1EndBattleText7
	db "@"

UnknownDungeon1WinBattleText7:
	TX_FAR _UnknownDungeon1WinBattleText7
	db "@"

UnknownDungeon1AfterBattleText7:
	TX_FAR _UnknownDungeon1AfterBattleText7
	db "@"
	
UnknownDungeon1Text7:
	TX_ASM
	ld hl, UnknownDungeon1TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

UnknownDungeon1BattleText8:
	TX_FAR _UnknownDungeon1BattleText8
	db "@"

UnknownDungeon1EndBattleText8:
	TX_FAR _UnknownDungeon1EndBattleText8
	db "@"

UnknownDungeon1AfterBattleText8:
	TX_FAR _UnknownDungeon1AfterBattleText8
	db "@"

UnknownDungeon1WinBattleText8:
	TX_FAR _UnknownDungeon1WinBattleText8
	db "@"

; NUEVO
