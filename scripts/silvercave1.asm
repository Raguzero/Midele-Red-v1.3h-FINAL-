SilverCave1Script:
; NUEVO ENTRENADORES SILVER CAVE
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, SilverCave1TrainerHeader0
	ld de, SilverCave1ScriptPointers
	ld a, [wSilverCave1CurScript]
	call ExecuteCurMapScriptInTable
	ld [wSilverCave1CurScript], a
	ret

SilverCave1ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
; NUEVO ENTRENADORES SILVER CAVE

SilverCave1TextPointers:
; NUEVO ENTRENADORES SILVER CAVE
	dw SilverCave15
	dw SilverCave16
	dw SilverCave17
	dw SilverCave18
	dw SilverCave19
; NUEVO ENTRENADORES SILVER CAVE
	dw PickUpItemText
	dw PickUpItemText
	
; NUEVO ENTRENADORES SILVER CAVE
SilverCave1TrainerHeader0:  
	dbEventFlagBit EVENT_FANBOY   
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_FANBOY  
	dw SilverCave1BattleText2 ; TextBeforeBattle
	dw SilverCave1AfterBattleText2 ; TextAfterBattle
	dw SilverCave1EndBattleText2 ; TextEndBattle
	dw SilverCave1WinBattleText2 ; TextEndBattle
	
SilverCave1TrainerHeader1:
	dbEventFlagBit EVENT_HATER  ; 
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_HATER  ; 
	dw SilverCave1BattleText3 ; TextBeforeBattle
	dw SilverCave1AfterBattleText3 ; TextAfterBattle
	dw SilverCave1EndBattleText3 ; TextEndBattle
	dw SilverCave1WinBattleText3 ; TextEndBattle
	
SilverCave1TrainerHeader2:
	dbEventFlagBit EVENT_HYPEANTO   ; 
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_HYPEANTO  ; 
	dw SilverCave1BattleText4 ; TextBeforeBattle
	dw SilverCave1AfterBattleText4 ; TextAfterBattle
	dw SilverCave1EndBattleText4 ; TextEndBattle
	dw SilverCave1WinBattleText4 ; TextEndBattle

SilverCave1TrainerHeader3:
	dbEventFlagBit EVENT_ESCROTO  ; 
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_ESCROTO  ; 
	dw SilverCave1BattleText5 ; TextBeforeBattle
	dw SilverCave1AfterBattleText5 ; TextAfterBattle
	dw SilverCave1EndBattleText5 ; TextEndBattle
	dw SilverCave1WinBattleText5 ; TextEndBattle

SilverCave1TrainerHeader4:
	dbEventFlagBit EVENT_ENTROPIA   ; 
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_ENTROPIA ; 
	dw SilverCave1BattleText6 ; TextBeforeBattle
	dw SilverCave1AfterBattleText6 ; TextAfterBattle
	dw SilverCave1EndBattleText6 ; TextEndBattle
	dw SilverCave1WinBattleText6 ; TextEndBattle

	db $ff

SilverCave15:
	TX_ASM
	ld hl, SilverCave1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SilverCave1BattleText2:
	TX_FAR _SilverCave1BattleText2
	db "@"

SilverCave1EndBattleText2:
	TX_FAR _SilverCave1EndBattleText2
	db "@"

SilverCave1WinBattleText2:
	TX_FAR _SilverCave1WinBattleText2
	db "@"

SilverCave1AfterBattleText2:
	TX_FAR _SilverCave1AfterBattleText2
	db "@"

SilverCave16:
	TX_ASM
	ld hl, SilverCave1TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SilverCave1BattleText3:
	TX_FAR _SilverCave1BattleText3
	db "@"

SilverCave1EndBattleText3:
	TX_FAR _SilverCave1EndBattleText3
	db "@"

SilverCave1WinBattleText3:
	TX_FAR _SilverCave1WinBattleText3
	db "@"
	
SilverCave1AfterBattleText3:
	TX_FAR _SilverCave1AfterBattleText3
	db "@"
	
SilverCave17:
	TX_ASM
	ld hl, SilverCave1TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SilverCave1BattleText4:
	TX_FAR _SilverCave1BattleText4
	db "@"

SilverCave1EndBattleText4:
	TX_FAR _SilverCave1EndBattleText4
	db "@"

SilverCave1AfterBattleText4:
	TX_FAR _SilverCave1AfterBattleText4
	db "@"

SilverCave1WinBattleText4:
	TX_FAR _SilverCave1WinBattleText4
	db "@"

SilverCave18:
	TX_ASM
	ld hl, SilverCave1TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SilverCave1BattleText5:
	TX_FAR _SilverCave1BattleText5
	db "@"

SilverCave1EndBattleText5:
	TX_FAR _SilverCave1EndBattleText5
	db "@"

SilverCave1AfterBattleText5:
	TX_FAR _SilverCave1AfterBattleText5
	db "@"

SilverCave1WinBattleText5:
	TX_FAR _SilverCave1WinBattleText5
	db "@"

SilverCave19:
	TX_ASM
	ld hl, SilverCave1TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

SilverCave1BattleText6:
	TX_FAR _SilverCave1BattleText6
	db "@"

SilverCave1EndBattleText6:
	TX_FAR _SilverCave1EndBattleText6
	db "@"

SilverCave1AfterBattleText6:
	TX_FAR _SilverCave1AfterBattleText6
	db "@"

SilverCave1WinBattleText6:
	TX_FAR _SilverCave1WinBattleText6
	db "@"
; NUEVO ENTRENADORES SILVER CAVE
