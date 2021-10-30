ErinAnswerPhoneText:
	text "Ano, tu je" ; text "Yes, this is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Ahoj, <PLAY_G>!" ; para "Oh. Hi, <PLAY_G>!"
	line "Dobre rano!" ; line "Good morning!"
	done

ErinAnswerPhoneDayText:
	text "Ano, tu je" ; text "Yes, this is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Ahoj, <PLAY_G>!" ; para "Oh, hi, <PLAY_G>!"
	line "Jupi!" ; line "Yahoo!"
	done

ErinAnswerPhoneNiteText:
	text "Ano, tu je" ; text "Yes, this is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Ahoj, <PLAY_G>!" ; para "Oh, hi, <PLAY_G>!"
	done

ErinGreetText:
	text "<PLAY_G>!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Dobre rano!" ; line "Good morning!"
	done

ErinGreetDayText:
	text "<PLAY_G>!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Pracujes tvrdo?" ; line "Working hard?"
	done

ErinGreetNiteText:
	text "<PLAY_G>!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Si hore?" ; line "Were you up?"
	done

ErinGenericText:
	text "Vychovavas svojich" ; text "Are you raising"
	line "#MONov?" ; line "your #MON?"

	para "Hej, @" ; para "Hey, @"
	text_ram wStringBuffer3
	;text "'s" ; text "'s"
	line "@"
	text_ram wStringBuffer4
	text " vypada" ; text " is"
	cont "dobre!" ; cont "looking good!"
	done
