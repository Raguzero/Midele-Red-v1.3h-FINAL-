ViridianPokeCenterScript:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

ViridianPokecenterTextPointers:
	dw ViridianHealNurseText
	dw ViridianPokeCenterText2
	dw ViridianPokeCenterText3
	dw ViridianTradeNurseText
	dw ViridianPokeCenterText4

ViridianHealNurseText:
	TX_POKECENTER_NURSE

ViridianPokeCenterText2:
	TX_FAR _ViridianPokeCenterText2
	db "@"

ViridianPokeCenterText3:
	TX_FAR _ViridianPokeCenterText3
	db "@"

ViridianTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST

ViridianPokeCenterText4:
	TX_FAR MoveRelearnerText1
	db "@"
