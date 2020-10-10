Music_Contra:
	musicheader 4, 1, Music_Contra_Ch1
	musicheader 1, 2, Music_Contra_Ch2
	musicheader 1, 3, Music_Contra_Ch3
	musicheader 1, 4, Music_Contra_Ch4

Music_Contra_Ch1:
	tempo $78
	volume $77
	stereopanning $77
	notetype $C, $00
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	dutycycle 1
	intensity $F3
	vibrato $00, $13

;segment 1	
	callchannel Music_Contra_Ch1_ditty1
	callchannel Music_Contra_Ch1_ditty2
;segment 2	
	callchannel Music_Contra_Ch1_ditty3
	

Music_Contra_Ch1_loop:

;segment 3
	callchannel Music_Contra_Ch1_ditty4
	callchannel Music_Contra_Ch1_ditty5
	
;segment 1	
	callchannel Music_Contra_Ch1_ditty1
	callchannel Music_Contra_Ch1_ditty2
	
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	
;segment 3
	callchannel Music_Contra_Ch1_ditty4
	callchannel Music_Contra_Ch1_ditty5
	
;segment 1	
	callchannel Music_Contra_Ch1_ditty1
	callchannel Music_Contra_Ch1_ditty2
	
;segment 2	
	callchannel Music_Contra_Ch1_ditty3
	
	note __, 16
	note __, 16
	intensity $68
	note A#, 16
	note A#, 16
	intensity $F1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note C_, 2
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note C_, 2
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note C_, 2
	note D#, 1
	note C_, 1
	note C_, 1
	octave 4
	note A#, 1
	note A#, 1
	octave 5
	note C_, 1
	note C_, 2
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note C_, 2
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note C_, 2
	note F_, 1
	note C_, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note D#, 1
	note D_, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	octave 3
	note A#, 1
	intensity $F3
	octave 4
	note C_, 4
	intensity $F1
	note A_, 2
	note A_, 2
	note C_, 2
	note A_, 2
	note __, 2
	note A_, 2
	intensity $F4
	note A#, 8
	note __, 8
	intensity $F1
	octave 5
	note C_, 1
	octave 4
	note G_, 1
	note G#, 1
	note D#, 1
	intensity $F3
	note F_, 4
	intensity $F1
	note A#, 1
	octave 5
	note C_, 1
	note C#, 1
	note D#, 1
	intensity $F3
	note F_, 4
	intensity $F1
	note G#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note A#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note G#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note A#, 1
	note F_, 1
	note D#, 1
	note F_, 1
	intensity $F7
	note G#, 16
	
; doesn't change for awhile
	intensity $F1
	
Music_Contra_Ch1_sprinkle_loop1:	
	note F_, 1
	note C#, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	loopchannel 8, Music_Contra_Ch1_sprinkle_loop1

Music_Contra_Ch1_sprinkle_loop2:
	note E_, 1
	note C#, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	loopchannel 4, Music_Contra_Ch1_sprinkle_loop2

Music_Contra_Ch1_sprinkle_loop3:
	note G#, 1
	loopchannel 8, Music_Contra_Ch1_sprinkle_loop3
	
Music_Contra_Ch1_sprinkle_loop4:
	note A#, 1
	loopchannel 8, Music_Contra_Ch1_sprinkle_loop4
	
Music_Contra_Ch1_sprinkle_loop5:
	octave 6
	note C_, 1
	octave 5
	note F_, 1
	note G_, 1
	note G#, 1
	loopchannel 4, Music_Contra_Ch1_sprinkle_loop5

Music_Contra_Ch1_sprinkle_loop6:
	octave 5
	note B_, 1
	note F_, 1
	note G_, 1
	note G#, 1
	loopchannel 4, Music_Contra_Ch1_sprinkle_loop6

Music_Contra_Ch1_sprinkle_loop7:
	octave 5
	note A#, 1
	note F_, 1
	note G_, 1
	note G#, 1
	loopchannel 4, Music_Contra_Ch1_sprinkle_loop7

; descending sprinkles
	note G#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note D#, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note A#, 1
	note G#, 1
	note G_, 1
	note D#, 1
;hold	
	intensity $68
	note C#, 16
	note C#, 16
	note C#, 16
	note C#, 16
	intensity $F1
	
