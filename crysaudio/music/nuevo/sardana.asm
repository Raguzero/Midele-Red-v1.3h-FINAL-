; La Santa Espina - sardana de Enric Morera
; Arreglo para Pokémon Cristal por Manectric-Rang

Music_LaSantaEspina:
	musicheader 3, 1, Music_Espina_Ch1
	musicheader 1, 2, Music_Espina_Ch2
	musicheader 1, 3, Music_Espina_Ch3


Music_Espina_Ch1:
	tempo 175
	volume $77
	stereopanning $0c
	dutycycle $2
	tone $0002
	notetype $c, $d1
	note __, 16
	note __, 16
	note __, 4
Music_Espina_Ch1_Inicio:
	notetype $c, $d1
	octave 3
	note C#, 2
	intensity $d3
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	intensity $d1
	note C#, 2
	note C#, 2
	note E_, 2
	note C#, 2
	octave 2
	intensity $d4
	note B_, 2
	intensity $d1
	note A_, 2
	octave 3
	note C#, 2
	intensity $d3
	octave 2
	note A_, 1
	note B_, 1
	octave 3
	intensity $d1
	note C#, 2
	note C#, 2
	note E_, 2
	note C#, 2
	octave 2
	note A_, 4

	note __, 6
	intensity $74
	octave 3
	note E_, 2
	intensity $72
	note C#, 2
	note E_, 2
	intensity $85
	note A_, 6
	intensity $84
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	intensity $82
	note D_, 2
	intensity $84
	note D_, 2
	intensity $82
	note C#, 2
	octave 3
	note A_, 2
	intensity $84
	note G#, 2
	note F#, 2
	intensity $85
	note F_, 6
	intensity $96
	note C#, 2
	octave 2
	note B_, 2
	intensity $92
	octave 3
	note C#, 2
	intensity $95
	note F#, 4
	intensity $92
	note G#, 2
	intensity $94
	note E_, 2

	callchannel Music_Espina_Ch1_TresillosMelodia
	intensity $63
	note A_, 3
	note __, 5

	loopchannel 2, Music_Espina_Ch1_Inicio

	callchannel Music_Espina_Ch1_TresillosContrapunto
	note E_, 12
	note E_, 8
	note D_, 4

	intensity $92
	note C#, 12
	intensity $61
	callchannel Music_Espina_Ch1_FraseTonoMenor
	note C_, 12
	callchannel Music_Espina_Ch1_FraseTonoMenor
	note C_, 6

	dutycycle $0
	vibrato $0, $33
	intensity $b5
	octave 3
	note A_, 6
	note B_, 6
	octave 4
	note C_, 6
	intensity $d7
	note C_, 12
	note D_, 6
	intensity $d3
	note E_, 6
	note E_, 3
	note D_, 3
	intensity $d0
	note C_, 16
	note C_, 16
	intensity $d4
	note C_, 10
	note __, 6
	intensity $b4
	note C_, 6
	intensity $b6
	note C_, 6
	note D_, 6
	note E_, 12
	note D_, 6
	note C_, 6
	octave 3
	intensity $b0
	note B_, 16
	note B_, 16
	intensity $b5
	note B_, 16
	note __, 12
	dutycycle $2
	intensity $61
	vibrato $0, $0
	callchannel Music_Espina_Ch1_FraseTonoMenor

	callchannel Music_Espina_Ch1_TresillosMelodia
	callchannel Music_Espina_Ch1_TresillosContrapunto

	octave 4
	intensity $80
	note D_, 12
	note D_, 12

	note __, 6
	intensity $d2
	octave 3
	note E_, 2
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 6
	note E_, 2
	note E_, 4
	note E_, 4
	note E_, 4
	note E_, 4

	note E_, 6
	intensity $91

