AnthonyAnswerPhoneText:
	text "Ano, @" ; text "Yeah, @"
	text_ram wStringBuffer3
	text " ten" ; text " the"
	line "TURISTA." ; line "HIKER here."

	para "Ah, <PLAYER>!"
	done

AnthonyAnswerPhoneDayText:
	text "Ano, @" ; text "Yeah, @"
	text_ram wStringBuffer3
	text " ten" ; text " the"
	line "TURISTA." ; line "HIKER here."

	para "Ah, <PLAYER>," ; para "Ah, <PLAYER>,"
	line "vsak?" ; line "right?"
	done

AnthonyAnswerPhoneNiteText:
	text "Ano, @" ; text "Yeah, @"
	text_ram wStringBuffer3
	text " ten" ; text " the"
	line "TURISTA." ; line "HIKER here."

	para "Ah, <PLAYER>, vsak" ; para "Ah, <PLAYER>, isn't"
	line "ze?" ; line "it?"
	done

AnthonyGreetText:
	text "Cau, <PLAYER>?" ; text "Yo, <PLAYER>?"

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3
	text_start
	line "TURISTA!" ; line "the HIKER!"
	done

AnthonyGreetDayText:
	text "Hej, je tam" ; text "Hey, is this"
	line "<PLAYER>?" ; line "<PLAYER>?"

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3
	text_start
	line "ten TURISTA!" ; line "the HIKER!"
	done

AnthonyGreetNiteText:
	text "<PLAYER>, si stale" ; text "<PLAYER>, you still"
	line "hore?" ; line "awake?"

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3
	text_start
	line "ten TURISTA!" ; line "the HIKER!"
	done

AnthonyGenericText:
	text "Su tvoji #MONi" ; text "Are your #MON"
	line "stale tak divoki?" ; line "as feisty as ever?"

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	text " a" ; text " and"
	line "ja--mame dostatok" ; line "me--we have energy"

	para "energie. Dame" ; para "to burn. We hike"
	line "turu kazdy den" ; line "up mountains every"

	para "aby sme ju" ; para "day to work out"
	line "spalili." ; line "all our energy."
	done
