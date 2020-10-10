; NUEVO MODIFICADO AI
;https://github.com/CamMBeasley/pokemon-tricolor/blob/master/engine/battle/trainer_ai.asm

; creates a set of moves that may be used and returns its address in hl
; unused slots are filled with 0, all used slots may be chosen with equal probability
AIEnemyTrainerChooseMoves:
	ld a, $20 ; for smart AI
	ld hl, wBuffer  ; init temporary move selection array. Only the moves with the lowest numbers are chosen in the end
	ld [hli], a   ; move 1
	ld [hli], a   ; move 2
	ld [hli], a   ; move 3
	ld [hl], a    ; move 4
	ld a, [wEnemyDisabledMove] ; forbid disabled move (if any)
	swap a
	and $f
	jr z, .noMoveDisabled
	ld hl, wBuffer
	dec a
	ld c, a
	ld b, $0
	add hl, bc    ; advance pointer to forbidden move
	ld [hl], $80  ; forbid (highly discourage) disabled move
.noMoveDisabled
; NUEVO PARA FORZAR STRUGGLE EN ENEMIGOS
; Descartamos los movimientos sin PP
    ld hl, wEnemyMonPP
    ld c, 0
    ld b, 0
.bucleComprobadorDePP
    ld a, [hli]
    and $3f ; mira si tiene PP
    jr nz, .siguienteAtaque
    ; No tiene PP: a descartar
    push hl
    ld hl, wBuffer
    add hl, bc
    ld [hl], $80 ; prácticamente descarta escoger el ataque
    pop hl
.siguienteAtaque
    inc c
    ld a, 4
    cp c    ; termina si ya hemos explorado 4 ataques
    jr nz, .bucleComprobadorDePP
; NUEVO PARA FORZAR STRUGGLE EN ENEMIGOS
	ld hl, TrainerClassMoveChoiceModifications
	ld a, [wTrainerClass]
	ld b, a
.loopTrainerClasses
	dec b
	jr z, .readTrainerClassData
.loopTrainerClassData
	ld a, [hli]
	and a
	jr nz, .loopTrainerClassData
	jr .loopTrainerClasses
.readTrainerClassData
	ld a, [hl]
	and a
	jp z, .useOriginalMoveSet
	push hl
.nextMoveChoiceModification
	pop hl
	ld a, [hli]
	and a
; NUEVO PRUEBAS PARA IMPRIMIR NUMEROS DE LA IA, DESACTIVADO POR SI ACASO
	jr z, .loopFindMinimumEntries
    ;jr z, .puntosDecididos
; NUEVO PRUEBAS PARA IMPRIMIR NUMEROS DE LA IA, DESACTIVADO POR SI ACASO
	push hl
	ld hl, AIMoveChoiceModificationFunctionPointers
	dec a
	add a
	ld c, a
	ld b, 0
	add hl, bc    ; skip to pointer
	ld a, [hli]   ; read pointer into hl
	ld h, [hl]
	ld l, a
	ld de, .nextMoveChoiceModification  ; set return address
	push de
	jp hl         ; execute modification function
; NUEVO PRUEBAS PARA IMPRIMIR NUMEROS DE LA IA
;.puntosDecididos
;	push de
;	push hl
;	push bc
;	lb bc, LEADING_ZEROES | 1, 3
;	coord hl, 6, 4
;	ld de, wBuffer
;	call PrintNumber
;	coord hl, 6, 5
;	ld de, wBuffer + 1
;	call PrintNumber
;	coord hl, 6, 6
;	ld de, wBuffer + 2
;	call PrintNumber
;	coord hl, 6, 7
;	ld de, wBuffer + 3
;	call PrintNumber
;	pop bc
;	pop hl
;	pop de
; NUEVO PRUEBAS PARA IMPRIMIR NUMEROS DE LA IA
.loopFindMinimumEntries ; all entries will be decremented sequentially until one of them is zero
	ld hl, wBuffer  ; temp move selection array
	ld de, wEnemyMonMoves  ; enemy moves
	ld c, NUM_MOVES
.loopDecrementEntries
	ld a, [de]
	inc de
	and a
	jr z, .loopFindMinimumEntries
	dec [hl]
	jr z, .minimumEntriesFound
	inc hl
	dec c
	jr z, .loopFindMinimumEntries
	jr .loopDecrementEntries
.minimumEntriesFound
	ld a, c
.loopUndoPartialIteration ; undo last (partial) loop iteration
	inc [hl]
	dec hl
	inc a
	cp NUM_MOVES + 1
	jr nz, .loopUndoPartialIteration
	ld hl, wBuffer  ; temp move selection array
	ld de, wEnemyMonMoves  ; enemy moves
	ld c, NUM_MOVES
.filterMinimalEntries ; all minimal entries now have value 1. All other slots will be disabled (move set to 0)
	ld a, [de]
	and a
	jr nz, .moveExisting
	ld [hl], a
.moveExisting
	ld a, [hl]
	dec a
	jr z, .slotWithMinimalValue
	xor a
	ld [hli], a     ; disable move slot
	jr .next
.slotWithMinimalValue
	ld a, [de]
	ld [hli], a     ; enable move slot
.next
	inc de
	dec c
	jr nz, .filterMinimalEntries
	ld hl, wBuffer    ; use created temporary array as move set
	ret
.useOriginalMoveSet
	ld hl, wEnemyMonMoves    ; use original move set
	ret

