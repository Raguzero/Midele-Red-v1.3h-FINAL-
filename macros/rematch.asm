; z if gym leader is available for rematch
;\1 = gym number
CheckRematch: MACRO
	ld a, [wGymLeaderRematch]
	and (1<<\1)
	ENDM

; checks if gym leader is available for rematch, and if so, starts the rematch
;\1 = gym number
TryRematch: MACRO
	CheckRematch \1
	jr z, .not_rematch
	ld [wBadgeNameTile], a
	callab StartGymLeaderRematch
	jr z, .start_battle
.not_rematch
    ENDM