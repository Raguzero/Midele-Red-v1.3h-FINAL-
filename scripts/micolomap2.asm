MicoloMap2ScriptFinCombate:
  call EndTrainerBattle
  push hl
  ; Comprueba si ya se ha derrotado a todos los entrenadores de este mapa y el de al lado
  
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
 
MicoloMap2Script:
	call EnableAutoTextBoxDrawing
	ld hl, MicoloMap2TrainerHeader0
	ld de, MicoloMap2ScriptPointers
	ld a, [wMicoloMap2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wMicoloMap2CurScript], a
	ret

MicoloMap2ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw MicoloMap2ScriptFinCombate

MicoloMap2TextPointers:
	dw MicoloMap2Text1
	dw MicoloMap2Text2
	dw MicoloMap2Text3
	dw MicoloMap2Text4
	dw MicoloMap2Text6
	dw MicoloMap2Text5
	dw PickUpItemText
	dw Micolotiporeset
	dw FossilSalesmanText ; NUEVO PARA VENDER FOSIL AL AZAR
	dw FossilObtenidoText ; NUEVO PARA VENDER PIEDRA AL AZAR
	dw Micolopcreset

MicoloMap2TrainerHeader0:
	dbEventFlagBit EVENT_SLOWBRO  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_SLOWBRO ; DE MOMENTO ESTE
	dw MicoloMap2BattleText2 ; TextBeforeBattle
	dw MicoloMap2AfterBattleText2 ; TextAfterBattle
	dw MicoloMap2EndBattleText2 ; TextEndBattle
	dw MicoloMap2WinBattleText2 ; TextEndBattle

MicoloMap2TrainerHeader1:
	dbEventFlagBit EVENT_FXOZ  ; DE MOMENTO ESTE
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_FXOZ ; DE MOMENTO ESTE
	dw MicoloMap2BattleText3 ; TextBeforeBattle
	dw MicoloMap2AfterBattleText3 ; TextAfterBattle
	dw MicoloMap2EndBattleText3 ; TextEndBattle
	dw MicoloMap2WinBattleText3 ; TextEndBattle

MicoloMap2TrainerHeader2:
	dbEventFlagBit EVENT_PHENT  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_PHENT ; DE MOMENTO ESTE
	dw MicoloMap2BattleText4 ; TextBeforeBattle
	dw MicoloMap2AfterBattleText4 ; TextAfterBattle
	dw MicoloMap2EndBattleText4 ; TextEndBattle
	dw MicoloMap2WinBattleText4 ; TextEndBattle

MicoloMap2TrainerHeader3:
	dbEventFlagBit EVENT_MELKORMENTIRA  ; DE MOMENTO ESTE
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_MELKORMENTIRA ; DE MOMENTO ESTE
	dw MicoloMap2BattleText5; TextBeforeBattle
	dw MicoloMap2AfterBattleText5 ; TextAfterBattle
	dw MicoloMap2EndBattleText5 ; TextEndBattle
	dw MicoloMap2WinBattleText5 ; TextEndBattle

MicoloMap2TrainerHeader4:
	dbEventFlagBit EVENT_ISMAPKM  ; DE MOMENTO ESTE
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_ISMAPKM ; DE MOMENTO ESTE
	dw MicoloMap2BattleText6; TextBeforeBattle
	dw MicoloMap2AfterBattleText6 ; TextAfterBattle
	dw MicoloMap2EndBattleText6 ; TextEndBattle
	dw MicoloMap2WinBattleText6 ; TextEndBattle

	db $ff
	
MicoloMap2Text1:
	TX_ASM
	ld hl, MicoloMap2TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap2BattleText2:
	TX_FAR _MicoloMap2BattleText2
	db "@"

MicoloMap2EndBattleText2:
	TX_FAR _MicoloMap2EndBattleText2
	db "@"

MicoloMap2AfterBattleText2:
	TX_FAR _MicoloMap2AfterBattleText2
	db "@"

MicoloMap2WinBattleText2:
	TX_FAR _MicoloMap2WinBattleText2
	db "@"

MicoloMap2Text2:
	TX_ASM
	ld hl, MicoloMap2TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap2BattleText3:
	TX_FAR _MicoloMap2BattleText3
	db "@"

MicoloMap2EndBattleText3:
	TX_FAR _MicoloMap2EndBattleText3
	db "@"

MicoloMap2AfterBattleText3:
	TX_FAR _MicoloMap2AfterBattleText3
	db "@"

MicoloMap2WinBattleText3:
	TX_FAR _MicoloMap2WinBattleText3
	db "@"
	
MicoloMap2Text3:
	TX_ASM
	ld hl, MicoloMap2TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap2BattleText4:
	TX_FAR _MicoloMap2BattleText4
	db "@"

MicoloMap2EndBattleText4:
	TX_FAR _MicoloMap2EndBattleText4
	db "@"

