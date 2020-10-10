Route4Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route4TrainerHeaders
	ld de, Route4ScriptPointers
	ld a, [wRoute4CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute4CurScript], a
	ret

Route4ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw Route4_arrestado ; NUEVO POLICIA RUTA 4

Route4TextPointers:
	dw Route4Text1
	dw Route4Text2
	dw Route4Text3 ; NUEVO
	dw PickUpItemText
	dw PokeCenterSignText
	dw Route4Text5
	dw Route4Text6
	dw policiatext; NUEVO POLICIA RUTA 4

Route4TrainerHeaders:
Route4TrainerHeader0:
	dbEventFlagBit EVENT_BEAT_ROUTE_4_TRAINER_0
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_4_TRAINER_0
	dw Route4BattleText1 ; TextBeforeBattle
	dw Route4AfterBattleText1 ; TextAfterBattle
	dw Route4EndBattleText1 ; TextEndBattle
	dw Route4EndBattleText1 ; TextEndBattle

; NUEVO POLICIA RUTA 4
Route4TrainerHeader1:
	dbEventFlagBit EVENT_POLI_ROUTE4
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_POLI_ROUTE4
	dw Route4BattleText2 ; TextBeforeBattle
	dw Route4AfterBattleText2 ; TextAfterBattle
	dw Route4EndBattleText2 ; TextEndBattle
	dw Route4WinBattleText2 ; TextEndBattle
; NUEVO POLICIA RUTA 4

	db $ff

Route4Text1:
	TX_FAR _Route4Text1
	db "@"

Route4Text2:
	TX_ASM
	ld hl, Route4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route4BattleText1:
	TX_FAR _Route4BattleText1
	db "@"

Route4EndBattleText1:
	TX_FAR _Route4EndBattleText1
	db "@"

Route4AfterBattleText1:
	TX_FAR _Route4AfterBattleText1
	db "@"
	
; NUEVO POLICIA RUTA 4
Route4Text3:
	TX_ASM
	ld hl, wCurMapScript
    inc [hl]
	ld hl, Route4TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route4BattleText2:
	TX_FAR _Route4BattleText2
	db "@"

Route4EndBattleText2:
	TX_FAR _Route4EndBattleText2
	db "@"

Route4WinBattleText2:
	TX_FAR _Route4WinBattleText2
	db "@"

Route4AfterBattleText2:
	TX_FAR _Route4AfterBattleText2
	db "@"
; NUEVO POLICIA RUTA 4

Route4Text5:
	TX_FAR _Route4Text5
	db "@"

Route4Text6:
	TX_FAR _Route4Text6
	db "@"

; NUEVO POLICIA RUTA 4
Route4_arrestado:
  xor a
  ld [wCurMapScript], a
  ld [wRoute4CurScript], a
  ld a, $8
  ld [hSpriteIndexOrTextID], a
  call DisplayTextID
    call EndTrainerBattle
  predef HealParty
    ld a, CERULEAN_POLICE
    ld [hWarpDestinationMap], a
    ld a, $1
    ld [wDestinationWarpID], a
    ld a, CERULEAN_CITY
    ld [wLastMap], a
    ld hl, wd72d    
    set 3, [hl]
   ld a, CERULEAN_CITY
   ld [wLastBlackoutMap], a
   ld a, 3
   ld [wCeruleanPoliceCurScript], a
   ret
	
policiatext:
  TX_FAR _policiatext
  db "@"
; NUEVO POLICIA RUTA 4
