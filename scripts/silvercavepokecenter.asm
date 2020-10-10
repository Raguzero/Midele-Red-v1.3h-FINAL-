SilverCavePokecenterScript:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

SilverCavePokecenterTextPointers:
	dw SilverCaveHealNurseText
	dw SilverCavePokecenterText1
	dw SilverCaveTradeNurseText
	dw SilverCavePokecenterText2

SilverCaveTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST

SilverCaveHealNurseText:
	TX_POKECENTER_NURSE

SilverCavePokecenterText1:
	TX_FAR _SilverCavePokecenterText1
	db "@"

SilverCavePokecenterText2:
	TX_FAR _SilverCavePokecenterText2
	db "@"