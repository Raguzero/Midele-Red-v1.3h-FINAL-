; Our House de Madness
; Bucle para Pokémon Cristal por Manectric-Rang

Music_OurHouse:
	musicheader 4, 1, Music_OurHouse_Ch1
	musicheader 1, 2, Music_OurHouse_Ch2
	musicheader 1, 3, Music_OurHouse_Ch3
	musicheader 1, 4, Music_OurHouse_Ch4


Music_OurHouse_Ch1:
	tempo 160
	volume $77
	stereopanning $0c
	dutycycle $2
	tone $0002
	notetype $c, $a1
	octave 5
	slidepitchto 3, 4, D_
Music_OurHouse_Ch1_Loop:
	callchannel Music_OurHouseLoopVoice1
	callchannel Music_OurHouseLoopVoice1
	pitchoffset 1, A_
	callchannel Music_OurHouseLoopVoice1
	callchannel Music_OurHouseLoopVoice1
	pitchoffset 1, A#
	callchannel Music_OurHouseLoopVoice1
	callchannel Music_OurHouseLoopVoice1
	pitchoffset 0, C_
	loopchannel 0, Music_OurHouse_Ch1_Loop

Music_OurHouseLoopVoice1:
	note A_, 2
	intensity $43
	octave 3
	note __, 4
	note A_, 2
	note A_, 2
	note __, 4
	note A_, 2
	note B_, 2
	note __, 4
	note B_, 2
	note A#, 2
	note __, 4
	note A#, 2
	endchannel

Music_OurHouse_Ch2:
	dutycycle $1
	vibrato $12, $22
	tone $0001
	notetype $c, $b3
Music_OurHouse_Ch2_Loop:
	callchannel Music_OurHouseLoopVoice2
	callchannel Music_OurHouseLoopVoice2
	pitchoffset 1, A_
	callchannel Music_OurHouseLoopVoice2
	callchannel Music_OurHouseLoopVoice2
	pitchoffset 1, A#
	callchannel Music_OurHouseLoopVoice2
	callchannel Music_OurHouseLoopVoice2
	pitchoffset 0, C_
	loopchannel 0, Music_OurHouse_Ch2_Loop

Music_OurHouseLoopVoice2:
	octave 3
	intensity $b3
	note D_, 2
	note __, 2
	intensity $b7
	note F#, 4
	intensity $b2
	note E_, 3
	note __, 3
	intensity $53
	dutycycle $2
	note C_, 2
	note G_, 2
	note __, 2
	dutycycle $1
	intensity $b2
	note E_, 2
	note F#, 2
	note G_, 1
	note F#, 2
	note E_, 2
	intensity $c4
	note F#, 3
	endchannel


Music_OurHouse_Ch3:
	stereopanning $c0
	vibrato $10, $14
	notetype $c, $16
Music_OurHouse_Ch3_Loop:
	callchannel Music_OurHouseLoopVoice3
	callchannel Music_OurHouseLoopVoice3
	pitchoffset 1, A_
	callchannel Music_OurHouseLoopVoice3
	callchannel Music_OurHouseLoopVoice3
	pitchoffset 1, A#
	callchannel Music_OurHouseLoopVoice3
	callchannel Music_OurHouseLoopVoice3
	pitchoffset 0, C_
	loopchannel 0, Music_OurHouse_Ch3_Loop

Music_OurHouseLoopVoice3:
	octave 3
	note D_, 2
	note __, 4
	note D_, 2
	octave 2
	note A_, 2
	note __, 4
	note A_, 2
	octave 3
	note E_, 2
	note __, 4
	note E_, 2
	note G_, 2
	note __, 4
	note G_, 2
	endchannel

Music_OurHouse_Ch4:
	stereopanning $c0
	togglenoise $5
	notetype $c
Music_OurHouse_Ch4_Loop:
	note C#, 4
	note B_, 2
	note D_, 2
	loopchannel 0, Music_OurHouse_Ch4_Loop