AIMoveChoiceModificationFunctionPointers:
	dw AIMoveChoiceModification1
	dw AIMoveChoiceModification2
	dw AIMoveChoiceModification3
	dw AIMoveChoiceModification4

; discourages moves that cause no damage but only a status
; ailment if player's mon already has one
AIMoveChoiceModification1:
	ld a, [wBattleMonStatus]
	and a
	ret z ; return if no status ailment on player's mon
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	and a
	ret z ; no more moves in move set
	inc de
	call ReadMove
	ld a, [wEnemyMovePower]
	and a
	jr nz, .nextMove
	ld a, [wEnemyMoveEffect]
	push hl
	push de
	push bc
	ld hl, StatusAilmentMoveEffects
	ld de, $0001
	call IsInArray
	pop bc
	pop de
	pop hl
	jr nc, .nextMove
	ld a, [hl]
	add 5 ; antes $20 ; heavily discourage move
	ld [hl], a
	jr .nextMove

StatusAilmentMoveEffects:
	db $01 ; unused sleep effect
	db SLEEP_EFFECT
	db POISON_EFFECT
	db PARALYZE_EFFECT
	db $FF

; Deleted & Unused
AIMoveChoiceModification2:
	ret

; Deleted & Unused
AIMoveChoiceModification3:
	ret

; Smart AI routine
; Does everything a good Trainer would do...
AIMoveChoiceModification4:
; damaging move priority on turn 3+
	ld a, [wAILayer2Encouragement] ; wAILayer2Encouragement
	cp $2
	jr c, .healingCheck
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.damageLoop
	dec b
	jr z, .healingCheck
	inc hl
	ld a, [de]
	and a
	jr z, .healingCheck
	inc de
	call ReadMove
	ld a, [wEnemyMovePower]
	and a
	jr z, .damageLoop
; encourage by 2
	dec [hl]
	dec [hl]
	jr .damageLoop
; healing moves?
.healingCheck
	ld a, [wEnemyMonMaxHP]
	and a
	jr z, .noscale
	ld b, a
	ld a, [wEnemyMonMaxHP + 1]
	srl b
	rr a
	ld b, a
	ld a, [wEnemyMonHP]
	ld c, a
	ld a, [wEnemyMonHP + 1]
	srl c
	rr a
	ld c, a
	jr .realHealCheck
.noscale
	ld a, [wEnemyMonMaxHP + 1]
	ld b, a
	ld a, [wEnemyMonHP + 1]
	ld c, a
.realHealCheck
	srl b
	ld a, c
	cp b
	ld hl, HealingMoves
	jr nc, .debuffHealingMoves
	ld b, -8
	call Random
	ld a, [hRandomAdd]
	cp $C0 ; 3/4 chance
	jr nc, .dreamEaterCheck
	jr .applyHealingChance
.debuffHealingMoves
	ld b, 10
.applyHealingChance
	call AlterMovePriorityArray
.dreamEaterCheck
	ld a, [wBattleMonStatus]
	and SLP
	ld a, DREAM_EATER
	ld [W_AIBUFFER1], a
	jr z, .debuffDreamEater
	ld b, -1
	jr .applyDreamEater
.debuffDreamEater
	ld b, 20
.applyDreamEater
	call AlterMovePriority
; NUEVO PARA ATAQUES MIDELE POWER Y PARECIDOS
;.effectivenessCheck
 ld hl, Micolol
  ld b, -4
  call AlterMovePriorityArray
; NUEVO PARA ATAQUES MIDELE POWER Y PARECIDOS
; encourage any damaging move with SE, slightly discourage NVE moves
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld b, NUM_MOVES + 1
.seloop
	dec b
	jp z, .selfBuffCheck
	inc hl
	ld a, [de]
	and a
	jp z, .selfBuffCheck
	inc de
	call ReadMove
	; PRUEBA NUMERITOS DE TIPOS... CREO
	;push hl
	;push de
	;push bc
	;ld a, b
	;lb bc, LEADING_ZEROES | 1, 2
	;dec a
	;jr z, .cuarto
	;dec a
	;jr z, .tercero
	;dec a
	;jr z, .segundo
	;coord hl, 2, 4
	;jr .imprimir
;.segundo
;	coord hl, 2, 5
;	jr .imprimir
;.tercero
;	coord hl, 2, 6
;	jr .imprimir
;.cuarto
;	coord hl, 2, 7
;.imprimir
 ;   ld de, wEnemyMoveType
	;call PrintNumber
;	pop bc
;	pop de
;	pop hl
; PRUEBA PARA NUMERITOS DE TIPOS... CREO
	ld a, [wEnemyMoveEffect]
	cp SUPER_FANG_EFFECT
	jr z, .seloop
	cp SPECIAL_DAMAGE_EFFECT
	jr z, .seloop
	ld a, [wEnemyMovePower]
	; NUEVO PARA OHKO MOVES??
	cp 1
	;cp 10 
; NUEVO PARA OHKO MOVES??
	jr c, .seloop
	; NUEVO PARA OHKO MOVES??
	ld a, [wEnemyMoveNum]
    cp COUNTER
    jr z, .seloop
	; NUEVO PARA OHKO MOVES??	
	push hl
	push bc
	push de
	callab AIGetTypeEffectiveness
	pop de
	pop bc
	pop hl
