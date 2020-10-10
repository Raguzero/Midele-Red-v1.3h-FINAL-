; checks whether a mon is shiny or not.
; de: mon DVs location
; outputs: a; 0 if the mon is not shiny, non-zero if the mon is shiny.
IsMonShiny:
	ld h, d
	ld l, e
	; attack DV = 6, 7, 14 or 15?
	ld a, [hl]
	res 7, a
	cp $60
	jr c, .notShiny
	; defense DV >= 12?
	ld a, [hli]
	and $f
	cp $0c
	jr c, .notShiny
	; speed DV >= 12?
	ld a, [hl]
	cp $c0
	jr c, .notShiny
	; special DV > 11?
	ld a, [hl]
	and $f
	cp $0b ; if DV is 11, difference is zero and zero flag is set
	jr c, .notShiny
	and a
	ret
.notShiny
	xor a
	ret