DerekAnswerPhoneText:
	text "Ahoj, <PLAY_G>?" ; text "Hi, <PLAY_G>?"

	para "Dobre pika rano." ; para "Good morning pika."
	line "Ako sa mas?" ; line "What's up pika?"
	done

DerekAnswerPhoneDayText:
	text "Ahoj, <PLAY_G>?" ; text "Hi, <PLAY_G>?"

	para "Dobry pika den," ; para "Good day pika,"
	line "ako to ide, pika?" ; line "what's up pika?"
	done

DerekAnswerPhoneNiteText:
	text "Ahoj, <PLAY_G>?" ; text "Hi, <PLAY_G>?"

	para "Dobry vecer, pika," ; para "Good evening pika,"
	line "ako to ide, pika?" ; line "what's up pika?"
	done

DerekGreetText:
	text "<PLAY_G>" ; text "<PLAY_G> pika, good"
	line "dobre pika rano!" ; line "morning!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text ", ako" ; text ", how"
	line "sa pika mas?" ; line "pika are you?"
	done

DerekGreetDayText:
	text "<PLAY_G>" ; text "<PLAY_G> pika, good"
	line "dobry pika den!" ; line "pika day!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text ", ako" ; text ", how"
	line "sa pika mas?" ; line "pika are you?"
	done

DerekGreetNiteText:
	text "<PLAY_G>" ; text "<PLAY_G> pika, good"
	line "Dobry pika vecer!" ; line "evening!"

	para "Tu @" ; para "It's @"
	text_ram wStringBuffer3
	text ". Si" ; text ". Were"
	line "pika hore?" ; line "you pika awake?"
	done

DerekGenericText:
	text "Toto musis pocut!" ; text "You have to hear"
	line "Moj zlaty" ; line "this! My lovable"

	para "@"
	text_ram wStringBuffer4
	text " sa na mna" ; text " looked"
	line "uskrnul!" ; line "at me and grinned!"

	para "Musi to byt preto" ; para "It must be because"
	line "ze nase srdcia" ; line "our hearts beat"
	cont "biju ako jedno!" ; cont "together as one!"
	done