; NUEVO PARA QUE LA IA NO ATAQUE A POKEMON CONGELADOS CON FUEGO
     ; Si el ataque es tipo Fuego y el objetivo está congelado, se tratará como si fuese poco eficaz
    ld a, [wEnemyMoveType]
    cp FIRE ; ¿es tipo Fuego el ataque?
    jr nz, .noFuegoCongelacion
    ld a, [wBattleMonStatus]
    cp 1 << FRZ ; ¿está congelado el poke del jugador?
    jr nz, .noFuegoCongelacion
    ; Es tipo Fuego y el objetivo está congelado
    inc [hl]
    inc [hl]
.noFuegoCongelacion
; NUEVO PARA QUE LA IA NO ATAQUE A POKEMON CONGELADOS CON FUEGO
	ld a, [wTypeEffectiveness]
	cp $0a
	jr z, .seloop
	jr c, .nvemove
; strongly encourage SE Move
	rept 4
	dec [hl]
	endr
	cp $15
	jp c, .seloop
; even more strongly encourage 4x SE move
	rept 3
	dec [hl]
	endr
	jp .seloop
.nvemove
; slighly discourage
	inc [hl]
; NUEVO Para hacer que prefiera usar movs a los que el jugador resiste poco vs los que resiste mucho
    cp $05
    jp nc, .seloop
    ; doble resistencia: se descarta incluso más
    inc [hl]
; NUEVO Para hacer que prefiera usar movs a los que el jugador resiste poco vs los que resiste mucho: 
	and a
	jp nz, .seloop
; strongly discourage immunity
	ld a, [hl]
	add 49 ; ANTES ADD 50 ; NUEVO Para hacer que prefiera usar movs a los que el jugador resiste poco vs los que resiste mucho: 
	ld [hl], a
	jp .seloop
.selfBuffCheck
; 50% chance to encourage self-buff or status on turn 1 - 2
	ld a, [wAILayer2Encouragement]
	cp $2
	jr nc, .discourageFocusEnergy
	call Random
	ld a, [hRandomAdd]
	cp $80
	jr nc, .discourageFocusEnergy
	ld hl, LightStatusMoves
	ld b, -3
	call AlterMovePriorityArray
	ld hl, MediumStatusMoves
	ld b, -5
	call AlterMovePriorityArray
	ld hl, HeavyStatusMoves
	ld b, -6
	call AlterMovePriorityArray
.discourageFocusEnergy
; NEVER use Focus Energy if we have already used it.
	ld a, [wEnemyBattleStatus2]
	bit GETTING_PUMPED, a
	jr z, .discourageLightScreen
	ld a, FOCUS_ENERGY
	ld [W_AIBUFFER1], a
	ld b, 50
	call AlterMovePriority
.discourageLightScreen
; NEVER use Light Screen if we have already used it.
	ld a, [wEnemyBattleStatus3]
	bit HAS_LIGHT_SCREEN_UP, a
	jr z, .discourageReflect
	ld a, LIGHT_SCREEN
	ld [W_AIBUFFER1], a
	ld b, 50
	call AlterMovePriority
.discourageReflect
; NEVER use Reflect if we have already used it.
	ld a, [wEnemyBattleStatus3]
	bit HAS_REFLECT_UP, a
	jr z, .discourageBattleEndingMoves
	ld a, REFLECT
	ld [W_AIBUFFER1], a
	ld b, 50
	call AlterMovePriority
.discourageBattleEndingMoves
; NEVER use moves that try to end the battle...
	ld hl, EndBattleMoves
	ld b, 50
	call AlterMovePriorityArray
.discourageImmunePoisonMoves
; NEVER use poison status moves that the player is immune to
	ld de, wBattleMonType1
	ld a, [de]
	cp POISON
	jr z, .poisonStatusDoesntAffect
	cp STEEL
	jr z, .poisonStatusDoesntAffect
; Check Second Type
	inc de
	ld a, [de]
	cp POISON
	jr z, .poisonStatusDoesntAffect
	cp STEEL
	jr z, .poisonStatusDoesntAffect
	jr .discourageImmuneThunderWave
.poisonStatusDoesntAffect
	ld hl, PoisonMoves
	ld b, 50
	call AlterMovePriorityArray
.discourageImmuneThunderWave
; NEVER use thunderwave if the player is immune to it
	ld de, wBattleMonType1
	ld a, [de]
	cp GROUND
	jr z, .thunderWaveDoesntAffect
; Check Second Types
	inc de
	ld a, [de]
	cp GROUND
	jr nz, .discourageImmuneLeechSeed
	;jr z, .thunderWaveDoesntAffect
	;jr .discourageImmuneGlare
.thunderWaveDoesntAffect
	ld a, THUNDER_WAVE
	ld [W_AIBUFFER1], a
	ld b, 50
	call AlterMovePriority
;.discourageImmuneGlare
; NEVER use glare if the player is immune to it
;	ld de, wBattleMonType1
;	ld a, [de]
;	cp GHOST
;	jr z, .glareDoesntAffect
; Check Second Type
;	inc de
;	ld a, [de]
;	cp GHOST
;	jr z, .glareDoesntAffect
;	jr .discourageImmuneLeechSeed
;.glareDoesntAffect
;	ld a, GLARE
;	ld [W_AIBUFFER1], a
;	ld b, 50
;	call AlterMovePriority
.discourageImmuneLeechSeed
; NEVER use leech seed if the player is immune to it
	ld de, wBattleMonType1
	ld a, [de]
	cp GRASS
	jr z, .leechSeedDoesntAffect
; Check Second Type
	inc de
	ld a, [de]
	cp GRASS
	jr z, .leechSeedDoesntAffect
