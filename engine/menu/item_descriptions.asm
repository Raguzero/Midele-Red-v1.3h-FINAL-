DisplayItemDescription:
	ld a, [wcf91]
	dec a
	cp a, HM_01 - 1
	jr c, .ready
	sub ((HM_01 - MUSIC_PLAYER) - 1) ; TM and HM ids are now adjusted to be after the rest of the normal items
.ready
	ld hl,ItemDescriptionPointers
	ld bc, 5
.add
	and a
	jr z, .doneAdding
	dec a
	add hl, bc
	jr .add
.doneAdding
	call PrintText
	ret

ItemDescriptionPointers:
	TX_FAR _MasterBallDescription
	db "@"
	TX_FAR _UltraBallDescription
	db "@"
	TX_FAR _GreatBallDescription
	db "@"
	TX_FAR _PokeBallDescription
	db "@"
	TX_FAR _TownMapDescription
	db "@"
	TX_FAR _BicycleDescription
	db "@"
	TX_FAR _BlankTextDescription
	db "@"
	TX_FAR _SafariBallDescription
	db "@"
	TX_FAR _PokedexDescription
	db "@"
	TX_FAR _MoonStoneDescription
	db "@"
	TX_FAR _AntidoteDescription
	db "@"
	TX_FAR _BurnHealDescription
	db "@"
	TX_FAR _IceHealDescription
	db "@"
	TX_FAR _AwakeningDescription
	db "@"
	TX_FAR _ParalyzeHealDescription
	db "@"
	TX_FAR _FullRestoreDescription
	db "@"
	TX_FAR _MaxPotionDescription
	db "@"
	TX_FAR _HyperPotionDescription
	db "@"
	TX_FAR _SuperPotionDescription
	db "@"
	TX_FAR _PotionDescription
	db "@"
	TX_FAR _SafariBaitDescription
	db "@"
	TX_FAR _SafariRockDescription
	db "@"
	TX_FAR _BlankTextDescription
	db "@"
	TX_FAR _BlankTextDescription
	db "@"
	TX_FAR _BlankTextDescription
	db "@"
	TX_FAR _BlankTextDescription
	db "@"
	TX_FAR _BlankTextDescription
	db "@"
	TX_FAR _BlankTextDescription
	db "@"
	TX_FAR _EscapeRopeDescription
	db "@"
	TX_FAR _RepelDescription
	db "@"
	TX_FAR _OldAmberDescription
	db "@"
	TX_FAR _FireStoneDescription
	db "@"
	TX_FAR _ThunderStoneDescription
	db "@"
	TX_FAR _WaterStoneDescription
	db "@"
	TX_FAR _HPUpDescription
	db "@"
	TX_FAR _ProteinDescription
	db "@"
	TX_FAR _IronDescription
	db "@"
	TX_FAR _CarbosDescription
	db "@"
	TX_FAR _CalciumDescription
	db "@"
	TX_FAR _RareCandyDescription
	db "@"
	TX_FAR _DomeFossilDescription
	db "@"
	TX_FAR _HelixFossilDescription
	db "@"
	TX_FAR _SecretKeyDescription
	db "@"
	TX_FAR _SunStoneDescription
	db "@"
	TX_FAR _BikeVoucherDescription
	db "@"
	TX_FAR _XAccuracyDescription
	db "@"
	TX_FAR _LeafStoneDescription
	db "@"
	TX_FAR _CardKeyDescription
	db "@"
	TX_FAR _NuggetDescription
	db "@"
	TX_FAR _IceStoneDescription
	db "@"
	TX_FAR _PokeDollDescription
	db "@"
	TX_FAR _FullHealDescription
	db "@"
	TX_FAR _ReviveDescription
	db "@"
	TX_FAR _MaxReviveDescription
	db "@"
	TX_FAR _GuardSpecDescription
	db "@"
	TX_FAR _SuperRepelDescription
	db "@"
	TX_FAR _MaxRepelDescription
	db "@"
	TX_FAR _DireHitDescription
	db "@"
	TX_FAR _CoinDescription
	db "@"
	TX_FAR _FreshWaterDescription
	db "@"
	TX_FAR _SodaPopDescription
	db "@"
	TX_FAR _LemonadeDescription
	db "@"
	TX_FAR _SSTicketDescription
	db "@"
	TX_FAR _GoldTeethDescription
	db "@"
	TX_FAR _XAttackDescription
	db "@"
	TX_FAR _XDefendDescription
	db "@"
	TX_FAR _XSpeedDescription
	db "@"
	TX_FAR _XSpecialDescription
	db "@"
	TX_FAR _CoinCaseDescription
	db "@"
	TX_FAR _OaksParcelDescription
	db "@"
	TX_FAR _ItemFinderDescription
	db "@"
	TX_FAR _SilphScopeDescription
	db "@"
	TX_FAR _PokeFluteDescription
	db "@"
	TX_FAR _LiftKeyDescription
	db "@"
	TX_FAR _EXPAllDescription
	db "@"
	TX_FAR _OldRodDescription
	db "@"
	TX_FAR _GoodRodDescription
	db "@"
	TX_FAR _SuperRodDescription
	db "@"
	TX_FAR _PPUpDescription
	db "@"
	TX_FAR _EtherDescription
	db "@"
	TX_FAR _MaxEtherDescription
	db "@"
	TX_FAR _ElixerDescription
	db "@"
	TX_FAR _MaxElixerDescription
	db "@"
	TX_FAR _FloorB2FDescription
	db "@"
	TX_FAR _FloorB1FDescription
	db "@"
	TX_FAR _Floor1FDescription
	db "@"
	TX_FAR _Floor2FDescription
	db "@"
	TX_FAR _Floor3FDescription
	db "@"
	TX_FAR _Floor4FDescription
	db "@"
	TX_FAR _Floor5FDescription
	db "@"
	TX_FAR _Floor6FDescription
	db "@"
	TX_FAR _Floor7FDescription
	db "@"
	TX_FAR _Floor8FDescription
	db "@"
	TX_FAR _Floor9FDescription
	db "@"
	TX_FAR _Floor10FDescription
	db "@"
	TX_FAR _Floor11FDescription
	db "@"
	TX_FAR _FloorB4FDescription
	db "@"
	TX_FAR _PKHEXDescription
	db "@"
	TX_FAR _MUSICPLAYERDescription
	db "@"
	TX_FAR _HM01Description
	db "@"
	TX_FAR _HM02Description
	db "@"
	TX_FAR _HM03Description
	db "@"
	TX_FAR _HM04Description
	db "@"
	TX_FAR _HM05Description
	db "@"
	TX_FAR _TM01Description
	db "@"
	TX_FAR _TM02Description
	db "@"
	TX_FAR _TM03Description
	db "@"
	TX_FAR _TM04Description
	db "@"
	TX_FAR _TM05Description
	db "@"
	TX_FAR _TM06Description
	db "@"
	TX_FAR _TM07Description
	db "@"
	TX_FAR _TM08Description
	db "@"
	TX_FAR _TM09Description
	db "@"
	TX_FAR _TM10Description
	db "@"
	TX_FAR _TM11Description
	db "@"
	TX_FAR _TM12Description
	db "@"
	TX_FAR _TM13Description
	db "@"
	TX_FAR _TM14Description
	db "@"
	TX_FAR _TM15Description
	db "@"
	TX_FAR _TM16Description
	db "@"
	TX_FAR _TM17Description
	db "@"
	TX_FAR _TM18Description
	db "@"
	TX_FAR _TM19Description
	db "@"
	TX_FAR _TM20Description
	db "@"
	TX_FAR _TM21Description
	db "@"
	TX_FAR _TM22Description
	db "@"
	TX_FAR _TM23Description
	db "@"
	TX_FAR _TM24Description
	db "@"
	TX_FAR _TM25Description
	db "@"
	TX_FAR _TM26Description
	db "@"
	TX_FAR _TM27Description
	db "@"
	TX_FAR _TM28Description
	db "@"
	TX_FAR _TM29Description
	db "@"
	TX_FAR _TM30Description
	db "@"
	TX_FAR _TM31Description
	db "@"
	TX_FAR _TM32Description
	db "@"
	TX_FAR _TM33Description
	db "@"
	TX_FAR _TM34Description
	db "@"
	TX_FAR _TM35Description
	db "@"
	TX_FAR _TM36Description
	db "@"
	TX_FAR _TM37Description
	db "@"
	TX_FAR _TM38Description
	db "@"
	TX_FAR _TM39Description
	db "@"
	TX_FAR _TM40Description
	db "@"
	TX_FAR _TM41Description
	db "@"
	TX_FAR _TM42Description
	db "@"
	TX_FAR _TM43Description
	db "@"
	TX_FAR _TM44Description
	db "@"
	TX_FAR _TM45Description
	db "@"
	TX_FAR _TM46Description
	db "@"
	TX_FAR _TM47Description
	db "@"
	TX_FAR _TM48Description
	db "@"
	TX_FAR _TM49Description
	db "@"
	TX_FAR _TM50Description
	db "@"