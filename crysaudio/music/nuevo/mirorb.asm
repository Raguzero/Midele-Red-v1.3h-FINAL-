; Musicote de Miror B aka Discal en Pokémon Colosseum
; Arreglo para Pokémon Cristal por Manectric-Rang

Music_MirorB:
	musicheader 4, 1, Music_MirorB_Ch1
	musicheader 1, 2, Music_MirorB_Ch2
	musicheader 1, 3, Music_MirorB_Ch3
	musicheader 1, 4, Music_MirorB_Ch4


Music_MirorB_Ch1:
	tempo 143
	volume $77
	stereopanning $0c
	tone $0002
Music_MirorB_Ch1_Inicio:
	dutycycle $0
	notetype $c, $b1
	octave 2
	note B_, 2
	callchannel Music_MirorB_Ch1_repeInicio
	note __, 2
	callchannel Music_MirorB_Ch1_repeInicio

	dutycycle $3
	intensity $c2
Music_MirorB_Ch1_Bucle:
	callchannel Music_MirorB_Ch1_Pianillo
	loopchannel 8, Music_MirorB_Ch1_Bucle

	callchannel Music_MirorB_Ch1_Tonica
	intensity $71
	note C#, 2
	callchannel Music_MirorB_Ch1_Tonica
	note __, 2

	intensity $00
Music_MirorB_Ch1_Intermedio:
	callchannel Music_MirorB_Ch1_Pianillo
	loopchannel 4, Music_MirorB_Ch1_Intermedio

	dutycycle 0
	octave 4
	intensity $b2
	note C#, 1
	note D#, 1
	intensity $b0
	note F_, 4
	intensity $b2
	note F_, 3
	octave 3
	note B_, 1
	octave 4
	note D#, 2
	note C#, 1
	octave 3
	note G#, 2
	note F#, 2
	intensity $b1
	note F_, 1
	note F_, 4
	intensity $b2
	note F_, 2
	note F_, 2
	note F#, 2
	note F_, 1
	note D#, 2
	note C#, 2
	note D#, 1
	intensity $b0
	note F_, 5
	intensity $b1
	note F_, 2
	note G#, 1
	note G#, 3
	note G#, 2
	note G#, 2
	note G#, 1
	intensity $b2
	note G#, 1
	note F#, 1
	note G#, 1
	note F#, 1
	note F_, 1
	note D#, 1
	intensity $b3
	note F_, 3
	octave 2
	intensity $b1
	note G#, 3
	intensity $b2
	note G#, 2

	octave 4
	intensity $b1
	note C#, 1
	intensity $b2
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	intensity $b1
	note C#, 2
	note D#, 2
	note D#, 1
	intensity $b3
	note F_, 3
	note F#, 3
	intensity $b2
	note D#, 2
	note F_, 1
	note C#, 1
	octave 3
	note B_, 1
	intensity $b1
	note G#, 2
	intensity $b2
	note B_, 1
	octave 4
	note C#, 2
	intensity $8c
	note C#, 4
	intensity $b1
	note C#, 2
	note F_, 2
	note G#, 1
	note G#, 1
	intensity $b2
	note G#, 1
	note F#, 1
	note G#, 1
	note F#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note D#, 1
	note C#, 1
	intensity $b1
	octave 3
	note B_, 2
	note G#, 2
	note G#, 1
	intensity $b2
	note F_, 1
	note G#, 1
	note B_, 1
	intensity $b1
	octave 4
	note D#, 2
	octave 3
	note B_, 2
	note B_, 1
	octave 4
	intensity $b3
	note F#, 3
	note F_, 5
	dutycycle $3
	
	callchannel Music_MirorB_Ch1_Tonica
	intensity $71
	note C#, 2
	callchannel Music_MirorB_Ch1_Tonica
	note __, 2
	loopchannel 0, Music_MirorB_Ch1_Inicio


Music_MirorB_Ch1_repeInicio:
	intensity $b1
	octave 2
	note B_, 2
	note B_, 1
	note F_, 2

	octave 2
	intensity $b2
	note C#, 3
	note C#, 4
	note __, 2
	endchannel

Music_MirorB_Ch1_Pianillo:
	octave 5
	note C#, 2
	octave 3
	intensity $72
	note F_, 1
	intensity $71
	note C#, 2
	intensity $72
	note F_, 1
	intensity $71
	note C#, 2
	octave 2
	intensity $73
	note B_, 3
	intensity $72
	note B_, 5
	intensity $00
	endchannel

Music_MirorB_Ch1_Tonica:
	octave 2
	intensity $91
	note A#, 2
	note A#, 2
	intensity $92
	note G#, 1
	intensity $91
	note B_, 2
	intensity $92
	note C#, 1
	intensity $93
	note A#, 3
	intensity $a1
	note F#, 3
	endchannel




