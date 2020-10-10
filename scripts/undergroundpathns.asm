UndergroundPathNSScript:
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, UndergroundPathNSTrainerHeaders
	ld de, UndergroundPathNSScriptPointers
	ld a, [wUndergroundNSCurScript]
	call ExecuteCurMapScriptInTable
	ld [wUndergroundNSCurScript], a
	ret

UndergroundPathNSScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

UndergroundPathNSTextPointers:
	dw UndergroundPathNSText1
	dw UndergroundPathNSText2
	dw UndergroundPathNSText3
	dw UndergroundPathNSText4
	dw UndergroundPathNSText5
	dw UndergroundPathNSText6
	;db "@"

UndergroundPathNSTrainerHeaders:
UndergroundPathNSTrainerHeader0:
	dbEventFlagBit EVENT_ANGELFS   ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_ANGELFS  ; DE MOMENTO ESTE
	dw UndergroundPathNSBattleText1 ; TextBeforeBattle
	dw UndergroundPathNSAfterBattleText1 ; TextAfterBattle
	dw UndergroundPathNSEndBattleText1 ; TextEndBattle
	dw UndergroundPathNSWinBattleText1 ; TextEndBattle
	
UndergroundPathNSTrainerHeader1:
	dbEventFlagBit EVENT_CHICA1   ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CHICA1  ; DE MOMENTO ESTE
	dw UndergroundPathNSBattleText2 ; TextBeforeBattle
	dw UndergroundPathNSAfterBattleText2 ; TextAfterBattle
	dw UndergroundPathNSEndBattleText2 ; TextEndBattle
	dw UndergroundPathNSWinBattleText2 ; TextEndBattle	

UndergroundPathNSTrainerHeader2:
	dbEventFlagBit EVENT_CHICA2   ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CHICA2  ; DE MOMENTO ESTE
	dw UndergroundPathNSBattleText3 ; TextBeforeBattle
	dw UndergroundPathNSAfterBattleText3 ; TextAfterBattle
	dw UndergroundPathNSEndBattleText3 ; TextEndBattle
	dw UndergroundPathNSWinBattleText3 ; TextEndBattle

UndergroundPathNSTrainerHeader3:
	dbEventFlagBit EVENT_CHICA3  ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CHICA3  ; DE MOMENTO ESTE
	dw UndergroundPathNSBattleText4 ; TextBeforeBattle
	dw UndergroundPathNSAfterBattleText4 ; TextAfterBattle
	dw UndergroundPathNSEndBattleText4 ; TextEndBattle
	dw UndergroundPathNSWinBattleText4 ; TextEndBattle

UndergroundPathNSTrainerHeader4:
	dbEventFlagBit EVENT_YELLOW   ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_YELLOW  ; DE MOMENTO ESTE
	dw UndergroundPathNSBattleText5 ; TextBeforeBattle
	dw UndergroundPathNSAfterBattleText5 ; TextAfterBattle
	dw UndergroundPathNSEndBattleText5 ; TextEndBattle
	dw UndergroundPathNSWinBattleText5 ; TextEndBattle

UndergroundPathNSTrainerHeader5:
	dbEventFlagBit EVENT_BLUE  ; DE MOMENTO ESTE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BLUE  ; DE MOMENTO ESTE
	dw UndergroundPathNSBattleText6 ; TextBeforeBattle
	dw UndergroundPathNSAfterBattleText6 ; TextAfterBattle
	dw UndergroundPathNSEndBattleText6 ; TextEndBattle
	dw UndergroundPathNSWinBattleText6 ; TextEndBattle

	db $ff

UndergroundPathNSText1:
	TX_ASM
	ld hl, UndergroundPathNSTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathNSBattleText1:
	TX_FAR _UndergroundPathNSBattleText1
	db "@"

UndergroundPathNSEndBattleText1:
	TX_FAR _UndergroundPathNSEndBattleText1
	db "@"

UndergroundPathNSAfterBattleText1:
	TX_FAR _UndergroundPathNSAfterBattleText1
	db "@"

UndergroundPathNSWinBattleText1:
	TX_FAR _UndergroundPathNSWinBattleText1
	db "@"

UndergroundPathNSText2:
	TX_ASM
	ld hl, UndergroundPathNSTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathNSBattleText2:
	TX_FAR _UndergroundPathNSBattleText2
	db "@"

UndergroundPathNSEndBattleText2:
	TX_FAR _UndergroundPathNSEndBattleText2
	db "@"

UndergroundPathNSAfterBattleText2:
	TX_FAR _UndergroundPathNSAfterBattleText2
	db "@"

UndergroundPathNSWinBattleText2:
	TX_FAR _UndergroundPathNSWinBattleText2
	db "@"

UndergroundPathNSText3:
	TX_ASM
	ld hl, UndergroundPathNSTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathNSBattleText3:
	TX_FAR _UndergroundPathNSBattleText3
	db "@"

UndergroundPathNSEndBattleText3:
	TX_FAR _UndergroundPathNSEndBattleText3
	db "@"

UndergroundPathNSAfterBattleText3:
	TX_FAR _UndergroundPathNSAfterBattleText3
	db "@"

UndergroundPathNSWinBattleText3:
	TX_FAR _UndergroundPathNSWinBattleText3
	db "@"

UndergroundPathNSText4:
	TX_ASM
	ld hl, UndergroundPathNSTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathNSBattleText4:
	TX_FAR _UndergroundPathNSBattleText4
	db "@"

UndergroundPathNSEndBattleText4:
	TX_FAR _UndergroundPathNSEndBattleText4
	db "@"

UndergroundPathNSAfterBattleText4:
	TX_FAR _UndergroundPathNSAfterBattleText4
	db "@"

UndergroundPathNSWinBattleText4:
	TX_FAR _UndergroundPathNSWinBattleText4
	db "@"
	
UndergroundPathNSText5:
	TX_ASM
	ld hl, UndergroundPathNSTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathNSBattleText5:
	TX_FAR _UndergroundPathNSBattleText5
	db "@"

UndergroundPathNSEndBattleText5:
	TX_FAR _UndergroundPathNSEndBattleText5
	db "@"

UndergroundPathNSAfterBattleText5:
	TX_FAR _UndergroundPathNSAfterBattleText5
	db "@"

UndergroundPathNSWinBattleText5:
	TX_FAR _UndergroundPathNSWinBattleText5
	db "@"

UndergroundPathNSText6:
	TX_ASM
	ld hl, UndergroundPathNSTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathNSBattleText6:
	TX_FAR _UndergroundPathNSBattleText6
	db "@"

UndergroundPathNSEndBattleText6:
	TX_FAR _UndergroundPathNSEndBattleText6
	db "@"

UndergroundPathNSAfterBattleText6:
	TX_FAR _UndergroundPathNSAfterBattleText6
	db "@"

UndergroundPathNSWinBattleText6:
	TX_FAR _UndergroundPathNSWinBattleText6
	db "@"
