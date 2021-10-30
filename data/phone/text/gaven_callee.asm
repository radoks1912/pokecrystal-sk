GavenAnswerPhoneText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	;text " speaking…" ; text " speaking…"

	para "Cau, <PLAY_G>!" ; para "Hi, <PLAY_G>!"
	line "Dobre rano!" ; line "Good morning!"
	done

GavenAnswerPhoneDayText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	;text " speaking…" ; text " speaking…"

	para "Cau, <PLAY_G>!" ; para "Hi, <PLAY_G>!"
	done

GavenAnswerPhoneNiteText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	;text " speaking…" ; text " speaking…"

	para "Cau, <PLAY_G>!" ; para "Hi, <PLAY_G>!"
	line "Dobry vecer!" ; line "Good evening!"
	done

GavenGreetText:
	text "<PLAY_G>," ; text "<PLAY_G>, good"
	line "dobre rano!" ; line "morning!"

	para "Tu je @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Ako sa mas?" ; line "How are you doing?"
	done

GavenGreetDayText:
	text "Cau, <PLAY_G>!" ; text "Hi, <PLAY_G>!"

	para "Tu je @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Ako sa mas?" ; line "How are you doing?"
	done

GavenGreetNiteText:
	text "<PLAY_G>," ; text "<PLAY_G>, good"
	line "dobry vecer!" ; line "evening!"

	para "Tu je @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Ako sa mas?" ; line "How are you doing?"
	done

GavenGenericText:
	text "Ako sa maju tvoji" ; text "How are your"
	line "#MONi?" ; line "#MON doing?"

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	;text "'s"
	line "sa ma uplne" ; line "doing as great as"
	cont "skvele." ; cont "ever."

	para "Trenujme dalej" ; para "Let's keep at it"
	line "a budeme #MON" ; line "and become #MON"
	cont "CHAMPS!" ; cont "CHAMPS!"
	done
