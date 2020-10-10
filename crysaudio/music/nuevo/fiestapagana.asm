; Fiesta Pagana de Mägo de Oz
; Arreglo para Pokémon Cristal por Manectric-Rang

Music_FiestaPagana:
	musicheader 4, 1, Music_FiestaPagana_Ch1
	musicheader 1, 2, Music_FiestaPagana_Ch2
	musicheader 1, 3, Music_FiestaPagana_Ch3
	musicheader 1, 4, Music_FiestaPagana_Ch4



Music_FiestaPagana_Ch1:
	tempo 390
	volume $77
	stereopanning $0c
	dutycycle $2
	tone $0002
	vibrato $14, $35
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas3
	callchannel Music_FiestaPagana_Ch1_Intro_Compas4a
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas3
	callchannel Music_FiestaPagana_Ch1_Intro_Compas4b
	tempo 330
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	tempo 290
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	tempo 260
	callchannel Music_FiestaPagana_Ch1_Intro_Compas3
	tempo 230
	callchannel Music_FiestaPagana_Ch1_Intro_Compas4a
	tempo 215
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	tempo 205
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	tempo 198
	callchannel Music_FiestaPagana_Ch1_Intro_Compas3
	tempo 193
	callchannel Music_FiestaPagana_Ch1_Intro_Compas4b_silencios
	tempo 191
Music_FiestaPagana_Ch1_Bucle:
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas3
	callchannel Music_FiestaPagana_Ch1_Intro_Compas4a
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas12
	callchannel Music_FiestaPagana_Ch1_Intro_Compas3
	callchannel Music_FiestaPagana_Ch1_Intro_Compas4b_silencios
	callchannel Music_FiestaPagana_Ch1y2_Intro_Puente
	dutycycle $1
	intensity $a3
	note B_, 2
	note B_, 1
	note B_, 2
	note B_, 1
	octave 4
	note F#, 2
	note F#, 1
	note F#, 2
	note F#, 1
	note E_, 2
	note E_, 1
	note F#, 2
	note G_, 1
	note F#, 2
	note D_, 1
	octave 3
	note B_, 2
	note __, 1
	note B_, 2
	note B_, 1
	note B_, 2
	note B_, 1
	octave 4
	note F#, 2
	note F#, 1
	intensity $a2
	note F#, 1
	note F#, 1
	note F#, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note F#, 1
	note F#, 1
	note G_, 1
	intensity $a3
	note F#, 3
	note __, 2

	intensity $a2
	note G_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	octave 3
	note A_, 1
	note A_, 1
	note A_, 2
	octave 4
	note F#, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	octave 3
	note B_, 1
	note B_, 1
	intensity $a3
	note B_, 2
	note B_, 1
	note B_, 2
	note B_, 1
	octave 4
	note D_, 2
	note F#, 1
	note E_, 2
	note E_, 1
	note E_, 2
	note E_, 1
	note D_, 2
	note D_, 1
	note C#, 2
	note C#, 1
	octave 3
	note B_, 3
	note __, 3
Music_FiestaPagana_Ch1_esperaPuente:
	note __, 12
	loopchannel 8, Music_FiestaPagana_Ch1_esperaPuente
	note __, 3
	note B_, 2
	note B_, 1
	note B_, 2
	note B_, 1
	octave 4
	note F#, 2
	note F#, 1
	note F#, 2
	note F#, 1
	note E_, 2
	note E_, 1
	note F#, 2
	note G_, 1
	note F#, 2
	note D_, 1
	octave 3
	note B_, 2
	note __, 1
	note B_, 2
	note B_, 1
	note B_, 2
	note B_, 1
	octave 4
	note F#, 2
	note F#, 1
	note F#, 1
	note F#, 1
	note F#, 1
	note E_, 2
	note E_, 1
	note F#, 2
	note G_, 1
	note F#, 3
	note __, 2

	note G_, 1
	note A_, 2
	intensity $a2
	note A_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	octave 3
	note A_, 1
	note A_, 1
	intensity $a3
	note A_, 2
	octave 4
	note __, 1
	note G_, 2
	intensity $a2
	note G_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	octave 3
	note B_, 1
	note B_, 1
	intensity $a3
	note B_, 2
	note __, 1
	note B_, 2
	note B_, 1
	octave 4
	note D_, 2
	note F#, 1
	note E_, 2
	note E_, 1
	note E_, 1
	note E_, 1
	note E_, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note C#, 2
	note C#, 1
	octave 3
	note B_, 3
	note __, 3
	callchannel Music_FiestaPagana_Ch1y2_estribillo_comun
	callchannel Music_FiestaPagana_Ch1_estribillo_cola
	dutycycle $2
	loopchannel 0, Music_FiestaPagana_Ch1_Bucle
	
	
Music_FiestaPagana_Ch1_Intro_Compas12:
	notetype $6, $a7
	octave 3
	note A_, 1
	intensity $80
	note B_, 9
	intensity $82
	note B_, 2
	octave 4
	notetype $2, $a7
	note F#, 1
	note G_, 1
	note F#, 4
	notetype $c, $a7
	note E_, 1
	note D_, 1
	notetype $2, $a7
	note F#, 1
	note G_, 1
	note F#, 4
	notetype $c, $a7
	note E_, 1
	note D_, 1
	endchannel

Music_FiestaPagana_Ch1_Intro_Compas3:
	octave 3
	intensity $a0
	note A_, 5
	intensity $a3
	note A_, 1
	octave 4
	notetype $2, $a7
	note E_, 1
	note F#, 1
	note E_, 4
	notetype $c, $a7
	note D_, 1
	note C#, 1
	notetype $2, $a7
	note E_, 1
	note F#, 1
	note E_, 4
	notetype $c, $a7
	note D_, 1
	note C#, 1
	endchannel

Music_FiestaPagana_Ch1_Intro_Compas4a:
	octave 3
	intensity $a0
	note A_, 5
	intensity $a3
	note A_, 1
	octave 4
	notetype $2, $a7
	note E_, 1
	note F#, 1
	note E_, 4
	notetype $c, $a7
	note D_, 1
	note C#, 1
	note D_, 1
	note E_, 1
	note C#, 1
	endchannel

Music_FiestaPagana_Ch1_Intro_Compas4b:
	intensity $a0
	note D_, 5
	intensity $a4
	note D_, 1
	intensity $a7
	note D_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 3
	notetype $2, $a7
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note B_, 4
	notetype $c, $a7
	note A_, 1
	endchannel

Music_FiestaPagana_Ch1_Intro_Compas4b_silencios:
	intensity $a3
	note D_, 1
	note __, 1
	note D_, 1
	note D_, 1
	note __, 1
	note D_, 1
	intensity $a7
	note D_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 3
	notetype $2, $a7
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note B_, 4
	notetype $c, $a7
	note A_, 1
	endchannel


Music_FiestaPagana_Ch1y2_estribillo_comun:
	dutycycle $1
	octave 4
	intensity $94
	note F#, 2
	note __, 1
	note D_, 2
	note __, 1
	octave 3
	note B_, 3
	note B_, 2
	octave 4
	note F#, 1
	note E_, 3
	note C#, 3
	octave 3
	note A_, 3
	note __, 2
	octave 4
	note F#, 1
	note G_, 2
	note G_, 1
	note G_, 2
	note G_, 1
	note G_, 2
	note G_, 1
	note A_, 2
	note G_, 1
	note F#, 2
	note E_, 1
	note D_, 2
	note E_, 1
	note F#, 3
	note __, 2
	notetype $6, $91
	octave 3
	note B_, 1
	note B_, 1
	notetype $c, $94
	octave 4
	note F#, 2
	note F#, 1
	note F#, 2
	note F#, 1
	note A_, 3
	endchannel

Music_FiestaPagana_Ch1_estribillo_cola:
	note A_, 2
	note F#, 1
	note E_, 2
	note D_, 1
	note C#, 2
	note D_, 1
	note E_, 3
	note __, 2
	note F#, 1
	note G_, 2
	note G_, 1
	note G_, 2
	note G_, 1
	note G_, 2
	note G_, 1
	note G_, 2
	note G_, 1
	note F#, 3
	note E_, 3
	note D_, 3
	note C#, 3
	endchannel


Music_FiestaPagana_Ch2:
	stereopanning $c0
	dutycycle $0
	tone $0001
	vibrato $20, $44
	octave 4
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12_lento
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12_lento
	callchannel Music_FiestaPagana_Ch2_Intro_Compas3_lento
	callchannel Music_FiestaPagana_Ch2_Intro_Compas4a_lento
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12_lento
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12_lento
	callchannel Music_FiestaPagana_Ch2_Intro_Compas3_lento
	callchannel Music_FiestaPagana_Ch2_Intro_Compas4b_lento
