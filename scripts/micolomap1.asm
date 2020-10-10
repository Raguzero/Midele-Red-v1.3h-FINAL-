MicoloMap1ScriptFinCombate:
  call EndTrainerBattle
  push hl
  ; Comprueba si ya se ha derrotado a todos los entrenadores de este mapa y el de al lado

checkEntrenador: MACRO
  CheckEventHL \1
  jr z, .fin
ENDM
  
  ; Uno de estos por cada entrenador de este mapa y el otro
 	checkEntrenador EVENT_DISCAL                                 ; 95D, (D872, bit 5)
	checkEntrenador EVENT_SAULGP                                 ; 95E, (D872, bit 6)
    checkEntrenador EVENT_GOOSES                                  ; 959, (D872, bit 1)
	checkEntrenador EVENT_KRAFT                                  ; 95A, (D872, bit 2)
	checkEntrenador EVENT_PACOCHEF                                  ; 95C, (D872, bit 4)
	checkEntrenador EVENT_CHARZ                                  ; 95F, (D872, bit 7)
	checkEntrenador EVENT_SLOWBRO                                  ; 961, (D873, bit 1)
	checkEntrenador EVENT_FXOZ                                  ; 962, (D873, bit 2)
	checkEntrenador EVENT_PHENT                                 ; 963, (D873, bit 3)
	checkEntrenador EVENT_MELKORMENTIRA                                 ; 964, (D873, bit 4)
	checkEntrenador EVENT_ISMAPKM                                  ; 965, (D873, bit 5)
	checkEntrenador EVENT_SANTY                                  ; 95B, (D872, bit 3)
	; ... etc

  ; Todos derrotados: procedemos a ocultar a Giratina Master
  ld a, HS_GMASTER
  ld [wMissableObjectIndex], a
  predef HideObject
.fin
  pop hl
  ret
  
MicoloMap1Script:
	call EnableAutoTextBoxDrawing
	ld hl, MicoloMap1TrainerHeader0
	ld de, MicoloMap1ScriptPointers
	ld a, [wMicoloMap1CurScript]
	call ExecuteCurMapScriptInTable
	ld [wMicoloMap1CurScript], a
	ret

MicoloMap1ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw MicoloMap1ScriptFinCombate

MicoloMap1TextPointers:
	dw MicoloMap1Text1
	dw MicoloMap1Text2
	dw MicoloMap1Text3
	dw MicoloMap1Text4
	dw MicoloMap1Text5
	dw MicoloMap1Text6
	dw MicoloMap1Text7
	dw MicoloMap1Text8
	dw MicoloMap1juicio1
	dw MicoloMap1juicio2
	dw MicoloMap1juicio3
	dw MicoloMap1juicio4
	dw MicoloMap1juicio5
	dw MicoloMap1juicio6
	dw MicoloMap1Pika
	dw MicoloMap1PC
	dw MicoloMap1diario
	dw MicoloMap1diario2
	dw MicoloMap1diario3
	dw MicoloMap1diario4
	dw MicoloMap1diario5
	dw MicoloMap1diario6
	dw MicoloMap1diario7
	dw MicoloMap1diario8
	dw MicoloMap1cartel

MicoloMap1TrainerHeader0:
	dbEventFlagBit EVENT_GOOSES  ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_GOOSES ; DE MOMENTO ESTE
	dw MicoloMap1BattleText2 ; TextBeforeBattle
	dw MicoloMap1AfterBattleText2 ; TextAfterBattle
	dw MicoloMap1EndBattleText2 ; TextEndBattle
	dw MicoloMap1WinBattleText2 ; TextEndBattle
	
MicoloMap1TrainerHeader1:
	dbEventFlagBit EVENT_KRAFT  ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_KRAFT ; DE MOMENTO ESTE
	dw MicoloMap1BattleText3 ; TextBeforeBattle
	dw MicoloMap1AfterBattleText3 ; TextAfterBattle
	dw MicoloMap1EndBattleText3 ; TextEndBattle
	dw MicoloMap1WinBattleText3 ; TextEndBattle
	
MicoloMap1TrainerHeader2:
	dbEventFlagBit EVENT_SANTY  ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_SANTY ; DE MOMENTO ESTE
	dw MicoloMap1BattleText4 ; TextBeforeBattle
	dw MicoloMap1AfterBattleText4 ; TextAfterBattle
	dw MicoloMap1EndBattleText4 ; TextEndBattle
	dw MicoloMap1WinBattleText4 ; TextEndBattle
	
MicoloMap1TrainerHeader3:
	dbEventFlagBit EVENT_PACOCHEF  ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_PACOCHEF ; DE MOMENTO ESTE
	dw MicoloMap1BattleText8 ; TextBeforeBattle
	dw MicoloMap1AfterBattleText8 ; TextAfterBattle
	dw MicoloMap1EndBattleText8 ; TextEndBattle
	dw MicoloMap1WinBattleText8 ; TextEndBattle

