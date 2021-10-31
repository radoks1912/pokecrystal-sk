JackAnswerPhoneText:
	text "Halo, tu" ; text "Hello. This is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Dobre rano," ; para "Good morning,"
	line "<PLAY_G>!"
	done

JackAnswerPhoneDayText:
	text "Halo, tu" ; text "Hello. This is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Ako to ide," ; para "How's it going,"
	line "<PLAY_G>?"
	done

JackAnswerPhoneNiteText:
	text "Halo, tu" ; text "Hello. This is"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Dobry vecer," ; para "Good evening,"
	line "<PLAY_G>!"
	done

JackGreetText:
	text "<PLAY_G>," ; text "<PLAY_G>, good"
	line "Dobre rano!" ; line "morning!"

	para "Tu @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Ako sa dari?" ; line "How are you doing?"
	done

JackGreetDayText:
	text "<PLAY_G>, cauko!" ; text "<PLAY_G>, howdy!"

	para "Tu, @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Vonku je krasne." ; line "Isn't it nice out?"
	done

JackGreetNiteText:
	text "<PLAY_G>" ; text "<PLAY_G>, good"
	line "dobry vecer!" ; line "evening!"

	para "Tu @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Mas sekundu?" ; line "Got a minute?"
	done

JackGenericText:
	text "Ako sa maju" ; text "How are your"
	line "tvoji #MONi?" ; line "#MON doing?"

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	text " je" ; text " is"
	line "strasne zvedavy," ; line "so curious, it's a"

	para "az to je problem." ; para "problem. Maybe"
	line "Je ako ja…" ; line "it's like me…"
	done
