ChadAnswerPhoneText:
	text "Ahoj, tu" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3 ; text_ram wStringBuffer3
	text "…"

	para "Cau, <PLAY_G>!" ; para "Hi, <PLAY_G>!"
	line "Dobre rano!" ; line "Good morning!"
	done

ChadAnswerPhoneDayText:
	text "Ahoj, tu" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Cau, <PLAY_G>," ; para "Hi, <PLAY_G>, good"
	line "dobry den!" ; line "day!"
	done

ChadAnswerPhoneNiteText:
	text "Ahoj, tu" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Cau, <PLAY_G>," ; para "Hi, <PLAY_G>, good"
	line "dobry vecer!" ; line "evening!"
	done

ChadGreetText:
	text "Cau, <PLAY_G>," ; text "Hi, <PLAY_G>, good"
	line "dobre rano!" ; line "morning!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "."
	line "Ako sa mas?" ; line "How are you?"
	done

ChadGreetDayText:
	text "Cau, <PLAY_G>," ; text "Hi, <PLAY_G>, good"
	line "dobry den!" ; line "day!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "."
	line "Ako sa mas?" ; line "How are you?"
	done

ChadGreetNiteText:
	text "Cau, <PLAY_G>," ; text "Hi, <PLAY_G>, good"
	line "dobry vecer!" ; line "evening!"

	para "It's @" ; para "It's @"
	text_ram wStringBuffer3
	text "."
	line "Ako sa mas?" ; line "How are you?"
	done

ChadGenericText:
	text "Ako sa maju tvoji" ; text "How are your"
	line "#MONi?" ; line "#MON doing?"

	para "Poznas PROF.OAKa," ; para "You know PROF.OAK,"
	line "takze samozrejme," ; line "so of course your"
	cont "ze dobre!" ; cont "#MON are fine!"

	para "Moji #MONi sa" ; para "My #MON are"
	line "maju tiez dobre." ; line "doing well too."

	para "Ale snazim sa"  ;para "But then, I am"
	line "stat" ; line "trying to become a"

	para "#MON profesorom," ; para "#MON professor,"
	line "takze to nie je" ; line "so that shouldn't"
	cont "velke prekvapenie." ; cont "be a big surprise."
	done
