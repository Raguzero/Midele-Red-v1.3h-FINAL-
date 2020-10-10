Music_MAGruntBattle:
	musicheader 4, 1, Music_MAGruntBattle_Ch1
	musicheader 1, 2, Music_MAGruntBattle_Ch2
	musicheader 1, 3, Music_MAGruntBattle_Ch3
	musicheader 1, 4, Music_MAGruntBattle_Ch4

Music_MAGruntBattle_Ch1:
	tempo 188
	vibrato $12, $24
	dutycycle $2
	notetype $6, $a1
	octave 4
	note A#, 1
	note F_, 1
	note A#, 1
	note B_, 1
	octave 5
	note C#, 1
	note C#, 1
	octave 4
	note B_, 1
	note G#, 1
	loopchannel 3, Music_MAGruntBattle_Ch1
	note A#, 1
	note F_, 1
	note A#, 1
	note B_, 1
	dutycycle $0
	intensity $93
	note C#, 2
	note E_, 2
Music_MAGruntBattle_Ch1_loop_1:
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 6
	note F#, 4
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 4
	intensity $97
	note F_, 2
	note A_, 4
	intensity $93
	loopchannel 2, Music_MAGruntBattle_Ch1_loop_1
Music_MAGruntBattle_Ch1_loop_main:
Music_MAGruntBattle_Ch1_loop_2:
	dutycycle $1
	intensity $97
	octave 3
	note A#, 6
	note F_, 6
	note D#, 4
	note D_, 6
	note D#, 6
	note F_, 4
	intensity $92
	callchannel Music_MAGruntBattle_Ch1_branch_1
	callchannel Music_MAGruntBattle_Ch1_branch_1
	loopchannel 2, Music_MAGruntBattle_Ch1_loop_2
	octave 4 ;;;;;;;;;;;;;;;
	callchannel Music_MAGruntBattle_Ch1_branch_2
	intensity $b2
	note F_, 6
	note F_, 6
	intensity $b5
	note F_, 4
	intensity $b2
	note D#, 6
	note D#, 6
	intensity $b5
	note D#, 4
	callchannel Music_MAGruntBattle_Ch1_branch_2
	intensity $b2
	note F_, 6
	note F_, 6
	intensity $b5
	note D#, 4
	intensity $b2
	note D_, 6
	note D_, 2
	intensity $b7
	note F_, 8
	dutycycle $3
	octave 2
	callchannel Music_MAGruntBattle_Ch1_branch_3
	callchannel Music_MAGruntBattle_Ch1_branch_3
	intensity $90
	note A#, 8
	intensity $97
	note A#, 10
	intensity $92
	octave 3
	note A#, 2
	note G#, 2
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A#, 2
	note G#, 2
	intensity $80
	note D_, 8
	note D#, 8
	note F_, 8
	note F#, 8
	dutycycle $2
	intensity $a1
	callchannel Music_MAGruntBattle_Ch1_branch_4
	octave 5
	note C#, 2
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 10
	note __, 16
	callchannel Music_MAGruntBattle_Ch1_branch_4
	dutycycle $1
	intensity $87
	octave 2
	note G#, 8
	note A_, 8
	note A#, 8
	note B_, 8
	note A#, 8
	note B_, 8
	octave 3
	note C_, 8
	note C#, 8


	dutycycle $2
	intensity $84
	callchannel Music_MAGruntBattle_Ch1_branch_5
	callchannel Music_MAGruntBattle_Ch1_branch_5
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	callchannel Music_MAGruntBattle_Ch1_branch_5
	callchannel Music_MAGruntBattle_Ch1_branch_5
	callchannel Music_MAGruntBattle_Ch1_branch_5
	callchannel Music_MAGruntBattle_Ch1_branch_5
	callchannel Music_MAGruntBattle_Ch1_branch_6
	callchannel Music_MAGruntBattle_Ch1_branch_6
	callchannel Music_MAGruntBattle_Ch1_branch_6
	callchannel Music_MAGruntBattle_Ch1_branch_6
	callchannel Music_MAGruntBattle_Ch1_branch_6
	callchannel Music_MAGruntBattle_Ch1_branch_6
	dutycycle $0
	intensity $a2
	callchannel Music_MAGruntBattle_Ch1_branch_7
	intensity $a2
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 6
	intensity $a5
	note A_, 4
	callchannel Music_MAGruntBattle_Ch1_branch_7
	intensity $a2
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 2
	intensity $a7
	note A_, 8
	intensity $72