Music_Espina_Ch1_FraseTonoMenorv2:
	note __, 6
	note C_, 6
	note C_, 6
	note C_, 12
	note C_, 6
	note C_, 6
	note D_, 12
	note D_, 6
	note D_, 6
	note D_, 6
	octave 2
	intensity $b7
	note B_, 6
	octave 3
	note C_, 6
	note D_, 6
	intensity $b0
	note E_, 16
	note E_, 16
	intensity $b7
	note E_, 16
	intensity $91
	note C_, 6
	loopchannel 2, Music_Espina_Ch1_FraseTonoMenorv2

	dutycycle $0
	vibrato $0, $33
	intensity $b5
	octave 3
	note A_, 6
	note B_, 6
	octave 4
	note C_, 6
	intensity $d7
	note E_, 6
	note C_, 6
	note D_, 6
	intensity $d3
	note E_, 6
	note E_, 3
	note D_, 3
	intensity $d0
	note C_, 16
	note C_, 16
	intensity $d4
	note C_, 10
	note __, 6
	intensity $b4
	note C_, 6
	intensity $b6
	note C_, 6
	note D_, 6
	note E_, 12
	note D_, 6
	note C_, 6
	octave 3
	intensity $b0
	note B_, 16
	note B_, 16
	intensity $b5
	note B_, 16

	vibrato $0, $0
	dutycycle $2
	intensity $91
	note __, 12
	note C_, 6
	note C_, 6
	note C_, 12
	note C_, 6
	note C_, 6
	note D_, 12
	note D_, 6
	note D_, 6
	note D_, 6
	octave 2
	intensity $b7
	note B_, 6
	octave 3
	note C_, 6
	note D_, 6
	intensity $b0
	note E_, 16
	note E_, 16
	intensity $b7
	note E_, 16

	callchannel Music_Espina_Ch1_TresillosContrapunto
	intensity $a0
	note E_, 12
	note __, 8
	intensity $c1
	note E_, 4
	note A_, 12
	intensity $e1
	note A_, 12
	loopchannel 0, Music_Espina_Ch1_Inicio


Music_Espina_Ch1_TresillosMelodia:
	notetype $c, $67
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	intensity $57
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	note A_, 4
	note G_, 4
	endchannel

Music_Espina_Ch1_TresillosContrapunto:
	notetype $4, $94
	note __, 12
	note A_, 8
	note A_, 4
	note D_, 8
	intensity $97
	note D_, 12
	intensity $94
	note F#, 4
	note G#, 8
	note G#, 4
	note G#, 8
	note G#, 4
	note E_, 8
	note C#, 12
	note __, 16
	note A_, 8
	note A_, 4
	note D_, 8
	intensity $97
	note D_, 12
	intensity $94
	note F#, 4
	endchannel

Music_Espina_Ch1_FraseTonoMenor:
	note C_, 6
	note C_, 6
	note C_, 12
	note C_, 6
	note C_, 6
	note D_, 12
	note D_, 6
	note D_, 6
	note D_, 12
	note D_, 6
	note D_, 6
	note D_, 12
	note D_, 6
	note D_, 6
	note C_, 12
	note C_, 6
	note C_, 6
	endchannel


Music_Espina_Ch2:
	stereopanning $c0
	dutycycle $0
	tone $0001
	notetype $c, $f1
	note __, 16
	note __, 16
	note __, 4
