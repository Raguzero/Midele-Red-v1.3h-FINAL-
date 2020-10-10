UndergroundPathWEScript:
; NUEVO PARA MAPA UNDERGROUND WE
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, UndergroundPathWETrainerHeader0
	ld de, UndergroundPathWEScriptPointers
	ld a, [wUndergroundweCurScript]
	call ExecuteCurMapScriptInTable
	ld [wUndergroundweCurScript], a
	ret

UndergroundPathWEScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

UndergroundPathWETextPointers:
	;db "@"
	dw UndergroundPathWE5
	dw UndergroundPathWE6
	dw UndergroundPathWE7
	dw UndergroundPathWE8
	dw UndergroundPathWE9
	dw GolemText

UndergroundPathWETrainerHeader0:  
	dbEventFlagBit EVENT_UNDERGROUND1   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_UNDERGROUND1  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw UndergroundPathWEBattleText2 ; TextBeforeBattle
	dw UndergroundPathWEAfterBattleText2 ; TextAfterBattle
	dw UndergroundPathWEEndBattleText2 ; TextEndBattle
	dw UndergroundPathWEWinBattleText2 ; TextEndBattle
	
UndergroundPathWETrainerHeader1:
	dbEventFlagBit EVENT_UNDERGROUND2   ; 
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_UNDERGROUND2  ; 
	dw UndergroundPathWEBattleText3 ; TextBeforeBattle
	dw UndergroundPathWEAfterBattleText3 ; TextAfterBattle
	dw UndergroundPathWEEndBattleText3 ; TextEndBattle
	dw UndergroundPathWEWinBattleText3 ; TextEndBattle
	
UndergroundPathWETrainerHeader2:
	dbEventFlagBit EVENT_UNDERGROUND3   ; 
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_UNDERGROUND3  ; 
	dw UndergroundPathWEBattleText4 ; TextBeforeBattle
	dw UndergroundPathWEAfterBattleText4 ; TextAfterBattle
	dw UndergroundPathWEEndBattleText4 ; TextEndBattle
	dw UndergroundPathWEWinBattleText4 ; TextEndBattle
	
UndergroundPathWETrainerHeader3:
	dbEventFlagBit EVENT_UNDERGROUND4   ; 
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_UNDERGROUND4  ; 
	dw UndergroundPathWEBattleText5 ; TextBeforeBattle
	dw UndergroundPathWEAfterBattleText5 ; TextAfterBattle
	dw UndergroundPathWEEndBattleText5 ; TextEndBattle
	dw UndergroundPathWEWinBattleText5 ; TextEndBattle

UndergroundPathWETrainerHeader4:
	dbEventFlagBit EVENT_UNDERGROUND5   ; 
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_UNDERGROUND5  ; 
	dw UndergroundPathWEBattleText6 ; TextBeforeBattle
	dw UndergroundPathWEAfterBattleText6 ; TextAfterBattle
	dw UndergroundPathWEEndBattleText6 ; TextEndBattle
	dw UndergroundPathWEWinBattleText6 ; TextEndBattle

UndergroundPathWETrainerHeader5:
	dbEventFlagBit EVENT_BEAT_GOLEM
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_GOLEM
	dw GolemBattleText ; TextBeforeBattle
	dw GolemBattleText ; TextAfterBattle
	dw GolemBattleText ; TextEndBattle
	dw GolemBattleText ; TextEndBattle

	db $ff
	
; NUEVO
UndergroundPathWE5:
	TX_ASM
	ld hl, UndergroundPathWETrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathWEBattleText2:
	TX_FAR _UndergroundPathWEBattleText2
	db "@"

UndergroundPathWEEndBattleText2:
	TX_FAR _UndergroundPathWEEndBattleText2
	db "@"

UndergroundPathWEWinBattleText2:
	TX_FAR _UndergroundPathWEWinBattleText2
	db "@"

UndergroundPathWEAfterBattleText2:
	TX_FAR _UndergroundPathWEAfterBattleText2
	db "@"

UndergroundPathWE6:
	TX_ASM
	ld hl, UndergroundPathWETrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathWEBattleText3:
	TX_FAR _UndergroundPathWEBattleText3
	db "@"

UndergroundPathWEEndBattleText3:
	TX_FAR _UndergroundPathWEEndBattleText3
	db "@"

UndergroundPathWEWinBattleText3:
	TX_FAR _UndergroundPathWEWinBattleText3
	db "@"
	
UndergroundPathWEAfterBattleText3:
	TX_FAR _UndergroundPathWEAfterBattleText3
	db "@"
	
UndergroundPathWE7:
	TX_ASM
	ld hl, UndergroundPathWETrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathWEBattleText4:
	TX_FAR _UndergroundPathWEBattleText4
	db "@"

UndergroundPathWEEndBattleText4:
	TX_FAR _UndergroundPathWEEndBattleText4
	db "@"

UndergroundPathWEAfterBattleText4:
	TX_FAR _UndergroundPathWEAfterBattleText4
	db "@"

UndergroundPathWEWinBattleText4:
	TX_FAR _UndergroundPathWEWinBattleText4
	db "@"

UndergroundPathWE8:
	TX_ASM
	ld hl, UndergroundPathWETrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathWEBattleText5:
	TX_FAR _UndergroundPathWEBattleText5
	db "@"

UndergroundPathWEEndBattleText5:
	TX_FAR _UndergroundPathWEEndBattleText5
	db "@"

UndergroundPathWEAfterBattleText5:
	TX_FAR _UndergroundPathWEAfterBattleText5
	db "@"

UndergroundPathWEWinBattleText5:
	TX_FAR _UndergroundPathWEWinBattleText5
	db "@"

UndergroundPathWE9:
	TX_ASM
	ld hl, UndergroundPathWETrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

UndergroundPathWEBattleText6:
	TX_FAR _UndergroundPathWEBattleText6
	db "@"

UndergroundPathWEEndBattleText6:
	TX_FAR _UndergroundPathWEEndBattleText6
	db "@"

UndergroundPathWEWinBattleText6:
	TX_FAR _UndergroundPathWEWinBattleText6
	db "@"

UndergroundPathWEAfterBattleText6:
	TX_FAR _UndergroundPathWEAfterBattleText6
	db "@"

GolemText:
	TX_ASM
	ld hl, UndergroundPathWETrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

GolemBattleText:
	TX_FAR _GolemBattleText
	TX_ASM
	ld a, GOLEM
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
; NUEVO PARA MAPA UNDERGROUND WE
