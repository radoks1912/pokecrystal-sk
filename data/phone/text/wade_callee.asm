WadeAnswerPhoneText:
	text "Halo?" ; text "Hello? This is"
	line "@"
	text_ram wStringBuffer3
	text " pri telefone." ; text " speaking."

	para "Oh. ahoj, <PLAY_G>!" ; para "Oh. Hi, <PLAY_G>!"
	line "Dobre rano!" ; line "Good morning!"
	done

WadeAnswerPhoneDayText:
	text "Halo?" ; text "Hello? This is"
	line "@"
	text_ram wStringBuffer3
	text " pri telefone." ; text " speaking."

	para "Oh, ahoj, <PLAY_G>!" ; para "Oh, hi, <PLAY_G>!"
	done

WadeAnswerPhoneNiteText:
	text "Halo?" ; text "Hello? This is"
	line "@"
	text_ram wStringBuffer3
	text " pri telefone." ; text " speaking."

	para "Oh, ahoj, <PLAY_G>!" ; para "Oh, hi, <PLAY_G>!"
	line "Dobry vecer!" ; line "Good evening!"
	done

WadeGreetText:
	text "<PLAY_G>," ; text "<PLAY_G>, good"
	line "dobre rano!" ; line "morning!"

	para "To som ja, @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Nie je vonku krasne?" ; line "Isn't it nice out?"
	done

WadeGreetDayText:
	text "<PLAY_G>, cauko!" ; text "<PLAY_G>, howdy!"

	para "To som ja, @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Nie je vonku krasne?" ; line "Isn't it nice out?"
	done

WadeGreetNiteText:
	text "Dobry vecer," ; text "Good evening,"
	line "<PLAY_G>!"

	para "To som ja, @" ; para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "Si hore?" ; line "Were you awake?"
	done

WadeGenericText:
	text "Ako sa maju tvoji" ; text "How are your"
	line "#MONi?" ; line "#MON doing?"

	para "Moji #MONi" ; para "My #MON have"
	line "maju prilis vela" ; line "too much energy to"

	para "energie. A to je" ; para "burn. It gets to"
	line "problem." ; line "be a problem."

	para "Z mojich #MONov," ; para "Of all my #MON,"
	line "@"
	text_ram wStringBuffer4
	text " je"  ;text " is the"
	cont "najtazsie" ; cont "hardest to handle."

	para "zvladnutelny." ; para "Working with it is"
	line "Vycerpavajuce." ; line "exhausting."
	done
