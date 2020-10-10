SilverCaveOutsideScript:
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, SilverCaveOutsideTrainerHeaders
	ld de, SilverCaveOutsideScriptPointers
	ld a, [wSilverCaveOutsideCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSilverCaveOutsideCurScript], a
	ret

SilverCaveOutsideScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

SilverCaveOutsideTextPointers:
	dw SilverCaveOutsideA
	dw SilverCaveOutsideB
	dw SilverCaveOutsideC
	dw SilverCaveOutsideD
	dw SilverCaveOutsideE
	dw SCOutsideText1
	dw PokeCenterSignText
	
SilverCaveOutsideTrainerHeaders:
SilverCaveOutsideTrainerHeader0:  
	dbEventFlagBit EVENT_DUNK   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_DUNK  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw SilverCaveOutsideBattleText2 ; TextBeforeBattle
	dw SilverCaveOutsideAfterBattleText2 ; TextAfterBattle
	dw SilverCaveOutsideEndBattleText2 ; TextEndBattle
	dw SilverCaveOutsideWinBattleText2 ; TextEndBattle	

SilverCaveOutsideTrainerHeader1:  
	dbEventFlagBit EVENT_FELIPEX   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_FELIPEX  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw SilverCaveOutsideBattleText3 ; TextBeforeBattle
	dw SilverCaveOutsideAfterBattleText3 ; TextAfterBattle
	dw SilverCaveOutsideEndBattleText3 ; TextEndBattle
	dw SilverCaveOutsideWinBattleText3 ; TextEndBattle

SilverCaveOutsideTrainerHeader2:  
	dbEventFlagBit EVENT_KASTY   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_KASTY  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw SilverCaveOutsideBattleText4 ; TextBeforeBattle
	dw SilverCaveOutsideAfterBattleText4 ; TextAfterBattle
	dw SilverCaveOutsideEndBattleText4 ; TextEndBattle
	dw SilverCaveOutsideWinBattleText4 ; TextEndBattle	

SilverCaveOutsideTrainerHeader3:  
	dbEventFlagBit EVENT_JOEL   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_JOEL  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw SilverCaveOutsideBattleText5 ; TextBeforeBattle
	dw SilverCaveOutsideAfterBattleText5 ; TextAfterBattle
	dw SilverCaveOutsideEndBattleText5 ; TextEndBattle
	dw SilverCaveOutsideWinBattleText5 ; TextEndBattle	

SilverCaveOutsideTrainerHeader4:  
	dbEventFlagBit EVENT_MANEC2   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MANEC2  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw SilverCaveOutsideBattleText6 ; TextBeforeBattle
	dw SilverCaveOutsideAfterBattleText6 ; TextAfterBattle
	dw SilverCaveOutsideEndBattleText6 ; TextEndBattle
	dw SilverCaveOutsideWinBattleText6 ; TextEndBattle	

	db $ff

SilverCaveOutsideA:
	TX_ASM
	ld hl, SilverCaveOutsideTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SilverCaveOutsideBattleText2:
	TX_FAR _SilverCaveOutsideBattleText2
	db "@"

SilverCaveOutsideEndBattleText2:
	TX_FAR _SilverCaveOutsideEndBattleText2
	db "@"

SilverCaveOutsideWinBattleText2:
	TX_FAR _SilverCaveOutsideWinBattleText2
	db "@"

SilverCaveOutsideAfterBattleText2:
	TX_FAR _SilverCaveOutsideAfterBattleText2
	db "@"

SilverCaveOutsideB:
	TX_ASM
	ld hl, SilverCaveOutsideTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SilverCaveOutsideBattleText3:
	TX_FAR _SilverCaveOutsideBattleText3
	db "@"

SilverCaveOutsideEndBattleText3:
	TX_FAR _SilverCaveOutsideEndBattleText3
	db "@"

SilverCaveOutsideWinBattleText3:
	TX_FAR _SilverCaveOutsideWinBattleText3
	db "@"

SilverCaveOutsideAfterBattleText3:
	TX_FAR _SilverCaveOutsideAfterBattleText3
	db "@"

SilverCaveOutsideC:
	TX_ASM
	ld hl, SilverCaveOutsideTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SilverCaveOutsideBattleText4:
	TX_FAR _SilverCaveOutsideBattleText4
	db "@"

SilverCaveOutsideEndBattleText4:
	TX_FAR _SilverCaveOutsideEndBattleText4
	db "@"

SilverCaveOutsideWinBattleText4:
	TX_FAR _SilverCaveOutsideWinBattleText4
	db "@"

SilverCaveOutsideAfterBattleText4:
	TX_FAR _SilverCaveOutsideAfterBattleText4
	db "@"

SilverCaveOutsideD:
	TX_ASM
	ld hl, SilverCaveOutsideTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SilverCaveOutsideBattleText5:
	TX_FAR _SilverCaveOutsideBattleText5
	db "@"

SilverCaveOutsideEndBattleText5:
	TX_FAR _SilverCaveOutsideEndBattleText5
	db "@"

SilverCaveOutsideWinBattleText5:
	TX_FAR _SilverCaveOutsideWinBattleText5
	db "@"

SilverCaveOutsideAfterBattleText5:
	TX_FAR _SilverCaveOutsideAfterBattleText5
	db "@"
	
SilverCaveOutsideE:
	TX_ASM
	ld hl, SilverCaveOutsideTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

SilverCaveOutsideBattleText6:
	TX_FAR _SilverCaveOutsideBattleText6
	db "@"

SilverCaveOutsideEndBattleText6:
	TX_FAR _SilverCaveOutsideEndBattleText6
	db "@"

SilverCaveOutsideWinBattleText6:
	TX_FAR _SilverCaveOutsideWinBattleText6
	db "@"

SilverCaveOutsideAfterBattleText6:
	TX_FAR _SilverCaveOutsideAfterBattleText6
	db "@"

SCOutsideText1:
	TX_FAR _SCOutsideText1
	db "@"