; NUEVO PARA OHKO MOVES
 	;jr .checkToInflictStatusOrConfusion
	jr .favorecerEspora
; NUEVO PARA OHKO MOVES
.leechSeedDoesntAffect
	ld a, LEECH_SEED
	ld [W_AIBUFFER1], a
	ld b, 50
	call AlterMovePriority
; NUEVO PARA OHKO MOVES
.favorecerEspora
    ; favorece el uso de Espora frente a otros movimientos de estado y movimientos OHKO
    ld a, SPORE
    ld [W_AIBUFFER1], a
    ld b, -7
    call AlterMovePriority
    ; compara las velocidades para favorecer o descartar movimientos OHKO
    ld a, [wBattleMonSpeed + 1]
    ld b, a
    ld a, [wEnemyMonSpeed + 1]
    sub b
    ld a, [wBattleMonSpeed]
    ld b, a
    ld a, [wEnemyMonSpeed]
    sbc b
    ld hl, OHKOMoves
    jr nc, .noEsMasLento
    ; más lento: descarta los OHKO
    ld b, 30
    call AlterMovePriorityArray
    jr .checkToInflictStatusOrConfusion
.noEsMasLento
    ; favorece los OHKO
    ld b, -4
    call AlterMovePriorityArray
; NUEVO PARA OHKO MOVES
.checkToInflictStatusOrConfusion
; if enemy already has a status affliction, don't keep trying to give them one
; this *should* already be part of AIMoveChoiceModification1 but it doesn't always seem to catch them
; if player does not have a status, we then check confusion state. If not confused, attempt to do so
; The Priority here always falls to non-volatile status conditions first, then confusion
; Only 50% chance to perform this code
; NUEVO PARA EVITAR QUE USEN ATAQUES DE ESTADO A SUBSTITUTE
; Si hay sustituto, ni cambios de estado ni hostias
    ld a, [wPlayerBattleStatus2]
    bit HAS_SUBSTITUTE_UP, a
    jr nz, .noUsarStatus
; NUEVO PARA EVITAR QUE USEN ATAQUES DE ESTADO A SUBSTITUTE
	call Random
	ld a, [hRandomAdd]
	cp $80
	jr c, .checkToInflictStatus
.noUsarStatus ; NUEVO PARA EVITAR QUE USEN ATAQUES DE ESTADO A SUBSTITUTE
; Discourage Status moves
	ld hl, StatusOnlyMoves
	ld b, 30
	call AlterMovePriorityArray
; NUEVO PARA ATAQUES QUE BAJAN STATS NO SE USEN VS SUBSTITUTE
	ld hl, Nousarensubstitute
	ld b, 30
	call AlterMovePriorityArray
; NUEVO PARA ATAQUES QUE BAJAN STATS NO SE USEN VS SUBSTITUTE
; Discourage Confusion moves
	ld hl, ConfuseMoves
	ld b, 30
	call AlterMovePriorityArray
; Discourage Disable
	ld a, DISABLE
	ld [W_AIBUFFER1], a
	ld b, 30
	call AlterMovePriority
	ret

.checkToInflictStatus
; is player statused?
	ld a, [wBattleMonStatus]
	and a
	jr z, .inflictStatus
; fallthrough on nz

.discourageStatusMoves
; Discourage Status moves if already status'd
	ld hl, StatusOnlyMoves
	ld b, 30
	call AlterMovePriorityArray
	jr .checkInflictConfusion

.inflictStatus
; if they don't have a status, attempt to give them it.
	ld hl, StatusOnlyMoves
	ld b, -7
	call AlterMovePriorityArray
; fallthrough

.checkInflictConfusion
; is player confused?
	ld a,[wPlayerBattleStatus1]
	bit CONFUSED, a
	jr z, .inflictConfusion
; fallthrough on nz

.discourageConfuseMoves
; Discourage Confusion moves if already confused
	ld hl, ConfuseMoves
	ld b, 30
	call AlterMovePriorityArray
	jr .checkInflictDisable

.inflictConfusion
; if they don't have confusion, attempt to give them it.
	ld hl, ConfuseMoves
	ld b, -7
	call AlterMovePriorityArray
; fallthrough

; NUEVO PARA CHECK DE SUSTITUTO
.enemySubstituteCheck
	ld a,[wEnemyBattleStatus2]
	bit HAS_SUBSTITUTE_UP,a
    jr z, .checkInflictDisable
	ld a,SUBSTITUTE
	ld [W_AIBUFFER1],a
	ld b,$10
	call AlterMovePriority
; NUEVO PARA CHECK DE SUSTITUTO

.checkInflictDisable
; does player have a disabled move?
	ld hl, wPlayerDisabledMove
	ld a, [hl]
	and a
	jr z, .inflictDisable
	; fallthrough on nz

.discourageDisable
; Discourage disable if already disabled
	ld a, DISABLE
	ld [W_AIBUFFER1], a
	ld b, 30
	call AlterMovePriority
	ret

.inflictDisable
; if they don't have a disabled move, attempt to do it.
	ld a, DISABLE
	ld [W_AIBUFFER1], a
	ld b, -7
	call AlterMovePriority
	ret

LightStatusMoves:
	db MIST
	db HAZE
	db LEER
	db GROWL
	db TAIL_WHIP
	db STRING_SHOT
	db HARDEN
	db WITHDRAW
	db DEFENSE_CURL
	db FOCUS_ENERGY
	db KINESIS
	db $FF

