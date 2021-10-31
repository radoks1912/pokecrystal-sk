LizAnswerPhoneText:
	text "Halo, @" ; text "Hello, @"
	text_ram wStringBuffer3
	text_start
	line "pri telefone." ; line "speaking."

	para "Oh, <PLAY_G>." ; para "Oh, <PLAY_G>."
	line "Dobre rano." ; line "Good morning."
	done

LizAnswerPhoneDayText:
	text "Halo, @" ; text "Hello, @"
	text_ram wStringBuffer3
	text_start
	line "pri telefone." ; line "speaking."

	para "Oh, <PLAY_G>." ; para "Oh, <PLAY_G>."
	line "Ako sa mas?" ; line "How are you?"
	done

LizAnswerPhoneNiteText:
	text "Halo, @" ; text "Hello, @"
	text_ram wStringBuffer3
	text_start
	line "pri telefone." ; line "speaking."

	para "Oh, <PLAY_G>." ; para "Oh, <PLAY_G>."
	line "Dobry vecer." ; line "Good evening."
	done

LizGreetText:
	text "Dobre rano," ; text "Good morning,"
	line "<PLAY_G>."

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3
	text "."
	line "Spis?" ; line "Were you sleeping?"
	done

LizGreetDayText:
	text "Cau, <PLAY_G>." ; text "Hi, <PLAY_G>."
	line "Tu @" ; line "This is @"
	text_ram wStringBuffer3
	text "."

	para "Ako idu" ; para "How are things"
	line "veci?" ; line "going for you?"
	done

LizGreetNiteText:
	text "Dobry vecer," ; text "Good evening,"
	line "<PLAY_G>."

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3
	text "."
	line "Si hore?" ; line "Are you awake?"
	done

LizGenericText:
	text "Mala som cas," ; text "I had some time,"
	line "tak som zavolala." ; line "so I called you."

	para "Ako sa maju tvoji" ; para "So anyway, how are"
	line "#MONi?" ; line "your #MON?"

	para "Ja beriem mojho" ; para "Me, I take my"
	line "@"
	text_ram wStringBuffer4
	text " do" ; text " to the"

	para "#MON CENTER v" ; para "#MON CENTER in"
	line "VIOLET kazdy den," ; line "VIOLET every day,"

	para "takze sa ma" ; para "so it's doing just"
	line "fantasticky!" ; line "fantastic!"

	para "Poznam sa s" ; para "I'm friends with"
	line "recepcnou!" ; line "the receptionist!"
	done