MicoloMap1TrainerHeader4:
	dbEventFlagBit EVENT_DISCAL  ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_DISCAL ; DE MOMENTO ESTE
	dw MicoloMap1BattleText5 ; TextBeforeBattle
	dw MicoloMap1AfterBattleText5 ; TextAfterBattle
	dw MicoloMap1EndBattleText5 ; TextEndBattle
	dw MicoloMap1WinBattleText5 ; TextEndBattle

MicoloMap1TrainerHeader5:
	dbEventFlagBit EVENT_SAULGP  ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_SAULGP ; DE MOMENTO ESTE
	dw MicoloMap1BattleText6 ; TextBeforeBattle
	dw MicoloMap1AfterBattleText6 ; TextAfterBattle
	dw MicoloMap1EndBattleText6 ; TextEndBattle
	dw MicoloMap1WinBattleText6 ; TextEndBattle

MicoloMap1TrainerHeader6:
	dbEventFlagBit EVENT_CHARZ  ; DE MOMENTO ESTE
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_CHARZ ; DE MOMENTO ESTE
	dw MicoloMap1BattleText7 ; TextBeforeBattle
	dw MicoloMap1AfterBattleText7 ; TextAfterBattle
	dw MicoloMap1EndBattleText7 ; TextEndBattle
	dw MicoloMap1WinBattleText7 ; TextEndBattle

	db $ff
	
MicoloMap1Text1:
	TX_ASM
	ld hl, MicoloMap1TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap1Text2:
	TX_ASM
	ld hl, MicoloMap1TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap1Text3:
	TX_ASM
	ld hl, MicoloMap1TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd
	
MicoloMap1Text4:
	TX_ASM
	ld hl, MicoloMap1TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd
	
MicoloMap1Text5:
	TX_ASM
	ld hl, MicoloMap1TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap1Text6:
	TX_ASM
	ld hl, MicoloMap1TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd
	
MicoloMap1Text7:
	TX_ASM
	ld hl, MicoloMap1TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap1PC:
   TX_ASM
   ld hl, CurarPC
   call PrintText
   call YesNoChoice
   ld a, [wCurrentMenuItem]
   and a
   jr nz, .NO
    predef HealParty
	call GBFadeOutToWhite
	call Delay3
	call GBFadeInFromWhite
   ld hl, VayaalCP
   call PrintText
   jr FinPC
.NO
   ld hl, Nocurar
   call PrintText
FinPC:
	jp TextScriptEnd

MicoloMap1BattleText2:
	TX_FAR _MicoloMap1BattleText2
	db "@"

MicoloMap1EndBattleText2:
	TX_FAR _MicoloMap1EndBattleText2
	db "@"

MicoloMap1AfterBattleText2:
	TX_FAR _MicoloMap1AfterBattleText2
	db "@"

MicoloMap1WinBattleText2:
	TX_FAR _MicoloMap1WinBattleText2
	db "@"

MicoloMap1BattleText3:
	TX_FAR _MicoloMap1BattleText3
	db "@"

MicoloMap1EndBattleText3:
	TX_FAR _MicoloMap1EndBattleText3
	db "@"

MicoloMap1AfterBattleText3:
	TX_FAR _MicoloMap1AfterBattleText3
	db "@"

MicoloMap1WinBattleText3:
	TX_FAR _MicoloMap1WinBattleText3
	db "@"

MicoloMap1BattleText4:
	TX_FAR _MicoloMap1BattleText4
	db "@"

MicoloMap1EndBattleText4:
	TX_FAR _MicoloMap1EndBattleText4
	db "@"

MicoloMap1AfterBattleText4:
	TX_FAR _MicoloMap1AfterBattleText4
	db "@"

MicoloMap1WinBattleText4:
	TX_FAR _MicoloMap1WinBattleText4
	db "@"
	
MicoloMap1BattleText5:
    TX_ASM
    ld a, MUSIC_MirorB
    ld [wNewSoundID], a
    call PlayMusic
	ld hl, .holaMiror
    call PrintText
    jp TextScriptEnd
.holaMiror
    TX_FAR _MicoloMap1BattleText5
    db "@"

MicoloMap1EndBattleText5:
	TX_FAR _MicoloMap1EndBattleText5
	db "@"

MicoloMap1AfterBattleText5:
	TX_FAR _MicoloMap1AfterBattleText5
	db "@"

MicoloMap1WinBattleText5:
	TX_FAR _MicoloMap1WinBattleText5
	db "@"
	
MicoloMap1BattleText6:
	TX_FAR _MicoloMap1BattleText6
	db "@"

MicoloMap1EndBattleText6:
	TX_FAR _MicoloMap1EndBattleText6
	db "@"

MicoloMap1AfterBattleText6:
	TX_FAR _MicoloMap1AfterBattleText6
	db "@"

