_IndigoPlateauLobbyText2::
	text "Yo! Champ in"
	line "making!"

	para "At #MON LEAGUE,"
	line "you have to face"
	cont "the ELITE FOUR in"
	cont "succession."

	para "If you lose, you"
	line "have to start all"
	cont "over again! This"
	cont "is it! Go for it!"
	done

_IndigoPlateauLobbyText3::
	text "From here on, you"
	line "face the ELITE"
	cont "FOUR one by one!"

	para "If you win, a"
	line "door opens to the"
	cont "next trainer!"
	cont "Good luck!"
	done

; NUEVO PARA RANDOM TRAINER

_RandTrainerNotReady::
	text "Welcome to my" 
	line "Shoddy Battle"
	cont "Tower."
	
	para "I'm sorry, but" 
	line "we're still" 
	cont "making" 
	cont "preparations."
	
	para "Come back when" 
	line "you're a League"
	cont "Champion. LOL!"
	done

_RandTrainerIntro::
	text "Welcome to my" 
	line "Shoddy Battle"
	cont "Tower."
	
	para "My PC will"
	line "create a trainer" 
	cont "randomly with" 
	cont "six Pokemon."
	
	para "If you manage" 
	line "to win, you will" 
	cont "get a rare item."

    para "All strategies" 
	line "are allowed."
	done
	
_RandTrainerChallenge::
	text "Do you want to"
	line "join?"
	done
	
_RandTrainerBye::
	text "You're a" 
	line "coward, huh?"
	done
	
_RandTrainerPre::
	text "STARTING BATTLE!"
	done
	
_RandTrainerPost::
	text "YOU"
	line "WINS!"
	cont "BATTLE OVER!"
	prompt

_RandTrainerPostWin::
	text "YOU"
	line "ARE A"
	cont "LOOSER!"
	cont "BATTLE OVER!"
	prompt
	
_RandTrainerFinish::
	text "Congratulations"
	line "You have won"
	cont "the battle"
	
	para "I hope you"
	line "participate"
	cont "again."
	
	para "Here you have" 
	line "the reward."
	done

_RandTrainerItemObtenido::
  text "You've won @"
  TX_NUM wBadgeNameTile,$1,$3
  db $0
  line "@"
  TX_RAM wcf4b
  text "!@@"

_RandTrainerMochilaLlena::
	text "Ouch!!" 
	line "You don't have" 
	cont "space for" 
	cont "this item!"
	
	para "So you're left" 
	line "without that."
	done
; NUEVO PARA RANDOM TRAINER

