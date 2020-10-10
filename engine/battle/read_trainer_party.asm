ReadTrainer:

; don't change any moves in a link battle
	ld a, [wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartyMons] to FF
; XXX first is total enemy pokemon?
; XXX second is species of first pokemon?
	ld hl, wEnemyPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

; get the pointer to trainer data for this class
	ld a, [wCurOpponent]
	; NUEVO PARA ENTRENADORES QUE NO EMPIECEN DESDE 200
	;sub $C9 ; convert value from pokemon to trainer
	dec a ; convert value from pokemon to trainer
	; NUEVO PARA ENTRENADORES QUE NO EMPIECEN DESDE 200
	add a
	ld hl, TrainerDataPointers
	ld c, a
	ld b, 0
	add hl, bc ; hl points to trainer class
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wTrainerNo]
	ld b, a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.outer
	dec b
	jr z, .IterateTrainer
.inner
	ld a, [hli]
	and a
	jr nz, .inner
	jr .outer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.IterateTrainer
; NUEVO PARA RANDOM TRAINER
	CheckEvent EVENT_TRAINER_RANDOM
	jr z, .not_rand_roster
	callba GetRandRoster
	ResetEvent EVENT_TRAINER_RANDOM
	jp z, .FinishUp
.not_rand_roster
; NUEVO PARA RANDOM TRAINER
	ld a, [hli]
	cp TRAINERTYPE_POKERED_SPECIAL ; is the trainer special?
	jr z, .SpecialTrainer ; if so, check for special moves
	cp TRAINERTYPE_CUSTOM ; is the trainer custom?
	jp z, .CustomTrainer
	; NUEVO PARA NIVELES DINAMICOS DE ENTRENADOR
	cp TRAINERTYPE_DYNAMIC
	jp z, .DynamicTrainer
	; NUEVO PARA NIVELES DINAMICOS DE ENTRENADOR
	; else, assumed to be TRAINERTYPE_POKERED_NORMAL
	ld [wCurEnemyLVL], a
.LoopTrainerData
	ld a, [hli]
	and a ; have we reached the end of the trainer data?
	jr z, .FinishUp
	ld [wcf91], a ; write species somewhere (XXX why?)
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	jr .LoopTrainerData
.SpecialTrainer
; if this code is being run:
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
	ld a, [hli]
	and a ; have we reached the end of the trainer data?
	jr z, .AddLoneMove
	ld [wCurEnemyLVL], a
	ld a, [hli]
	ld [wcf91], a
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	jr .SpecialTrainer
.AddLoneMove
; does the trainer have a single monster with a different move
	ld a, [wLoneAttackNo] ; Brock is 01, Misty is 02, Erika is 04, etc
	and a
	jr z, .AddTeamMove
	dec a
	add a
	ld c, a
	ld b, 0
	ld hl, LoneMoves
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld hl, wEnemyMon1Moves + 2
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld [hl], d
	jr .FinishUp
.AddTeamMove
; check if our trainer's team has special moves

; get trainer class number
	ld a, [wCurOpponent]
	; NUEVO BORRADO PARA ENTRENADORES QUE NO EMPIECEN DESDE 200
	;sub 200
	; NUEVO BORRADO PARA ENTRENADORES QUE NO EMPIECEN DESDE 200
	ld b, a
	ld hl, TeamMoves

; iterate through entries in TeamMoves, checking each for our trainer class
.IterateTeamMoves
	ld a, [hli]
	cp b
	jr z, .GiveTeamMoves ; is there a match?
	inc hl ; if not, go to the next entry
	inc a
	jr nz, .IterateTeamMoves

; no matches found. is this trainer champion rival?
	ld a, b
	cp SONY3
	jr z, .ChampionRival
	jr .FinishUp ; nope
.GiveTeamMoves
	ld a, [hl]
	ld [wEnemyMon5Moves + 2], a
	jr .FinishUp
.ChampionRival ; give moves to his team

; pidgeot
	ld a, SKY_ATTACK
	ld [wEnemyMon1Moves + 2], a

; starter
	ld a, [wRivalStarter]
	cp STARTER3
	ld b, MEGA_DRAIN
	jr z, .GiveStarterMove
	cp STARTER1
	ld b, FIRE_BLAST
	jr z, .GiveStarterMove
	ld b, BLIZZARD ; must be squirtle
.GiveStarterMove
	ld a, b
	ld [wEnemyMon6Moves + 2], a
