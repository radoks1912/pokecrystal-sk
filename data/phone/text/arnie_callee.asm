ArnieAnswerPhoneText:
	text "Ano, ahoj." ; text "Yeah, hello."
	line "Tu je @" ; line "This is @"
	text_ram wStringBuffer3
	text "."

	para "…Hm, <PLAY_G>? Jou!" ; para "…Huh, <PLAY_G>? Yo!"
	done

ArnieAnswerPhoneDayText: ; ArnieAnswerPhoneDayText:
	text "Ano, cau," ; text "Yeah, hello, you"
	line "tuto @" ; line "got @"
	text_ram wStringBuffer3
	text "."

	para "…Hm, <PLAY_G>? Jou!" ; para "…Huh, <PLAY_G>? Yo!"
	done

ArnieAnswerPhoneNiteText:
	text "Ano, ahoj," ; text "Yeah, hello, you"
	line "tu @" ; line "got @"
	text_ram wStringBuffer3
	text "."

	para "…Hm, <PLAY_G>? Jou!" ; para "…Huh, <PLAY_G>? Yo!"
	done

ArnieGreetText:
	text "Ano, halo?" ; text "Yeah, hello?"
	line "@"
	text_ram wStringBuffer3
	text " vola." ; text " calling."

	para "Ako to ide" ; para "What are you up"
	line "<PLAY_G>?" ; line "to, <PLAY_G>?"
	done

ArnieGreetDayText:
	text "Ano, halo?" ; text "Yeah, hello?"
	line "@"
	text_ram wStringBuffer3
	text " vola." ; text " calling."

	para "Kde si," ; para "Where are you now,"
	line "<PLAY_G>?" ; line "<PLAY_G>?"
	done

ArnieGreetNiteText:
	text "Ano, halo?" ; text "Yeah, hello?"
	line "@"
	text_ram wStringBuffer3
	text " vola." ; text " calling."

	para "si hore," ; para "Are you awake now,"
	line "<PLAY_G>?" ; line "<PLAY_G>?"
	done

ArnieGenericText:
	text "Stavim sa, ze" ; text "I bet your #MON"
	line "tvoji #MON su" ; line "are a lot stronger"
	cont "o dost silnejsi." ; cont "than before."
	done
