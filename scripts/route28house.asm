Route28HouseScript:
	call EnableAutoTextBoxDrawing
	ret

Route28HouseTextPointers:
	dw Route28HouseText1
	dw Route28HouseText2

Route28HouseText1:
	TX_FAR _Route28HouseText1
	db "@"

Route28HouseText2:
	TX_FAR _Route28HouseText2
	TX_ASM
	ld a, FEAROW
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd