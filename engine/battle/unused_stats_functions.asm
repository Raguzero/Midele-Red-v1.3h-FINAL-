; does nothing since no stats are ever selected (barring glitches)
DoubleSelectedStats:
	ld a, [H_WHOSETURN]
	and a
	ld a, [wPlayerStatsToDouble]
	ld hl, wBattleMonAttack + 1
	jr z, .notEnemyTurn
	ld a, [wEnemyStatsToDouble]
	ld hl, wEnemyMonAttack + 1
.notEnemyTurn
	ld c, 4
	ld b, a
.loop
	srl b
	call c, .doubleStat
	inc hl
	inc hl
	dec c
	ret z
	jr .loop

.doubleStat
	ld a, [hl]
	add a
	ld [hld], a
	ld a, [hl]
	rl a
	ld [hli], a
	ret

; does nothing since no stats are ever selected (barring glitches)
HalveSelectedStats:
	ld a, [H_WHOSETURN]
	and a
	ld a, [wPlayerStatsToHalve]
	ld hl, wBattleMonAttack
	jr z, .notEnemyTurn
	ld a, [wEnemyStatsToHalve]
	ld hl, wEnemyMonAttack
.notEnemyTurn
	ld c, 4
	ld b, a
.loop
	srl b
	call c, .halveStat
	inc hl
	inc hl
	dec c
	ret z
	jr .loop

.halveStat
	ld a, [hl]
	srl a
	ld [hli], a
	rr [hl]
	or [hl]
	jr nz, .nonzeroStat
	ld [hl], 1
.nonzeroStat
	dec hl
	ret
	
; NUEVO PARA EVITAR CUELGUE POR ACTUALIZAR ALGO DEL JUEGO, COMO MAPAS
;This function is for teleporting you home from the start menu if you get stuck
SoftlockTeleport:
	ld a, [hJoyInput]
	cp D_DOWN + B_BUTTON + SELECT
	ret nz
	ld a, [wCurrentMenuItem]
	cp 6 
	ret nz
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	ld a, [wd732]
	set 3, a 
	res 4, a 
	set 6, a 
	ld [wd732], a
	ret
; NUEVO PARA EVITAR CUELGUE POR ACTUALIZAR ALGO DEL JUEGO, COMO MAPAS
	
; NUEVO PARA RANDOM TRAINER
CheckIfPkmnReal:
;set the carry if pokemon number in 'a' is found on the list of legit pokemon
	push hl
	push de
	push bc
	ld hl, ListRealPkmn
	ld de, $0001
	call IsInArray
	pop bc
	pop de
	pop hl

;This function loads a random trainer class (value of $01 to $2F)
GetRandTrainer:
.reroll
    ld a, OPP_TRAINERBOT ; CAMBIARLO A OPP_TRAINERBOT CUANDO LO CREE
	ld [wEngagedTrainerClass], a
	ld a, 1
	; NUEVO PARA CORREGIRLO, SINO SOLO SALE POKEMON SALVAJE RANDOM
	ld [wIsTrainerBattle], a
	; NUEVO PARA CORREGIRLO, SINO SOLO SALE POKEMON SALVAJE RANDOM
	ld [wEngagedTrainerSet], a
	ret

;gets a random pokemon and puts its hex ID in register a and wcf91
GetRandMon:
	push hl
	push bc
	ld hl, ListRealPkmn
	call Random
	ld b, a
.loop
	ld a, b
	and a
	jr z, .endloop
	inc hl
	dec b
	ld a, [hl]
	and a
	jr nz, .loop
	ld hl, ListRealPkmn
	jr .loop
.endloop
	ld a, [hl]
	pop bc
	pop hl
	ld [wcf91], a
	ret
	
;generates a randomized 6-party enemy trainer roster
GetRandRoster:
    push hl
    push bc
    push de
    ld hl, wPartyMon1Level  ; Apuntará al nivel de cada poke
    ld de, wPartyMon2 - wPartyMon1
    xor a
    ld b, a
    ld a, [wPartyCount]
    ld c, a
.buclepokes
    ld a, [hl]
    cp 60
    jr nc, .sesentaomas
    ld a, 60            ; Cambiamos a 60 si el nivel no llega a 60
.sesentaomas
    cp 100
    jr z, .nivelelegido ; si hay un poke al 100, ya se sabe que debe estar al 100: fin
    jr c, .menosdecien
    ; Si hay un poke a nivel mayor que 100, igual que si hay uno al 100: fin
    ld a, 100
    jr    .nivelelegido
.menosdecien            ; Seguimos sin llegar a 100: seguimos buscando el máximo
    cp b
    jr c, .noesmaximo
    ld b, a             ; Nuevo nivel máximo: lo cargamos
