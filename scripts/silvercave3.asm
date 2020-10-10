SilverCave3Script:
	call EnableAutoTextBoxDrawing
	ld hl, SilverCave3TrainerHeaders
	ld de, SilverCave3ScriptPointers
	ld a, [wSilverCave3CurScript]
	call ExecuteCurMapScriptInTable
	ld [wSilverCave3CurScript], a
	ret

SilverCave3ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw FinCombateSilverCave

SilverCave3TextPointers:
    dw SilverCave3Text1
	dw SilverCave3AfterBattleText1

SilverCave3TrainerHeaders:
SilverCave3TrainerHeader0:
	dbEventFlagBit EVENT_GARM   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_GARM  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw SilverCave3BattleText1 ; TextBeforeBattle
	dw SilverCave3AfterBattleText1 ; TextAfterBattle
	dw SilverCave3EndBattleText1 ; TextEndBattle
	dw SilverCave3WinBattleText1 ; TextEndBattle

	db $ff
	
SilverCave3Text1:
	TX_ASM
	ld hl, SilverCave3TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SilverCave3BattleText1:
	TX_FAR _SilverCave3BattleText1
	db "@"

SilverCave3EndBattleText1:
	TX_FAR _SilverCave3EndBattleText1
	db "@"
	
SilverCave3WinBattleText1:
	TX_FAR _SilverCave3WinBattleText1
	db "@"

SilverCave3AfterBattleText1:
	TX_FAR _SilverCave3AfterBattleText1
	db "@"

FinCombateSilverCave:
   call EndTrainerBattle
   ld a, [wIsInBattle]
  cp $ff
  ret z
  	SetEvent EVENT_SUBESTATEXP2 ; NUEVO PARA SUBIR EXP STAT 2
	ld a, HS_UNKNOWN_DUNGEON_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
   ld a, $2
   ld [hSpriteIndexOrTextID], a
   jp DisplayTextID