MediumStatusMoves:
	db DISABLE
	db BIDE
	db SHARPEN
	db MEDITATE
	db BARRIER
	db ACID_ARMOR
	db SCREECH
	db SMOKESCREEN
	db SAND_ATTACK
	db FLASH
	db $FF

HeavyStatusMoves:
	db DOUBLE_TEAM
	db AGILITY
	db SWORDS_DANCE
	db GROWTH
	db AMNESIA
	db MINIMIZE
	db SUBSTITUTE
	db REFLECT
	db LIGHT_SCREEN
	db $FF

HealingMoves:
	db REST
	db RECOVER
	db SOFTBOILED
	db $FF

EndBattleMoves:
	db WHIRLWIND
	db ROAR
	db TELEPORT
	db $FF

StatusOnlyMoves:
	db POISONPOWDER
	db STUN_SPORE
	db SLEEP_POWDER
	db THUNDER_WAVE
	db TOXIC
	db HYPNOSIS
	db GLARE
	db POISON_GAS
	db LOVELY_KISS
	db SPORE
	db SING
	db $FF

ConfuseMoves:
	db SUPERSONIC
	db CONFUSE_RAY
	db $FF

PoisonMoves:
	db POISON_GAS
	db POISONPOWDER
	db TOXIC
	db $FF

; NUEVO PARA OHKO MOVES
OHKOMoves:
   db GUILLOTINE
   db FISSURE
   db HORN_DRILL
   db $FF
; NUEVO PARA OHKO MOVES

; NUEVO PARA ATAQUES QUE BAJAN STATS NO SE USEN VS SUBSTITUTE
Nousarensubstitute:
    db SCREECH
    db FLASH
    db LEER
    db GROWL
    db TAIL_WHIP
    db STRING_SHOT
    db SMOKESCREEN
    db KINESIS
    db $FF
; NUEVO PARA ATAQUES QUE BAJAN STATS NO SE USEN VS SUBSTITUTE

; NUEVO PARA ATAQUES MIDELE POWER Y PARECIDOS
Micolol:
    db MIDELE_POWER
    db HOLA_REINA
    db DARK_THUNDER
    db $FF
; NUEVO PARA ATAQUES MIDELE POWER Y PARECIDOS

AlterMovePriority:
; [W_AIBUFFER1] = move
; b = priority change
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld c, NUM_MOVES + 1
.moveLoop
	dec c
	ret z
	inc hl
	ld a, [de]
	and a
	ret z
	inc de
	push bc
	ld b, a
	ld a, [W_AIBUFFER1]
	cp b
	pop bc
	jr nz, .moveLoop
	ld a, [hl]
	add b
	ld [hl], a
	ret

AlterMovePriorityArray:
; hl = move array
; b = priority change
	ld a, h
	ld [W_AIBUFFER1], a
	ld a, l
	ld [W_AIBUFFER1 + 1], a
	ld hl, wBuffer - 1
	ld de, wEnemyMonMoves
	ld c, NUM_MOVES + 1
.moveLoop
	dec c
	ret z
	inc hl
	ld a, [de]
	and a
	ret z
	inc de
	push hl
	push de
	push bc
	ld b, a
	ld a, [W_AIBUFFER1]
	ld h, a
	ld a, [W_AIBUFFER1 + 1]
	ld l, a
	ld a, b
	ld de, $0001
	call IsInArray
	pop bc
	pop de
	pop hl
	jr nc, .moveLoop
	ld a, [hl]
	add b
	ld [hl], a
	; NUEVO PARA OHKO MOVES??
	;ret
	jr .moveLoop
	; NUEVO PARA OHKO MOVES??

ReadMove:
	push hl
	push de
	push bc
	dec a
	ld hl,Moves
	ld bc,MoveEnd - Moves
	call AddNTimes
	ld de,wEnemyMoveNum
; NUEVO PARA CORREGIR BUG DE ATAQUES EFICACES POR IA
	;call CopyData
 ld a, [wBuffer]
  push af
  ld a, $f
  call FarCopyData
  pop af
  ld [wBuffer], a
 ; NUEVO PARA CORREGIR BUG DE ATAQUES EFICACES POR IA
	pop bc
	pop de
	pop hl
	ret
; NUEVO MODIFICADO AI