.noesmaximo
    add hl, de          ; hl pasa a apuntar al nivel del siguiente poke
    dec c               ; Vemos si, efectivamente, hay siguiente poke o si hemos terminado ya
    jr nz, .buclepokes  ; Vamos al siguiente poke si lo hay

    ; Fin: ponemos como nivel el máximo encontrado (truncado entre 60 y 100)
    ld a, b
.nivelelegido
    ld [wCurEnemyLVL], a
    pop de
    pop bc
    pop hl
	push bc
	ld b, 6
.loop	
	push bc
	call GetRandMon
	;ld [wcf91], a
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	pop bc
	dec b
	jr nz, .loop
;end of loop
	pop bc
	xor a	;set the zero flag before returning
	ret

ListRealPkmn:
	db RHYDON       ; $01
	db KANGASKHAN   ; $02
	db NIDOKING     ; $07
	db SLOWBRO      ; $08
	db EXEGGUTOR    ; $0A
	db GENGAR       ; $0E
	db NIDOQUEEN    ; $10
	db LAPRAS       ; $13
	db ARCANINE     ; $14
	db MEW          ; $15
	db GYARADOS     ; $16
	db SCYTHER      ; $1A
	db BLASTOISE    ; $1C
	db PINSIR       ; $1D
	db FEAROW       ; $23
	db CHANSEY      ; $28
	db MR_MIME      ; $2A
	db HITMONLEE    ; $2B
	db HITMONCHAN   ; $2C
	db ARBOK        ; $2D
	db PARASECT     ; $2E
	db GOLEM        ; $31
	db TAUROS       ; $3C
	db FARFETCHD    ; $40
	db DRAGONITE    ; $42
	db JYNX         ; $48
	db MOLTRES      ; $49
	db ARTICUNO     ; $4A
	db ZAPDOS       ; $4B
	db DITTO        ; $4C
	db NINETALES    ; $53
	db RAICHU       ; $55
	db KABUTOPS     ; $5B
	db SANDSLASH    ; $61
	db OMASTAR      ; $63
	db WIGGLYTUFF   ; $65
	db FLAREON      ; $67
	db JOLTEON      ; $68
	db VAPOREON     ; $69
	db POLIWRATH    ; $6F
	db BEEDRILL     ; $72
	db DODRIO       ; $74
	db PRIMEAPE     ; $75
	db DUGTRIO      ; $76
	db VENOMOTH     ; $77
	db DEWGONG      ; $78
	db BUTTERFREE   ; $7D
	db MACHAMP      ; $7E
	db GOLDUCK      ; $80
	db HYPNO        ; $81
	db MEWTWO       ; $83
	db SNORLAX      ; $84
	db MUK          ; $88
	db KINGLER      ; $8A
	db CLOYSTER     ; $8B
	db ELECTRODE    ; $8D
	db CLEFABLE     ; $8E
	db WEEZING      ; $8F
	db PERSIAN      ; $90
	db MAROWAK      ; $91
	db ALAKAZAM     ; $95
	db PIDGEOT      ; $97
	db STARMIE      ; $98
	db VENUSAUR     ; $9A
	db TENTACRUEL   ; $9B
	db SEAKING      ; $9E
	db RAPIDASH     ; $A4
	db RATICATE     ; $A6
	db AERODACTYL   ; $AB
	db CHARIZARD    ; $B4
	db VILEPLUME    ; $BB
	db VICTREEBEL   ; $BE
db PROBOPASS
db MIMIKYU
db COFAGRIGUS
db LURANTIS
db CHANDELURE
db ALTARIA
db VIKAVOLT
db WEAVILE
db SMEARGLE
db FLYGON
db REUNICLUS
db TYRANITAR
db STEELIX
db DRAMPA
db EXCADRILL
db EELEKTROSS  
db ABOMASNOW
db HERACROSS
db HOUNDOOM
db LANTURN
db HONCHKROW
db HYDREIGON
db SHARPEDO
db CAMERUPT
db SKARMORY
db MILTANK
db KROOKODILE
db CONKELDURR
db METAGROSS
db DECIDUEYE
db SWAMPERT
db TOGEKISS
db ESPEON
db UMBREON
db LEAFEON
db GLACEON
db ZOROARK
db LUCARIO
db CROBAT
db SCIZOR
db RHYPERIOR
db KINGDRA
db MAGNEZONE
db TANGROWTH
db ELECTIVIRE
db MAGMORTAR
db LICKILICKY
db PORYGON2
db PORYGONZ
db JUMPLUFF
db STUNFISK
db PALOSSAND
db AURORUS
db GLISCOR
db DRAPION
db NAGANADEL
db LUDICOLO
db $00
; NUEVO PARA RANDOM TRAINER
