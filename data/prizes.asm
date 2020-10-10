PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

	dw PrizeMenuMon2Entries
	dw PrizeMenuMon2Cost

; NUEVO PREMIOS POKE CASINO
	;dw PrizeMenuTMsEntries
	;dw PrizeMenuTMsCost
	dw PrizeMenuMon3Entries
	dw PrizeMenuMon3Cost
; NUEVO PREMIOS POKE CASINO	
	
NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db SANDILE
	db TIMBURR
	db BELDUM
	db "@"

PrizeMenuMon1Cost:
	coins 1000
	coins 2000
	coins 4000
	db "@"

PrizeMenuMon2Entries:
	db ROWLET
	db MUDKIP
	db POIPOLE
	db "@"

PrizeMenuMon2Cost:
	coins 3000
	coins 3000
	coins 8000
	db "@"

; NUEVO PREMIOS POKE CASINO
;PrizeMenuTMsEntries:
;	db TM_23
;	db TM_15
;	db TM_50
;	db "@"

;PrizeMenuTMsCost:
;	coins 3300
;	coins 5500
;	coins 7700
;	db "@"

PrizeMenuMon3Entries:
	db BULBASAUR
	db CHARMANDER
	db SQUIRTLE
	db "@"

PrizeMenuMon3Cost:
	coins 3000
	coins 3000
	coins 3000
	db "@"
; NUEVO PREMIOS POKE CASINO