Music_Espina_Ch2_Inicio:
	notetype $c, $f1
	vibrato $0, $13
	octave 5
	note C#, 2
	intensity $f3
	octave 4
	note A_, 1
	note B_, 1
	octave 5
	intensity $f1
	note C#, 2
	note C#, 2
	note E_, 2
	note C#, 2
	octave 4
	intensity $f4
	note B_, 2
	intensity $f1
	note A_, 2
	octave 5
	note C#, 2
	intensity $f3
	octave 4
	note A_, 1
	note B_, 1
	octave 5
	intensity $f1
	note C#, 2
	note C#, 2
	note E_, 2
	note C#, 2
	octave 4
	note A_, 4

	dutycycle $2
	intensity $94
	octave 3
	note G#, 2
	note F#, 2
	note E_, 2
	note E_, 2
	intensity $92
	note A_, 2
	note B_, 2
	octave 4
	intensity $a5
	note C#, 6
	intensity $a4
	note E_, 2
	note C#, 2
	note E_, 2
	intensity $a2
	note F#, 2
	intensity $a4
	note F#, 2
	intensity $a2
	note E_, 2
	note C#, 2
	octave 3
	intensity $a5
	note B_, 4
	octave 4
	note C#, 6
	
	dutycycle $0
	octave 5
	intensity $c6
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	intensity $c2
	note C#, 2
	intensity $d5
	note E_, 4
	intensity $d2
	note D_, 2
	octave 4
	intensity $d4
	note B_, 2

	dutycycle $0
	callchannel Music_Espina_Ch2_TresillosMelodia
	notetype $c, $74
	note A_, 3
	note __, 5

	loopchannel 2, Music_Espina_Ch2_Inicio
	vibrato $0, $13
	notetype $4, $d3
	note A_, 4
	intensity $c1
	note B_, 4
	octave 4
	note C#, 4
	intensity $d2
	note E_, 8
	note G_, 4
	intensity $d1
	note F#, 8
	intensity $d7
	note F#, 12
	note A_, 4
	intensity $c2
	note G#, 8
	note E_, 4
	note F#, 8
	note D_, 4
	note C#, 8
	intensity $c3
	note E_, 12
	note __, 4

	octave 3
	intensity $d3
	note A_, 4
	intensity $c1
	note B_, 4
	octave 4
	note C#, 4
	intensity $d2
	note E_, 8
	note G_, 4
	intensity $d1
	note F#, 8
	intensity $d7
	note F#, 12
	note B_, 4
	intensity $c1
	note A_, 4
	note G#, 4
	note F#, 4
	intensity $c2
	note D_, 8
	intensity $c1
	note C#, 4
	octave 3
	intensity $c2
	note A_, 6

	callchannel Music_Espina_Ch2_FraseTonoMenor
	note __, 6
	callchannel Music_Espina_Ch2_FraseTonoMenor
	note __, 6
	note A_, 6
	note B_, 6
	octave 4
	note C_, 6
	intensity $d7
	note E_, 12
	note F_, 6
	intensity $d3
	note G_, 6
	note G_, 3
	note F_, 3
	intensity $d0
	note E_, 16
	note E_, 16
	intensity $d4
	note E_, 10
	note __, 6
	note C_, 6
	intensity $d6
	note C_, 6
	note D_, 6
	note E_, 12
	note D_, 6
	note C_, 6
	octave 3
	intensity $d0
	note B_, 16
	note B_, 16
	intensity $d5
	note B_, 16
	note __, 6
	callchannel Music_Espina_Ch2_FraseTonoMenor

	callchannel Music_Espina_Ch2_TresillosMelodia

	vibrato $0, $13
	notetype $4, $f3
	note A_, 4
	intensity $e1
	note B_, 4
	octave 4
	note C#, 4
	intensity $f2
	note E_, 8
	note G_, 4
	intensity $f1
	note F#, 8
	intensity $f7
	note F#, 12
	note A_, 4
	intensity $e2
	note G#, 8
	note E_, 4
	note F#, 8
	note D_, 4
	note C#, 8
	intensity $e3
	note E_, 12
	note __, 4

	octave 3
	intensity $f3
	note A_, 4
	intensity $e1
	note B_, 4
	octave 4
	note C#, 4
	intensity $f2
	note E_, 8
	note G_, 4
	intensity $f1
	note F#, 8
	intensity $f7
	note F#, 12
	note B_, 4
	intensity $c3
	note A_, 4
	intensity $c1
	note G#, 4
	note E_, 4
	note D_, 4
	octave 3
	note B_, 4
	note G#, 4

	note E_, 6

	note __, 16
	note __, 16
	note __, 16

	pitchoffset 0, CC ; Octava arriba
	callchannel Music_Espina_Ch2_FraseTonoMenor
	note __, 6
	callchannel Music_Espina_Ch2_FraseTonoMenor
	note __, 6
	note A_, 6
	note B_, 6
	octave 4
	note C_, 6
	intensity $d7
	note E_, 12
	note F_, 6
	intensity $d3
	note G_, 6
	note G_, 3
	note F_, 3
	intensity $d0
	note E_, 16
	note E_, 16
	intensity $d4
	note E_, 10
	note __, 6
	note C_, 6
	intensity $d6
	note C_, 6
	note D_, 6
	note E_, 12
	note D_, 6
	note C_, 6
	octave 3
	intensity $d0
	note B_, 16
	note B_, 16
	intensity $d5
	note B_, 16
	note __, 6
	callchannel Music_Espina_Ch2_FraseTonoMenor

	pitchoffset 0, C_

	vibrato $0, $13
	notetype $4, $f3
	note A_, 4
	intensity $e1
	note B_, 4
	octave 4
	note C#, 4
	intensity $f2
	note E_, 8
	note G_, 4
	intensity $f1
	note F#, 8
	intensity $f7
	note F#, 12
	note A_, 4
	intensity $e2
	note G#, 8
	note E_, 4
	note F#, 8
	note D_, 4
	note C#, 8
	intensity $e3
	note E_, 12
	note __, 4

	octave 3
	intensity $f3
	note A_, 4
	intensity $e1
	note B_, 4
	octave 4
	note C#, 4
	intensity $f2
	note E_, 8
	note G_, 4
	intensity $f1
	note F#, 8
	intensity $f7
	note F#, 12
	note B_, 4
	intensity $c3
	note A_, 4
	intensity $c1
	note G#, 4
	note E_, 4
	octave 5
	note D_, 8
	note C#, 4
	octave 4
	note A_, 12
	intensity $f1
	note A_, 12

	loopchannel 0, Music_Espina_Ch2_Inicio


