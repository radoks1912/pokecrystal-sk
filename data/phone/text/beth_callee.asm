BethAnswerPhoneText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAY_G>." ; para "Oh, <PLAY_G>."
	line "Dobre rano." ; line "Good morning."

	para ""
	done

BethAnswerPhoneDayText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh. Cau, <PLAY_G>." ; para "Oh. Hi, <PLAY_G>."
	done

BethAnswerPhoneNiteText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAY_G>." ; para "Oh, <PLAY_G>."
	line "Dobry vecer." ; line "Good evening."
	done

BethGreetText:
	text "Dobre rano," ; text "Good morning,"
	line "<PLAY_G>!" ; line "<PLAY_G>!"

	para "Tu je @" ; para "This is @"
	text_ram wStringBuffer3
	text "."
	line "Spal si?" ; line "Were you sleeping?"
	done

BethGreetDayText:
	text "<PLAY_G>, ahoj!" ; text "<PLAY_G>, hi!"
	line "Tu je @" ; line "This is @"
	text_ram wStringBuffer3
	text "."

	para "Mas chvilocku" ; para "Do you have some"
	line "cas?" ; line "time?"
	done

BethGreetNiteText:
	text "Ahoj, <PLAY_G>." ; text "Hi, <PLAY_G>."
	line "Dobry vecer." ; line "Good evening."

	para "Tu je @" ; para "This is @"
	text_ram wStringBuffer3 ; text_ram wStringBuffer3
	text "."

	para "Dufam ze si" ; para "I hope you were"
	line "este hore." ; line "awake."
	done

BethGenericText:
	text "Si ten typ" ; text "Are you the kind"
	line "cloveka, co chodi" ; line "of person who goes"

	para "do #MON CENTERS" ; para "to #MON CENTERS"
	line "casto?" ; line "often?"

	para "Ja chodim kazdy" ; para "I go every day."
	line "den. Dbaj na" ; line "Watching out for"

	para "zdravie svojich" ; para "the health of your"
	line "#MON, je to" ; line "#MON is a basic"

	para "bezna povinnost" ; para "part of being a"
	line "#MON trenera." ; line "#MON trainer."
	done