Music_MAGruntBattle_Ch1_loop_3:
	note A#, 2
	loopchannel 8, Music_MAGruntBattle_Ch1_loop_3
Music_MAGruntBattle_Ch1_loop_4:
	note F_, 2
	loopchannel 8, Music_MAGruntBattle_Ch1_loop_4
Music_MAGruntBattle_Ch1_loop_5:
	note D#, 2
	loopchannel 8, Music_MAGruntBattle_Ch1_loop_5
Music_MAGruntBattle_Ch1_loop_6:
	note D_, 2
	loopchannel 8, Music_MAGruntBattle_Ch1_loop_6
	loopchannel 0, Music_MAGruntBattle_Ch1_loop_main

Music_MAGruntBattle_Ch1_branch_1:
	octave 2
	note B_, 2
	note F#, 2
	note B_, 2
	octave 3
	note D#, 2
	note F#, 2
	note G#, 2
	note F#, 2
	note D#, 2
	endchannel
	
Music_MAGruntBattle_Ch1_branch_2:
	intensity $b2
	note D_, 6
	note D_, 6
	intensity $b5
	note D_, 4
	intensity $b2
	note D#, 6
	note D#, 6
	intensity $b5
	note D#, 4
	endchannel
	
Music_MAGruntBattle_Ch1_branch_3:
	intensity $90
	note A#, 8
	intensity $97
	note A#, 10
	intensity $92
	note A#, 2
	note G#, 2
	note A#, 2
	octave 3
	note D_, 2
	octave 2
	note B_, 2
	note A#, 2
	note G#, 2
	endchannel
	
Music_MAGruntBattle_Ch1_branch_4:
	octave 4
	note C#, 6
	note G#, 6
	octave 5
	note C#, 4
	note D_, 2
	note C#, 4
	note D_, 6
	note C#, 2
	octave 4
	note B_, 2
	endchannel
	
Music_MAGruntBattle_Ch1_branch_5:
	note A#, 2
	octave 4
	note F_, 2
	note D#, 2
	octave 3
	note B_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	note F_, 2
	note A#, 2
	octave 4
	note D#, 2
	note F_, 2
	note D#, 2
	octave 3
	note A#, 2
	note F_, 2
	endchannel
	
Music_MAGruntBattle_Ch1_branch_6:
	octave 4
	note C#, 2
	note G#, 2
	note F#, 2
	note D_, 2
	note C#, 2
	octave 3
	note G#, 2
	octave 4
	note C#, 2
	note F#, 2
	note C#, 2
	octave 3
	note G#, 2
	octave 4
	note C#, 2
	note F#, 2
	note G#, 2
	note F#, 2
	note C#, 2
	octave 3
	note G#, 2
	endchannel
	
Music_MAGruntBattle_Ch1_branch_7:
	intensity $a2
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 4
	note F_, 2
	intensity $a5
	note E_, 4
	endchannel
	
Music_MAGruntBattle_Ch2:
	vibrato $12, $24
	dutycycle $1
	notetype $6, $a7
	octave 5
	note F_, 1
	note E_, 1
	note F_, 2
	loopchannel 8, Music_MAGruntBattle_Ch2
	intensity $a2
	octave 3
	note A#, 6
	note A#, 6
	note A#, 4
	note A#, 6
	note A#, 6
	intensity $a4
	note A_, 4
	intensity $a2
	note A#, 6
	note A#, 6
	note A#, 4
	note A#, 6
	note A#, 4
	note A#, 2
	intensity $a7
	note B_, 4
	intensity $a2
	octave 5
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 6
	intensity $a4
	note F#, 4
	intensity $a2
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 4
	note F_, 2
	intensity $a7
	note F#, 4