; move choice modification methods that are applied for each trainer class
; 0 is sentinel value
TrainerClassMoveChoiceModifications:
    db 1,4,0      ; YOUNGSTER
    db 1,4,0     ; BUG CATCHER
    db 1,4,0     ; LASS
    db 1,4,0  ; SAILOR
    db 1,4,0     ; JR_TRAINER_M
    db 1,4,0     ; JR_TRAINER_F
    db 1,4,0; POKEMANIAC
    db 1,4,0  ; SUPER_NERD
    db 1,4,0     ; HIKER
    db 1,4,0    ; BIKER
    db 1,4,0  ; BURGLAR
    db 1,4,0    ; ENGINEER
    db 1,4,0  ; JUGGLER_X
    db 1,4,0  ; FISHER
    db 1,4,0  ; SWIMMER
    db 1,4,0      ; CUE_BALL
    db 1,4,0    ; GAMBLER
    db 1,4,0  ; BEAUTY
    db 1,4,0  ; PSYCHIC_TR
    db 1,4,0  ; ROCKER
    db 1,4,0    ; JUGGLER
    db 1,4,0    ; TAMER
    db 1,4,0    ; BIRD_KEEPER
    db 1,4,0    ; BLACKBELT
    db 1,4,0     ; SONY1
    db 1,4,0  ; PROF_OAK
    db 1,4,0  ; CHIEF
    db 1,4,0  ; SCIENTIST
    db 1,4,0  ; GIOVANNI
    db 1,4,0    ; ROCKET
    db 1,4,0  ; COOLTRAINER_M
    db 1,4,0  ; COOLTRAINER_F
    db 1,4,0    ; BRUNO
    db 1,4,0     ; BROCK
    db 1,4,0   ; MISTY
    db 1,4,0  ; LT_SURGE
    db 1,4,0  ; ERIKA
    db 1,4,0  ; KOGA
    db 1,4,0  ; BLAINE
    db 1,4,0  ; SABRINA
    db 1,4,0  ; GENTLEMAN
    db 1,4,0   ; SONY2
    db 1,4,0   ; SONY3
    db 1,4,0; LORELEI
    db 1,4,0    ; CHANNELER
    db 1,4,0    ; AGATHA
    db 1,4,0  ; LANCE
	db 1,4,0  ; RAGU 	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; GOLDY 	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; UTALAWEA 	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; EEVEETO 	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; JAVISIT	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; MANEC	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; DARKI	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; GOOSES	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; KAISSER	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; SLOWBRO	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; DUNK	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; PACOCHEF	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; KADERETE	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; KRUB	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0  ; LAVENDER	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; MDRAGON	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; SJMISTERY	; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; RUBENCB ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; TRAINERBOT ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; grim ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; furry; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; MAESTRO ARENA ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; VLADILAND; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; JPROGAMER ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; TSURUKO ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; ALBERMAUS ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; MERUM ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; sapphire ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; DOBLEC ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; JZOMBIE ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; MERCIBOKU ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; RAZANDLAV; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; KRAFT; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; GARM; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; SANTY; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; FELIPEX; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; ARTEMIS; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; KASTY; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; JOEL; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; FXOZ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; PHENT; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; MICOLO; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; AngelFS; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; blue; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; yellow; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; avader; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; discal; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; SAULGP; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; CHARZ; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; ISMAPKM; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; MELKORELDEVERDAD; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; MICHOH; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0   ; fanboy; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; hater; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; hypeanto; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; ESCROTO; NUEVO AÑADIENDO UN ENTRENADOR
	db 1,4,0 	; ENTROPIA; NUEVO AÑADIENDO UN ENTRENADOR

INCLUDE "engine/battle/trainer_pic_money_pointers.asm"

INCLUDE "text/trainer_names.asm"

INCLUDE "engine/battle/bank_e_misc.asm"

INCLUDE "engine/battle/read_trainer_party.asm"

INCLUDE "engine/battle/leader_level.asm" ; NUEVO PARA NIVELES DINAMICOS DE ENTRENADO

INCLUDE "data/trainer_moves.asm"

INCLUDE "data/unique_trainer_dvs.asm" ; NUEVO PARA FORZAR QUE UN POKEMON DE ENTRENADOR SEA SHINY

INCLUDE "data/trainer_parties.asm"

TrainerAI:
	and a
	ld a, [wIsInBattle]
	dec a
	ret z ; if not a trainer, we're done here
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	ld a, [wTrainerClass] ; what trainer class is this?
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerAIPointers
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [wAICount]
	and a
	ret z ; if no AI uses left, we're done here
	inc hl
	inc a
	jr nz, .getpointer
	dec hl
	ld a, [hli]
	ld [wAICount], a
.getpointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Random
	jp hl

TrainerAIPointers:
; one entry per trainer class
; first byte, number of times (per Pokémon) it can occur
; next two bytes, pointer to AI subroutine for trainer class
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI ;dbw 3,JugglerAI ; juggler_x
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI  ;dbw 3,JugglerAI ; juggler
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI ;dbw 2,BlackbeltAI ; blackbelt
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 1,GenericAI ; chief
	dbw 3,GenericAI
    dbw 3,GenericAI ;dbw 1,GiovanniAI ; giovanni
	dbw 3,GenericAI
	dbw 3,GenericAI ;dbw 2,CooltrainerMAI ; cooltrainerm
	dbw 3,GenericAI ;dbw 1,CooltrainerFAI ; cooltrainerf
	dbw 3,GenericAI ;dbw 2,BrunoAI ; bruno
	dbw 3,GenericAI ;dbw 5,BrockAI ; brock
	dbw 3,GenericAI ;dbw 1,MistyAI ; misty
	dbw 3,GenericAI ;dbw 1,LtSurgeAI ; surge
	dbw 3,GenericAI ;dbw 1,ErikaAI ; erika
	dbw 3,GenericAI ;dbw 2,KogaAI ; koga
	dbw 3,GenericAI ;dbw 2,BlaineAI ; blaine
	dbw 3,GenericAI ;dbw 1,SabrinaAI ; sabrina
	dbw 3,GenericAI
	dbw 3,GenericAI ;dbw 1,Sony2AI ; sony2
	dbw 3,GenericAI ;dbw 1,Sony3AI ; sony3
	dbw 3,GenericAI ;dbw 2,LoreleiAI ; lorelei
	dbw 3,GenericAI
	dbw 3,GenericAI ;dbw 2,AgathaAI ; agatha
	dbw 3,GenericAI ;dbw 1,LanceAI ; lance
	dbw 3,GenericAI ; RAGU 	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; GOLDY 	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; UTALAWEA 	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; EEVEETO 	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; JAVISIT 	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; MANEC	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; DARKI	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; GOOSES	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; KAISSER	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; SLOWBRO	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; DUNK	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; PACOCHEF	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; KADERETE	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; KRUB	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; LAVENDER	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; MDRAGON	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; SJMISTERY	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; RUBENCB	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; TRAINERBOT    ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; grim	; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; furry   ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; maestro arena   ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; VLADILAND  ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; JPROGAMER   ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; TSURUKO  ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; ALBERMAUS ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; MERUM ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; sapphire ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; doblec ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; JZOMBIE; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; MERCIBOKU ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; RAZANDLAV ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; KRAFT ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; GARM ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; SANTY ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; FELIPEX ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; ARTHEMIS ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; KASTY ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; JOEL ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; FXOZ ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; PHENT ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; MICOLO ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; angelfs ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; BLUE; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; YELLOW ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; avader; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; discal ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; SAULGP; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; CHARZ; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; ISMAPKM; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; MELKORELDEVERDAD; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; MICHOH; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; fanboy; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; hater; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; hypeanto; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; ESCROTO; NUEVO AÑADIENDO UN ENTRENADOR
	dbw 3,GenericAI ; ENTROPIA; NUEVO AÑADIENDO UN ENTRENADOR

