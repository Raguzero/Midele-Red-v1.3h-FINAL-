IndigoPlateauLobbyScript:
; NUEVO PARA RANDOM TRAINER
  call Serial_TryEstablishingExternallyClockedConnection
  call EnableAutoTextBoxDrawing
  ld a, [wIndigoPlateauLobbyCurScript]
  and a
  jr z, .baseIndigoScript
  cp $1
  jr z, .victoriaIndigo
  predef HealParty
  xor a 
  ld [wIndigoPlateauLobbyCurScript], a
  jr .baseIndigoScript
.victoriaIndigo
  ld a, $9
  ld [hSpriteIndexOrTextID], a
  call DisplayTextID
  call EndTrainerBattle
  predef HealParty
  call Random
  and 14 
  ld hl, RandTrainerItems
  ld c, a
  ld b, $0
  add hl, bc
  ld a, [hli]
  ld b, a
  ld a, [hl]
  ld c, a
  ld [wBadgeNameTile], a
  call GiveItem
  jr nc, .MochilaLlena
  ld a, 10
  ld [hSpriteIndexOrTextID], a
  call DisplayTextID
.limpiaScript
  xor a
  ld [wIndigoPlateauLobbyCurScript], a
.baseIndigoScript
; NUEVO PARA RANDOM TRAINER
	;call Serial_TryEstablishingExternallyClockedConnection
	;call EnableAutoTextBoxDrawing 
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	ret z
	ResetEvent EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH
	ld hl, wBeatLorelei
	bit 1, [hl]
	res 1, [hl]
	ret z
	; Elite 4 events
	ResetEventRange ELITE4_EVENTS_START, EVENT_LANCES_ROOM_LOCK_DOOR
	ret

; NUEVO PARA RANDOM TRAINER
.MochilaLlena
  ld a, $8
  ld [hSpriteIndexOrTextID], a
  call DisplayTextID
  jr .limpiaScript
; NUEVO PARA RANDOM TRAINER

IndigoPlateauLobbyTextPointers:
	dw IndigoHealNurseText
	dw IndigoPlateauLobbyText2
	dw IndigoPlateauLobbyText3
	dw IndigoCashierText
	dw IndigoTradeNurseText
	dw IndigoPlateauLobbyText4
	dw RandTrainerText1 ; NUEVO PARA RANDOM TRAINER
	dw RandTrainerMochilaLlena  ; NUEVO PARA RANDOM TRAINER
	dw RandTrainerFinish  ; NUEVO PARA RANDOM TRAINER
	dw RandTrainerItemObtenido  ; NUEVO PARA RANDOM TRAINER

INCLUDE "data/martInventories/indigoplateau.asm" ; NUEVO AÑADIDO PARA ESPACIO EN HOME

IndigoHealNurseText:
	TX_POKECENTER_NURSE

IndigoPlateauLobbyText2:
	TX_FAR _IndigoPlateauLobbyText2
	db "@"

IndigoPlateauLobbyText3:
	TX_FAR _IndigoPlateauLobbyText3
	db "@"

IndigoTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST

; NUEVO PARA RANDOM TRAINER
RandTrainerText1:
	TX_ASM
	ld hl, RandTrainerIntro
	;CheckEvent EVENT_??? BORRAR EL DE ABAJO
    CheckEvent EVENT_FOLLOWED_OAK_INTO_LAB  	;has elite 4 been beaten?
	jr nz, .ready	;jump if beaten
	ld hl, RandTrainerNotReady
	call PrintText
	jr .textend
.ready
	call PrintText
	call ManualTextScroll
	ld hl, RandTrainerChallenge
	call PrintText
	call YesNoChoice	;prompt a yes/no choice
	ld a, [wCurrentMenuItem]	;load the player choice
	and a	;check the player choice
	jr nz, .goodbye	;if no, jump
	;otherwise begin loading battle
	SetEvent EVENT_TRAINER_RANDOM
	ld hl, RandTrainerPre
	call PrintText
	ld hl, wd72d;set the bits for triggering battle
	set 6, [hl]	;
	set 7, [hl]	;
	ld hl, RandTrainerPost	;load text for when you win
	ld de, RandTrainerPostWin	;load text for when you lose
	call SaveEndBattleTextPointers	;save the win/lose text
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	callba GetRandTrainer
	;call EngageMapTrainer
	 predef HealParty
	call InitBattleEnemyParameters
	;ld a, $09	;load 9 into the gym leader value to play final battle music 
	;ld [wGymLeaderNo], a
	xor a
	ld [hJoyHeld], a
	inc a
    ld [wIndigoPlateauLobbyCurScript], a
	jr .textend
.goodbye
	ld hl, RandTrainerBye
	call PrintText
.textend
	jp TextScriptEnd
	
RandTrainerItems:
  dbb RARE_CANDY, 3
  dbb NUGGET, 5
  dbb CALCIUM, 5
  dbb CARBOS, 5
  dbb PROTEIN, 5
  dbb HP_UP, 5
  dbb PP_UP, 5
  dbb IRON, 5
	
RandTrainerNotReady:
	TX_FAR _RandTrainerNotReady
	db "@"
RandTrainerIntro:
	TX_FAR _RandTrainerIntro
	db "@"
RandTrainerChallenge:
	TX_FAR _RandTrainerChallenge
	db "@"
RandTrainerBye:
	TX_FAR _RandTrainerBye
	db "@"

RandTrainerPre:
	TX_FAR _RandTrainerPre
	db "@"

RandTrainerPost:
	TX_FAR _RandTrainerPost
	db "@"

RandTrainerPostWin:
	TX_FAR _RandTrainerPostWin
	db "@"

RandTrainerFinish:
	TX_FAR _RandTrainerFinish
	db "@"

RandTrainerMochilaLlena:
	TX_FAR _RandTrainerMochilaLlena
	db "@"

RandTrainerItemObtenido:
    TX_FAR _RandTrainerItemObtenido
	TX_SFX_ITEM_1
	db "@"	  
; NUEVO PARA RANDOM TRAINER

IndigoPlateauLobbyText4:
	TX_FAR MoveRelearnerText1
	db "@"