Music_Contra_Ch1_sprinkle_loop8:
	note G#, 1
	note E_, 1
	note F_, 1
	note G_, 1
	loopchannel 16, Music_Contra_Ch1_sprinkle_loop8
	
	note G_, 1
	note A#, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note D#, 1
	note F_, 1
	note C_, 1
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note G#, 1
	note A#, 1
	octave 5
	note C_, 1
	note C#, 1
	note F_, 1
	note D#, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note A#, 1
	octave 5
	note C_, 1
	note C#, 1
	note D#, 1
	note F_, 1
	note G_, 1
	note G#, 1
	note A#, 1
	intensity $F5
	octave 6
	note C_, 8
	intensity $F3
	octave 5
	note A#, 4
	note G_, 1
	note G#, 1
	note G_, 2
	note F_, 2
	note D#, 2
	note F_, 2
	note G_, 2
	note G#, 2
	note G_, 2
	note F_, 2
	note D#, 2
	intensity $F7
	note F_, 16
	
	intensity $F1
	
Music_Contra_Ch1_sprinkle_loop9:
	note D#, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	note F_, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	loopchannel 2, Music_Contra_Ch1_sprinkle_loop9

Music_Contra_Ch1_sprinkle_loop10:
	note A#, 1
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	octave 6
	note C_, 1
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	octave 5
	note C_, 1
	loopchannel 2, Music_Contra_Ch1_sprinkle_loop10

;ascending sprinkle	
	octave 3
	note G#, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note B_, 1
	octave 5
	note C#, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note A_, 1
	note F#, 1
	note G#, 1
	note A_, 1
; hold	
	intensity $68
	note B_, 16
	note B_, 16
	note B_, 16
; descending sprinkle	
	intensity $F1
	note A#, 1
	note G#, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note C#, 1
	octave 4
	note A#, 1
	note G#, 1
	note A#, 1
	note F_, 1
	note F#, 1
	note F_, 1
	loopchannel 0, Music_Contra_Ch1_loop
	
Music_Contra_Ch1_ditty1:
	intensity $F3
	note __, 4
	octave 4
	note D#, 2
	note __, 2
	note F#, 3
	note F_, 3
	note D#, 2
	loopchannel 3, Music_Contra_Ch1_ditty1
	endchannel
	
Music_Contra_Ch1_ditty2:
	intensity $F3
	note __, 4
	octave 4
	note D#, 2
	note __, 2
	note F_, 3
	note F#, 3
	note G_, 2
	endchannel
	
Music_Contra_Ch1_ditty3:
	intensity $F3
	note __, 8
	note D#, 2
	note D#, 2
	note F_, 2
	note __, 10
	note F#, 2
	note F#, 2
	note G#, 2
	note __, 10
	note A#, 2
	note A#, 2
	octave 5
	note C_, 2
	note __, 10
	intensity $F1
	note C#, 1
	note C#, 1
	note __, 2
	note D#, 1
	note D#, 1
	note __, 2
	endchannel
	
Music_Contra_Ch1_ditty4:
	intensity $F3
	octave 4
	note __, 4
	note C#, 2
	note __, 2
	note E_, 3
	note D#, 3
	note C#, 2
	loopchannel 3, Music_Contra_Ch1_ditty4
	endchannel
	
Music_Contra_Ch1_ditty5:
	intensity $F3
	octave 4
	note __, 4
	note C#, 2
	note __, 2
	note D#, 3
	note E_, 3
	note F_, 2
	endchannel
	
Music_Contra_Ch2:
	dutycycle 1
	vibrato $00, $13
	notetype $C, $F3

;segment 1	
	callchannel Music_Contra_Ch2_ditty1
	callchannel Music_Contra_Ch2_ditty2
;segment 2	
	callchannel Music_Contra_Ch2_ditty3
	callchannel Music_Contra_Ch2_ditty4
;segment 3	
	callchannel Music_Contra_Ch2_ditty5

Music_Contra_Ch2_loop:
;segment 1	
	callchannel Music_Contra_Ch2_ditty1
	callchannel Music_Contra_Ch2_ditty2
	
;segment 2	
	callchannel Music_Contra_Ch2_ditty3
	callchannel Music_Contra_Ch2_ditty4
	
;segment 4
	callchannel Music_Contra_Ch2_ditty6
	callchannel Music_Contra_Ch2_ditty7

;segment 1	
	callchannel Music_Contra_Ch2_ditty1
	callchannel Music_Contra_Ch2_ditty2
;segment 2	
	callchannel Music_Contra_Ch2_ditty3
	callchannel Music_Contra_Ch2_ditty4
