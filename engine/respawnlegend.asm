; tests if a pokemon's bit is set in the seen pokemon bit field
; INPUT:
; [wd11e] = pokedex number
IsPokemonSeen:
	ld hl, wPokedexSeen
	jp IsPokemonBitSet

; tests if a pokemon's bit is set in the owned pokemon bit field
; INPUT:
; [wd11e] = pokedex number
IsPokemonOwned:
	ld hl, wPokedexOwned
    jp IsPokemonBitSet