Music_MAGruntBattle_Ch2_loop_main:
	vibrato $12, $24
	dutycycle $0
	intensity $87
	octave 4
	note F_, 6
	octave 3
	intensity $80
	note A#, 4
	intensity $87
	note A#, 8
	octave 4
	note F_, 2
	note D#, 2
	note F_, 2
	note G#, 2
	note F#, 2
	note F_, 2
	note D#, 2
	intensity $80
	note F#, 8
	intensity $87
	note F#, 8
	intensity $80
	note D#, 8
	intensity $87
	note D#, 8
	note F_, 6
	octave 3
	intensity $80
	note A#, 4
	intensity $87
	note A#, 8
	octave 4
	note F_, 2
	note D#, 2
	note F_, 2
	note G#, 2
	note A#, 2
	note B_, 2
	note A#, 2
	intensity $80
	note B_, 8
	intensity $87
	note B_, 8
	octave 5
	intensity $80
	note D#, 8
	intensity $87
	note D#, 8
	intensity $80
	note D_, 16
	intensity $87
	note D_, 16
	note __, 16
	note __, 16
	intensity $a2
	octave 4
	note A#, 6
	note A#, 6
	intensity $a5
	note A#, 4
	intensity $a2
	note B_, 6
	note B_, 6
	intensity $a5
	note B_, 4
	intensity $a2
	octave 5
	note C#, 6
	note C#, 6
	octave 4
	intensity $a5
	note B_, 4
	intensity $a2
	note A#, 6
	note A#, 2
	intensity $a7
	octave 5
	note C#, 8 ;;;;;;;;;;;;;;
	octave 3
	note D_, 6
	octave 2
	note A#, 6
	octave 3
	note D_, 4
	note D#, 6
	note F_, 6
	note G#, 4
	note F#, 10
	note G#, 2
	note F#, 2
	note D#, 2
	note F_, 8
	note F_, 8
	note D_, 6
	octave 2
	note A#, 6
	octave 3
	note D_, 4
	note D#, 6
	note F#, 6
	note D#, 4
	octave 2
	note F#, 8
	note G#, 8
	note A#, 8
	note B_, 8
	intensity $b0
	octave 3
	note C#, 8
	intensity $b7
	note C#, 10
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note F_, 2
	note D_, 2
	note C#, 2
	octave 2
	note B_, 2
	intensity $b0
	octave 3
	note C#, 8
	intensity $b7
	note C#, 10
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note F_, 2
	note D_, 2
	note G#, 2
	note F_, 2
	intensity $b0
	octave 3
	note C#, 8
	intensity $b7
	note C#, 10
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note E_, 2
	note D_, 2
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 8
	note D_, 8
	note D#, 8
	note E_, 8
	note D#, 8
	note E_, 8
	note F_, 8
	note F#, 8
	dutycycle $c4
	octave 4
	note G#, 16
	note __, 14
	note A_, 2
	note A#, 16
	note __, 16
	dutycycle $2
	intensity $84
	callchannel Music_MAGruntBattle_Ch1_branch_6
	callchannel Music_MAGruntBattle_Ch1_branch_6
	vibrato $0, $33
	dutycycle $0
	intensity $b0
	callchannel Music_MAGruntBattle_Ch2_branch_1
	note F_, 6
	note A#, 6
	octave 4
	note D_, 4
	octave 3
	note B_, 6
	octave 4
	note C#, 6
	octave 3
	note B_, 4
	note A#, 10
	note B_, 2
	note A#, 2
	note B_, 2
	octave 4
	note C#, 8
	intensity $b7
	note C#, 8
	pitchoffset 0, D#
	callchannel Music_MAGruntBattle_Ch2_branch_1
	pitchoffset 0, C_
	octave 3
	note G#, 6
	octave 4
	note C#, 6
	note E_, 4
	note D_, 6
	note E_, 6
	note F#, 4
	note F_, 10
	note F#, 2
	note F_, 2
	note F#, 2
	note G#, 8
	intensity $b7
	note G#, 8
	vibrato $12, $24
	dutycycle $3
	intensity $90
	octave 3
	note C#, 8
	intensity $97
	note C#, 8
	intensity $a0
	note F_, 8
	intensity $a7
	note F_, 8
	intensity $b0
	note G#, 8
	intensity $b7
	note G#, 8
	intensity $c0
	note B_, 8
	intensity $c7
	note B_, 8
	intensity $b2
	octave 4
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 4
	note F_, 2
	intensity $b5
	note F#, 4
	intensity $b2
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 6
	intensity $b5
	note F#, 4
	intensity $b2
	note F_, 6
	note F_, 6
	note F_, 4
;Bar 155
	note F_, 6
	note F_, 4
	note F_, 2
	intensity $b5
	note E_, 4
;Bar 157
	intensity $b2
	note F_, 6
	note F_, 6
	note F_, 4
	note F_, 6
	note F_, 2
	intensity $b7
	note A_, 8
	intensity $b0
	note A#, 16
	intensity $b7
	note A#, 16
	intensity $70
	octave 2
	note A#, 16
	intensity $77
	note A#, 16
	loopchannel 0, Music_MAGruntBattle_Ch2_loop_main
	
