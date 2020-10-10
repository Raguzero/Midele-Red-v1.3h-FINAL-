UndergroundPathEntranceRoute6Script:
	ld a, ROUTE_6
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathEntranceRoute6TextPointers:
	dw UndergroundPathEntranceRoute6Text1
	dw StoneSalesmanText ; NUEVO PARA VENDER PIEDRA AL AZAR
	dw StoneObtenidoText ; NUEVO PARA VENDER PIEDRA AL AZAR

; NUEVO PARA VENDER PIEDRA AL AZAR
StoneSalesmanText:
	TX_ASM
	CheckEvent EVENT_SELLSTONE, 1
	jp c, .alreadyBoughtStone
	ld hl, .Text1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
	ld [hMoney], a
	ld [hMoney + 2], a
	ld a, $50
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
   call Random
   and 7
   ld hl, RandStones
   ld c, a
   ld b, $0
   add hl, bc
   ld a, [hl]
   ld b, a
   ld c, 1
   call GiveItem
	jr nc, .mochilanocabe
   ld hl, StoneObtenidoText
   call PrintText
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $50
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	SetEvent EVENT_SELLSTONE
	jr .done
.choseNo
	ld hl, .RefuseText
	jr .printText
.mochilanocabe
   ld hl, .MochilanocabeText
   jr .printText
.alreadyBoughtStone
	ld hl, .Text2
.printText
	call PrintText
.done
	jp TextScriptEnd

.Text1
	TX_FAR _StoneSalesmanText1
	db "@"

.RefuseText
	TX_FAR _StoneSalesmanNoText
	db "@"

.NoMoneyText
	TX_FAR _StoneSalesmanNoMoneyText
	db "@"

.Text2
	TX_FAR _StoneSalesmanText2
	db "@"

.MochilanocabeText:
	TX_FAR _MochilanocabeText
	db "@"

RandStones:
  db FIRE_STONE
  db WATER_STONE
  db SUN_STONE
  db MOON_STONE
  db LEAF_STONE
  db THUNDER_STONE
  db ICE_STONE
  db LEAF_STONE

StoneObtenidoText:
    TX_FAR _StoneObtenidoText
	TX_SFX_ITEM_1
	db "@"

; NUEVO PARA VENDER PIEDRA AL AZAR

UndergroundPathEntranceRoute6Text1:
	TX_FAR _UndergrdTunnelEntRoute6Text1
	db "@"
