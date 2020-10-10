MicoloMap3Script:
	call EnableAutoTextBoxDrawing
	ld hl, MicoloMap3TrainerHeader0
	ld de, MicoloMap3ScriptPointers
	ld a, [wMicoloMap3CurScript]
	call ExecuteCurMapScriptInTable
	ld [wMicoloMap3CurScript], a
	ret

MicoloMap3ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

MicoloMap3TextPointers:
	dw MicoloMap3Text1
	dw MicoloMap3Text2
	dw MicoloMap3Text3
	dw MicoloMap3Text4
	dw MicoloMap3Text5
	dw PickUpItemText
	dw PickUpItemText
	dw MicoloMap1Micomon
	dw Micomandamientos
	dw Textobarco

MicoloMap3TrainerHeader0:
	dbEventFlagBit EVENT_LAVENDER2  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_LAVENDER2 ; DE MOMENTO ESTE
	dw MicoloMap3BattleText2 ; TextBeforeBattle
	dw MicoloMap3AfterBattleText2 ; TextAfterBattle
	dw MicoloMap3EndBattleText2 ; TextEndBattle
	dw MicoloMap3WinBattleText2 ; TextEndBattle
	
MicoloMap3TrainerHeader1:
	dbEventFlagBit EVENT_ARTEMIS  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_ARTEMIS ; DE MOMENTO ESTE
	dw MicoloMap3BattleText3 ; TextBeforeBattle
	dw MicoloMap3AfterBattleText3 ; TextAfterBattle
	dw MicoloMap3EndBattleText3 ; TextEndBattle
	dw MicoloMap3WinBattleText3 ; TextEndBattle

MicoloMap3TrainerHeader2:
	dbEventFlagBit EVENT_KADERETE2  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_KADERETE2 ; DE MOMENTO ESTE
	dw MicoloMap3BattleText4 ; TextBeforeBattle
	dw MicoloMap3AfterBattleText4 ; TextAfterBattle
	dw MicoloMap3EndBattleText4 ; TextEndBattle
	dw MicoloMap3WinBattleText4 ; TextEndBattle

MicoloMap3TrainerHeader3:
	dbEventFlagBit EVENT_AVADER  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_AVADER ; DE MOMENTO ESTE
	dw MicoloMap3BattleText5 ; TextBeforeBattle
	dw MicoloMap3AfterBattleText5 ; TextAfterBattle
	dw MicoloMap3EndBattleText5 ; TextEndBattle
	dw MicoloMap3WinBattleText5 ; TextEndBattle

MicoloMap3TrainerHeader4:
	dbEventFlagBit EVENT_MICOLO  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MICOLO ; DE MOMENTO ESTE
	dw MicoloMap3BattleText6 ; TextBeforeBattle
	dw MicoloMap3AfterBattleText6 ; TextAfterBattle
	dw MicoloMap3EndBattleText6 ; TextEndBattle
	dw MicoloMap3WinBattleText6 ; TextEndBattle

	db $ff
	
MicoloMap3Text1:
	TX_ASM
	ld hl, MicoloMap3TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap3BattleText2:
	TX_FAR _MicoloMap3BattleText2
	db "@"

MicoloMap3EndBattleText2:
	TX_FAR _MicoloMap3EndBattleText2
	db "@"

MicoloMap3AfterBattleText2:
	TX_FAR _MicoloMap3AfterBattleText2
	db "@"

MicoloMap3WinBattleText2:
	TX_FAR _MicoloMap3WinBattleText2
	db "@"

MicoloMap3Text2:
	TX_ASM
	ld hl, MicoloMap3TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap3BattleText3:
	TX_FAR _MicoloMap3BattleText3
	db "@"

MicoloMap3EndBattleText3:
	TX_FAR _MicoloMap3EndBattleText3
	db "@"

MicoloMap3AfterBattleText3:
	TX_FAR _MicoloMap3AfterBattleText3
	db "@"

MicoloMap3WinBattleText3:
	TX_FAR _MicoloMap3WinBattleText3
	db "@"

MicoloMap3Text3:
	TX_ASM
	ld hl, MicoloMap3TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap3BattleText4:
	TX_FAR _MicoloMap3BattleText4
	db "@"

MicoloMap3EndBattleText4:
	TX_FAR _MicoloMap3EndBattleText4
	db "@"

MicoloMap3AfterBattleText4:
	TX_FAR _MicoloMap3AfterBattleText4
	db "@"

MicoloMap3WinBattleText4:
	TX_FAR _MicoloMap3WinBattleText4
	db "@"
	
MicoloMap3Text4:
	TX_ASM
	ld hl, MicoloMap3TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap3BattleText5:
	TX_FAR _MicoloMap3BattleText5
	db "@"

MicoloMap3EndBattleText5:
	TX_FAR _MicoloMap3EndBattleText5
	db "@"

MicoloMap3AfterBattleText5:
	TX_FAR _MicoloMap3AfterBattleText5
	db "@"

MicoloMap3WinBattleText5:
	TX_FAR _MicoloMap3WinBattleText5
	db "@"

MicoloMap3Text5:
	TX_ASM
	ld hl, MicoloMap3TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap3BattleText6:
	TX_FAR _MicoloMap3BattleText6
	db "@"

MicoloMap3EndBattleText6:
	TX_FAR _MicoloMap3EndBattleText6
	db "@"

MicoloMap3AfterBattleText6:
	TX_FAR _MicoloMap3AfterBattleText6
	db "@"

MicoloMap3WinBattleText6:
	TX_FAR _MicoloMap3WinBattleText6
	db "@"

Micomandamientos:
	TX_FAR _Micomandamientos
	db "@"
	
Textobarco:
	TX_FAR _Textobarco
	db "@"

MicoloMap1Micomon:
	TX_ASM
	lb bc, MICOMON, 5
	call GivePokemon
	jr nc, .recibido3
    SetEvent EVENT_OLDMANGLITCH 
	ld a, HS_MICOMON
	ld [wMissableObjectIndex], a
	predef HideObject
.recibido3
	jp TextScriptEnd
