LoadWildData:
  ; NUEVO DESACTIVAR OLD MAN GLITCH
;	ld hl, WildDataPointers
;	ld a, [wCurMap]
  ld a, [wCurMap]
  cp CINNABAR_ISLAND
  jr nz, .noGlitch
  CheckEventHL EVENT_OLDMANGLITCH 
  jr z, .noGlitch
  ; Si Micolo está derrotado, se evita el fix chapucero del old man glitch
  ld a, FUCHSIA_CITY ; mapa random sin pokes salvajes
.noGlitch
  ld hl, WildDataPointers
  ; NUEVO DESACTIVAR OLD MAN GLITCH
	; get wild data for current map
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a       ; hl now points to wild data for current map
	ld a, [hli]
	ld [wGrassRate], a
	and a
	jr z, .NoGrassData ; if no grass data, skip to surfing data
	push hl
	ld de, wGrassMons ; otherwise, load grass data
	ld bc, $0014
	call CopyData
	pop hl
	ld bc, $0014
	add hl, bc
.NoGrassData
	ld a, [hli]
	ld [wWaterRate], a
	and a
	ret z        ; if no water data, we're done
	ld de, wWaterMons  ; otherwise, load surfing data
	ld bc, $0014
	jp CopyData

INCLUDE "data/wild_mons.asm"
