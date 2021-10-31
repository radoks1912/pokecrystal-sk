MomPhoneGreetingText:
	text "Halo?" ; text "Hello?"

	para "Ahoj, <PLAYER>!" ; para "Oh, hi, <PLAYER>!"
	line "Trenujes?" ; line "Working hard?"
	done

MomPhoneLandmarkText:
	text "Aha, takze si v" ; text "Oh, so you're in"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Nie je to tam, kde" ; para "Isn't that where"
	line "@"
	text_ram wStringBuffer4
	text_start
	para "? Bol si sa" ; para "is? Did you go"
	line "pozriet?" ; line "take a look?"
	done

MomPhoneGenericAreaText:
	text "Vazne si v" ; text "Really, you're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Nikdy som tam" ; para "I've never gone"
	line "nebola. To je" ; line "there. That's kind"
	cont "super, <PLAYER>." ; cont "of neat, <PLAYER>."
	done

MomPhoneNewBarkText:
	text "Coze? Ty si v" ; text "What? You're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Pridi ma" ; para "Come see your MOM"
	line "pozriet!" ; line "sometime!"
	done

MomPhoneCherrygroveText:
	text "Si v" ; text "You're visiting"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Co tak sa zastavit" ; para "How about coming"
	line "nachvilku doma?" ; line "home for a bit?"
	done

MomOtherAreaText:
	text "Wau, si v" ; text "Wow, you're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Vela stastia na" ; para "Good luck on your"
	line "#MON queste!" ; line "#MON quest!"
	done

MomDeterminedText:
	text "To znie" ; text "That sounds really"
	line "narocne." ; line "tough."

	para "Ale, <PLAYER>," ; para "But, <PLAYER>, I"
	line "viem ze si odhod-" ; line "know you're really"

	para "lany. Budes" ; para "determined. You'll"
	line "OK, vsak?" ; line "be OK, right?"
	done

MomCheckBalanceText:
	text "Mimochodom," ; text "By the way, you've"
	line "nasetril si ¥@" ; line "saved up ¥@"
	text_ram wStringBuffer3
	text "."

	para "Mam ti stale" ; para "Do you want to"
	line "odkladat peniaze?" ; line "keep on saving?"
	done

MomImportantToSaveText:
	text "Je dolezite" ; text "It's important to"
	line "setrit peniaze." ; line "save your money."
	done

MomYoureNotSavingText:
	text "Och, <PLAYER>," ; text "Oh, <PLAYER>,"
	line "nesetris si ziadne" ; line "you're not saving"

	para "peniaze. Chce" ; para "any money. Would"
	line "si zacat setrit?" ; line "you like to save?"
	done

MomYouveSavedText:
	text "Mimochodom," ; text "By the way, you've"
	line "usetril si ¥@" ; line "saved up ¥@"
	text_ram wStringBuffer3
	text "."

	para "Chces zacat" ; para "Want to start"
	line "znova setrit?" ; line "saving again?"
	done

MomOKIllSaveText:
	text "OK. Budem ti" ; text "OK. I'll save your"
	line "setrit peniaze." ; line "money."
	done

MomPhoneWontSaveMoneyText:
	text "OK. Nebudem ti" ; text "OK. I won't save"
	line "setrit peniaze." ; line "your money."
	done

MomPhoneHangUpText:
	text "<PLAYER>, drz" ; text "<PLAYER>, keep it"
	line "sa! Drzim ti" ; line "up! I'm rooting"
	cont "palce!" ; cont "for you, baby!"
	done

MomPhoneNoPokemonText:
	text "Halo?"

	para "Ahoj, <PLAYER>!" ; para "Oh, hi, <PLAYER>!"
	line "Necaka ta nahodou" ; line "Wasn't PROF.ELM"
	cont "PROF.ELM?" ; cont "waiting for you?"
	done

MomPhoneNoPokedexText:
	text "Halo?" ; text "Hello?"

	para "Ahoj, <PLAYER>!" ; para "Oh, hi, <PLAYER>!"
	line "Si na misii" ; line "You're on a big"

	para "pre PROF." ; para "mission for PROF."
	line "ELMa? Posluchaj!" ; line "ELM? Be good!"
	done

MomPhoneNoGymQuestText:
	text "Halo?" ; text "Hello?"

	para "Ahoj, <PLAYER>!" ; para "Hi, <PLAYER>! If"
	line "Ak si skoncil so" ; line "you're done with"

	para "svojou ulohou," ; para "your errand come"
	line "zastav sa doma." ; line "on home, dear."
	done

MomPhoneLectureText:
	text "Halo?" ; text "Hello?"

	para "…… <PLAYER>?"
	line "Pocula som od" ; line "I heard from PROF."

	para "PROF.ELMa, ze si" ; para "ELM that you went"
	line "isiel na dobro-" ; line "on a long trip."

	para "druzstvo. Skoda," ; para "I wish you would"
	line "ze si nepovedal…" ; line "have told me…"

	para "Co s peniazmi?" ; para "What about money?"
	line "Mam ti ich setrit?" ; line "Should I save it?"
	done