Music_FiestaPagana_Ch2_Intro_Repeticion:
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12
	callchannel Music_FiestaPagana_Ch2_Intro_Compas3
	callchannel Music_FiestaPagana_Ch2_Intro_Compas4a
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12
	callchannel Music_FiestaPagana_Ch2_Intro_Compas12
	callchannel Music_FiestaPagana_Ch2_Intro_Compas3
	callchannel Music_FiestaPagana_Ch2_Intro_Compas4b
Music_FiestaPagana_Ch2_Bucle:
	loopchannel 2, Music_FiestaPagana_Ch2_Intro_Repeticion
	callchannel Music_FiestaPagana_Ch1y2_Intro_Puente

	callchannel Music_FiestaPagana_Ch2_estrofa
	callchannel Music_FiestaPagana_Ch2_puente
	callchannel Music_FiestaPagana_Ch2_puente
	note __, 3
	callchannel Music_FiestaPagana_Ch2_estrofa
	dutycycle $1
	callchannel Music_FiestaPagana_Ch1y2_estribillo_comun
	callchannel Music_FiestaPagana_Ch2_estribillo_cola
	dutycycle $0
	loopchannel 0, Music_FiestaPagana_Ch2_Bucle

Music_FiestaPagana_Ch2_Intro_Compas12_lento:
	notetype $c, $90
	note D_, 5
	intensity $93
	note D_, 1
	intensity $97
	note A_, 1
	note G_, 1
	note F#, 1
	note A_, 1
	note G_, 1
	note F#, 1
	endchannel

Music_FiestaPagana_Ch2_Intro_Compas3_lento:
	intensity $90
	note C#, 5
	intensity $93
	note C#, 1
	intensity $97
	note G_, 1
	note F#, 1
	note E_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	endchannel

Music_FiestaPagana_Ch2_Intro_Compas4a_lento:
	intensity $90
	note C#, 5
	intensity $93
	note C#, 1
	intensity $97
	note G_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note E_, 1
	endchannel

Music_FiestaPagana_Ch2_Intro_Compas4b_lento:
	intensity $90
	note F#, 5
	intensity $94
	note F#, 1
	intensity $97
	note F#, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	endchannel

Music_FiestaPagana_Ch2_Intro_Compas12:
	intensity $93
	note D_, 1
	note __, 1
	note D_, 1
	note D_, 1
	note __, 1
	note D_, 1
	intensity $97
	note A_, 1
	note G_, 1
	note F#, 1
	note A_, 1
	note G_, 1
	note F#, 1
	endchannel

Music_FiestaPagana_Ch2_Intro_Compas3:
	intensity $93
	note C#, 1
	note __, 1
	note C#, 1
	note C#, 1
	note __, 1
	note C#, 1
	intensity $97
	note G_, 1
	note F#, 1
	note E_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	endchannel

Music_FiestaPagana_Ch2_Intro_Compas4a:
	intensity $93
	note C#, 1
	note __, 1
	note C#, 1
	note C#, 1
	note __, 1
	note C#, 1
	intensity $97
	note G_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note E_, 1
	endchannel

Music_FiestaPagana_Ch2_Intro_Compas4b:
	intensity $93
	note F#, 1
	note __, 1
	note F#, 1
	note F#, 1
	note __, 1
	note F#, 1
	intensity $95
	note F#, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	endchannel

Music_FiestaPagana_Ch1y2_Intro_Puente:
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	note A_, 1
	note B_, 1
	note __, 2
	intensity $a0
	note A_, 12
	endchannel

Music_FiestaPagana_Ch2_estrofa:
	note __, 12
	note __, 12
	note __, 12
	note __, 12
	intensity $94
	octave 4
	note A_, 2
	intensity $92
	note A_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	octave 3
	note A_, 1
	note A_, 1
	note A_, 1
	octave 4
	note E_, 1
	note F#, 1
	intensity $94
	note G_, 2
	intensity $92
	note G_, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	octave 3
	note B_, 1
	note B_, 1
	intensity $93
	note B_, 2
	note B_, 1
	note B_, 2
	note B_, 1
	octave 4
	note D_, 2
	note F#, 1
	note E_, 2
	note E_, 1
	note E_, 2
	note E_, 1
	note D_, 2
	note D_, 1
	note C#, 2
	note C#, 1
	octave 3
	intensity $94
	note B_, 4
	note __, 2
	endchannel


