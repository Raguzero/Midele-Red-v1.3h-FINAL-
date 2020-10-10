CeruleanPoliceScript:
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanPoliceTrainerHeaders
	ld de, CeruleanPoliceScriptPointers
	ld a, [wCeruleanPoliceCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeruleanPoliceCurScript], a
	ret

CeruleanPoliceScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw Poliarresto

CeruleanPoliceTextPointers:
	dw CeruleanPoliceText9
	dw CeruleanPoliceText1
	dw CeruleanPoliceText2
	dw CeruleanPoliceText3
	dw CeruleanPoliceText4
	dw CeruleanPoliceText5
	dw CeruleanPoliceText6	
	dw CeruleanPoliceText7
	dw CeruleanPoliceText8
	dw CeruleanPoliArresto
	dw Totomon
	dw Alliare
	dw Cartelinfo
	dw Cartelinfo2
	
CeruleanPoliceTrainerHeaders:
CeruleanPoliceTrainerHeader0:
	dbEventFlagBit EVENT_POLI_FURRY
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_POLI_FURRY
	dw CeruleanPoliceBattleText1 ; TextBeforeBattle
	dw CeruleanPoliceAfterBattleText1 ; TextAfterBattle
	dw CeruleanPoliceEndBattleText1 ; TextEndBattle
	dw CeruleanPoliceWinBattleText1 ; TextEndBattle

	db $ff
	
CeruleanPoliceText9:
	TX_ASM
	ld hl, CeruleanPoliceTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CeruleanPoliceBattleText1:
	TX_FAR _CeruleanPoliceBattleText1
	db "@"

CeruleanPoliceEndBattleText1:
	TX_FAR _CeruleanPoliceEndBattleText1
	db "@"

CeruleanPoliceWinBattleText1:
	TX_FAR _CeruleanPoliceWinBattleText1
	db "@"

CeruleanPoliceAfterBattleText1:
	TX_FAR _CeruleanPoliceAfterBattleText1
	db "@"

CeruleanPoliceText1:
	TX_FAR _CeruleanPoliceText1
	db "@"

CeruleanPoliceText2:
	TX_FAR _CeruleanPoliceText2
	db "@"

CeruleanPoliceText3:
	TX_FAR _CeruleanPoliceText3
	db "@"
	
CeruleanPoliceText4:
	TX_FAR _CeruleanPoliceText4
	db "@"
	
CeruleanPoliceText5:
	TX_FAR _CeruleanPoliceText5
	db "@"
	
CeruleanPoliceText6:
	TX_FAR _CeruleanPoliceText6
	db "@"
	
CeruleanPoliceText7:
	TX_FAR _CeruleanPoliceText7
	db "@"

CeruleanPoliceText8:
	TX_FAR _CeruleanPoliceText8
	db "@"

CeruleanPoliArresto:
	TX_FAR _CeruleanPoliArresto
	db "@"

Cartelinfo:
	TX_FAR _Cartelinfo
	db "@"
	
Cartelinfo2:
	TX_FAR _Cartelinfo2
	db "@"
	
Totomon:
	TX_FAR _Totomon
	db "@"
Alliare:
	TX_FAR _Alliare
	db "@"
	
Poliarresto:
  ld a, SPRITE_FACING_UP
  ld [hSpriteFacingDirection], a
  call SetSpriteFacingDirectionAndDelay
  ld a, HS_POLIRUTA4
  ld [wMissableObjectIndex], a
  predef HideObject
  ld a, 10
  ld [hSpriteIndexOrTextID], a
  call DisplayTextID
  xor a
  ld [wCurMapScript], a
  ret
