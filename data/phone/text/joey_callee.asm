JoeyAnswerPhoneText:
	text "Ahoj, @" ; text "Hi, @"
	text_ram wStringBuffer3
	text " pri telefone!" ; text " here!"

	para "Oh, <PLAYER>?" ; para "Oh, <PLAYER>? You"
	line "Ako sa mas?" ; line "doing well?"
	done

JoeyAnswerPhoneDayText:
	text "Ahoj, @" ; text "Hi, @"
	text_ram wStringBuffer3
	text " pri telefone!" ; text " here!"

	para "Oh, <PLAYER>?" ; para "Oh, <PLAYER>? You"
	line "Mas sa dobre?" ; line "doing well?"
	done

JoeyAnswerPhoneNiteText:
	text "Ahoj, @" ; text "Hi, @"
	text_ram wStringBuffer3
	text " pri telefone!" ; text " here!"

	para "Oh, <PLAYER>?" ; para "Oh, <PLAYER>? You"
	line "Mas sa dobre?" ; line "doing well?"
	done

JoeyGreetText:
	text "Jou, <PLAYER>!" ; text "Yo, <PLAYER>!"
	line "Ako sa mas?" ; line "How're you doing?"

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3 ; text_ram wStringBuffer3
	text ","
	line "mas sekundu?" ; line "got a minute?"
	done

JoeyGreetDayText:
	text "Jou, <PLAYER>!" ; text "Yo, <PLAYER>! How's"
	line "Ako to ide?" ; line "it going?"

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3
	text "."
	line "mas sekundu?" ; line "Got a minute?"
	done

JoeyGreetNiteText:
	text "Jou, <PLAYER>!" ; text "Yo, <PLAYER>!"
	line "Ako sa mas?" ; line "How're you doing?"

	para "Tu @" ; para "This is @"
	text_ram wStringBuffer3
	text ","
	line "mas sekundu?" ; line "got a minute?"
	done

JoeyGenericText:
	text "Ako sa maju" ; text "How are your"
	line "tvoji #MONi?" ; line "#MON doing?"

	para "Moj @" ; para "My @"
	text_ram wStringBuffer4
	text "je" ; text "'s"
	line "vzdy pripraveny" ; line "raring to go, just"
	cont "na akciu." ; cont "like always."

	para "Je to jediny" ; para "It's the only one"
	line "ktoreho mam" ; line "I have. I'm going"

	para "Stanem sa s nim" ; para "to become a great"
	line "skvelym trenerom!" ; line "trainer with it!"
	done
