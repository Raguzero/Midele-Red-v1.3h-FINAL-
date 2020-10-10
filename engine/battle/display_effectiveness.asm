DisplayEffectiveness:
	ld a, [wDamageMultipliers]
	and $7F
	; NUEVO PARA CORREGIR EFECTIVIDAD DE DUAL TIPOS
	;cp $0A
	;ret z
	and a
	ret z ; neutral
	cp %00000011
	ret z ; SE to one type and NVE to the other type
	and %00000001
	; NUEVO PARA CORREGIR EFECTIVIDAD DE DUAL TIPOS
	ld hl, SuperEffectiveText
	jr z, .done ;jr nc, .done  ; NUEVO PARA CORREGIR EFECTIVIDAD DE DUAL TIPOS
	ld hl, NotVeryEffectiveText
.done
	jp PrintText

SuperEffectiveText:
	TX_FAR _SuperEffectiveText
	db "@"

NotVeryEffectiveText:
	TX_FAR _NotVeryEffectiveText
	db "@"