Music_MAGruntBattle_Ch2_branch_1:
	intensity $b0
	octave 3
	note A#, 6
	note F_, 6
	note A#, 4
	note B_, 6
	octave 4
	note C#, 6
	note D#, 4
	note D_, 10
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note A#, 8
	intensity $b7
	note A#, 8
	intensity $b0
	endchannel
	

Music_MAGruntBattle_Ch3:
	notetype $6, $19
	note __, 2
	octave 2
	note A#, 2
	note __, 2
	note A_, 2
	note __, 2
	note G#, 2
	note __, 2
	note F_, 2
	octave 1
	note A#, 8
	note B_, 8
	callchannel Music_MAGruntBattle_Ch3_branch_1
	callchannel Music_MAGruntBattle_Ch3_branch_1
Music_MAGruntBattle_Ch3_loop_main:
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_3
	callchannel Music_MAGruntBattle_Ch3_branch_3
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_3
	callchannel Music_MAGruntBattle_Ch3_branch_3
	callchannel Music_MAGruntBattle_Ch3_branch_4
	callchannel Music_MAGruntBattle_Ch3_branch_5
	callchannel Music_MAGruntBattle_Ch3_branch_6
	callchannel Music_MAGruntBattle_Ch3_branch_5
	callchannel Music_MAGruntBattle_Ch3_branch_4
	callchannel Music_MAGruntBattle_Ch3_branch_5
	callchannel Music_MAGruntBattle_Ch3_branch_6
	callchannel Music_MAGruntBattle_Ch3_branch_5
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_2
	callchannel Music_MAGruntBattle_Ch3_branch_2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	note F#, 2
	note D#, 2
	octave 1
	note F#, 2
	octave 2
	note D_, 2
	octave 1
	note F#, 2
	octave 2
	note D_, 2
	octave 1
	note G#, 2
	octave 2
	note D#, 2
	octave 1
	note G#, 2
	octave 2
	note D#, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2 ;;;;;;;;;;;;;
Music_MAGruntBattle_Ch3_loop_1:
	note C#, 2
	note G#, 2
	note C#, 2
	note G#, 2
	loopchannel 20, Music_MAGruntBattle_Ch3_loop_1
	callchannel Music_MAGruntBattle_Ch3_branch_1
	callchannel Music_MAGruntBattle_Ch3_branch_7
	callchannel Music_MAGruntBattle_Ch3_branch_8
	callchannel Music_MAGruntBattle_Ch3_branch_7
	callchannel Music_MAGruntBattle_Ch3_branch_9
	callchannel Music_MAGruntBattle_Ch3_branch_1
	callchannel Music_MAGruntBattle_Ch3_branch_1
Music_MAGruntBattle_Ch3_loop_2:
	callchannel Music_MAGruntBattle_Ch3_branch_7
	callchannel Music_MAGruntBattle_Ch3_branch_8
	callchannel Music_MAGruntBattle_Ch3_branch_7
	callchannel Music_MAGruntBattle_Ch3_branch_9
	loopchannel 4, Music_MAGruntBattle_Ch3_loop_2
	callchannel Music_MAGruntBattle_Ch3_branch_7
	callchannel Music_MAGruntBattle_Ch3_branch_8
	callchannel Music_MAGruntBattle_Ch3_branch_7
	note C#, 2
	octave 1
	note G#, 2
	octave 2
	note C#, 2
	note F#, 2
	note G#, 2
	octave 1
	note B_, 2
	octave 2
	note C#, 2
	octave 1
	note B_, 2
	callchannel Music_MAGruntBattle_Ch3_branch_1
	loopchannel 0, Music_MAGruntBattle_Ch3_loop_main
	
Music_MAGruntBattle_Ch3_branch_1:
	octave 1
	note A#, 2
	note F_, 2
	note A#, 2
	octave 2
	note C#, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note C#, 2
	octave 1
	note A#, 2
	note F_, 2
	note A#, 2
	octave 2
	note C#, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note F_, 2
	octave 1
	note A#, 2
	note F_, 2
	note A#, 2
	octave 2
	note C#, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note C#, 2
	octave 1
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note B_, 2
	octave 2
	note E_, 2
	note D#, 2
	octave 1
	note G#, 2
	endchannel

Music_MAGruntBattle_Ch3_branch_2:
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	endchannel
	
Music_MAGruntBattle_Ch3_branch_3:
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	endchannel
	
Music_MAGruntBattle_Ch3_branch_4:
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note D_, 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	endchannel
	
