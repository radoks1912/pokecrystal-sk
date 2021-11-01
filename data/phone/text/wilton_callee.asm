WiltonAnswerPhoneText:
	text "Halo," ; text "Hello, you have"
	line "tu @" ; line "reached @"
	text_ram wStringBuffer3
	text "…"

	para "Ah, <PLAY_G>."
	done

WiltonAnswerPhoneDayText:
	text "Halo," ; text "Hello, you have"
	line "tu @" ; line "reached @"
	text_ram wStringBuffer3
	text "…"

	para "Ah, <PLAY_G>," ; para "Ah, <PLAY_G>, is"
	line "vsak?" ; line "it?"
	done

WiltonAnswerPhoneNiteText:
	text "Halo," ; text "Hello, you have"
	line "tu @" ; line "reached @"
	text_ram wStringBuffer3
	text "…"

	para "Ah, je tam" ; para "Ah, if it isn't"
	line "<PLAY_G>."
	done

WiltonGreetText:
	text "Ah, tu @" ; text "Ah, it's @"
	text_ram wStringBuffer3
	text "…"

	para "Mas maly" ; para "Have you got a"
	line "moment?" ; line "moment?"
	done

WiltonGreetDayText:
	text "Ah, tu @" ; text "Ah, it's @"
	text_ram wStringBuffer3
	text "…"

	para "Mozes hovorit?" ; para "Can you talk now?"
	done

WiltonGreetNiteText:
	text "Ah, tu @" ; text "Ah, it's @"
	text_ram wStringBuffer3
	text "…"

	para "Prepac za neskory" ; para "Sorry for calling"
	line "telefonat." ; line "so late."
	done

WiltonGenericText:
	text "Narastli tvoji" ; text "Have your #MON"
	line "#MONi?" ; line "grown any?"

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	text " uz" ; text " has"
	line "narastol dost." ; line "grown quite a bit."
	done