Music_Espina_Ch2_TresillosMelodia:
	octave 4
	vibrato $0, $24
	notetype $4, $b5
	note A_, 10
	note G_, 1
	note A_, 1
	note G_, 4
	note E_, 4
	note G_, 4
	note E_, 12
	note D_, 4
	note E_, 4
	note D_, 4
	note C#, 9
	note D_, 3
	intensity $b0
	note E_, 16
	intensity $b5
	note E_, 16
	note __, 4
	intensity $95
	note A_, 10
	note G_, 1
	note A_, 1
	note G_, 4
	note E_, 4
	note G_, 4
	note E_, 12
	note D_, 4
	note E_, 4
	note D_, 4
	note C#, 9
	octave 3
	note B_, 3
	intensity $90
	note A_, 12
	intensity $95
	note A_, 12
	note B_, 4
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	note A_, 12
	note B_, 4
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	note A_, 4
	intensity $a5
	note B_, 4
	octave 4
	note E_, 4
	intensity $b5
	octave 3
	note B_, 4
	note A_, 4
	note B_, 4
	octave 4
	intensity $a5
	note E_, 4
	octave 3
	note B_, 4
	intensity $95
	note A_, 4
	note B_, 4
	intensity $85
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	endchannel

Music_Espina_Ch2_FraseTonoMenor:
	vibrato $0, $33
	intensity $d4
	note E_, 6
	intensity $d7
	note E_, 6
	intensity $d4
	note A_, 6
	intensity $d7
	note A_, 6
	intensity $d4
	note B_, 6
	intensity $d7
	note B_, 6
	octave 4
	intensity $c3
	note C_, 6
	intensity $b2
	note D_, 3
	note C_, 3
	intensity $af
	octave 3
	note B_, 8
	intensity $d0
	note B_, 10
	intensity $d3
	note B_, 6
	intensity $b7
	note B_, 6
	octave 4
	note C_, 6
	intensity $c7
	note D_, 6
	intensity $d7
	note E_, 12
	note D_, 6
	intensity $d3
	note C_, 6
	note C_, 2
	intensity $d0
	octave 3
	note A_, 12
	intensity $d4
	note A_, 10
	endchannel



Music_Espina_Ch3:
	notetype $6, $10
	octave 5
	note C_, 3
	note __, 1
	note C_, 1
	note __, 1
	notetype $5, $10
	note C_, 1
	note __, 1
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F_, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	notetype $6, $10
	note A#, 3
	note __, 1
	note A_, 3
	note __, 1
	note G_, 5
	note __, 1
	note A_, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 6
	note D_, 1
	note C_, 1
	note __, 1
	octave 5
	note A#, 1
	note __, 1
	octave 6
	note C_, 1
	note __, 1
	note D_, 1
	note __, 1
	note E_, 6
	note __, 2
	note C_, 1
	note __, 1
	octave 5
	note G_, 7
	note __, 12
