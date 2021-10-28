BeverlyAnswerPhoneText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh! Dobre rano," ; para "Oh! Good morning,"
	line "<PLAYER>."
	done

BeverlyAnswerPhoneDayText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh! Dobry den," ; para "Oh! Good day,"
	line "<PLAYER>."
	done

BeverlyAnswerPhoneNiteText:
	text "Ahoj, tu je" ; text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh! Dobry vecer," ; para "Oh! Good evening,"
	line "<PLAYER>."
	done

BeverlyGreetText:
	text "Ahoj, <PLAYER>." ; text "Hello, <PLAYER>."
	line "Dobre rano." ; line "Good morning."

	para "Tu je @" ; para "This is @"
	text_ram wStringBuffer3
	text "."
	line "Spal si?" ; line "Were you asleep?"
	done

BeverlyGreetDayText:
	text "Cau, <PLAYER>." ; text "Hi, <PLAYER>."
	line "tu je @" ; line "This is @"
	text_ram wStringBuffer3
	text "."

	para "Ako sa mas?" ; para "How are you doing?"
	done

BeverlyGreetNiteText:
	text "Cau, <PLAYER>." ; text "Hi, <PLAYER>."
	line "Tu je @" ; line "This is @"
	text_ram wStringBuffer3
	text "."

	para "Bol si hore?" ; para "Were you awake?"
	done

BeverlyGenericText:
	text "Su tvoji" ; text "Keeping your"
	line "#MONi stastni?" ; line "#MON happy?"

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	text " je" ; text " is"
	line "zdravy. Zerie" ; line "healthy. It eats a"
	cont "vela kazdy den." ; cont "lot every day."
	done