Music_MirorB_Ch2:
	stereopanning $c0
	tone $0001
Music_MirorB_Ch2_Inicio:
	dutycycle $0
	notetype $c, $b1
	octave 3
	note C#, 2
	callchannel Music_MirorB_Ch2_repeInicio
	note __, 2
	callchannel Music_MirorB_Ch2_repeInicio

	dutycycle 1
	callchannel Music_MirorB_Ch2_Arpegio

	intensity $d2
	note A#, 1
	intensity $d1
	note F#, 2
	note G#, 2
	intensity $d2
	note F#, 1
	note F_, 1
	note D#, 1
	intensity $d1
	note F_, 2
	note G#, 1
	intensity $d3
	note C#, 5

	octave 4
	intensity $d1
	note C#, 1
	note C#, 2
	octave 3
	note B_, 2
	intensity $a2
	note C#, 1
	intensity $d1
	note A#, 2
	note G#, 2
	intensity $d2
	note F#, 1
	intensity $d1
	note G#, 2
	note A#, 2
	intensity $df
	note G#, 5
	intensity $e6
	note G#, 12

	callchannel Music_MirorB_Ch2_Arpegio

	intensity $d2
	note D#, 1
	note F_, 1
	note G#, 1
	intensity $d1
	note B_, 2
	octave 4
	intensity $d2
	note D#, 1
	intensity $d3
	note C#, 3
	intensity $d2
	note F_, 1
	note C#, 1
	octave 3
	note A#, 1
	note G#, 1
	intensity $d1
	note F#, 2
	intensity $d2
	note F_, 1

	octave 4
	note C#, 1
	note D#, 1
	note F#, 1
	note F_, 1
	notetype $6, $d4
	note G#, 13
	intensity $d1
	note G#, 4
	intensity $d2
	note F_, 2
	intensity $d1
	note D#, 4
	intensity $df
	note C#, 9
	notetype $c, $e6
	note C#, 12

	callchannel Music_MirorB_Ch2_Tonica
	callchannel Music_MirorB_Ch2_Tonica

	dutycycle $3
	octave 2
Music_MirorB_Ch2_Intermedio:
	note __, 3
	intensity $61
	note G#, 3
	note G#, 2
	intensity $73
	note F#, 3
	intensity $72
	note F#, 5
	loopchannel 4, Music_MirorB_Ch2_Intermedio

	dutycycle 0
	octave 4
	intensity $c2
	note F_, 1
	note F#, 1
	intensity $c0
	note G#, 4
	intensity $c2
	note G#, 3
	note D#, 1
	note F#, 2
	note F_, 1
	note C#, 2
	octave 3
	note A#, 2
	intensity $c1
	note G#, 1
	note G#, 4
	intensity $c2
	note G#, 2
	note G#, 2
	note A#, 2
	note G#, 1
	note F#, 2
	note F_, 2
	note F#, 1
	intensity $c0
	note G#, 5
	intensity $c1
	note G#, 2
	octave 4
	note C#, 1
	note C#, 3
	note C#, 2
	note C#, 2
	intensity $c2
	note C#, 1
	octave 3
	note B_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note G#, 1
	note F#, 1
	intensity $c3
	note G#, 3
	intensity $c1
	note C#, 3
	intensity $c2
	note C#, 2

	octave 4
	intensity $c1
	note F_, 1
	intensity $c2
	note F_, 1
	note D#, 1
	intensity $c1
	note F_, 2
	note F#, 2
	note F#, 1
	intensity $c3
	note G#, 3
	note A#, 3
	intensity $c2
	note F#, 2
	note G#, 1
	note F_, 1
	note D#, 1
	octave 3
	intensity $c1
	note B_, 2
	octave 4
	intensity $c2
	note D#, 1
	note F_, 2
	intensity $9c
	note F_, 4
	intensity $c1
	note F_, 2
	note G#, 2
	octave 5
	note C#, 1
	intensity $c2
	note C#, 1
	octave 4
	note B_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note G#, 1
	note F#, 1
	note G#, 1
	note F#, 1
	note F_, 1
	intensity $c1
	note D#, 2
	note C#, 2
	note C#, 1
	octave 3
	intensity $c2
	note G#, 1
	note B_, 1
	octave 4
	note D#, 1
	intensity $c1
	note F#, 2
	note D#, 2
	note D#, 1
	intensity $c3
	note A#, 3
	note G#, 5
	
	callchannel Music_MirorB_Ch2_Tonica
	callchannel Music_MirorB_Ch2_Tonica
	loopchannel 0, Music_MirorB_Ch2_Inicio

