CeladonMansion5Script:
	jp EnableAutoTextBoxDrawing

CeladonMansion5TextPointers:
	dw CeladonMansion5Text1
	dw CeladonMansion5Text2

CeladonMansion5Text1:
	TX_FAR _CeladonMansion5Text1
	db "@"

CeladonMansion5Text2:
	TX_ASM
	SetEvent EVENTO_FORZAR_15_IVS
	lb bc, EEVEE, 30
	call GivePokemon
	ResetEvent EVENTO_FORZAR_15_IVS
	jr nc, .asm_24365
	ld a, HS_CELADON_MANSION_5_GIFT
	ld [wMissableObjectIndex], a
	predef HideObject
.asm_24365
	jp TextScriptEnd