Music_Espina_Ch3_Inicio:
	notetype $c, $16
	octave 2
	note A_, 1
	note __, 7
	note A_, 1
	note __, 1
	octave 3
	note C#, 1
	note __, 1
	note E_, 2
	note A_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 7
	octave 3
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note A_, 1
	note __, 3

	note __, 16
	note __, 16
	note __, 16
	octave 2
	note B_, 2
	note __, 2
	octave 3
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1

	callchannel Music_Espina_Ch3_TresillosMelodia
	note C#, 3
	note __, 5

	loopchannel 2, Music_Espina_Ch3_Inicio

	notetype $4, $16
	callchannel Music_Espina_Ch3_TresillosContrapunto
	octave 4
	note E_, 7
	note __, 5
	octave 3
	note E_, 3
	note __, 5
	note E_, 2
	note __, 2
	note A_, 2
	note __, 10

	callchannel Music_Espina_Ch3_FraseTonoMenor
	note A_, 2
	note __, 10
	callchannel Music_Espina_Ch3_FraseTonoMenor
	note A_, 2
	note __, 10
	note A_, 2
	note __, 4
	note A_, 2
	note __, 4
	note G_, 2
	note __, 10
	note G_, 2
	note __, 4
	note G_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note E_, 2
	note __, 10
	note E_, 2
	note __, 4
	note E_, 2
	note __, 4
	note E_, 2
	note __, 10
	note E_, 2
	note __, 4
	note E_, 2
	note __, 4
	note E_, 2
	note __, 10
	callchannel Music_Espina_Ch3_FraseTonoMenor

	callchannel Music_Espina_Ch3_TresillosMelodia
	notetype $4, $17
	pitchoffset 1, C_
	callchannel Music_Espina_Ch3_TresillosContrapunto
	octave 4
	note E_, 12
	note E_, 12

	notetype $4, $16
	pitchoffset 0, C_
	note __, 16
	note __, 16
	note __, 16

	octave 3
	note A_, 2
	note __, 10

	callchannel Music_Espina_Ch3_FraseTonoMenor
	note A_, 2
	note __, 10
	callchannel Music_Espina_Ch3_FraseTonoMenor
	note A_, 2
	note __, 10
	note A_, 2
	note __, 4
	note A_, 2
	note __, 4
	note G_, 2
	note __, 10
	note G_, 2
	note __, 4
	note G_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note C_, 2
	note __, 10
	note C_, 2
	note __, 4
	note C_, 2
	note __, 4
	note E_, 2
	note __, 10
	note E_, 2
	note __, 4
	note E_, 2
	note __, 4
	note E_, 2
	note __, 10
	note E_, 2
	note __, 4
	note E_, 2
	note __, 4
	note E_, 2
	note __, 10
	callchannel Music_Espina_Ch3_FraseTonoMenor

	notetype $4, $17
	pitchoffset 1, C_
	callchannel Music_Espina_Ch3_TresillosContrapunto
	octave 4
	note E_, 12
	octave 3
	note __, 8
	note E_, 2
	note __, 2
	note A_, 2
	note __, 10
	note A_, 2
	note __, 10
	pitchoffset 0, C_
	loopchannel 0, Music_Espina_Ch3_Inicio


Music_Espina_Ch3_TresillosMelodia:
	notetype $c, $16
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	octave 4
	endchannel

Music_Espina_Ch3_TresillosContrapunto:
	octave 3
	note __, 12
	note A_, 4
	note B_, 2
	note __, 2
	octave 4
	note C#, 2
	note __, 2
	note D_, 3
	note __, 5
	note D_, 10
	note __, 2
	note F#, 4
	note E_, 3
	note __, 5
	note E_, 2
	note __, 2
	octave 3
	note E_, 3
	note __, 5
	note E_, 2
	note __, 2
	note A_, 3
	note __, 5
	note A_, 10
	note __, 6

	note __, 12
	note A_, 4
	note B_, 2
	note __, 2
	octave 4
	note C#, 2
	note __, 2
	note D_, 3
	note __, 5
	note D_, 10
	note __, 2
	octave 3
	note B_, 4
	endchannel

Music_Espina_Ch3_FraseTonoMenor:
	note A_, 2
	note __, 4
	note A_, 2
	note __, 4
	note E_, 2
	note __, 10
	note E_, 2
	note __, 4
	note E_, 2
	note __, 4
	note F_, 2
	note __, 10
	note F_, 2
	note __, 4
	note F_, 2
	note __, 4
	note F_, 2
	note __, 10
	note F_, 2
	note __, 4
	note F_, 2
	note __, 4
	note E_, 2
	note __, 10
	note E_, 2
	note __, 4
	note E_, 2
	note __, 4
	note A_, 2
	note __, 10
	note A_, 2
	note __, 4
	note A_, 2
	note __, 4
	endchannel