Music_MirorB_Ch2_repeInicio:
	intensity $b1
	octave 3
	note C#, 2
	note D#, 1
	octave 2
	note B_, 2

	octave 4
	intensity $f2
	note C#, 3
	note C#, 4
	note __, 2
	endchannel

Music_MirorB_Ch2_Arpegio:
	octave 2
	intensity $c2
	note C#, 1
	note G#, 1
	note B_, 1
	intensity $c1
	octave 3
	note D#, 2
	note F#, 2
	intensity $c2
	note D#, 1
	intensity $c1
	note A#, 2
	note F#, 1
	intensity $c3
	note G#, 5
	endchannel

Music_MirorB_Ch2_Tonica:
	dutycycle 0
	octave 3
	intensity $c1
	note F#, 2
	note F#, 2
	intensity $c2
	note E_, 1
	intensity $c1
	note E_, 2
	intensity $c2
	note E_, 1
	intensity $c3
	note F#, 3
	intensity $c1
	note F#, 5
	endchannel



Music_MirorB_Ch3:
	notetype $4, $16

Music_MirorB_Ch3_Inicio:
	octave 3
	note F_, 2
	note __, 4
	callchannel Music_MirorB_Ch3_repeInicio
	note __, 6
	callchannel Music_MirorB_Ch3_repeInicio

Music_MirorB_Ch3_Bucle1:
	octave 3
	note C#, 9
	octave 2
	note G#, 8
	note __, 1
	note G#, 6
	octave 3
	note D#, 9
	note F#, 9
	note D#, 6
	loopchannel 8, Music_MirorB_Ch3_Bucle1

	callchannel Music_MirorB_Ch3_Tonica
	callchannel Music_MirorB_Ch3_Tonica

Music_MirorB_Ch3_Intermedio:
	octave 3
	note C#, 9
	octave 2
	note G#, 8
	note __, 1
	note G#, 6
	note B_, 9
	octave 3
	note D#, 9
	octave 2
	note B_, 6
	loopchannel 4, Music_MirorB_Ch3_Intermedio

Music_MirorB_Ch3_Bucle2:
	octave 3
	note C#, 6
	octave 4
	note F_, 2
	note __, 1
	octave 2
	note G#, 6
	octave 4
	note F_, 2
	note __, 1
	octave 2
	note G#, 6
	octave 3
	note B_, 8
	note __, 1
	note B_, 3
	note F#, 6
	note D#, 6
	loopchannel 8, Music_MirorB_Ch3_Bucle2

	callchannel Music_MirorB_Ch3_Tonica
	callchannel Music_MirorB_Ch3_Tonica
	loopchannel 0, Music_MirorB_Ch3_Inicio


Music_MirorB_Ch3_repeInicio:
	note F_, 2
	note __, 4
	note G#, 2
	note __, 1
	note C#, 2
	note __, 4

	note B_, 6
	note __, 3
	note B_, 6
	note __, 12
	endchannel



Music_MirorB_Ch3_Tonica:
	note F#, 2
	note __, 4
	note F#, 2
	note __, 4
	note E_, 2
	note __, 1
	note G#, 2
	note __, 4
	note E_, 2
	note __, 1
	note F#, 5
	note __, 4
	octave 2
	note F#, 3
	note __, 6
	note F#, 3
	note __, 3
	endchannel
	

Music_MirorB_Ch4:
	stereopanning $c0
	togglenoise $5
	notetype $c
Music_MirorB_Ch4_Inicio:
	note __, 7
	note D#, 3
	note E_, 13
	note B_, 3
	note D#, 6

	note G#, 3
	callchannel Music_MirorB_Ch4_Trozo
Music_MirorB_Ch4_Bucle1:
	note D_, 1
	note C#, 1
	note C#, 1
	callchannel Music_MirorB_Ch4_Trozo
	loopchannel 7, Music_MirorB_Ch4_Bucle1

	note G#, 8
	note G#, 3
	note D#, 13
	note C_, 3
	note D#, 5

	note G#, 3
	callchannel Music_MirorB_Ch4_Trozo
Music_MirorB_Ch4_Bucle2:
	note D_, 1
	note C#, 1
	note C#, 1
	callchannel Music_MirorB_Ch4_Trozo
	loopchannel 11, Music_MirorB_Ch4_Bucle2

	note G#, 8
	note G#, 3
	note D#, 13
	note C_, 3
	note D#, 5

	loopchannel 0, Music_MirorB_Ch4_Inicio

Music_MirorB_Ch4_Trozo:
	note A#, 1
	note D_, 2

	note C#, 1
	note D_, 1
	note A#, 1
	note D_, 1
	note D_, 1
	note C#, 1
	note D_, 2

	note D_, 2
	endchannel
