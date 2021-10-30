GinaAnswerPhoneText:
	text "Halo? Tu je" ; text "Hello? This is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Oh, <PLAY_G>!" ; para "Oh, <PLAY_G>!"
	line "Dobre rano!" ; line "Good morning!"
	done

GinaAnswerPhoneDayText:
	text "Halo? Tu je" ; text "Hello? This is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Oh, <PLAY_G>!" ; para "Oh, <PLAY_G>!"
	line "Ahoj, ako sa mas?" ; line "Hi, how are you?"
	done

GinaAnswerPhoneNiteText:
	text "Halo? Tu je" ; text "Hello? This is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Oh, <PLAY_G>!" ; para "Oh, <PLAY_G>!"
	line "Dobry vecer!" ; line "Good evening!"
	done

GinaGreetText:
	text "<PLAY_G>?"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "."
	line "Dobre rano!" ; line "Good morning!"
	done

GinaGreetDayText:
	text "<PLAY_G>?"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "." ; text ". Is"
	line "Mas cas?" ; line "this a bad time?"
	done

GinaGreetNiteText:
	text "<PLAY_G>?"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "."
	line "Mas sekundu?" ; line "Got time to chat?"
	done

GinaGenericText:
	text "Su tvoji #MON" ; text "Are your #MON"
	line "stale silni?" ; line "still tough?"

	para "Ja trenujem kazdy" ; para "I train every day"
	line "den s @"
	text_ram wStringBuffer4
	text "."
	done
