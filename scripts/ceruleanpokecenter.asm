CeruleanPokecenterScript:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

CeruleanPokecenterTextPointers:
	dw CeruleanHealNurseText
	dw CeruleanPokecenterText2
	dw CeruleanPokecenterText3
	dw CeruleanTradeNurseText
	dw CeruleanPokecenterText4

CeruleanTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST

CeruleanHealNurseText:
	TX_POKECENTER_NURSE

CeruleanPokecenterText2:
	TX_FAR _CeruleanPokecenterText2
	db "@"

CeruleanPokecenterText3:
	TX_FAR _CeruleanPokecenterText3
	db "@"
	
CeruleanPokecenterText4:
	TX_FAR MoveRelearnerText1
	db "@"
