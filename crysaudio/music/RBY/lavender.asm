Music_Lavender:
	dbw $C0, Music_Lavender_Ch1
	dbw $01, Music_Lavender_Ch2
	dbw $02, Music_Lavender_Ch3
	dbw $03, Music_Lavender_Ch4

Music_Lavender_Ch1: ; bb58 (2:7b58)
	tempo 152
	volume 119
	dutycycle 1
	
	vibrato 0, 136
	notetype 12, 135
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	notetype 12, 167

Music_Lavender_branch_bb6b:
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note C_, 8
	note C_, 8
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	loopchannel 0, Music_Lavender_branch_bb6b


Music_Lavender_Ch2: ; bb9e (2:7b9e)
	vibrato 0, 52
	dutycycle 3
	notetype 12, 145

Music_Lavender_branch_bba5:
	octave 5
	note C_, 4
	note G_, 4
	note B_, 4
	note F#, 4
	loopchannel 0, Music_Lavender_branch_bba5


Music_Lavender_Ch3: ; bbae (2:7bae)
	vibrato 4, 17
	notetype 12, $3f
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	notetype 12, $2f
	db $f3, $21, $E2, $33, $28, $E1, $22, $FF, $EA, $10, $14, $DC, $10, $E3, $41, $51, $73
Music_Lavender_branch_bbb9:
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	notetype 12, $3f
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	notetype 12, $2f
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	notetype 12, $2f
	octave 6
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	loopchannel 0, Music_Lavender_branch_bbb9

Music_Lavender_Ch4: ; bc21 (2:7c21)
	notetype 12
	togglenoise 0
	note __, 16
	note __, 16
	note __, 16
	note __, 16

Music_Lavender_branch_bc26:
	note F#, 8
	note F#, 8
	loopchannel 0, Music_Lavender_branch_bc26
; 0xbc2e

; 20th Century Fox con flauta demigrante
; Incluye enlace a Pueblo Lavanda en su versión de pokered-crysaudio
; Arreglo para Pokémon Cristal por Manectric-Rang

Music_20thCenturyFox_flauta:
	musicheader 4, 1, Music_20thCenturyFox_flauta_Ch1
	musicheader 1, 2, Music_20thCenturyFox_flauta_Ch2
	musicheader 1, 3, Music_20thCenturyFox_flauta_Ch3
	musicheader 1, 4, Music_20thCenturyFox_flauta_Ch4


Music_20thCenturyFox_flauta_Ch1:
	tempo 330
	volume $77
	stereopanning $f0
	dutycycle $1
	tone $0002
	notetype $4, $42
	note __, 3
	note __, 16
	note __, 16
	note __, 16

	octave 3
	note A#, 4
	note A#, 1
	note A#, 1
	intensity $40
	note A#, 6
	intensity $42
	note A#, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note B_, 2
	note A#, 4
	note A#, 1
	note A#, 1
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note G#, 2
	note A#, 4
	note A#, 1
	note A#, 1
	intensity $47
	note A#, 6
	note __, 6

	octave 4
	note __, 12
	intensity $42
	note C_, 4
	note C_, 1
	note C_, 1
	intensity $47
	note C_, 6
	note __, 12
	intensity $42
	note G_, 4
	note G_, 1
	note G_, 1
	intensity $46
	tempo 360
	note F#, 6
	note __, 12
	intensity $42
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	notetype $c, $3f
	note D_, 10
	note __, 6
	jumpchannel Music_Lavender_Ch1




Music_20thCenturyFox_flauta_Ch2:
	stereopanning $f
	dutycycle $2
	tone $0001
	notetype $4, $42
	note __, 3
	note __, 16
	note __, 16
	note __, 16

	octave 4
	note D_, 4
	note D_, 1
	note D_, 1
	intensity $40
	note D_, 6
	intensity $42
	note D_, 2
	note D#, 2
	note D_, 2
	note D#, 2
	note D_, 2
	note D#, 2
	note D_, 4
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note C_, 2
	note D_, 4
	note D_, 1
	note D_, 1
	intensity $47
	note D_, 6
	note __, 6

	intensity $45
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note F_, 2
	intensity $47
	note G_, 6
	intensity $42
	note D#, 4
	note D#, 1
	note D#, 1
	intensity $47
	note D#, 6
	intensity $45
	note C_, 2
	note D#, 2
	note G_, 2
	intensity $47
	note A#, 6
	intensity $42
	note D#, 4
	note D#, 1
	note D#, 1
	intensity $47
	note D#, 3
	notetype $c, $45
	note C_, 1
	note D#, 1
	note F#, 1
	intensity $47
	note A#, 2
	notetype $4, $42
	note F_, 2
	note D_, 2
	note D#, 2
	notetype $c, $3f
	note F_, 10
	note __, 6
	jumpchannel Music_Lavender_Ch2



