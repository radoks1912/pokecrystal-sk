BrentAnswerPhoneText:
	text "Ano? @" ; text "Yes? @"
	text_ram wStringBuffer3
	text " pri telefone…" ; text " here…"

	para "Ah, <PLAYER>. Co" ; para "Ah, <PLAYER>. What"
	line "pre teba mozem" ; line "can I do for you?"
	cont "spravit?"
	done

BrentAnswerPhoneDayText:
	text "Ano? @" ; text "Yes? @"
	text_ram wStringBuffer3
	text " pri telefone…" ; text " here…"

	para "Ah, <PLAYER>. Co" ; para "Ah, <PLAYER>. What"
	line "pre teba mozem" ; line "can I do for you?"
	cont "spravit?"
	done

BrentAnswerPhoneNiteText:
	text "Ano? @" ; text "Yes? @"
	text_ram wStringBuffer3 ; text_ram wStringBuffer3
	text " pri telefone" ; text " here…"

	para "Ah, <PLAYER>. Co" ; para "Ah, <PLAYER>. What"
	line "pre teba mozem" ; line "can I do for you?"
	cont "spravit?"
	done

BrentGreetText:
	text "Ahoj, <PLAYER>." ; text "Hiya, <PLAYER>. How"
	line "Ako sa mas?" ; line "are you doing?"

	para "To som ja," ; para "Hey! It's me,"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

BrentGreetDayText:
	text "Ahoj, <PLAYER>," ; text "Hiya, <PLAYER>, how"
	line "ako sa mas?" ; line "are you doing?"

	para "To som ja," ; para "Hey, it's me,"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

BrentGreetNiteText:
	text "Ahoj, <PLAYER>," ; text "Hiya, <PLAYER>, how"
	line "ako sa mas?" ; line "are you doing?"

	para "To som ja," ; para "Hey, it's me,"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

BrentGenericText:
	text "Ano, videl som ta" ; text "Oh yeah, I saw you"
	line "vychadzat z" ; line "coming out of a"

	para "#MON CENTER" ; para "#MON CENTER the"
	line "vcera." ; line "other day."

	para "Pravidelne liecis" ; para "You heal your"
	line "svojich #MON," ; line "#MON regularly,"

	para "vsak?" ; para "don't you?"
	line "Ohromne." ; line "I'm impressed."

	para "Heh, moj @" ; para "Heh, my @"
	text_ram wStringBuffer4
	text_start
	line "je tak silny, ze" ; line "is so tough, it"

	para "nepotrebuje casto" ; para "doesn't need to go"
	line "chodit do" ; line "to #MON CENTERS"
	cont "#MON CENTERS. Hehe!" ; cont "often. Heheh!"
	done