Music_MAGruntBattle_Ch3_branch_5:
	octave 1
	note A#, 2
	octave 2
	note D#, 2
	note F#, 2
	octave 1
	note A#, 2
	octave 2
	note D#, 2
	note F#, 2
	octave 1
	note A#, 2
	octave 2
	note F#, 2
	endchannel
	
Music_MAGruntBattle_Ch3_branch_6:
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	note G#, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	note G#, 2
	note F_, 2
	note G#, 2
	endchannel
	
Music_MAGruntBattle_Ch3_branch_7:
	octave 2
	note C#, 2
	octave 1
	note G#, 2
	octave 2
	note C#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	endchannel
	
Music_MAGruntBattle_Ch3_branch_8:
	note C#, 2
	octave 1
	note G#, 2
	octave 2
	note C#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note G#, 2
	endchannel
	
Music_MAGruntBattle_Ch3_branch_9:
	note C#, 2
	octave 1
	note G#, 2
	octave 2
	note C#, 2
	octave 1
	note G#, 2
	octave 2
	note D_, 2
	note G_, 2
	note F#, 2
	octave 1
	note B_, 2
	endchannel
	
Music_MAGruntBattle_Ch4:
	togglenoise $3
	notetype $c
	note B_, 8
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 1
	note C_, 1
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_2
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_1
Music_MAGruntBattle_Ch4_loop_main:
	callchannel Music_MAGruntBattle_Ch4_branch_2
	callchannel Music_MAGruntBattle_Ch4_branch_2
	callchannel Music_MAGruntBattle_Ch4_branch_2
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_3
	callchannel Music_MAGruntBattle_Ch4_branch_3
	callchannel Music_MAGruntBattle_Ch4_branch_3
	callchannel Music_MAGruntBattle_Ch4_branch_4
	note B_, 16
	note __, 16
	note __, 16
	note __, 10
	note C_, 2
	note C_, 2
	note C_, 1
	note C_, 1
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_2
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_5
	callchannel Music_MAGruntBattle_Ch4_branch_5
	callchannel Music_MAGruntBattle_Ch4_branch_6
	callchannel Music_MAGruntBattle_Ch4_branch_6
	callchannel Music_MAGruntBattle_Ch4_branch_6
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 1
	note C_, 2
	note C_, 1
	callchannel Music_MAGruntBattle_Ch4_branch_6
	callchannel Music_MAGruntBattle_Ch4_branch_7
	callchannel Music_MAGruntBattle_Ch4_branch_6
	callchannel Music_MAGruntBattle_Ch4_branch_7
	callchannel Music_MAGruntBattle_Ch4_branch_4
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_4
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_6
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 1
	note C_, 1
	note D#, 2
	note C_, 1
	note C_, 1
	callchannel Music_MAGruntBattle_Ch4_branch_1
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 1
	note D#, 3
	note C_, 1
	note C_, 1
	callchannel Music_MAGruntBattle_Ch4_branch_1
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 1
	note D#, 2
	note C_, 1
	note C_, 1
	note C_, 1
	callchannel Music_MAGruntBattle_Ch4_branch_1
	callchannel Music_MAGruntBattle_Ch4_branch_1
	loopchannel 0, Music_MAGruntBattle_Ch4_loop_main
	
Music_MAGruntBattle_Ch4_branch_1:
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 1
	note D#, 2
	note D#, 1
	note C_, 2
	endchannel
	
Music_MAGruntBattle_Ch4_branch_2:
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 1
	note D#, 1
	note C_, 2
	endchannel
	
Music_MAGruntBattle_Ch4_branch_3:
	note D#, 2
	note C_, 1
	note D#, 2
	note D#, 1
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 1
	note D#, 1
	note C_, 2
	endchannel
	
Music_MAGruntBattle_Ch4_branch_4:
	note D#, 2
	note C_, 1
	note D#, 2
	note D#, 1
	note C_, 2
	note D#, 2
	note C_, 1
	note D#, 2
	note D#, 1
	note C_, 2
	endchannel
	
Music_MAGruntBattle_Ch4_branch_5:
	note D#, 2
	note C_, 2
	note D#, 1
	note D#, 1
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 1
	note D#, 1
	note C_, 2
	endchannel
	
Music_MAGruntBattle_Ch4_branch_6:
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	endchannel
	
Music_MAGruntBattle_Ch4_branch_7:
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note C_, 1
	note C_, 1
	endchannel
