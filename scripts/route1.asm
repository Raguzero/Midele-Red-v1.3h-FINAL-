Route1Script:
	jp EnableAutoTextBoxDrawing

Route1TextPointers:
	dw Route1Text1
	dw Route1Text2
	dw Route1Text3

Route1Text1:
	TX_ASM
	;ld hl, wObtainedBadges
	;set 0, [hl]
	;ld hl, wBeatGymFlags
	;set 0, [hl]
;		ld hl, wObtainedBadges
;	set 1, [hl]
;	ld hl, wBeatGymFlags
;	set 1, [hl]
;		ld hl, wObtainedBadges
;	set 2, [hl]
;	ld hl, wBeatGymFlags
;	set 2, [hl]
;		ld hl, wObtainedBadges
;	set 3, [hl]
;	ld hl, wBeatGymFlags
;	set 3, [hl]
;		ld hl, wObtainedBadges
;	set 4, [hl]
;	ld hl, wBeatGymFlags
;	set 4, [hl]
;		ld hl, wObtainedBadges
;	set 5, [hl]
;	ld hl, wBeatGymFlags
;	set 5, [hl]
;		ld hl, wObtainedBadges
;	set 6, [hl]
;	ld hl, wBeatGymFlags
;	set 6, [hl]
;		ld hl, wObtainedBadges
;	set 7, [hl]
;	ld hl, wBeatGymFlags
;	set 7, [hl]
	CheckAndSetEvent EVENT_GOT_POTION_SAMPLE
	jr nz, .asm_1cada
	ld hl, Route1ViridianMartSampleText
	call PrintText
	lb bc, POTION, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, Route1Text_1cae8
	jr .asm_1cadd
.BagFull
	ld hl, Route1Text_1caf3
	jr .asm_1cadd
.asm_1cada
	ld hl, Route1Text_1caee
.asm_1cadd
	call PrintText
	jp TextScriptEnd

Route1ViridianMartSampleText:
	TX_FAR _Route1ViridianMartSampleText
	db "@"

Route1Text_1cae8:
	TX_FAR _Route1Text_1cae8
	TX_SFX_ITEM_1
	db "@"

Route1Text_1caee:
	TX_FAR _Route1Text_1caee
	db "@"

Route1Text_1caf3:
	TX_FAR _Route1Text_1caf3
	db "@"

Route1Text2:
	TX_FAR _Route1Text2
	db "@"

Route1Text3:
	TX_FAR _Route1Text3
	db "@"
