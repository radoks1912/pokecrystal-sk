BethExhilaratingRideText:
	text "Pamatas si mojho" ; text "Do you remember my"
	line "zlateho @" ; line "sweet @"
	text_ram wStringBuffer4
	text "?"

	para "@"
	text_ram wStringBuffer4
	text " bezi" ; text " runs"
	line "velmi rychlo." ; line "very fast."

	para "Je vzrusujuce" ; para "It's exhilarating"
	line "na nom jazdit" ; line "to ride on its"

	para "ked sa" ; para "back when it"
	line "rozbehne." ; line "really gets going."
	done

BethDefeatedMonText:
	text "Videl si" ; text "Oh, have you ever"
	line "niekedy @" ; line "seen a @"
	text_ram wStringBuffer4
	text_start
	;cont "before?" ; cont "before?"

	para "S jednym som" ; para "I just battled"
	line "zapasila…" ; line "one…"

	para "Bol omnoho ry-" ; para "It was much faster"
	line "chlejsi, ako som" ; line "than I expected."
	cont "si myslela."

	para "Bola som v" ; para "I was a little"
	line "soku." ; line "shocked."

	para "Ale vyhrala som," ; para "I still won, of"
	line "samozrejme." ; line "course."
	done

BethLostAMonText:
	text "Prave som videla" ; text "Oh, I just saw a"
	line "divokeho @" ; line "wild @"
	text_ram wStringBuffer4
	text "."

	para "Snazila som sa" ; para "I was trying to"
	line "ho chytit, ked" ; line "catch it when I"

	para "som zistila," ; para "noticed that I was"
	line "ne nemam #" ; line "all out of #"
	cont "BALLS." ; cont "BALLS."

	para "Ak si to neskon-" ; para "If you don't check"
	line "trolujes, mozu" ; line "your items, you"

	para "sa ti minut v" ; para "may run out at the"
	line "najnevhodnejsiu" ; line "worst time."
	cont "chvilu."

	para "Dufam, ze sa po-" ; para "I hope you learn"
	line "ucis z mojich chyb" ; line "from my mistake."
	done

BethBattleRematchText:
	text "Chces zapasit?" ; text "Do you want to"
	line "Tentokrat ale" ; line "battle? I'm going"
	cont "vyhram ja!" ; cont "to win this time!"

	para "Pockam ta" ; para "I'll be waiting"
	line "na" ; line "for you around"

	para "@"
	text_ram wStringBuffer5
	text "."
	line "Najdi ma, OK?" ; line "Look for me, OK?"
	done

BethHangUpText:
	text "OK, maj sa!" ; text "OK, bye-bye!"
	done

BethLetsBattleAgainSometimeText:
	text "Zabojujme si" ; text "Let's battle again"
	line "niekedy znova!" ; line "sometime!"
	done

BethReminderText:
	text "Hm… <PLAY_G>?" ; text "Um… <PLAY_G>?"
	line "Deje sa nieco?" ; line "What's wrong?"

	para "Zabudol si na nasu" ; para "Did you forget our"
	line "dohodu?" ; line "deal?"

	para "@"
	text_ram wStringBuffer5
	text "."

	para "Tam ta budem" ; para "That's where I'm"
	line "cakat." ; line "waiting."
	done