; NUEVO AI
SwitchOutAI:
	cp $40
	ret nc
	ld a,[wEnemyBattleStatus2]
	bit HAS_SUBSTITUTE_UP, a
	ret nz ; Don't want to switch if we have a sub up
	ld a,2
	call AICheckIfHPBelowFraction
	ret nc
	jp AISwitchIfEnoughMons
	jp AISwitchIfEnoughMons
; NUEVO AI

;JugglerAI:
;	cp $40
;	ret nc
;	jp AISwitchIfEnoughMons

;BlackbeltAI:
;	cp $20
;	ret nc
;	jp AIUseXAttack

;GiovanniAI:
;	cp $40
;	ret nc
;	jp AIUseGuardSpec

;CooltrainerMAI:
;	cp $40
;	ret nc
;	jp AIUseXAttack

;CooltrainerFAI:
;	cp $40
;	ld a, $A
;	call AICheckIfHPBelowFraction
;	jp c, AIUseHyperPotion
;	ld a, 5
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AISwitchIfEnoughMons

;BrockAI:
; if his active monster has a status condition, use a full heal
;	ld a, [wEnemyMonStatus]
;	and a
;	ret z
;	jp AIUseFullHeal

;MistyAI:
;	cp $40
;	ret nc
;	jp AIUseXDefend

;LtSurgeAI:
;	cp $40
;	ret nc
;	jp AIUseXSpeed

;ErikaAI:
;	cp $80
;	ret nc
;	ld a, $A
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AIUseSuperPotion

;KogaAI:
;	cp $40
;	ret nc
;	jp AIUseXAttack

;BlaineAI:
;	cp $40
;	ret nc
;	jp AIUseSuperPotion

;SabrinaAI:
;	cp $40
;	ret nc
;	ld a, $A
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AIUseHyperPotion

;Sony2AI:
;	cp $20
;	ret nc
;	ld a, 5
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AIUsePotion

;Sony3AI:
;	cp $20
;	ret nc
;	ld a, 5
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AIUseFullRestore

;LoreleiAI:
;	cp $80
;	ret nc
;	ld a, 5
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AIUseSuperPotion

;BrunoAI:
;	cp $40
;	ret nc
;	jp AIUseXDefend

;AgathaAI:
;	cp $14
;	jp c, AISwitchIfEnoughMons
;	cp $80
;	ret nc
;	ld a, 4
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AIUseSuperPotion

;LanceAI:
;	cp $80
;	ret nc
;	ld a, 5
;	call AICheckIfHPBelowFraction
;	ret nc
;	jp AIUseHyperPotion

GenericAI:
	and a ; clear carry
	ret

; end of individual trainer AI routines

DecrementAICount:
	ld hl, wAICount
	dec [hl]
	scf
	ret

AIPlayRestoringSFX:
	ld a, SFX_HEAL_AILMENT
	jp PlaySoundWaitForCurrent

AIUseFullRestore:
	call AICureStatus
	ld a, FULL_RESTORE
	ld [wAIItem], a
	ld de, wHPBarOldHP
	ld hl, wEnemyMonHP + 1
	ld a, [hld]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	ld hl, wEnemyMonMaxHP + 1
	ld a, [hld]
	ld [de], a
	inc de
	ld [wHPBarMaxHP], a
	ld [wEnemyMonHP + 1], a
	ld a, [hl]
	ld [de], a
	ld [wHPBarMaxHP+1], a
	ld [wEnemyMonHP], a
	jr AIPrintItemUseAndUpdateHPBar

AIUsePotion:
; enemy trainer heals his monster with a potion
	ld a, POTION
	ld b, 20
	jr AIRecoverHP

AIUseSuperPotion:
; enemy trainer heals his monster with a super potion
	ld a, SUPER_POTION
	ld b, 50
	jr AIRecoverHP

AIUseHyperPotion:
; enemy trainer heals his monster with a hyper potion
	ld a, HYPER_POTION
	ld b, 200
	; fallthrough

AIRecoverHP:
; heal b HP and print "trainer used $(a) on pokemon!"
	ld [wAIItem], a
	ld hl, wEnemyMonHP + 1
	ld a, [hl]
	ld [wHPBarOldHP], a
	add b
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [hl]
	ld [wHPBarOldHP+1], a
	ld [wHPBarNewHP+1], a
	jr nc, .next
	inc a
	ld [hl], a
	ld [wHPBarNewHP+1], a