Music_FiestaPagana_Ch2_puente:
	intensity $93	
	note B_, 2
	octave 4
	note F#, 1
	octave 3
	note B_, 2
	octave 4
	note F#, 1
	octave 3
	note B_, 2
	octave 4
	note F#, 1
	octave 3
	note B_, 2
	note __, 1
	octave 4
	note F#, 2
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	notetype $6, $95
	note D_, 1
	note E_, 1
	note D_, 2
	notetype $c, $93
	note C#, 1
	octave 3
	note B_, 2
	octave 4
	note F#, 1
	octave 3
	note B_, 2
	octave 4
	note F#, 1
	octave 3
	note B_, 2
	octave 4
	note F#, 1
	octave 3
	note B_, 2
	note __, 1
	octave 4
	note F#, 2
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 3
	note A_, 1
	note B_, 2
	note __, 1
	endchannel

Music_FiestaPagana_Ch2_estribillo_cola:
	note F#, 2
	note F#, 1
	note E_, 2
	note D_, 1
	note C#, 2
	note D_, 1
	note E_, 3
	note __, 2
	note F#, 1
	note G_, 2
	note G_, 1
	note D_, 2
	note D_, 1
	octave 3
	note B_, 2
	note B_, 1
	octave 4
	note G_, 2
	note G_, 1
	note F#, 3
	note E_, 3
	note D_, 3
	note C#, 3
	endchannel


Music_FiestaPagana_Ch3:
	notetype $6, $18
Music_FiestaPagana_Ch3_EsperaIntro:
	note __, 12
	loopchannel 8, Music_FiestaPagana_Ch3_EsperaIntro
	octave 3
	note B_, 11
	note __, 13
	note B_, 11
	note __, 13
	note A_, 11
	note __, 13
	octave 4
	note D_, 11
	note __, 13
	pitchoffset 0, B_
	callchannel Music_FiestaPagana_Ch3_intro1
	pitchoffset 0, A_
	callchannel Music_FiestaPagana_Ch3_intro1
	pitchoffset 0, B_
	callchannel Music_FiestaPagana_Ch3_intro1
	pitchoffset 0, A_
	callchannel Music_FiestaPagana_Ch3_intro1_mitad
	pitchoffset 0, D_
	callchannel Music_FiestaPagana_Ch3_intro1_cola
	note C_, 6
	octave 2
	note G_, 6
	notetype $6, $15

Music_FiestaPagana_Ch3_Bucle:
	pitchoffset 0, B_
	callchannel Music_FiestaPagana_Ch3_intro2
	pitchoffset 0, A_
	callchannel Music_FiestaPagana_Ch3_intro2
	pitchoffset 0, B_
	callchannel Music_FiestaPagana_Ch3_intro2
	pitchoffset 0, C_
	callchannel Music_FiestaPagana_Ch3_intro2_final

	callchannel Music_FiestaPagana_Ch3_estrofa
	callchannel Music_FiestaPagana_Ch3_puente
	callchannel Music_FiestaPagana_Ch3_puente
	note A_, 6
	callchannel Music_FiestaPagana_Ch3_estrofa
	note B_, 12
	note B_, 5
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note A_, 12
	note A_, 5
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 12
	note G_, 5
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 3
	note F#, 6
	note E_, 6
	note D_, 6
	note C#, 6
	octave 2
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note A_, 2
	note __, 2
	note A_, 1
	note __, 1
	note A_, 3
	note __, 1
	note A_, 1
	note __, 1
	note A_, 2
	note __, 2
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 2
	note __, 2
	note G_, 1
	note __, 1
	note G_, 3
	note __, 1
	note G_, 1
	note __, 1
	note G_, 2
	note __, 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 3
	note F#, 6
	note E_, 6
	note D_, 6
	note C#, 6
	loopchannel 0, Music_FiestaPagana_Ch3_Bucle


Music_FiestaPagana_Ch3_intro1:
	octave 3
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
Music_FiestaPagana_Ch3_intro1_mitad:
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
Music_FiestaPagana_Ch3_intro1_cola:
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 3
	note C_, 1
	note __, 1
	endchannel

Music_FiestaPagana_Ch3_intro2:
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note __, 1
	octave 2
	note C_, 1
	note __, 1
	endchannel

Music_FiestaPagana_Ch3_intro2_final:
	octave 2
	note A_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	octave 2
	note D_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 2
	note D_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	note D_, 6
	octave 2
	note A_, 6
Music_FiestaPagana_Ch3_intro2_final_B:
	note B_, 1
	note __, 1
	loopchannel 12, Music_FiestaPagana_Ch3_intro2_final_B
	note B_, 2
	note __, 4
	note A_, 12
	note A_, 12
	endchannel

