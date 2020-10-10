Route28Script:
	;jp EnableAutoTextBoxDrawing
	; NUEVO PARA MAPA UNDERGROUND WE
	call EnableAutoTextBoxDrawing
	ld hl, Route28TrainerHeader0
	ld de, Route28ScriptPointers
	ld a, [wRoute28CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute28CurScript], a
	ret

Route28ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Route28TextPointers:
	dw Route28A
	dw Route28B
	dw Route28C
	dw Route28D
	dw Route28E
	dw Route28F	
	dw Route28G
	dw Route28G
	dw Route28Text1
				
Route28TrainerHeader0:  
	dbEventFlagBit EVENT_MDRAGON   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MDRAGON  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route28BattleText2 ; TextBeforeBattle
	dw Route28AfterBattleText2 ; TextAfterBattle
	dw Route28EndBattleText2 ; TextEndBattle
	dw Route28WinBattleText2 ; TextEndBattle	

Route28TrainerHeader1:  
	dbEventFlagBit EVENT_RUBENCB   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_RUBENCB  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route28BattleText3 ; TextBeforeBattle
	dw Route28AfterBattleText3 ; TextAfterBattle
	dw Route28EndBattleText3 ; TextEndBattle
	dw Route28WinBattleText3 ; TextEndBattle	

Route28TrainerHeader2:  
	dbEventFlagBit EVENT_SJMISTERY   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_SJMISTERY  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route28BattleText4 ; TextBeforeBattle
	dw Route28AfterBattleText4 ; TextAfterBattle
	dw Route28EndBattleText4 ; TextEndBattle
	dw Route28WinBattleText4 ; TextEndBattle	

Route28TrainerHeader3:  
	dbEventFlagBit EVENT_MARENA   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MARENA  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route28BattleText5 ; TextBeforeBattle
	dw Route28AfterBattleText5 ; TextAfterBattle
	dw Route28EndBattleText5 ; TextEndBattle
	dw Route28WinBattleText5 ; TextEndBattle

Route28TrainerHeader4:  
	dbEventFlagBit EVENT_JZOMBIE   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_JZOMBIE  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route28BattleText6 ; TextBeforeBattle
	dw Route28AfterBattleText6 ; TextAfterBattle
	dw Route28EndBattleText6 ; TextEndBattle
	dw Route28WinBattleText6 ; TextEndBattle

Route28TrainerHeader5:  
	dbEventFlagBit EVENT_MERCIBOKU   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MERCIBOKU  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route28BattleText7 ; TextBeforeBattle
	dw Route28AfterBattleText7 ; TextAfterBattle
	dw Route28EndBattleText7 ; TextEndBattle
	dw Route28WinBattleText7 ; TextEndBattle

Route28TrainerHeader6:  
	dbEventFlagBit EVENT_BOKUNOPICO   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 1) ; trainer's view range
	dwEventFlagAddress EVENT_BOKUNOPICO  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route28BattleText8 ; TextBeforeBattle
	dw Route28AfterBattleText8 ; TextAfterBattle
	dw Route28EndBattleText8 ; TextEndBattle
	dw Route28WinBattleText8 ; TextEndBattle			

	db $ff

Route28A:
	TX_ASM
	ld hl, Route28TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route28BattleText2:
	TX_FAR _Route28BattleText2
	db "@"

Route28EndBattleText2:
	TX_FAR _Route28EndBattleText2
	db "@"

Route28WinBattleText2:
	TX_FAR _Route28WinBattleText2
	db "@"

Route28AfterBattleText2:
	TX_FAR _Route28AfterBattleText2
	db "@"

Route28B:
	TX_ASM
	ld hl, Route28TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route28BattleText3:
	TX_FAR _Route28BattleText3
	db "@"

Route28EndBattleText3:
	TX_FAR _Route28EndBattleText3
	db "@"

Route28WinBattleText3:
	TX_FAR _Route28WinBattleText3
	db "@"

Route28AfterBattleText3:
	TX_FAR _Route28AfterBattleText3
	db "@"

Route28C:
	TX_ASM
	ld hl, Route28TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route28BattleText4:
	TX_FAR _Route28BattleText4
	db "@"

Route28EndBattleText4:
	TX_FAR _Route28EndBattleText4
	db "@"

Route28WinBattleText4:
	TX_FAR _Route28WinBattleText4
	db "@"

Route28AfterBattleText4:
	TX_FAR _Route28AfterBattleText4
	db "@"

Route28D:
	TX_ASM
	ld hl, Route28TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route28BattleText5:
	TX_FAR _Route28BattleText5
	db "@"

Route28EndBattleText5:
	TX_FAR _Route28EndBattleText5
	db "@"

Route28WinBattleText5:
	TX_FAR _Route28WinBattleText5
	db "@"

Route28AfterBattleText5:
	TX_FAR _Route28AfterBattleText5
	db "@"
	
Route28E:
	TX_ASM
	ld hl, Route28TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route28BattleText6:
	TX_FAR _Route28BattleText6
	db "@"

Route28EndBattleText6:
	TX_FAR _Route28EndBattleText6
	db "@"

Route28WinBattleText6:
	TX_FAR _Route28WinBattleText6
	db "@"

Route28AfterBattleText6:
	TX_FAR _Route28AfterBattleText6
	db "@"
	
Route28F:
	TX_ASM
	ld hl, Route28TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route28BattleText7:
	TX_FAR _Route28BattleText7
	db "@"

Route28EndBattleText7:
	TX_FAR _Route28EndBattleText7
	db "@"

Route28WinBattleText7:
	TX_FAR _Route28WinBattleText7
	db "@"

Route28AfterBattleText7:
	TX_FAR _Route28AfterBattleText7
	db "@"
	
Route28G:
	TX_ASM
	ld hl, Route28TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

Route28BattleText8:
	TX_FAR _Route28BattleText8
	db "@"

Route28EndBattleText8:
	TX_FAR _Route28EndBattleText8
	db "@"

Route28WinBattleText8:
	TX_FAR _Route28WinBattleText8
	db "@"

Route28AfterBattleText8:
	TX_FAR _Route28AfterBattleText8
	db "@"

Route28Text1:
	TX_FAR _Route28Text1
	db "@"