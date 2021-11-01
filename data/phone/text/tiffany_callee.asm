TiffanyAnswerPhoneText:
	text "Ano? Tu je" ; text "Yes? This is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAY_G>." ; para "Oh, <PLAY_G>."
	line "Dobre rano." ; line "Good morning."
	done

TiffanyAnswerPhoneDayText:
	text "Ano? Tu je" ; text "Yes? This is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAY_G>." ; para "Oh, <PLAY_G>."
	line "Ahoj." ; line "Hello."
	done

TiffanyAnswerPhoneNiteText:
	text "Ano? Tu je" ; text "Yes? This is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAY_G>," ; para "Oh, <PLAY_G>, good"
	line "dobry vecer." ; line "evening."
	done

TiffanyGreetText:
	text "Je tam <PLAY_G>?" ; text "Is this <PLAY_G>?"

	para "Dobre rano." ; para "Good morning. This"
	line "Tu je @" ; line "is @"
	text_ram wStringBuffer3
	text "."
	done

TiffanyGreetDayText:
	text "Je tam, <PLAY_G>?" ; text "Is this <PLAY_G>?"

	para "Ahoj, tu @" ; para "Hi, it's @"
	text_ram wStringBuffer3
	text "."
	done

TiffanyGreetNiteText:
	text "Je tam <PLAY_G>?" ; text "Is this <PLAY_G>?"

	para "Dobry vecer." ; para "Good evening. This"
	line "Tu je@" ; line "is @"
	text_ram wStringBuffer3
	text "."
	done

TiffanyGenericText:
	text "Ako sa maju tvoji" ; text "Are your #MON"
	line "#MONi?" ; line "doing well?"

	para "Dufam, ze ich" ; para "I hope you take"
	line "beries do #MON" ; line "them to a #MON"
	cont "CENTER kazdy den." ; cont "CENTER every day."

	para "Prilis na nich" ; para "Don't push them"
	line "netlac." ; line "too hard."

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	text " je" ; text " is"
	line "zlaty a zivy" ; line "cute and lively"

	para "pretoze ho beriem" ; para "precisely because"
	line "do" ; line "I take it to a"

	para "#MON CENTER" ; para "#MON CENTER"
	line "kazdy den."; line "every day."
	done
 