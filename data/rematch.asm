StartGymLeaderRematch::
	ld hl, RematchStartText
	call PrintText
	call YesNoChoice
    ld a, [wCurrentMenuItem]
    and a
    ret nz
	ld a, [wBadgeNameTile]
    ld b, a
	ld a, [wGymLeaderRematch]
    xor b
    ld [wGymLeaderRematch], a
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, RematchYouWinText
	ld de, RematchYouLoseText
	call SaveEndBattleTextPointers
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $2
    ld [wTrainerNo], a
	and 0
    ret

ShowHideGymLeaderGiovanni::
	CheckRematch $7
    jr z, .no_rematch
    ld a, HS_VIRIDIAN_GYM_GIOVANNI
	ld [wMissableObjectIndex], a
	predef ShowObject
    jr .done
.no_rematch
	CheckEvent EVENT_GOT_TM27
	jr z, .done
    ld a, HS_VIRIDIAN_GYM_GIOVANNI
	ld [wMissableObjectIndex], a
	predef HideObject
.done
    ret

RematchStartText:
	text "Oh, do you want"
	line "a rematch?"

	para "Very well, but I"
	line "won't go easy!"
	done

RematchYouWinText:
	text "Wow!"

    para "Another great"
	line "performance!"
	prompt

RematchYouLoseText:
	text "Ouch!"

    para "That was"
	line "unfortunate."

    para "Come back and try"
    line "again."
	prompt