MicoloMap2AfterBattleText4:
	TX_FAR _MicoloMap2AfterBattleText4
	db "@"

MicoloMap2WinBattleText4:
	TX_FAR _MicoloMap2WinBattleText4
	db "@"

MicoloMap2Text4:
	TX_ASM
	ld hl, MicoloMap2TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap2BattleText5:
	TX_FAR _MicoloMap2BattleText5
	db "@"

MicoloMap2EndBattleText5:
	TX_FAR _MicoloMap2EndBattleText5
	db "@"

MicoloMap2AfterBattleText5:
	TX_FAR _MicoloMap2AfterBattleText5
	db "@"

MicoloMap2WinBattleText5:
	TX_FAR _MicoloMap2WinBattleText5
	db "@"
	
MicoloMap2Text6:
	TX_ASM
	ld hl, MicoloMap2TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

MicoloMap2BattleText6:
	TX_FAR _MicoloMap2BattleText6
	db "@"

MicoloMap2EndBattleText6:
	TX_FAR _MicoloMap2EndBattleText6
	db "@"

MicoloMap2AfterBattleText6:
	TX_FAR _MicoloMap2AfterBattleText6
	db "@"

MicoloMap2WinBattleText6:
	TX_FAR _MicoloMap2WinBattleText6
	db "@"

MicoloMap2Text5:
	TX_ASM
	lb bc, CATERMANO, 5
	call GivePokemon
	jr nc, .recibido
	ld a, HS_CATERMANOBALL
	ld [wMissableObjectIndex], a
	predef HideObject
.recibido
	jp TextScriptEnd

Micolotiporeset:
	TX_FAR _Micolotiporeset
	db "@"

Micolopcreset:
   TX_ASM
   ld hl, USARPC
   call PrintText
   call YesNoChoice
   ld a, [wCurrentMenuItem]
   and a
   jp nz, .NOO
     ld a, HS_GMASTER
  ld [wMissableObjectIndex], a
  predef ShowObject
   ResetEvent EVENT_DUNK    ; 8C9, (D860, bit 1)
	ResetEvent EVENT_FELIPEX     ; 8CA, (D860, bit 2)
	ResetEvent EVENT_KASTY       ; 8CB, (D860, bit 3)
	ResetEvent EVENT_JOEL        ; 8CC, (D860, bit 4)
	ResetEvent EVENT_MANEC2
	ResetEvent EVENT_RAGU    ; MAZMORRA RARA RAGU         ; 919, (D86A, bit 1)
	ResetEvent EVENT_GOLDY   ;MAZMORRA RARA GOLDY           ; 91A, (D86A, bit 2)
	ResetEvent EVENT_UTA   ;MAZMORRA RARA UTA           ; 91B, (D86A, bit 3)
	ResetEvent EVENT_EEVEETO   ;MAZMORRA RARA EEVEETO         ; 91C, (D86A, bit 4)
	ResetEvent EVENT_JAVISITO  ;MAZMORRA RARA JAVISITO       ; 91D, (D86A, bit 5)
	ResetEvent EVENT_DARKI   ;MAZMORRA RARA DARKI          ; 91E, (D86A, bit 6)
	ResetEvent EVENT_KAISSER   ; KAISSER                               ; 920, (D86B, bit 0)
	ResetEvent EVENT_GRIM   ; MAZMORRA RARA 2 GRIM         ; 929, (D86C, bit 1)
	ResetEvent EVENT_VLADILAND   ;MAZMORRA RARA 2 VLADILAND        ; 92A, (D86C, bit 2)
	ResetEvent EVENT_JPROGAMER   ;MAZMORRA RARA 2 JPROGAMER    ; 92B, (D86C, bit 3)
	ResetEvent EVENT_MAUS   ;MAZMORRA RARA 2 MAUS    ; 92C, (D86C, bit 4)
	ResetEvent EVENT_MERUM ;MAZMORRA RARA 2 MERUM      ; 92D, (D86C, bit 5)
	ResetEvent EVENT_SAPPHIRE ;MAZMORRA RARA 2 SAPPHIRE   
  	ResetEvent EVENT_MDRAGON  ; MDRAGON DE ROUTE 28           ; 939, (D86E, bit 1)
	ResetEvent EVENT_RUBENCB  ; RUBENCB DE ROTUE 28           ; 93A, (D86E, bit 2)
	ResetEvent EVENT_SJMISTERY  ; SJMISTERY DE ROUTE 28         ; 93B, (D86E, bit 3)
	ResetEvent EVENT_MARENA     ; M.ARENA DE ROUTE 28         ; 93C, (D86E, bit 4)
	ResetEvent EVENT_JZOMBIE                                  ; 93D, (D86E, bit 5)
	ResetEvent EVENT_MERCIBOKU                                  ; 93E, (D86E, bit 6)
	ResetEvent EVENT_BOKUNOPICO                                  ; 93F,
	ResetEvent EVENT_POLI_FURRY   ; POLICIA FURRY                ; 951,
  	ResetEvent EVENT_GOOSES                                  ; 959, (D872, bit 1)
	ResetEvent EVENT_KRAFT                                  ; 95A, (D872, bit 2)
	ResetEvent EVENT_SANTY                                  ; 95B, (D872, bit 3)
	ResetEvent EVENT_PACOCHEF                                  ; 95C, (D872, bit 4)
	ResetEvent EVENT_DISCAL                                 ; 95D, (D872, bit 5)
	ResetEvent EVENT_SAULGP                                 ; 95E, (D872, bit 6)
	ResetEvent EVENT_CHARZ                                  ; 95F, (D872, bit 7)
	ResetEvent EVENT_SLOWBRO                                  ; 961, (D873, bit 1)
	ResetEvent EVENT_FXOZ                                  ; 962, (D873, bit 2)
	ResetEvent EVENT_PHENT                                 ; 963, (D873, bit 3)
	ResetEvent EVENT_MELKORMENTIRA                                 ; 964, (D873, bit 4)
	ResetEvent EVENT_ISMAPKM                                  ; 
 	ResetEvent EVENT_LAVENDER2                              ; 969, (D874, bit 1)
	ResetEvent EVENT_ARTEMIS                                 ; 96A, (D874, bit 2)
	ResetEvent EVENT_KADERETE2                                  ; 96B, (D874, bit 3)
	ResetEvent EVENT_AVADER                                  ; 96C, (D874, bit 4)
	ResetEvent EVENT_MICOLO                                  ; 96D, (D874, bit 5)
 	ResetEvent EVENT_ANGELFS                                  ; 979, (D876, bit 1)
	ResetEvent EVENT_CHICA1                                  ; 97A, (D876, bit 2)
	ResetEvent EVENT_CHICA2                                  ; 97B, (D876, bit 3)
	ResetEvent EVENT_CHICA3                                  ; 97C, (D876, bit 4)
	ResetEvent EVENT_YELLOW                                 ; 97D, (D876, bit 5)
	ResetEvent EVENT_BLUE                                  ; 97E, (D876, bit 6)
 	ResetEvent EVENT_MICHOH     ;MAZMORRA RARA MICHOH       ; 91F, (D86A, bit 7)
  	ResetEvent EVENT_FANBOY	
 	ResetEvent EVENT_HATER    
 	ResetEvent EVENT_HYPEANTO 
	ResetEvent EVENT_BEAT_ROUTE_8_TRAINER_1	
  ld hl, RESETEAR
  call PrintText
   jr FindelPC