Music_FiestaPagana_Ch3_estrofa:
	octave 2
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note F#, 2
	note __, 2
	note F#, 1
	note __, 1
	note F#, 4
	note E_, 1
	note __, 1
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note E_, 3
	note __, 1
	note E_, 1
	note __, 1
	octave 2
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note F#, 2
	note __, 2
	note F#, 1
	note __, 1
	note F#, 4
	note E_, 1
	note __, 1
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note E_, 3
	note __, 1
	note E_, 1
	note __, 1
	note F#, 12
	note D_, 3
	note __, 1
	octave 2
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note A_, 3
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 2
	note A_, 3
	note __, 1
	octave 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 2
	note B_, 3
	note __, 1
	octave 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	octave 2
	note B_, 3
	note __, 1
	octave 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note E_, 3
	note __, 1
	octave 2
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 3
	note E_, 4
	note __, 2
	octave 2
	note A_, 5
	note B_, 13
	endchannel

Music_FiestaPagana_Ch3_puente:
	notetype $6, $18
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note E_, 3
	note __, 1
	note E_, 1
	note __, 1
	notetype $6, $15
	octave 2
	note A_, 5
	note B_, 6
	note __, 1
	notetype $6, $18
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	note B_, 2
	note __, 2
	note B_, 1
	note __, 1
	note B_, 3
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note E_, 2
	note __, 2
	note E_, 1
	note __, 1
	note E_, 3
	note __, 1
	note E_, 1
	note __, 1
	notetype $6, $15
	note D_, 3
	note __, 3
	octave 2
	note B_, 3
	note __, 3
	endchannel



Music_FiestaPagana_Ch4:
	stereopanning $c0
	togglenoise $5
	notetype $c
Music_FiestaPagana_Ch4_EsperaIntro:
	note __, 12
	loopchannel 15, Music_FiestaPagana_Ch4_EsperaIntro
	note __, 8
	note A_, 1
	note D#, 3

Music_FiestaPagana_Ch4_Bucle:
	callchannel Music_FiestaPagana_Ch4_7compases
	note E_, 2
	note A_, 1
	note D#, 1
	note D#, 1
	note D#, 1
	callchannel Music_FiestaPagana_Ch4_7compases
	note E_, 2
	note A_, 1
	note D#, 1
	note D#, 1
	note D#, 1

	note E_, 2
	note A_, 1
	note C_, 2
	note D_, 1
	note E_, 2
	note A_, 1
	note C_, 2
	note D_, 1
	note C_, 3
	note D#, 9
	note G#, 3

	callchannel Music_FiestaPagana_Ch4_7compases
	note E_, 2
	note A_, 1
	note D#, 1
	note D#, 1
	note D#, 1

	callchannel Music_FiestaPagana_Ch4_6compases
	note E_, 2
	note A_, 1
	note C_, 2
	note C_, 1
	note E_, 2
	note A_, 1
	note C_, 2
	note C_, 1

	callchannel Music_FiestaPagana_Ch4_7compases
	note C_, 3
	note C_, 3
	callchannel Music_FiestaPagana_Ch4_7compases
	note C_, 3
	note C_, 3
	note G#, 3

	callchannel Music_FiestaPagana_Ch4_7compases
	note E_, 2
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	callchannel Music_FiestaPagana_Ch4_6compases
	note D#, 2
	note A_, 1
	note C_, 2
	note C_, 1
	note D#, 1
	note B_, 1
	note F_, 1
	note D#, 1
	note D#, 1
	note D#, 1

	callchannel Music_FiestaPagana_Ch4_6compases
	note G#, 3
	note D#, 3
	note G#, 3
	note A_, 2
	note D_, 1
	callchannel Music_FiestaPagana_Ch4_6compases
	note G#, 3
	note D#, 3
	note G#, 2
	note A_, 1
	note D#, 1
	note D#, 1
	note D#, 1
	loopchannel 0, Music_FiestaPagana_Ch4_Bucle

Music_FiestaPagana_Ch4_6compases:
	note D#, 2
	jumpchannel Music_FiestaPagana_Ch4_6compases_cont

Music_FiestaPagana_Ch4_7compases:
	note D#, 2
	note A_, 1
	note C_, 2
	note D_, 1
	note E_, 2
Music_FiestaPagana_Ch4_6compases_cont:
	note A_, 1
	note C_, 2
	note D_, 1
	note E_, 2
	note A_, 1
	note C_, 2
	note D_, 1
	note E_, 2
	note A_, 1
	note C_, 2
	note D_, 1
	note E_, 2
	note A_, 1
	note C_, 2
	note D_, 1
	note E_, 2
	note A_, 1
	note C_, 2
	note D_, 1
	note E_, 2
	note A_, 1
	note C_, 2
	note D_, 1
	endchannel
