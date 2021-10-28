BillPhoneMornGreetingText:
	text "Dobre rano!" ; text "Good morning!"

	para "Toto je #-" ; para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneDayGreetingText:
	text "Dobry den!" ; text "Good day!"

	para "Toto je #-" ; para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneNiteGreetingText:
	text "Dobry vecer!" ; text "Good evening!"

	para "Toto je #-" ; para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneGenericText:
	text "Kto vola?" ; text "Who's calling?"

	para "<PLAY_G>, ano?" ; para "<PLAY_G>, is it?"
	line "Pockaj sekundu…" ; line "Hang on a sec…"

	para "<……>"
	line "<……>"
	done

BillPhoneNotFullText:
	text "Dakujem za" ; text "Thanks for"
	line "trpezlivost!" ; line "waiting!"

	para "<PLAY_G>, tvoj BOX" ; para "<PLAY_G>, your BOX"
	line "ma miesto pre @"  ; line "has room for @"
	text_ram wStringBuffer3
	text_start
	cont "#MONov." ; cont "more #MON."

	para "Chod a pochytaj" ; para "Get out there and"
	line "dalsich!" ; line "fill it up!"
	done

BillPhoneNearlyFullText:
	text "Dakujem za" ; text "Thanks for"
	line "trpezlivost!" ; line "waiting!"

	para "<PLAY_G>, tvoj BOX" ; para "<PLAY_G>, your BOX"
	line "ma miesto pre" ; line "has room for only"
	cont "@"
	text_ram wStringBuffer3
	text " #MONov." ; text " more #MON."

	para "Mozno by si mal" ; para "Maybe you should"
	line "prepnut BOX." ; line "switch your BOX."
	done

BillPhoneFullText:
	text "Dakujem za" ; text "Thanks for"
	line "trpezlivost!" ; line "waiting!"

	para "<PLAY_G>, tvoj BOX" ; para "<PLAY_G>, your BOX"
	line "je plny!" ; line "is full!"

	para "Musis prepnut" ; para "You'll have to"
	line "BOXY ak chces" ; line "switch BOXES if"

	para "chytat" ; para "you want to catch"
	line "dalsich #MON." ;  line "more #MON."
	done

BillPhoneNewlyFullText:
	text "Ahoj, <PLAY_G>?" ; text "Hi, <PLAY_G>?"
	line "Tu je BILL!" ; line "It's me, BILL!"

	para "Diky za vyuzivanie" ; para "Thanks for using"
	line "STORAGE SYSTEM." ; line "my STORAGE SYSTEM."

	para "Posledny #MON" ; para "That last #MON"
	line "prave vyplnil" ; line "you sent filled"
	cont "tvoj BOX doplna." ; cont "your BOX up."

	para "Musis prepnut" ; para "You'll have to"
	line "BOXY ak" ; line "switch BOXES if"

	para "chces chytat" ; para "you want to catch"
	line "dalsich #MON." ; line "more #MON."

	para "Maj sa zatial!" ; para "Bye now!"
	done