.NOO
   ld hl, CANCELAR
   call PrintText
FindelPC:
	jp TextScriptEnd
	
USARPC:
	TX_FAR _USARPC
	db "@"

RESETEAR:
	TX_FAR _RESETEAR
	db "@"
	
CANCELAR:
	TX_FAR _CANCELAR
	db "@"

; NUEVO PARA VENDER FOSIL AL AZAR
FossilSalesmanText:
	TX_ASM
	;CheckEvent EVENT_SELLSTONE, 1
	;jp c, .alreadyBoughtStone
	ld hl, .Text1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
    ld [hMoney + 2], a
    ld [hMoney + 1], a
    ld a, $5
    ld [hMoney], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
   call Random
   and 3
   ld hl, RandFossil
   ld c, a
   ld b, $0
   add hl, bc
   ld a, [hl]
   ld b, a
   ld c, 1
   call GiveItem
	jr nc, .mochilanocabe
   ld hl, FossilObtenidoText
   call PrintText
    xor a
    ld [wPriceTemp + 2], a
    ld [wPriceTemp + 1], a
    ld a, $5
    ld [wPriceTemp], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	;SetEvent EVENT_SELLSTONE
	jr .done
.choseNo
	ld hl, .RefuseText
	jr .printText
.mochilanocabe
   ld hl, .MochilanocabeText
   jr .printText
;.alreadyBoughtStone
;	ld hl, .Text2
.printText
	call PrintText
.done
	jp TextScriptEnd

.Text1
	TX_FAR _FossilSalesmanText1
	db "@"

.RefuseText
	TX_FAR _StoneSalesmanNoText
	db "@"

.NoMoneyText
	TX_FAR _StoneSalesmanNoMoneyText
	db "@"

;.Text2
;	TX_FAR _StoneSalesmanText2
;	db "@"

.MochilanocabeText:
	TX_FAR _MochilanocabeText
	db "@"

RandFossil:
  db OLD_AMBER
  db HELIX_FOSSIL
  db DOME_FOSSIL
  db OLD_AMBER

FossilObtenidoText:
    TX_FAR _StoneObtenidoText
	TX_SFX_ITEM_1
	db "@"

; NUEVO PARA VENDER FOSIL AL AZAR