;segment 3	
	callchannel Music_Contra_Ch2_ditty5

	intensity $68
	octave 4
	note A#, 16
	note A#, 16
	note A#, 16
	note A#, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	intensity $F1
	note G#, 1
	note D#, 1
	note F_, 1
	note C_, 1
	intensity $F3
	note C#, 4
	intensity $F1
	note G_, 1
	note G#, 1
	note A#, 1
	octave 5
	note C_, 1
	intensity $F3
	note C#, 4
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	intensity $F1
	note F_, 1
	note D#, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C_, 1
	octave 4
	note A#, 1
	note G#, 1
	note A#, 1
	note G#, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note C_, 1
	intensity $F7
	note F_, 16
	note E_, 16
	note D#, 16
	note E_, 16
	note __, 16
	note __, 16
	
Music_Contra_Ch2_sprinkle1:
	intensity $F1
	octave 5
	note C#, 1
	octave 4
	note A_, 1
	note A#, 1
	octave 5
	note C_, 1
	loopchannel 8, Music_Contra_Ch2_sprinkle1
	
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	
Music_Contra_Ch2_sprinkle2:
	note G_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note G#, 1
	note D#, 1
	note C#, 1
	note D#, 1
	loopchannel 4, Music_Contra_Ch2_sprinkle2

	note __, 16
	note __, 16
	intensity $F7
	octave 6
	note C_, 16
	octave 5
	note A#, 16
	note B_, 16
	intensity $F1
	octave 6
	note C#, 1
	note C_, 1
	octave 5
	note A#, 1
	note G#, 1
	note A#, 1
	note G#, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note D#, 1
	note C_, 1
	note C#, 1
	octave 4
	note G#, 1
	note A#, 1
	note G#, 1
	loopchannel 0, Music_Contra_Ch2_loop

Music_Contra_Ch2_ditty1:
	intensity $F3
	octave 2
	note A#, 2
	note A#, 2
	octave 3
	note C#, 2
	octave 2
	note A#, 2
	octave 3
	note E_, 3
	note D#, 3
	note C#, 2
	loopchannel 3, Music_Contra_Ch2_ditty1
	endchannel

Music_Contra_Ch2_ditty2:
	intensity $F3
	octave 2
	note A#, 2
	note A#, 2
	octave 3
	note C#, 2
	octave 2
	note A#, 2
	octave 3
	note D#, 3
	note E_, 3
	note F_, 2
	endchannel

Music_Contra_Ch2_ditty3:
	intensity $F3
	octave 3
	note C_, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note F#, 3
	note F_, 3
	note D#, 2
	loopchannel 3, Music_Contra_Ch2_ditty3
	endchannel
	
Music_Contra_Ch2_ditty4:
	intensity $F3
	octave 3
	note C_, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note F_, 3
	note F#, 3
	note G_, 2
	endchannel
	
Music_Contra_Ch2_ditty5:
	intensity $F3
	octave 3
	note F#, 3
	note F_, 5
	note __, 8
	note D#, 3
	note F_, 5
	note __, 8
	note F#, 3
	note F_, 5
	note __, 8
	note D#, 3
	note F_, 5
	note __, 8
	endchannel

Music_Contra_Ch2_ditty6:	
	octave 2
	note C#, 4
	octave 1
	note A#, 4
	octave 2
	note D_, 4
	octave 1
	note A#, 4
	loopchannel 4, Music_Contra_Ch2_ditty6
	endchannel
	
Music_Contra_Ch2_ditty7:
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note D_, 2
	note D_, 2
	octave 1
	note A#, 2
	note A#, 2
	loopchannel 4, Music_Contra_Ch2_ditty7
	endchannel
	
Music_Contra_Ch3:
	notetype $C, $17
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	dutycycle 7
	octave 2
;segment 1
	callchannel Music_Contra_Ch3_ditty1
	callchannel Music_Contra_Ch3_ditty2
;segment 2	
	callchannel Music_Contra_Ch3_ditty3

Music_Contra_Ch3_loop:
;segment 3
	callchannel Music_Contra_Ch3_ditty4
	callchannel Music_Contra_Ch3_ditty5
;segment 1
	callchannel Music_Contra_Ch3_ditty1
	callchannel Music_Contra_Ch3_ditty2
;segment 4	
	callchannel Music_Contra_Ch3_ditty6
	callchannel Music_Contra_Ch3_ditty6
;segment 5
	callchannel Music_Contra_Ch3_ditty7
	callchannel Music_Contra_Ch3_ditty7
;segment 3
	callchannel Music_Contra_Ch3_ditty4
	callchannel Music_Contra_Ch3_ditty5
