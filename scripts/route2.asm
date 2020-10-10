Route2Script:
; NUEVO 
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, Route2TrainerHeader0
	ld de, Route2ScriptPointers
	ld a, [wRoute2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute2CurScript], a
	ret
	
Route2ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw FinCombateMicolo
	; NUEVO

Route2TextPointers:
	dw Route2Text5  ; NUEVO, OCUPA ESTA LINEA 3, EN VEZ DE LA 5, PORQUE LOS CARTELES text3 y text4 SIEMPRE DEBEN IR DESPUES QUE LOS OBJECTS
    dw MicoloText1 ; NUEVO
	dw PickUpItemText
	dw PickUpItemText
	dw Route2Text3
	dw Route2Text4
	dw Route2AfterBattleText3 ; NUEVO

; NUEVO
Route2TrainerHeader0:
	dbEventFlagBit EVENT_JOVEN_CHANO   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_JOVEN_CHANO  ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route2BattleText2 ; TextBeforeBattle
	dw Route2AfterBattleText2 ; TextAfterBattle
	dw Route2EndBattleText2 ; TextEndBattle
	dw Route2EndBattleText2 ; TextEndBattle

Route2TrainerHeader1:
	dbEventFlagBit EVENT_MICOLOROUTE2   ; DE MOMENTO ESTE, PARECE IR BIEN
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MICOLOROUTE2   ; DE MOMENTO ESTE, PARECE IR BIEN
	dw Route2BattleText3 ; TextBeforeBattle
	dw Route2AfterBattleText3 ; TextAfterBattle
	dw Route2EndBattleText3 ; TextEndBattle
	dw Route2WinBattleText3 ; TextEndBattle

	db $ff
	
; NUEVO
Route2Text5:
	TX_ASM
	ld hl, Route2TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route2BattleText2:
	TX_FAR _Route2BattleText2
	db "@"

Route2EndBattleText2:
	TX_FAR _Route2EndBattleText2
	db "@"

Route2AfterBattleText2:
	TX_FAR _Route2AfterBattleText2
	db "@"
; NUEVO

Route2Text3:
	TX_FAR _Route2Text3
	db "@"

Route2Text4:
	TX_FAR _Route2Text4
	db "@"

; NUEVO	
MicoloText1:
	TX_ASM
	ld hl, Route2TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route2BattleText3:
	TX_FAR _Route2BattleText3
	db "@"

Route2EndBattleText3:
	TX_FAR _Route2EndBattleText3
	db "@"
	
Route2WinBattleText3:
	TX_FAR _Route2WinBattleText3
	db "@"

Route2AfterBattleText3:
	TX_FAR _Route2AfterBattleText3
	db "@"

FinCombateMicolo:
    ; Comprobamos si se le ha ganado al entrenador tanto antes como después
    CheckEvent EVENT_MICOLOROUTE2
    push af
    call EndTrainerBattle
    pop af
    ret nz ; si ya se le había ganado al entrenador, no hay nada que hacer: fin
    CheckEvent EVENT_MICOLOROUTE2
    ret z ; si no se le ha ganado todavía, no es a ese al que le hemos ganado: fin
    ; Acabamos de ganar por primera vez al entrenador: mostramos mensaje
    ld a, $7
    ld [hSpriteIndexOrTextID], a
    jp DisplayTextID
; NUEVO
