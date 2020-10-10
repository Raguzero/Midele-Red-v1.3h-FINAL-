TypeNames:

	dw .Normal
	dw .Fighting
	dw .Flying
	dw .Poison
	dw .Ground
	dw .Rock
	dw .Steel  ;dw .Bird  	; NUEVO PARA TIPOS NUEVOS
	dw .Bug
	dw .Ghost

	dw .Unk ; NUEVO PARA STRUGGLE ;dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal

	dw .Fire
	dw .Water
	dw .Grass
	dw .Electric
	dw .Psychic
	dw .Ice
	dw .Dragon
	dw .Dark 	; NUEVO PARA TIPOS NUEVOS
	dw .Unknown ; NUEVO PARA TIPOS NUEVOS

.Normal:   db "NORMAL@"
.Fighting: db "FIGHTING@"
.Flying:   db "FLYING@"
.Poison:   db "POISON@"
.Fire:     db "FIRE@"
.Water:    db "WATER@"
.Grass:    db "GRASS@"
.Electric: db "ELECTRIC@"
.Psychic:  db "PSYCHIC@"
.Ice:      db "ICE@"
.Ground:   db "GROUND@"
.Rock:     db "ROCK@"
.Bug:      db "BUG@"
.Ghost:    db "GHOST@"
.Dragon:   db "DRAGON@"
.Dark:      db "DARK@"
.Steel:    db "STEEL@"
.Unknown:   db "???@" ; NUEVO PARA TIPOS NUEVOS
.Unk:   db "???@" ; NUEVO PARA PARA STRUGGLE