.next
	inc hl
	ld a, [hld]
	ld b, a
	ld de, wEnemyMonMaxHP + 1
	ld a, [de]
	dec de
	ld [wHPBarMaxHP], a
	sub b
	ld a, [hli]
	ld b, a
	ld a, [de]
	ld [wHPBarMaxHP+1], a
	sbc b
	jr nc, AIPrintItemUseAndUpdateHPBar
	inc de
	ld a, [de]
	dec de
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [de]
	ld [hl], a
	ld [wHPBarNewHP+1], a
	; fallthrough

AIPrintItemUseAndUpdateHPBar:
	call AIPrintItemUse_
	coord hl, 2, 2
	xor a
	ld [wHPBarType], a
	predef UpdateHPBar2
	jp DecrementAICount

AISwitchIfEnoughMons:
; enemy trainer switches if there are 3 or more unfainted mons in party
	ld a, [wEnemyPartyCount]
	ld c, a
	ld hl, wEnemyMon1HP

	ld d, 0 ; keep count of unfainted monsters

	; count how many monsters haven't fainted yet
.loop
	ld a, [hli]
	ld b, a
	ld a, [hld]
	or b
	jr z, .Fainted ; has monster fainted?
	inc d
.Fainted
	push bc
	ld bc, wEnemyMon2 - wEnemyMon1
	add hl, bc
	pop bc
	dec c
	jr nz, .loop

	ld a, d ; how many available monsters are there?
	cp 2 ; don't bother if only 1 or 2
	jp nc, SwitchEnemyMon
	and a
	ret

SwitchEnemyMon:

; prepare to withdraw the active monster: copy hp, number, and status to roster

	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1HP
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wEnemyMonHP
	ld bc, 4
	call CopyData

	ld hl, AIBattleWithdrawText
	call PrintText

	; This wFirstMonsNotOutYet variable is abused to prevent the player from
	; switching in a new mon in response to this switch.
	ld a, 1
	ld [wFirstMonsNotOutYet], a
	callab EnemySendOut
	xor a
	ld [wFirstMonsNotOutYet], a

	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	scf
	ret

AIBattleWithdrawText:
	TX_FAR _AIBattleWithdrawText
	db "@"

AIUseFullHeal:
	call AIPlayRestoringSFX
	call AICureStatus
	ld a, FULL_HEAL
	jp AIPrintItemUse

AICureStatus:
; cures the status of enemy's active pokemon
	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1Status
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	xor a
	ld [hl], a ; clear status in enemy team roster
	ld [wEnemyMonStatus], a ; clear status of active enemy
	ld hl, wEnemyBattleStatus3
	res 0, [hl]
	ret

AIUseXAccuracy: ; unused
	call AIPlayRestoringSFX
	ld hl, wEnemyBattleStatus2
	set 0, [hl]
	ld a, X_ACCURACY
	jp AIPrintItemUse

AIUseGuardSpec:
	call AIPlayRestoringSFX
	ld hl, wEnemyBattleStatus2
	set 1, [hl]
	ld a, GUARD_SPEC
	jp AIPrintItemUse

AIUseDireHit: ; unused
	call AIPlayRestoringSFX
	ld hl, wEnemyBattleStatus2
	set 2, [hl]
	ld a, DIRE_HIT
	jp AIPrintItemUse

AICheckIfHPBelowFraction:
; return carry if enemy trainer's current HP is below 1 / a of the maximum
	ld [H_DIVISOR], a
	ld hl, wEnemyMonMaxHP
	ld a, [hli]
	ld [H_DIVIDEND], a
	ld a, [hl]
	ld [H_DIVIDEND + 1], a
	ld b, 2
	call Divide
	ld a, [H_QUOTIENT + 3]
	ld c, a
	ld a, [H_QUOTIENT + 2]
	ld b, a
	ld hl, wEnemyMonHP + 1
	ld a, [hld]
	ld e, a
	ld a, [hl]
	ld d, a
	ld a, d
	sub b
	ret nz
	ld a, e
	sub c
	ret

AIUseXAttack:
	ld b, $A
	ld a, X_ATTACK
	jr AIIncreaseStat

AIUseXDefend:
	ld b, $B
	ld a, X_DEFEND
	jr AIIncreaseStat

AIUseXSpeed:
	ld b, $C
	ld a, X_SPEED
	jr AIIncreaseStat

AIUseXSpecial:
	ld b, $D
	ld a, X_SPECIAL
	; fallthrough

AIIncreaseStat:
	ld [wAIItem], a
	push bc
	call AIPrintItemUse_
	pop bc
	ld hl, wEnemyMoveEffect
	ld a, [hld]
	push af
	ld a, [hl]
	push af
	push hl
	ld a, ANIM_AF
	ld [hli], a
	ld [hl], b
	callab StatModifierUpEffect
	pop hl
	pop af
	ld [hli], a
	pop af
	ld [hl], a
	jp DecrementAICount

AIPrintItemUse:
	ld [wAIItem], a
	call AIPrintItemUse_
	jp DecrementAICount

AIPrintItemUse_:
; print "x used [wAIItem] on z!"
	ld a, [wAIItem]
	ld [wd11e], a
	call GetItemName
	ld hl, AIBattleUseItemText
	jp PrintText

AIBattleUseItemText:
	TX_FAR _AIBattleUseItemText
	db "@"
