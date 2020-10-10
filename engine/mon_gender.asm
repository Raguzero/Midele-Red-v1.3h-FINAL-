; Determine a Pokémon's gender based on its DVs
; This uses the same formula as Gen 2, so gender should match if you trade them forward via Time Capsule
; INPUTS - Mon DVs in de, species in wd11e
; OUTPUT - Mon's gender in wd11e
GetMonGender::
	push de
	predef IndexToPokedex
	pop de
	ld a, [wd11e]
	dec a
	ld c, a
	ld b, 0
	ld hl, MonGenderRatios
	add hl, bc ; hl now points to the species gender ratio
; Attack DV
	ld a, [de]
	and $f0
	ld b, a
; Speed DV
	inc de
	ld a, [de]
	and $f0
	swap a
; Put them together
	or b
	ld b, a ; b now has the combined DVs
; Get the gender ratio
	ld a, [hl]
; Check for always one or another
	cp NO_GENDER
	jr z, .genderless
	cp FEMALE_ONLY
	jr z, .female
	and a ; MALE_ONLY
	jr z, .male
; Compare the ratio to the value we found earlier
	cp b
	jr c, .male
.female
	ld a, FEMALE
	jr .done
.male
	ld a, MALE
	jr .done
.genderless
	ld a, GENDERLESS
.done
	ld [wd11e], a
	ret
