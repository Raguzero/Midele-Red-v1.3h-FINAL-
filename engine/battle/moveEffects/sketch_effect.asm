;g/s/c implementation summary
;check for substitute ? fail : continue
;check for transform ? fail : continue
;get opponent move list
;get last used move
;last move empty ? fail : continue
;last move struggle ? fail : continue
;already know that move ? fail : continue
;copy move data
;display sketched text
;wEnemyBattleStatus see volatile statuses status_constants.asm

SketchEffect_:
  ld hl, wBattleMonMoves ;hl = opponent, de = self
  ld de, wEnemyMonMoves
  ld bc, wPlayerBattleStatus2
  ld a, [H_WHOSETURN] ; H_WHOSETURN  0 = player 1 = enemy
  and a
  ld a, [wPlayerBattleStatus3]
  jr nz, .hitTest ;enemy turn
  ld hl, wEnemyMonMoves ;player turn, swap mons
  ld de, wBattleMonMoves
  ld bc, wEnemyBattleStatus2
  ld a, [wEnemyBattleStatus3]
.hitTest
  bit TRANSFORMED, a ; is mon transformed?
  jp nz, .failed
  ld a, [bc]
  bit HAS_SUBSTITUTE_UP, a ; is mon substituted?
  jp nz, .failed
  ld a, [H_WHOSETURN]
  and a
  ld a, [wBattlePreviousEnemyAttack]
  jr z, .checkIfAttacked
  ld a, [wBattlePreviousPlayerAttack]
.checkIfAttacked
  and a ; opponent has attacked yet?
  jp z, .failed
.checkMoveSelected
  ld c, a ; store opponent move for check loop later
  and a ; opponent move invalid?
  jp z, .failed
  cp STRUGGLE ; opponent move is struggle?
  jp z, .failed
  push af
  push hl
  push de
  ld b, NUM_MOVES
.checkIfHasMoveLoop
  ld a, [de]
  cp c
  jp z, .loopFail ;we already have the move
  inc de
  dec b
  jr nz, .checkIfHasMoveLoop
  jp .sketchEffect

.loopFail
  pop de
  pop hl
  pop af
  jp .failed

.sketchEffect
  ld hl, PlayCurrentMoveAnimation ;trigger the animation
  ld b, BANK(PlayCurrentMoveAnimation)
  call Bankswitch
  pop de
  pop hl
  pop af
  ld c, a
  ld b, NUM_MOVES
.findSketchInMovesLoop
  ld a, [de]
  cp SKETCH ; is the move sketch?
  jp z, .loopDone
  inc de
  dec b
  ;jr nz, .checkIfHasMoveLoop
  jr nz, .findSketchInMovesLoop
  jp .failed ; probably this should never happen but whatever

.loopDone
  ld a, [H_WHOSETURN]
  and a
  ld a, c ;opponent move num back in a
  jr nz, .afterMoveCopy ;don't copy to party data if it's enemy
  push af
  push de
  ld hl, wPartyMons
  ld a, [wPlayerMonNumber] ;amount of times to loop
  and a
  jr z, .loopDone2
  ld de, $2c ;amount to inc hl by
.findPartyMemberLoop ;interate over party members
  add hl, de
  dec a
  jr nz, .findPartyMemberLoop
.loopDone2
  ld a, NUM_MOVES
  sub b ;move slot to replace
  ld de, $8
  add hl, de ;jump to pokemon moves
  ld de, 0
  ld e, a
  add hl, de ;jump to move slot
  push hl
  ld de, $15 ; 21 en decimal
  add hl, de
  ld a, $5
  ld [hl], a
  pop hl
  pop de
  pop af
  ld [hl], a ;copy the move into the move slot
.afterMoveCopy
  ld [de], a ; copy the move into the battle slot
  ld hl, $11 ; 17 en decimal
  add hl, de
  ld a, $5
  ld [hl], a
  ld a, [de]
  ld [wd0b5], a ; load the text for the name
  ld a, BANK(MoveNames)
  ld [wPredefBank], a
  ld a, MOVE_NAME
  ld [wNameListType], a
  call GetName
  ld hl, SketchedText
  jp PrintText

.failed
  ld hl, PrintButItFailedText_
  jp BankswitchEtoF

SketchedText:
  TX_FAR _SketchedText
  db "@"
