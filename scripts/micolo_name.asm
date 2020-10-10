; set carry flag if player name is the same as name in hl,
; else clear carry flag
; hl: address of the name used in the function name check
CheckName:
  push bc
  push de
  ld de, wPlayerName
.name_check_loop
  ld a, [de]
  ld b, [hl]
  cp b
  jr nz, .not_equal
  cp "@"
  jr z, .all_equal
  inc de
  inc hl
  jr .name_check_loop
.not_equal
  and a
  pop de
  pop bc
  ret
.all_equal
  scf
  pop de
  pop bc
  ret

; set carry flag if player name is Midele,
; else clear carry flag
IsMicoloName:
  push hl
  ld hl, MicoloName
  call CheckName
  pop hl
  ret

; set carry flag if player name is Sapphire
; else clear carry flag
IsSapphireName:
  push hl
  ld hl, SapphireName
  call CheckName
  pop hl
  ret

; set carry flag if player name is Midele or Sapphire
; else clear carry flag
IsSapphireOrMicoloName:
  call IsSapphireName
  ret c
  call IsMicoloName
  ret
MicoloName: db "MIDELE@"
SapphireName: db "SAPPH@"