MicoloMap1WinBattleText6:
	TX_FAR _MicoloMap1WinBattleText6
	db "@"
	
MicoloMap1BattleText7:
	TX_FAR _MicoloMap1BattleText7
	db "@"

MicoloMap1EndBattleText7:
	TX_FAR _MicoloMap1EndBattleText7
	db "@"

MicoloMap1AfterBattleText7:
	TX_FAR _MicoloMap1AfterBattleText7
	db "@"

MicoloMap1WinBattleText7:
	TX_FAR _MicoloMap1WinBattleText7
	db "@"
	
MicoloMap1BattleText8:
	TX_FAR _MicoloMap1BattleText8
	db "@"

MicoloMap1EndBattleText8:
	TX_FAR _MicoloMap1EndBattleText8
	db "@"

MicoloMap1AfterBattleText8:
	TX_FAR _MicoloMap1AfterBattleText8
	db "@"

MicoloMap1WinBattleText8:
	TX_FAR _MicoloMap1WinBattleText8
	db "@"
	
CurarPC:
	TX_FAR _CurarPC
	db "@"

VayaalCP:
	TX_FAR _VayaalCP
	db "@"
	
Nocurar:
	TX_FAR _Nocurar
	db "@"

MicoloMap1diario:
	TX_FAR _MicoloMap1diario
	db "@"
	
MicoloMap1diario2:
	TX_FAR _MicoloMap1diario2
	db "@"

MicoloMap1diario3:
	TX_FAR _MicoloMap1diario3
	db "@"
	
MicoloMap1diario4:
	TX_FAR _MicoloMap1diario4
	db "@"
	
MicoloMap1diario5:
	TX_FAR _MicoloMap1diario5
	db "@"

MicoloMap1diario6:
	TX_FAR _MicoloMap1diario6
	db "@"

MicoloMap1diario7:
	TX_FAR _MicoloMap1diario7
	db "@"

MicoloMap1diario8:
	TX_FAR _MicoloMap1diario8
	db "@"

MicoloMap1cartel:
	TX_FAR _MicoloMap1cartel
	db "@"
	
MicoloMap1juicio1:
    TX_ASM
    ld a, MUSIC_Cornered
    ld [wNewSoundID], a
    call PlayMusic
	ld hl, .hola1
    call PrintText
	ld a, MUSIC_SILPH_CO
    ld [wNewSoundID], a
    call PlayMusic
    jp TextScriptEnd
.hola1
	TX_FAR _MicoloMap1juicio1
	db "@"
	
MicoloMap1juicio2:
    TX_ASM
    ld a, MUSIC_Cornered
    ld [wNewSoundID], a
    call PlayMusic
	ld hl, .hola2
    call PrintText
	ld a, MUSIC_SILPH_CO
    ld [wNewSoundID], a
    call PlayMusic
    jp TextScriptEnd
.hola2
	TX_FAR _MicoloMap1juicio2
	db "@"

MicoloMap1juicio3:
    TX_ASM
    ld a, MUSIC_Cornered
    ld [wNewSoundID], a
    call PlayMusic
	ld hl, .hola3
    call PrintText
	ld a, MUSIC_SILPH_CO
    ld [wNewSoundID], a
    call PlayMusic
    jp TextScriptEnd
.hola3
	TX_FAR _MicoloMap1juicio3
	db "@"

MicoloMap1juicio4:
    TX_ASM
    ld a, MUSIC_Cornered
    ld [wNewSoundID], a
    call PlayMusic
	ld hl, .hola4
    call PrintText
	ld a, MUSIC_SILPH_CO
    ld [wNewSoundID], a
    call PlayMusic
    jp TextScriptEnd
.hola4
	TX_FAR _MicoloMap1juicio4
	db "@"

MicoloMap1juicio5:
    TX_ASM
    ld a, MUSIC_Cornered
    ld [wNewSoundID], a
    call PlayMusic
	ld hl, .holavader
    call PrintText
	ld a, MUSIC_SILPH_CO
    ld [wNewSoundID], a
    call PlayMusic
    jp TextScriptEnd
.holavader
	TX_FAR _MicoloMap1juicio5
	db "@"

MicoloMap1juicio6:
    TX_ASM
    ld a, MUSIC_Cornered
    ld [wNewSoundID], a
    call PlayMusic
	ld hl, .hola6
    call PrintText
	ld a, MUSIC_SILPH_CO
    ld [wNewSoundID], a
    call PlayMusic
    jp TextScriptEnd
.hola6
	TX_FAR _MicoloMap1juicio6
	db "@"
	
MicoloMap1Text8:
	TX_FAR _MicoloMap1Text8
	db "@"

MicoloMap1Pika:
	TX_ASM
	lb bc, DARK_PIKA, 5
	call GivePokemon
	jr nc, .recibido2
	ld a, HS_DARKPIKA
	ld [wMissableObjectIndex], a
	predef HideObject
.recibido2
	jp TextScriptEnd