MonGenderRatios:
	db MALE_88_PERCENT   ; Bulbasaur
	db MALE_88_PERCENT   ; Ivysaur
	db MALE_88_PERCENT   ; Venusaur
	db MALE_88_PERCENT   ; Charmander
	db MALE_88_PERCENT   ; Charmeleon
	db MALE_88_PERCENT   ; Charizard
	db MALE_88_PERCENT   ; Squirtle
	db MALE_88_PERCENT   ; Wartortle
	db MALE_88_PERCENT   ; Blastoise
	db SAME_BOTH_GENDERS ; Caterpie
	db SAME_BOTH_GENDERS ; Metapod
	db SAME_BOTH_GENDERS ; Butterfree
	db SAME_BOTH_GENDERS ; Weedle
	db SAME_BOTH_GENDERS ; Kakuna
	db SAME_BOTH_GENDERS ; Beedrill
	db SAME_BOTH_GENDERS ; Pidgey
	db SAME_BOTH_GENDERS ; Pidgeotto
	db SAME_BOTH_GENDERS ; Pidgeot
	db SAME_BOTH_GENDERS ; Rattata
	db SAME_BOTH_GENDERS ; Raticate
	db SAME_BOTH_GENDERS ; Spearow
	db SAME_BOTH_GENDERS ; Fearow
	db SAME_BOTH_GENDERS ; Ekans
	db SAME_BOTH_GENDERS ; Arbok
	db SAME_BOTH_GENDERS ; Pikachu
	db SAME_BOTH_GENDERS ; Raichu
	db SAME_BOTH_GENDERS ; Sandshrew
	db SAME_BOTH_GENDERS ; Sandslash
	db FEMALE_ONLY       ; Nidoran F
	db FEMALE_ONLY       ; Nidorina
	db FEMALE_ONLY       ; Nidoqueen
	db MALE_ONLY         ; Nidoran M
	db MALE_ONLY         ; Nidorino
	db MALE_ONLY         ; Nidoking
	db FEMALE_75_PERCENT ; Clefairy
	db FEMALE_75_PERCENT ; Clefable
	db FEMALE_75_PERCENT ; Vulpix
	db FEMALE_75_PERCENT ; Ninetales
	db FEMALE_75_PERCENT ; Jigglypuff
	db FEMALE_75_PERCENT ; WIgglytuff
	db SAME_BOTH_GENDERS ; Zubat
	db SAME_BOTH_GENDERS ; Golbat
	db SAME_BOTH_GENDERS ; Oddish
	db SAME_BOTH_GENDERS ; Gloom
	db SAME_BOTH_GENDERS ; Vileplume
	db SAME_BOTH_GENDERS ; Paras
	db SAME_BOTH_GENDERS ; Parasect
	db SAME_BOTH_GENDERS ; Venonat
	db SAME_BOTH_GENDERS ; Venomoth
	db SAME_BOTH_GENDERS ; Diglett
	db SAME_BOTH_GENDERS ; Dugtrio
	db SAME_BOTH_GENDERS ; Meowth
	db SAME_BOTH_GENDERS ; Persian
	db SAME_BOTH_GENDERS ; Psyduck
	db SAME_BOTH_GENDERS ; Golduck
	db SAME_BOTH_GENDERS ; Mankey
	db SAME_BOTH_GENDERS ; Primeape
	db MALE_75_PERCENT   ; Growlithe
	db MALE_75_PERCENT   ; Arcanine
	db SAME_BOTH_GENDERS ; Poliwag
	db SAME_BOTH_GENDERS ; Poliwhirl
	db SAME_BOTH_GENDERS ; Poliwrath
	db MALE_75_PERCENT   ; Abra
	db MALE_75_PERCENT   ; Kadabra
	db MALE_75_PERCENT   ; Alakazam
	db MALE_75_PERCENT   ; Machop
	db MALE_75_PERCENT   ; Machoke
	db MALE_75_PERCENT   ; Machamp
	db SAME_BOTH_GENDERS ; Bellsprout
	db SAME_BOTH_GENDERS ; Weepinbell
	db SAME_BOTH_GENDERS ; Victreebel
	db SAME_BOTH_GENDERS ; Tentacool
	db SAME_BOTH_GENDERS ; Tentacruel
	db SAME_BOTH_GENDERS ; Geodude
	db SAME_BOTH_GENDERS ; Graveler
	db SAME_BOTH_GENDERS ; Golem
	db SAME_BOTH_GENDERS ; Ponyta
	db SAME_BOTH_GENDERS ; Rapidash
	db SAME_BOTH_GENDERS ; Slowpoke
	db SAME_BOTH_GENDERS ; Slowbro
	db NO_GENDER         ; Magnemite
	db NO_GENDER         ; Magneton
	db SAME_BOTH_GENDERS ; Farfetch'd
	db SAME_BOTH_GENDERS ; Doduo
	db SAME_BOTH_GENDERS ; Dodrio
	db SAME_BOTH_GENDERS ; Seel
	db SAME_BOTH_GENDERS ; Dewgong
	db SAME_BOTH_GENDERS ; Grimer
	db SAME_BOTH_GENDERS ; Muk
	db SAME_BOTH_GENDERS ; Shellder
	db SAME_BOTH_GENDERS ; Cloyster
	db SAME_BOTH_GENDERS ; Gastly
	db SAME_BOTH_GENDERS ; Haunter
	db SAME_BOTH_GENDERS ; Gengar
	db SAME_BOTH_GENDERS ; Onix
	db SAME_BOTH_GENDERS ; Drowzee
	db SAME_BOTH_GENDERS ; Hypno
	db SAME_BOTH_GENDERS ; Krabby
	db SAME_BOTH_GENDERS ; Kingler
	db NO_GENDER         ; Voltorb
	db NO_GENDER         ; Electrode
	db SAME_BOTH_GENDERS ; Exeggcute
	db SAME_BOTH_GENDERS ; Exeggutor
	db SAME_BOTH_GENDERS ; Cubone
	db SAME_BOTH_GENDERS ; Marowak
	db MALE_ONLY         ; Hitmonlee
	db MALE_ONLY         ; Hitmonchan
	db SAME_BOTH_GENDERS ; Lickitung
	db SAME_BOTH_GENDERS ; Koffing
	db SAME_BOTH_GENDERS ; Weezing
	db SAME_BOTH_GENDERS ; Rhyhorn
	db SAME_BOTH_GENDERS ; Rhydon
	db FEMALE_ONLY       ; Chansey
	db SAME_BOTH_GENDERS ; Tangela
	db FEMALE_ONLY       ; Kangaskhan
	db SAME_BOTH_GENDERS ; Horsea
	db SAME_BOTH_GENDERS ; Seadra
	db SAME_BOTH_GENDERS ; Goldeen
	db SAME_BOTH_GENDERS ; Seaking
	db NO_GENDER         ; Staryu
	db NO_GENDER         ; Starmie
	db SAME_BOTH_GENDERS ; Mr. Mime
	db SAME_BOTH_GENDERS ; Scyther
	db FEMALE_ONLY       ; Jynx
	db MALE_75_PERCENT   ; Electabuzz
	db MALE_75_PERCENT   ; Magmar
	db SAME_BOTH_GENDERS ; Pinsir
	db MALE_ONLY         ; Tauros
	db SAME_BOTH_GENDERS ; Magikarp
	db SAME_BOTH_GENDERS ; Gyarados
	db SAME_BOTH_GENDERS ; Lapras
	db NO_GENDER         ; Ditto
	db MALE_88_PERCENT   ; Eevee
	db MALE_88_PERCENT   ; Vaporeon
	db MALE_88_PERCENT   ; Jolteon
	db MALE_88_PERCENT   ; Flareon
	db NO_GENDER         ; Porygon
	db MALE_88_PERCENT   ; Omanyte
	db MALE_88_PERCENT   ; Omastar
	db MALE_88_PERCENT   ; Kabuto
	db MALE_88_PERCENT   ; Kabutops
	db MALE_88_PERCENT   ; Aerodactyl
	db MALE_88_PERCENT   ; Snorlax
	db NO_GENDER         ; Articuno
	db NO_GENDER         ; Zapdos
	db NO_GENDER         ; Moltres
	db SAME_BOTH_GENDERS ; Dratini
	db SAME_BOTH_GENDERS ; Dragonair
	db SAME_BOTH_GENDERS ; Dragonite
	db NO_GENDER         ; Mewtwo
	db NO_GENDER         ; Mew
	db SAME_BOTH_GENDERS ; Nosepass
	db SAME_BOTH_GENDERS       ; Probopass
	db SAME_BOTH_GENDERS       ; Mimikyu
	db SAME_BOTH_GENDERS   ; Yamask
	db SAME_BOTH_GENDERS   ; Cofagrigus
	db SAME_BOTH_GENDERS ; Fomantis
	db SAME_BOTH_GENDERS         ; Lurantis
	db SAME_BOTH_GENDERS         ; Litwick
	db SAME_BOTH_GENDERS   ; Lampent
	db SAME_BOTH_GENDERS   ; Chandelure
	db SAME_BOTH_GENDERS   ; Swablu
	db SAME_BOTH_GENDERS   ; Altaria
	db SAME_BOTH_GENDERS   ; grubbin
	db SAME_BOTH_GENDERS   ; Charjabug
	db SAME_BOTH_GENDERS   ; Vikavolt
	db SAME_BOTH_GENDERS   ; Sneasel
	db SAME_BOTH_GENDERS  ; WEAVILE
	db SAME_BOTH_GENDERS         ; Smeargle
	db SAME_BOTH_GENDERS ; Trapinch
	db SAME_BOTH_GENDERS ; Vibrava
	db SAME_BOTH_GENDERS         ; Flygon
	db SAME_BOTH_GENDERS         ; Solosis
	db SAME_BOTH_GENDERS         ; Duosion
	db SAME_BOTH_GENDERS         ; Reuniclus
	db SAME_BOTH_GENDERS   ; Tyranitar
	db SAME_BOTH_GENDERS         ; Steelix
	db SAME_BOTH_GENDERS         ; DRAMPA
	db SAME_BOTH_GENDERS  ; DRILLBUR
	db SAME_BOTH_GENDERS  ; EXCADRILL
	db SAME_BOTH_GENDERS  ; TYNAMO
	db SAME_BOTH_GENDERS  ; EELEKTRIK
	db SAME_BOTH_GENDERS  ; EELEKTROSS
	db SAME_BOTH_GENDERS  ; SNOVER
	db SAME_BOTH_GENDERS  ; ABOMASNOW
	db SAME_BOTH_GENDERS  ; HERACROSS
	db SAME_BOTH_GENDERS  ; HOUNDOUR
	db SAME_BOTH_GENDERS   ; HOUNDOOM
	db SAME_BOTH_GENDERS  ; CHINCHOU
	db SAME_BOTH_GENDERS   ; LANTURN
	db SAME_BOTH_GENDERS   ; MURKROW
	db SAME_BOTH_GENDERS ;HONCHKROW
	db SAME_BOTH_GENDERS   ; HYDREIGON
	db SAME_BOTH_GENDERS   ; CARVANHA
	db SAME_BOTH_GENDERS ;SHARPEDO
	db SAME_BOTH_GENDERS   ; NUMEL
	db SAME_BOTH_GENDERS   ; CAMERUPT
	db SAME_BOTH_GENDERS   ; SKARMORY
	db FEMALE_ONLY ; MILTANK
	db SAME_BOTH_GENDERS         ; Sandile
	db SAME_BOTH_GENDERS   ; Krokorok
	db SAME_BOTH_GENDERS   ; krookodile
	db SAME_BOTH_GENDERS ; Timburr
	db SAME_BOTH_GENDERS        ; Gurdurr
	db SAME_BOTH_GENDERS   ; Conkeldurr
	db NO_GENDER         ; Beldum
	db NO_GENDER         ; Metang
	db NO_GENDER  ; Metagross
	db MALE_88_PERCENT ; Rowlet
	db MALE_88_PERCENT ; Dartrix
	db MALE_88_PERCENT ; Decidueye
	db MALE_88_PERCENT   ; Mudkip
	db MALE_88_PERCENT   ; Marshtomp
	db MALE_88_PERCENT   ; Swampert
	db MALE_88_PERCENT   ; Togepi
	db MALE_88_PERCENT ; Togetic
	db MALE_88_PERCENT  ; TOGEKISS
	db MALE_88_PERCENT   ; ESPEON
	db MALE_88_PERCENT   ; UMBREON
	db MALE_88_PERCENT   ; LEAFEON
	db MALE_88_PERCENT   ; GLACEON
	db MALE_88_PERCENT  ; Zoroark
	db SAME_BOTH_GENDERS ; Lucario
	db SAME_BOTH_GENDERS         ; Crobat
	db SAME_BOTH_GENDERS ; Scizor
	db SAME_BOTH_GENDERS ; RHYPERIOR
	db SAME_BOTH_GENDERS   ; KINGDRA
	db NO_GENDER ; MAGNEZONE
	db SAME_BOTH_GENDERS   ; TANGROWTH
	db MALE_75_PERCENT    ; ELECTIVIRE
	db MALE_75_PERCENT  ; MAGMORTAR
	db SAME_BOTH_GENDERS   ; LICKILICKY
	db NO_GENDER    ; PORYGON2
	db NO_GENDER  ; PORYGONZ
	db NO_GENDER  ; Catermano
	db NO_GENDER  ; Dark Pika
	db NO_GENDER         ; Micomon
	db SAME_BOTH_GENDERS  ; HOPPIP
	db SAME_BOTH_GENDERS  ; SKIPLOOM
	db SAME_BOTH_GENDERS         ; JUMPLUFF
	db SAME_BOTH_GENDERS  ; stunfisk
	db SAME_BOTH_GENDERS  ; sandygast
	db SAME_BOTH_GENDERS         ; palossand
	db MALE_88_PERCENT  ; amaura
	db MALE_88_PERCENT         ; aurorus
	db SAME_BOTH_GENDERS  ; GLIGAR
	db SAME_BOTH_GENDERS  ; GLISCOR
	db SAME_BOTH_GENDERS         ; skorupi
	db SAME_BOTH_GENDERS   ; DRAPION
	db NO_GENDER         ; POIPOLE
	db NO_GENDER  ; NAGANADEL
	db SAME_BOTH_GENDERS  ; LUDICOLO