;segment 1
	callchannel Music_Contra_Ch3_ditty1
	callchannel Music_Contra_Ch3_ditty2
;segment 2	
	callchannel Music_Contra_Ch3_ditty3
;short 4 and 5	
	callchannel Music_Contra_Ch3_ditty6
	callchannel Music_Contra_Ch3_ditty7
;segment 1
	callchannel Music_Contra_Ch3_ditty1
	callchannel Music_Contra_Ch3_ditty2
;segment 2	
	callchannel Music_Contra_Ch3_ditty3
;segment 3
	callchannel Music_Contra_Ch3_ditty4
	callchannel Music_Contra_Ch3_ditty5
;segment 1
	callchannel Music_Contra_Ch3_ditty1
	callchannel Music_Contra_Ch3_ditty2
;segment 4	
	callchannel Music_Contra_Ch3_ditty6
	callchannel Music_Contra_Ch3_ditty6
;segment 5
	callchannel Music_Contra_Ch3_ditty7
	callchannel Music_Contra_Ch3_ditty7
;segment 3
	callchannel Music_Contra_Ch3_ditty4
	callchannel Music_Contra_Ch3_ditty5
;segment 1
	callchannel Music_Contra_Ch3_ditty1
	callchannel Music_Contra_Ch3_ditty2
;segment 2	
	callchannel Music_Contra_Ch3_ditty3
	note __, 16
	loopchannel 0, Music_Contra_Ch3_loop

Music_Contra_Ch3_ditty1:	
	octave 2
	note C_, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note F#, 2
	note C_, 1
	note F_, 2
	note C_, 1
	note D#, 2
	loopchannel 3, Music_Contra_Ch3_ditty1
	endchannel
	
Music_Contra_Ch3_ditty2:
	octave 2
	note C_, 2
	note C_, 2
	note D#, 2
	note C_, 2
	note F_, 2
	note C_, 1
	note F#, 2
	note C_, 1
	note G_, 2
	endchannel
	
Music_Contra_Ch3_ditty3:
	octave 2
	note F#, 3	
	note F_, 5
	note __, 8
	note D#, 3
	note F_, 5
	note __, 8
	note F#, 3
	note F_, 5
	note __, 8
	note D#, 3
	note F_, 5
	note __, 8
	endchannel
	
Music_Contra_Ch3_ditty4:
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note C#, 2
	octave 1
	note A#, 2
	octave 2
	note E_, 2
	octave 1
	note A#, 1
	octave 2
	note D#, 2
	octave 1
	note A#, 1
	octave 2
	note C#, 2
	loopchannel 3, Music_Contra_Ch3_ditty4
	endchannel
	
Music_Contra_Ch3_ditty5:
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note C#, 2
	octave 1
	note A#, 2
	octave 2
	note D#, 2
	octave 1
	note A#, 1
	octave 2
	note E_, 2
	octave 1
	note A#, 1
	octave 2
	note F_, 2
	endchannel

Music_Contra_Ch3_ditty6:
	octave 2
	note C#, 4
	octave 1
	note A#, 4
	octave 2
	note D_, 4
	octave 1
	note A#, 4
	loopchannel 2, Music_Contra_Ch3_ditty6
	endchannel
	
Music_Contra_Ch3_ditty7:
	octave 2
	note C#, 2
	note C#, 2
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note D_, 2
	note D_, 2
	octave 1
	note A#, 2
	note A#, 2
	loopchannel 2, Music_Contra_Ch3_ditty7
	endchannel
	
Music_Contra_Ch4:
	notetype $C
	note __, 16
	note __, 16
	note __, 16
	note __, 8
	togglenoise 5
	
	callchannel Music_Contra_Ch4_drumroll1
	
	note G#, 2
	
	callchannel Music_Contra_Ch4_drumloop1
	
	callchannel Music_Contra_Ch4_drumloop1
	
	callchannel Music_Contra_Ch4_drumloop1
	
	note B_, 2
	note A_, 2
	note __, 2
	
	callchannel Music_Contra_Ch4_drumroll1

Music_Contra_Ch4_drumloop2:
	note B_, 2
	note __, 1
	note B_, 2
	note __, 1
	note A_, 1
	note A_, 1
	note B_, 2
	note B_, 2
	note A_, 2
	note B_, 2
	loopchannel 3, Music_Contra_Ch4_drumloop2

	note B_, 2
	note __, 1
	note B_, 2
	note __, 1
	
	callchannel Music_Contra_Ch4_drumroll1
	
	note A_, 1
	note A_, 1