Music_20thCenturyFox_flauta_Ch3:
	volume $77
	vibrato $10, $14
	notetype $4, $15

	note __, 3
	note __, 16
	note __, 16
	note __, 16

	notetype $4, $15
	octave 5
	tone 5
	note E_, 2
	note __, 3
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 4
	note __, 2
	notetype $2, $15
	note F_, 4
	note __, 2
	note E_, 4
	note __, 2
	note D#, 3
	note E_, 1
	note __, 2
	note F_, 3
	note D#, 1
	note __, 2
	note E_, 3
	note F_, 1
	note __, 2
	note F_, 4
	note __, 2
	note D#, 4
	note __, 2
	notetype $4, $15
	note E_, 3
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 3
	note C#, 2
	note __, 1
	note C#, 2
	note __, 1
	note D_, 2
	note __, 1
	note E_, 3
	note __, 2
	note E_, 6
	note __, 3
	octave 4
	tone 3
	note A#, 4
	octave 5
	note C#, 2
	note E_, 3
	note G#, 2
	note F#, 2
	note G#, 3
	note F#, 5
	note __, 3
	note C#, 1
	note __, 1
	note E_, 1
	note __, 1
	note F#, 1
	note __, 1
	note B_, 1
	note G#, 2
	note B_, 3
	note G#, 2
	note A_, 1
	note A#, 6
	note __, 3
	note C_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	note B_, 1
	note A_, 1
	note G_, 1
	note G#, 1
	notetype $c, $15
	note A_, 12
	notetype $4, $15
	tone 0
	note __, 16

	jumpchannel Music_Lavender_Ch3

; NUEVO PARA MUSICA DE FLAUTA AL RECIBIRLA DE FUJI

Music_20thCenturyFox_flauta_Ch4:
	stereopanning $10
	togglenoise $5
	notetype $2
Music_20thCenturyFox_flauta_Ch4_Redoble1:
	note A_, 1
	loopchannel 6, Music_20thCenturyFox_flauta_Ch4_Redoble1
	note C_, 6
	note C_, 12
Music_20thCenturyFox_flauta_Ch4_Redoble2:
	note A_, 1
	loopchannel 6, Music_20thCenturyFox_flauta_Ch4_Redoble2
	note C_, 6
	note C_, 12
	note __, 6
Music_20thCenturyFox_flauta_Ch4_Redoble3:
	note A_, 1
	loopchannel 24, Music_20thCenturyFox_flauta_Ch4_Redoble3
	note C_, 6
	note C_, 12
	note __, 6

	notetype $4
	note C_, 4
	note C#, 1
	note D_, 1
	note C_, 6
	note G#, 12
	note C_, 4
	note C#, 1
	note D_, 1
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 4
	note C#, 1
	note D_, 1
	note C_, 6
	note D#, 6
	note __, 12
	note C_, 4
	note C#, 1
	note D_, 1
	note C_, 6
	note __, 12
	note C_, 4
	note C#, 1
	note D_, 1
	note C_, 6
	note __, 12
	note __, 6
	notetype $2
Music_20thCenturyFox_flauta_Ch4_Redoble4:
	note A_, 1
	loopchannel 60, Music_20thCenturyFox_flauta_Ch4_Redoble4
	notetype $c
	note G#, 2
	note __, 4

	; Reconstrucción de lo que suena en Lavender, pues si se salta allí
	; el togglenoise hace que deje de sonar el canal
	note __, 16
	note __, 16
	note __, 16
	note __, 16
Music_Lavender_branch_bc26_variante:
	note A_, 8 ; El sonido no es idéntico pero es el más parecido posible
	note A_, 8
	loopchannel 0, Music_Lavender_branch_bc26_variante
; NUEVO PARA MUSICA DE FLAUTA AL RECIBIRLA DE FUJI
