VanceAnswerPhoneText:
	text "Ano, halo?" ; text "Yes, hello?"
	line "@"
	text_ram wStringBuffer3
	text " pri telefone!" ; text " here!"

	para "Ranko, <PLAY_G>!" ; para "Morning, <PLAY_G>!"

	para "Pouzivas vtacich" ; para "Are you using bird"
	line "#MONov?" ; line "#MON?"
	done

VanceAnswerPhoneDayText:
	text "Ano, halo?" ; text "Yes, hello?"
	line "@"
	text_ram wStringBuffer3
	text " pri telefone!" ; text " here!"

	para "Ahoj, <PLAY_G>!" ; para "Hi, <PLAY_G>!"

	para "Lietaju tvoji" ; para "Are your bird"
	line "vtaci #MONi?" ; line "#MON flying?"
	done

VanceAnswerPhoneNiteText:
	text "Ano, halo?" ; text "Yes, hello?"
	line "@"
	text_ram wStringBuffer3
	text " pri telefone!" ; text " here!"

	para "Vecer, <PLAY_G>!" ; para "Evening, <PLAY_G>!"
	line "Nechavas zapasit" ; line "Are you letting"

	para "svojich vtacich" ; para "your bird #MON"
	line "#MONov?" ; line "see some action?"
	done

VanceGreetText:
	text "Dobre rano," ; text "Good morning,"
	line "<PLAY_G>!"

	para "It's @" ; para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Good morning!" ; line "Good morning!"
	done

VanceGreetDayText:
	text "Hi, <PLAY_G>!" ; text "Hi, <PLAY_G>!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Pamatas?" ; line "Remember me?"
	done

VanceGreetNiteText:
	text "Dobry vecer," ; text "Good evening,"
	line "<PLAY_G>!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Mas chvilocku?" ; line "Are you free now?"
	done

VanceGenericText:
	text "Mas sa ty a tvoji" ; text "Are you and your"
	line "#MONi dobre?" ; line "#MON fine?"

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	text_start
	line "vypada tak silno," ; line "looks like it will"

	para "ze porazi aj" ; para "get tough enough"
	line "legendarneho" ; line "to face and beat"

	para "vtacieho" ; para "the legendary bird"
	line "#MONa!"
	done