.FinishUp
; clear wAmountMoneyWon addresses
	xor a
	ld de, wAmountMoneyWon
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	ld a, [wCurEnemyLVL]
	ld b, a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl, wTrainerBaseMoney + 1
	ld c, 2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz, .LastLoop ; repeat wCurEnemyLVL times
	ret

.CustomTrainer
	; current party mon counter, starts at 0
	ld b, 0
.party_loop
	ld a, [hli]
	; byte 0: party terminator
	cp 0
	jr z, .party_end

	ld [wCurEnemyLVL], a ; fist byte is level
	ld a, [hli]
	ld [wcf91], a ; second byte is species

	; Add mon to party
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl

	; set wEnemyMonxMoves at de, with x = b + 1
	push bc
	push hl
	ld a, b
	ld bc, 44 ; party_struct_length
	ld hl, wEnemyMon1Moves
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	pop bc

	; set moves after adding mon to party
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; third byte is fist move
	inc de
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; fourth byte is second move
	inc de
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; fifth byte is third move
	inc de
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; sixth byte is fourth move

	; increment party mon counter
	inc b
	jr .party_loop
.party_end
	jr .FinishUp

; NUEVO PARA NIVELES DINAMICOS DE ENTRENADO
.DynamicTrainer
	; get level and store it in c
	ld a, [hli] ; *_LEVEL value
	ld c, a
	call GetLeaderLevel
	ld c, a
	; current party mon counter, starts at 0
	ld b, 0
.dynamic_party_loop
	ld a, [hli]
	; byte 0: party terminator
	cp 0
	jr z, .dynamic_party_end
	ld [wcf91], a ; fist byte is species
	; set level value
	ld a, c
	ld [wCurEnemyLVL], a
	; Add mon to party
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	; set wEnemyMonxMoves at de, with x = b + 1
	push bc
	push hl
	ld a, b
	ld bc, 44 ; party_struct_length
	ld hl, wEnemyMon1Moves
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	pop bc
	; set moves after adding mon to party
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; second byte is fist move
	inc de
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; third byte is second move
	inc de
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; fourth byte is third move
	inc de
	ld a, [hli]
	call ConvertToValidMove
	ld [de], a ; fifth byte is fourth move
	; increment party mon counter
	inc b
	jr .dynamic_party_loop
.dynamic_party_end
	jp .FinishUp
; NUEVO PARA NIVELES DINAMICOS DE ENTRENADO

; converts a to a valid move
; fix used to use 0 as a valid move without breaking ReadTrainer routine
ConvertToValidMove:
	cp NO_MOVE
	ret nz
	xor a
	ret
	
; NUEVO PARA DVS PERSONALIZADOS EN ENTRENADORES
GetTrainerMonDVs:: ; called from engine/battle/core.asm
; NUEVO PARA FORZAR QUE UN POKEMON DE ENTRENADOR SEA SHINY
; returns trainer's DVs in wTempDVs
	push hl
	
	call GetUniqueTrainerDVs
	jr z, .done
; NUEVO PARA FORZAR QUE UN POKEMON DE ENTRENADOR SEA SHINY
	ld a, [wTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerClassDVs
	add hl, bc
	add hl, bc
	ld de, wTempDVs
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a

; NUEVO PARA FORZAR QUE UN POKEMON DE ENTRENADOR SEA SHINY
.done
	pop hl
	ret

GetUniqueTrainerDVs:
; returns z, and unique DVs in wTempDVs if DVs are unique
; adapted from Polished Crystal
	ld hl, UniqueDVTrainerPokemon
.loop
	ld a, [hli] ; TrainerClass
	cp -1
	jr z, .notunique
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .inc5andloop
	ld a, [hli] ; TrainerID
	ld b, a
	ld a, [wTrainerNo]
	cp b
	jr nz, .inc4andloop
	ld a, [hli] ; PartySpecies
	ld b, a
	ld a, [wd0b5] ; should always be mon's species, when called from AddPartyMon or LoadEnemyMonData
	cp b
	jr nz, .inc3andloop
	ld a, [hli] ; Level
	ld b, a
	ld a, [wCurEnemyLVL]
	cp b
	jr nz, .inc2andloop
.unique
	ld de, wTempDVs
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	xor a
	and a
	ret
.inc5andloop
	inc hl
.inc4andloop
	inc hl
.inc3andloop
	inc hl
.inc2andloop
	inc hl
	inc hl
	jp .loop
.notunique
	ld a, 1
	and a
; NUEVO PARA FORZAR QUE UN POKEMON DE ENTRENADOR SEA SHINY
	ret

INCLUDE "data/trainer_dvs.asm"
; NUEVO PARA DVS PERSONALIZADOS EN ENTRENADORES

