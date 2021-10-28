AlanAnswerPhoneText:
	text "Ano, je to @" ; text "Yup, it's @"
	text_ram wStringBuffer3 ; 
	text "!"

	para "Je to <PLAY_G>?" ; para "Is this <PLAY_G>?"
	line "Dobre rano!" ; line "Good morning!"
	done

AlanAnswerPhoneDayText:
	text "Ano, je to @" ; text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "Je to <PLAY_G>?" ; para "Is that <PLAY_G>?"
	done

AlanAnswerPhoneNiteText:
	text "Ano, je to @" ; text "Yup, it's @"
	text_ram wStringBuffer3
	text "!"

	para "Je to <PLAY_G>?" ; para "Is that <PLAY_G>?"
	line "Dobry vecer!" ; line "Good evening!"
	done

AlanGreetText:
	text "Ahoj, to som ja," ; text "Hello! It's me,"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlanGreetDayText:
	text "Ahoj, to som ja," ; text "Hello! It's me,"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlanGreetNiteText:
	text "Ahoj, to som ja," ; text "Hello! It's me,"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

AlanGenericText:
	text "<PLAY_G>, vycho-" ; text "<PLAY_G>, are you"
	line "vavas svojich" ; line "raising your"
	cont "#MON poriadne?" ; cont "#MON properly?"

	para "Cital som, ze" ; para "I read in a book"
	line "musis chytenych" ; line "that you should"

	para "#MON vychovavat" ; para "raise any #MON"
	line "s laskou a" ; line "you catch with"
	cont "starostlivostou." ; cont "love and care."
	done