Music_Contra_Ch4_loop:
	note G#, 4
	note A_, 2
	note __, 2
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumloop1
	
	note B_, 2
	note A_, 2
	note B_, 2
	note B_, 2
	note __, 2
	note A_, 2
	note __, 2
	note B_, 2
	note B_, 2
	note A_, 2
	note __, 2
	note B_, 2
	note __, 2
	note A_, 2
	note G_, 1
	note G_, 1
	note G_, 2
	note G_, 2
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note G#, 2
	note B_, 2
	note A_, 1
	note __, 3
	
	callchannel Music_Contra_Ch4_drumloop3

	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumroll1
	
	callchannel Music_Contra_Ch4_drumloom1

	note B_, 2
	note __, 2
	
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1

	callchannel Music_Contra_Ch4_drumloom1

	note B_, 2
	note B_, 1
	note B_, 1
	note A_, 1
	note __, 1
	note A_, 1
	note A_, 1
	note G#, 4
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 3
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note G#, 2
	note B_, 2
	note A_, 1
	note __, 3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumroll1
	
	callchannel Music_Contra_Ch4_drumriff1
	
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumriff1
	
	note G_, 1
	note G_, 1
	note D#, 2
	note __, 1
	note D#, 2
	note __, 1
	note A_, 1
	note A_, 1
	note B_, 2
	note B_, 2
	note D#, 1
	note D#, 1
	note G_, 1
	note G_, 1
	note D#, 2
	note __, 1
	note D#, 2
	note __, 1
	
	callchannel Music_Contra_Ch4_drumroll1
	
	note A_, 1
	note A_, 1
	note __, 16
	note __, 16
	note __, 16
	note __, 8
	
	callchannel Music_Contra_Ch4_drumroll1
	
	note G#, 2
	note B_, 2
	note A_, 1
	note __, 3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumroll1
	
	callchannel Music_Contra_Ch4_drumriff1
	
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumriff1
	
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumriff1
	
	note B_, 2
	note D#, 2
	note __, 1
	note D#, 2
	note __, 1
	
	callchannel Music_Contra_Ch4_drumroll1
	
	note A_, 1
	note A_, 1
	note G#, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 3
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 1
	note G_, 1
	note G_, 1
	note G_, 2
	note G_, 2
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note G#, 2
	note B_, 2
	note A_, 1
	note __, 3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumroll1
	
	callchannel Music_Contra_Ch4_drumloom1

	note B_, 2
	note __, 2
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1

	callchannel Music_Contra_Ch4_drumloom1

	note B_, 2
	note B_, 1
	note B_, 1
	note A_, 1
	note __, 1
	note A_, 1
	note A_, 1
	note G#, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 3
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note A_, 1
	note A_, 1
	note A_, 1
	note G#, 2
	note B_, 2
	note A_, 1
	note __, 3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	callchannel Music_Contra_Ch4_drumloop3
	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumroll1
	
	callchannel Music_Contra_Ch4_drumriff1
	
	note B_, 2
	
	callchannel Music_Contra_Ch4_drumriff1
	
	note G_, 1
	note G_, 1
	note D#, 2
	note __, 1
	note D#, 2
	note __, 1
	note A_, 1
	note A_, 1
	note B_, 2
	note B_, 2
	note D#, 1
	note D#, 1
	note G_, 1
	note G_, 1
	note D#, 2
	note __, 1
	note D#, 2
	note __, 1
	
	callchannel Music_Contra_Ch4_drumroll1
	
	note A_, 1
	note A_, 1
	note __, 16
	loopchannel 0, Music_Contra_Ch4_loop
	
Music_Contra_Ch4_drumroll1:	
	note A_, 1
	loopchannel 8, Music_Contra_Ch4_drumroll1
	endchannel
	
Music_Contra_Ch4_drumloop1:
	note B_, 2
	note A_, 2
	note __, 2
	note B_, 2
	note __, 2
	note A_, 2
	note __, 2
	note B_, 2
	endchannel
	
Music_Contra_Ch4_drumloop3:
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 3
	endchannel
	
Music_Contra_Ch4_drumloom1:	
	note B_, 2
	note __, 2
	note A_, 1
	note __, 3
	loopchannel 7, Music_Contra_Ch4_drumloom1
	endchannel
	
Music_Contra_Ch4_drumriff1:
	note D#, 2
	note __, 1
	note D#, 2
	note __, 1
	note A_, 1
	note A_, 1
	note B_, 2
	note B_, 2
	note A_, 1
	note __, 1
	endchannel
