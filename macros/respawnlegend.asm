
; nz if pokemon is flagged as seen
;\1 = pokemon number
IsSeen: MACRO
    ld a, \1
	ld [wd11e], a
    callab IndexToPokedex
    callab IsPokemonSeen
    ENDM

; nz if pokemon is flagged as owned
;\1 = pokemon number
IsOwned: MACRO
    ld a, \1
	ld [wd11e], a
    callab IndexToPokedex
    callab IsPokemonOwned
	ENDM

; resets EVENT_BEAT_(Pokemon) if Pokemon wasn't caught
ResetUncaughtPokemon: MACRO
	IsOwned \1
	jr nz, .caught\1
	ResetEvent EVENT_BEAT_\1
    ld a, HS_\1
	ld [wMissableObjectIndex], a
	predef ShowObject 
.caught\1
    ENDM