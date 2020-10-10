; Gets player's party max level
; Returns: the player's plarty max level in a
GetPlayerPartyMaxLevel:
	push bc
	push de
	push hl
	ld a, [wPartyCount] ; party counter
	ld d, a
	ld e, 0 ; max value
	ld hl, wPartyMon1Level ; current party mon level location
.max_level_loop
	; get the level of the current party mon
	; and update e if the level is greater than the max
	ld a, [hl]
	cp e
	jr c, .not_greater_level
	ld e, a
.not_greater_level
	; make hl point to the mext party mon level
	ld bc, wPartyMon2 - wPartyMon1
	add hl, bc
	; party counter check
	dec d
	ld a, d
	and a
	jr nz, .max_level_loop
	; store result in a and return from call
	ld a, e
	pop hl
	pop de
	pop bc
	ret
; Gets a given leader level based on its minimum level
; and the player's party max level
; Parameters:
; c: the gym leader minimum level
; Returns: the leader level in a
GetLeaderLevel:
	push bc
	call GetPlayerPartyMaxLevel
	cp c
	jr nc, .not_use_min_level
	ld a, c
.not_use_min_level
	pop bc
	ret