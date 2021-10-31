ParryNothingCanMatchText:
	text "Nic sa nevyrovna" ; text "Nothing can match"
	line "mojmu @" ; line "my @"
	text_ram wStringBuffer4
	text " teraz." ; text " now."
	done

ParryDefeatedMonText:
	text "Ano, knockoutol" ; text "Yeah, we KO'd a"
	line "som @" ; line "wild @"
	text_ram wStringBuffer4
	text "!"

	para "To bolo OK, ale" ; para "That was OK, but I"
	line "chcel som ho" ; line "wanted to get it…"
	cont "chytit…"
	done

ParryLostAMonText:
	text "Vcera som zbadal" ; text "And yesterday, we"
	line "divokeho" ; line "spotted a wild"

	para "@"
	text_ram wStringBuffer4
	text "."
	line "Rozhodoval som sa" ; line "We were debating"

	para "ci ho chytit" ; para "whether to catch"
	line "alebo porazit." ; line "it or beat it."

	para "Ked tu zrazu pri-" ; para "When along came"
	line "siel chlap a" ; line "another guy who"

	para "chytil ho!" ; para "caught it!"
	line "No teda!" ; line "How about that!"
	done

ParryBattleRematchText:
	text "Chcel by si" ; text "You're thinking"
	line "zapasit proti" ; line "you'd like to"

	para "mne. Mam" ; para "battle me. Am I"
	line "pravdu?" ; line "right or what?"

	para "Ano! Budem na" ; para "Yep! We'll meet on"
	line "@"
	text_ram wStringBuffer5
	text "!"
	done

ParryHangUpText:
	text "OK, zavolaj mi" ; text "OK, give me a call"
	line "niekedy znova!" ; line "again!"
	done

ParryBattleWithMeText:
	text "Dame si dalsi" ; text "You'll battle with"
	line "zapas, vsak?" ; line "me again, right?"
	done

ParryHaventYouGottenToText:
	text "Dostal si sa" ; text "Haven't you gotten"
	line "do @" ; line "to @"
	text_ram wStringBuffer5
	text "?"

	para "Cakat tu nie je" ; para "Waiting here isn't"
	line "zle, ale chcem" ; line "bad, but I'd sure"
	cont "zapasit!" ; cont "like to battle!"
	done
