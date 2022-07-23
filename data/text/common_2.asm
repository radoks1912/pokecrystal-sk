_NoPhotoText::
	text "Ou, ziadna fotka?" ; text "Oh, no picture?"
	line "Prid znova, OK?" ; line "Come again, OK?"
	done

_EggPhotoText::
	text "VAJICKO? Moj talent" ; text "An EGG? My talent"
	line "ma vacsiu cenu…" ; line "is worth more…"
	done

_NameRaterHelloText::
	text "Ahoj, ahoj! Ja" ; text "Hello, hello! I'm"
	line "som NAME RATER." ; line "the NAME RATER."

	para "Hodnotim mena" ; para "I rate the names"
	line "#MON." ; line "of #MON."

	para "Ohodnotim mena" ; para "Would you like me"
	line "tvojich #MON ?" ; line "to rate names?"
	done

_NameRaterWhichMonText::
	text "Ktoreho #MON's" ; text "Which #MON's"
	line "prezyvku ti" ; line "nickname should I"
	cont "mam ohodnotit?" ; cont "rate for you?"
	prompt

_NameRaterBetterNameText::
	text "Hm… @" ; text "Hm… @"
	text_ram wStringBuffer1
	text "…"
	line "To je vcelku" ; line "That's a fairly"
	cont "slusne meno." ; cont "decent name."

	para "Ale co povies" ; para "But, how about a"
	line "na toto trosku" ; line "slightly better"
	cont "lepsie meno?" ; cont "nickname?"

	para "Chces aby som mu" ; para "Want me to give it"
	line "dal lepsie meno?" ; line "a better name?"
	done

_NameRaterWhatNameText::
	text "Okej. Ake" ; text "All right. What"
	line "meno mu mam" ; line "name should we"
	cont "teda dat?" ; cont "give it, then?"
	prompt

_NameRaterFinishedText::
	text "To je lepsie" ; text "That's a better"
	line "meno ako predtym!" ; line "name than before!"

	para "Vyborne!" ; para "Well done!"
	done

_NameRaterComeAgainText::
	text "OK, teda. Zastav" ; text "OK, then. Come"
	line "sa znovu." ; line "again sometime."
	done

_NameRaterPerfectNameText::
	text "Hm… @" ; text "Hm… @"
	text_ram wStringBuffer1
	text "?"
	line "Skvele meno!" ; line "What a great name!"
	cont "Je dokonale." ; cont "It's perfect."

	para "Staraj sa o @" ; para "Treat @"
	text_ram wStringBuffer1
	text_start
	line "najlepsie ako vies." ; line "with loving care."
	done

_NameRaterEggText::
	text "Whou… To je iba" ; text "Whoa… That's just"
	line "VAJICKO." ; line "an EGG." 
	done

_NameRaterSameNameText::
	text "Moze to vypadat" ; text "It might look the"
	line "rovnako ako predym," ; line "same as before,"

	para "ale toto nove meno" ; para "but this new name"
	line "je ovela lepsie!" ; line "is much better!"

	para "Vyborne!" ; para "Well done!"
	done

_NameRaterNamedText::
	text "Okej. Tento" ; text "All right. This"
	line "#MON sa teraz" ; line "#MON is now"
	cont "vola @" ; cont "named @"
	text_ram wStringBuffer1
	text "."
	prompt

Text_Gained::
	text_ram wStringBuffer1
	text " nadobudol@" ; text " gained@"
	text_end

_BoostedExpPointsText::
; BUG: Five-digit experience gain is printed incorrectly (see docs/bugs_and_glitches.md)
	text_start
	line "boostnutych" ; line "a boosted"
	cont "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. bodov!" ; text " EXP. Points!"
	prompt

_ExpPointsText::
; BUG: Five-digit experience gain is printed incorrectly (see docs/bugs_and_glitches.md)
	text_start
	line "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. bodov!" ; text " EXP. Points!"
	prompt

_GoMonText::
	text "Podme! @" ; text "Go! @"
	text_end

_DoItMonText::
	text "Do toho! @" ; text "Do it! @"
	text_end

_GoForItMonText::
	text "Snaz sa," ; text "Go for it,"
	line "@"
	text_end

_YourFoesWeakGetmMonText::
	text "Nepriatel je slaby!" ; text "Your foe's weak!"
	line "Donho, @" ; line "Get'm, @"
	text_end

_BattleMonNicknameText::
	text_ram wBattleMonNickname
	text "!"
	done

_BattleMonNickCommaText::
	text_ram wBattleMonNickname
	text ",@"
	text_end

_ThatsEnoughComeBackText::
	text " to" ; text " that's"
	line "staci! Vrat sa!@" ; line "enough! Come back!@"
	text_end

_OKComeBackText::
	text " OK!" ; text " OK!"
	line "Vrat sa!@" ; line "Come back!@"
	text_end

_GoodComeBackText::
	text " dobre!" ; text " good!"
	line "Vrat sa!@" ; line "Come back!@"
	text_end

_ComeBackText::
	text " vrat" ; text " come"
	line "sa!" ; line "back!"
	done

_BootedTMText::
	text "Nacital si TM." ; text "Booted up a TM."
	prompt

_BootedHMText::
	text "Nacital si HM." ; text "Booted up an HM."
	prompt

_ContainedMoveText::
	text "Obsahuje" ; text "It contained"
	line "@"
	text_ram wStringBuffer2
	text "."

	para "Naucit @" ; para "Teach @"
	text_ram wStringBuffer2
	text_start
	line "tohto #MON?" ; line "to a #MON?"
	done

_TMHMNotCompatibleText::
	text_ram wStringBuffer2
	text " nie je" ; text " is"
	line "kompatibilny" ; line "not compatible"
	cont "s @" ; cont "with @"
	text_ram wStringBuffer1
	text "."

	para "Nemoze sa naucit" ; para "It can't learn"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_NoRoomTMHMText::
	text "Nemas miesto" ; text "You have no room"
	line "na dalsie" ; line "for any more"
	cont "@"
	text_ram wStringBuffer1
	;text "S."
	prompt

_ReceivedTMHMText::
	text "Dostal si" ; text "You received"
	line "@"
	text_ram wStringBuffer1
	text "!"
	prompt

_MysteryGiftCanceledText::
	text "Spojenie bolo" ; text "The link has been"
	line "zrusene." ; line "cancelled."
	prompt

_MysteryGiftCommErrorText::
	text "Komunikacna" ; text "Communication"
	line "chyba." ; line "error."
	prompt

_RetrieveMysteryGiftText::
	text "Vyzdvihni si GIFT" ; text "Must retrieve GIFT"
	line "v #MON CENTER." ; line "at #MON CENTER."
	prompt

_YourFriendIsNotReadyText::
	text "Tvoj priatel nie je" ; text "Your friend isn't"
	line "pripraveny." ; line "ready."
	prompt

_MysteryGiftFiveADayText::
	text "Prepac--iba 5" ; text "Sorry--only five"
	line "GIFTS denne." ; line "GIFTS a day."
	prompt

_MysteryGiftOneADayText::
	text "Prepac. 1 GIFT" ; text "Sorry. One GIFT"
	line "denne na osobu." ; line "a day per person."
	prompt

_MysteryGiftSentText::
	text_ram wMysteryGiftPartnerName
	text " poslane" ; text " sent"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MysteryGiftSentHomeText::
	text_ram wMysteryGiftPartnerName
	text " poslane" ; text " sent"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "do @" ; cont "to @"
	text_ram wMysteryGiftPlayerName
	text "domu." ; text "'s home."
	prompt

_NameCardReceivedCardText::
	text "Dostal si" ; text "Received"
	line "@"
	text_ram wMysteryGiftCardHolderName
	text " CARD." ; text "'s CARD."
	prompt

_NameCardListedCardText::
	text_ram wMysteryGiftCardHolderName
	text "CARD nebola" ; text "'s CARD was"
	line "pod cislom.@" ; line "listed as no.@"
	text_decimal wTextDecimalByte, 1, 2
	text "."
	prompt

_NameCardNotRegisteredCardText::
	text "CARD nebola" ; text "The CARD was not"
	line "registrovana." ; line "registered."
	prompt

_NameCardLinkCancelledText::
	text "Spojenie bolo" ; text "The link has been"
	line "zrusene." ; line "cancelled."
	prompt

_NameCardLinkCommErrorText::
	text "Komunikacna" ; text "Communication"
	line "chyba." ; line "error."
	prompt

_BadgeRequiredText::
	text "Prepac! Potrebujes" ; text "Sorry! A new BADGE"
	line "novy odznak." ; line "is required."
	prompt

_CantUseItemText::
	text "Nemozes to pouzit" ; text "Can't use that"
	line "tu." ; line "here."
	prompt

_UseCutText::
	text_ram wStringBuffer2
	text " pouzil" ; text " used"
	line "CUT!" ; line "CUT!"
	prompt

_CutNothingText::
	text "Utok CUT tu nema" ; text "There's nothing to"
	line "vyznam." ; line "CUT here."
	prompt

_BlindingFlashText::
	text "Utok FLASH" ; text "A blinding FLASH"
	line "osvetlil oblast!@" ; line "lights the area!@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_UsedSurfText::
	text_ram wStringBuffer2
	text " pouzil" ; text " used"
	line "SURF!" ; line "SURF!"
	done

_CantSurfText::
	text "Tu nemozes pouzit" ; text "You can't SURF"
	line "SURF." ; line "here."
	prompt

_AlreadySurfingText::
	text "Uz tu" ; text "You're already"
	line "SURFUJES." ; line "SURFING."
	prompt

_AskSurfText::
	text "Voda je ticha." ; text "The water is calm."
	line "Chces SURFOVAT?" ; line "Want to SURF?"
	done

_UseWaterfallText::
	text_ram wStringBuffer2
	text " pouzil" ; text " used"
	line "WATERFALL!" ; line "WATERFALL!"
	done

_HugeWaterfallText::
	text "Wow, to je ale" ; text "Wow, it's a huge"
	line "velky vodopad." ; line "waterfall."
	done

_AskWaterfallText::
	text "Chces pouzit" ; text "Do you want to use"
	line "WATERFALL?" ; line "WATERFALL?"
	done

_UseDigText::
	text_ram wStringBuffer2
	text " pouzil" ; text " used"
	line "DIG!" ; line "DIG!"
	done

_UseEscapeRopeText::
	text "<PLAYER> pouzil" ; text "<PLAYER> used an"
	line "ESCAPE ROPE." ; line "ESCAPE ROPE."
	done

_CantUseDigText::
	text "Toto tu nemozes" ; text "Can't use that"
	line "pouzit." ; line "here."
	done

_TeleportReturnText::
	text "Vracias sa do" ; text "Return to the last"
	line "#MON CENTER."
	done

_CantUseTeleportText::
	text "Toto tu nemozes" ; text "Can't use that"
	line "pouzit." ; line "here."

	para ""
	done

_AlreadyUsingStrengthText::
	text "#MON uz" ; text "A #MON is using"
	line "STRENGTH pouziva." ; line "STRENGTH already."
	prompt

_UseStrengthText::
	text_ram wStringBuffer2
	text " pouzil" ; text " used"
	line "STRENGTH!" ; line "STRENGTH!"
	done

_MoveBoulderText::
	text_ram wStringBuffer1
	text " moze" ; text " can"
	line "hybat kamenmi." ; line "move boulders."
	prompt

_AskStrengthText::
	text "#MON tym mozno" ; text "A #MON may be"
	line "dokaze pohnut." ; line "able to move this."

	para "Chces pouzit" ; para "Want to use"
	line "STRENGTH?"
	done

_BouldersMoveText::
	text "Mozes hybat" ; text "Boulders may now"
	line "kamenmi!" ; line "be moved!"
	done

_BouldersMayMoveText::
	text "#MON tym mozno" ; text "A #MON may be"
	line "dokaze pohnut." ; line "able to move this."
	done

_UseWhirlpoolText::
	text_ram wStringBuffer2
	text " pouzil" ; text " used"
	line "WHIRLPOOL!"
	prompt

_MayPassWhirlpoolText::
	text "Je to strasny" ; text "It's a vicious"
	line "vodny vir!" ; line "whirlpool!"

	para "#MON ho mozno" ; para "A #MON may be"
	line "dokaze odstranit." ; line "able to pass it."
	done

_AskWhirlpoolText::
	text "V ceste ti" ; text "A whirlpool is in"
	line "stoji vodny vir." ; line "the way."

	para "Pouzit" ; para "Want to use"
	line "WHIRLPOOL?"
	done

_UseHeadbuttText::
	text_ram wStringBuffer2
	text " pouzil" ; text " did a"
	line "HEADBUTT!"
	prompt

_HeadbuttNothingText::
	text "Nie. Nic…" ; text "Nope. Nothing…"
	done

_AskHeadbuttText::
	text "#MON moze byt" ; text "A #MON could be"
	line "v tomto strome." ; line "in this tree."

	para "Pouzit HEADBUTT?" ; para "Want to HEADBUTT"
	;line "it?" ; line "it?"
	done

_UseRockSmashText::
	text_ram wStringBuffer2
	text " pouzil" ; text " used"
	line "ROCK SMASH!"
	prompt

_MaySmashText::
	text "Mozno to #MON" ; text "Maybe a #MON"
	line "dokaze rozbit." ; line "can break this."
	done

_AskRockSmashText::
	text "Tato skala" ; text "This rock looks"
	line "vypada krehko." ; line "breakable."

	para "Chces pouzit ROCK" ; para "Want to use ROCK"
	line "SMASH?" ; line "SMASH?"
	done

_RodBiteText::
	text "Oh!" ; text "Oh!"
	line "Ulovok!" ; line "A bite!"
	prompt

_RodNothingText::
	text "Ani rybicka!" ; text "Not even a nibble!"
	prompt

_UnusedNothingHereText::
	text "Vypada, ze tu nie" ; text "Looks like there's"
	line "nie je." ; line "nothing here."
	prompt

_CantGetOffBikeText::
	text "Nemozes zist" ; text "You can't get off"
	line "z bicykla!" ; line "here!"
	done

_GotOnBikeText::
	text "<PLAYER> nasadol na" ; text "<PLAYER> got on the"
	line "@"
	text_ram wStringBuffer2
	text "."
	done

_GotOffBikeText::
	text "<PLAYER> zisiel" ; text "<PLAYER> got off"
	line "z @" ; line "the @"
	text_ram wStringBuffer2
	text "."
	done

_AskCutText::
	text "Tento strom sa da" ; text "This tree can be"
	line "odrezat s CUT!"

	para "Pouzit CUT?" ; para "Want to use CUT?"
	done

_CanCutText::
	text "Tento strom sa da" ; text "This tree can be"
	line "odrezat s CUT!"
	done

_FoundItemText::
	text "<PLAYER> nasiel" ; text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_CantCarryItemText::
	text "Ale <PLAYER> nemoze" ; text "But <PLAYER> can't"
	line "odniest viac" ; line "carry any more"
	cont "veci." ; cont "items."
	done

_WhitedOutText::
	text "<PLAYER> nema" ; text "<PLAYER> is out of"
	line "dalsich #MON!" ; line "useable #MON!"

	para "<PLAYER> odpadol!" ; para "<PLAYER> whited"
	;line "out!" ; line "out!"
	done

_ItemfinderItemNearbyText::
	text "Ano! ITEMFINDER" ; text "Yes! ITEMFINDER"
	line "zachytil predmet" ; line "indicates there's"
	cont "v blizkosti." ; cont "an item nearby."
	prompt

_ItemfinderNopeText::
	text "Nie! ITEMFINDER" ; text "Nope! ITEMFINDER"
	line "nic nezachytil." ; line "isn't responding."
	prompt

_PoisonFaintText::
	text_ram wStringBuffer3
	text_start
	line "odpadol!" ; line "fainted!"
	prompt

_PoisonWhiteoutText::
	text "<PLAYER> uz nema" ; text "<PLAYER> is out of"
	line "dalsich #MON!" ; line "useable #MON!"

	para "<PLAYER> odpadol" ; para "<PLAYER> whited"
	;line "out!" ; line "out!"
	prompt

_UseSweetScentText::
	text_ram wStringBuffer3
	text " pouzil" ; text " used"
	line "SWEET SCENT!" ; line "SWEET SCENT!"
	done

_SweetScentNothingText::
	text "Vypada to ze tu" ; text "Looks like there's"
	line "nic nie je…" ; line "nothing here…"
	done

_SquirtbottleNothingText::
	text "<PLAYER> nastriekal" ; text "<PLAYER> sprinkled"
	line "vodu." ; line "water."

	para "Ale nic sa" ; para "But nothing"
	line "nestalo…" ; line "happened…"
	done

_UseSacredAshText::
	text "<PLAYER>'ovi #MON" ; text "<PLAYER>'s #MON"
	line "boli vylieceni!" ; line "were all healed!"
	done

_AnEggCantHoldAnItemText::
	text "VAJICKO nemoze" ; text "An EGG can't hold"
	line "drzat predmet." ; line "an item."
	prompt

_PackNoItemText::
	text "Ziadne predmety." ; text "No items."
	done

_AskThrowAwayText::
	text "Odhodit" ; text "Throw away how"
	line "kolko?" ; line "many?"
	done

_AskQuantityThrowAwayText::
	text "Odhodil si @" ; text "Throw away @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	;text "(S)?" 
	done

_ThrewAwayText::
	text "Odhodil si" ; text "Threw away"
	line "@"
	text_ram wStringBuffer2
	;text "(S)."
	prompt

_OakThisIsntTheTimeText::
	text "OAK: <PLAYER>!" ; text "OAK: <PLAYER>!"
	line "Toto teraz" ; line "This isn't the"
	cont "nemozes pouzit!" ; cont "time to use that!"
	prompt

_YouDontHaveAMonText::
	text "Nemas" ; text "You don't have a"
	line "#MON!"
	prompt

_RegisteredItemText::
	text "Oznacil si si" ; text "Registered the"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_CantRegisterText::
	text "Tento predmet si" ; text "You can't register"
	line "nemozes oznacit." ; line "that item."
	prompt

_AskItemMoveText::
	text "Kam to chces" ; text "Where should this"
	line "presunut?" ; line "be moved to?"
	done

_PackEmptyText::
	text_start
	done

_YouCantUseItInABattleText::
	text "Toto nemozes" ; text "You can't use it"
	line "pouzit v zapase." ; line "in a battle."
	prompt

_AreYouABoyOrAreYouAGirlText::
	text "Si chlapec?" ; text "Are you a boy?"
	line "Alebo si dievca?" ; line "Or are you a girl?"
	done

Text_BattleEffectActivate::
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_BattleStatWentWayUpText::
	text_pause
	text "<SCROLL>sa velmi zvysil!" ; text "<SCROLL>went way up!"
	prompt

_BattleStatWentUpText::
	text " sa zvysil!" ; text " went up!"
	prompt

Text_BattleFoeEffectActivate::
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_BattleStatSharplyFellText::
	text_pause
	text "<SCROLL>ostro spadol!" ; text "<SCROLL>sharply fell!"
	prompt

_BattleStatFellText::
	text " spadol!" ; text " fell!"
	prompt

Text_BattleUser::
	text "<USER>@"
	text_end

_BattleMadeWhirlwindText::
	text_start
	line "urobil vichricu!" ; line "made a whirlwind!"
	prompt

_BattleTookSunlightText::
	text_start
	line "sa opaluje!" ; line "took in sunlight!"
	prompt

_BattleLoweredHeadText::
	text_start
	line "sklonil hlavu!" ; line "lowered its head!"
	prompt

_BattleGlowingText::
	text_start
	line "zacal ziarit!" ; line "is glowing!"
	prompt

_BattleFlewText::
	text_start
	line "vyletel vysoko!" ; line "flew up high!"
	prompt

_BattleDugText::
	text_start
	line "vyhrabal jamu!" ; line "dug a hole!"
	prompt

_ActorNameText::
	text "<USER>@"
	text_end

_UsedMove1Text::
	text_start
	line "pouzil @" ; line "used @"
	text_end

_UsedMove2Text::
	text_start
	line "pouzil @" ; line "used @"
	text_end

_UsedInsteadText::
	text "miesto," ; text "instead,"
	cont "@"
	text_end

_MoveNameText::
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_EndUsedMove1Text::
	text "!"
	done

_EndUsedMove2Text::
	text "!"
	done

_EndUsedMove3Text::
	text "!"
	done

_EndUsedMove4Text::
	text "!"
	done

_EndUsedMove5Text::
	text "!"
	done

Text_BreedHuh::
	text "Hm?" ; text "Huh?"

	para "@"
	text_end

_BreedClearboxText::
	text_start
	done

_BreedEggHatchText::
	text_ram wStringBuffer1
	text " sa" ; text " came"
	line "vyliahol z VAJICKA!@" ; line "out of its EGG!@"
	sound_caught_mon
	text_promptbutton
	text_end

	text_end ; unreferenced

_BreedAskNicknameText::
	text "Dat prezyvku" ; text "Give a nickname to"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_LeftWithDayCareLadyText::
	text "Je to @" ; text "It's @"
	text_ram wBreedMon2Nickname
	text_start
	line "ktoreho si nechal" ; line "that was left with"
	cont "DAY-CARE LADY." ; cont "the DAY-CARE LADY."
	done

_LeftWithDayCareManText::
	text "Je to @" ; text "It's @"
	text_ram wBreedMon1Nickname
	text_start
	line "ktoreho si nechal" ; line "that was left with"
	cont "DAY-CARE MAN." ; cont "the DAY-CARE MAN."
	done

_BreedBrimmingWithEnergyText::
	text "Prekypuje" ; text "It's brimming with"
	line "energiou." ; line "energy."
	prompt

_BreedNoInterestText::
	text "Nema zaujem" ; text "It has no interest"
	line "o @" ; line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedAppearsToCareForText::
	text "Zaujima sa" ; text "It appears to care"
	line "o @" ; line "for @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedFriendlyText::
	text "Je priatelsky s" ; text "It's friendly with"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedShowsInterestText::
	text "Ma zaujem" ; text "It shows interest"
	line "o @" ; line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

_EmptyMailboxText::
	text "Nie je tu ziadny" ; text "There's no MAIL"
	line "MAIL." ; line "here."
	prompt

_MailClearedPutAwayText::
	text "MAIL" ; text "The cleared MAIL"
	line "bol odlozeny." ; line "was put away."
	prompt

_MailPackFullText::
	text "BATOH je plny." ; text "The PACK is full."
	prompt

_MailMessageLostText::
	text "Mailova sprava" ; text "The MAIL's message"
	line "bude stratena. OK?" ; line "will be lost. OK?"
	done

_MailAlreadyHoldingItemText::
	text "Uz drzi predmet" ; text "It's already hold-"
	;line "ing an item." ; line "ing an item."
	prompt

_MailEggText::
	text "VAJICKO nemoze" ; text "An EGG can't hold"
	line "drzat MAIL." ; line "any MAIL."
	prompt

_MailMovedFromBoxText::
	text "MAIL bol presunuty" ; text "The MAIL was moved"
	line "z MAILBOXu." ; line "from the MAILBOX."
	prompt

_YesPromptText:: ; unreferenced
	text "Yes"
	prompt

_NoPromptText:: ; unreferenced
	text "No"
	prompt

_AnimationTypeText:: ; unreferenced
	text_decimal wcf64, 1, 3
	text " @"
	text_ram wStringBuffer1
	text_start
	line "Animation type @"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_MonNumberText:: ; unreferenced
	text "#MON number?"
	done

_WasSentToBillsPCText::
	text_ram wStringBuffer1
	text " bol poslany" ; text " was"
	line "do BILLovho PC." ; line "sent to BILL's PC."
	prompt

_PCGottaHavePokemonText::
	text "Musis mat aspon 1" ; text "You gotta have"
	line "#MON!" ; line "#MON to call!"
	prompt

_PCWhatText::
	text "Co?" ; text "What?"
	done

_PCMonHoldingMailText::
	text "#MON" ; text "There is a #MON"
	line "drzi MAIL." ; line "holding MAIL."

	para "Prosim odstran" ; para "Please remove the"
	line "MAIL." ; line "MAIL."
	prompt

_PCNoSingleMonText::
	text "Nemas ani jedneho" ; text "You don't have a"
	line "#MON!" ; line "single #MON!"
	prompt

_PCCantDepositLastMonText::
	text "Nemozes odlozit" ; text "You can't deposit"
	line "posledneho #MON!" ; line "your last #MON!"
	prompt

_PCCantTakeText::
	text "Nemozes si vziat" ; text "You can't take any"
	line "viac #MON." ; line "more #MON."
	prompt

_ContestCaughtMonText::
	text "Chytil si @" ; text "Caught @"
	text_ram wStringBuffer1
	text "!"
	prompt

_ContestAskSwitchText::
	text "Vymenit #MON?" ; text "Switch #MON?"
	done

_ContestAlreadyCaughtText::
	text "Uz si chytil" ; text "You already caught"
	;line "a @" ; line "a @"
	text_ram wStringBuffer1
	text "."
	prompt

_ContestJudging_FirstPlaceText::
	text "Vitaz Hmyzovej" ; text "This Bug-Catching"
	line "sutaze je @" ; line "Contest winner is@"
	text_pause
	text "…"

	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "ktory chytil" ; line "who caught a"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_FirstPlaceScoreText::
	text_start

	para "Vitazne skore" ; para "The winning score"
	line "bolo @" ; line "was @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " bodov!" ; text " points!"
	prompt

_ContestJudging_SecondPlaceText::
	text "Na druhom mieste je" ; text "Placing second was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "ktory chytil" ; para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_SecondPlaceScoreText::
	text_start

	para "Skore bolo" ; para "The score was"
	line "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " bodov!" ; text " points!"
	prompt

_ContestJudging_ThirdPlaceText::
	text "Treti skoncil" ; text "Placing third was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "ktory chytil" ; para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_ThirdPlaceScoreText::
	text_start

	para "Skore bolo" ; para "The score was"
	line "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " bodov!" ; text " points!"
	prompt

_MagikarpGuruMeasureText::
	text "Odmeram tvojho" ; text "Let me measure"
	line "MAGIKARPa." ; line "that MAGIKARP."

	para "…Hm, mera" ; para "…Hm, it measures"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_KarpGuruRecordText::
	text "AKTUALNY REKORD" ; text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer1
	text " ktoreho chytil" ; text " caught by"
	line "@"
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

	text_end ; unreferenced

_LuckyNumberMatchPartyText::
	text "Gratulujeme!" ; text "Congratulations!"

	para "Mate vyherne" ; para "We have a match"
	line "ID cislo" ; line "with the ID number"

	para "od @" ; para "of @"
	text_ram wStringBuffer1
	text " v" ; text " in"
	line "tvojej parte." ; line "your party."
	prompt

_LuckyNumberMatchPCText::
	text "Gratulujeme!" ; text "Congratulations!"

	para "Mate vyherne" ; para "We have a match"
	line "ID cislo" ; line "with the ID number"

	para "od @" ; para "of @"
	text_ram wStringBuffer1
	text " v" ; text " in"
	line "tvojom PC BOX." ; line "your PC BOX."
	prompt

_CaughtAskNicknameText::
	text "Chces dat prezyvku" ; text "Give a nickname to"
	line "@" ; line "the @"
	text_ram wStringBuffer1
	text " ktoreho" ; text " you"
	cont "si dostal?" ; cont "received?"
	done

_PokecenterPCCantUseText::
	text "Bzzzzt! Musis" ; text "Bzzzzt! You must"
	line "mat #MON aby" ; line "have a #MON to"
	cont "si to mohol pouzit!" ; cont "use this!"
	prompt

_PlayersPCTurnOnText::
	text "<PLAYER> zapol" ; text "<PLAYER> turned on"
	line "PC." ; line "the PC."
	prompt

_PlayersPCAskWhatDoText::
	text "Co chces" ; text "What do you want"
	line "urobit?" ; line "to do?"
	done

_PlayersPCHowManyWithdrawText::
	text "Kolko si chces" ; text "How many do you"
	line "vybrat?" ; line "want to withdraw?"
	done

_PlayersPCWithdrewItemsText::
	text "Vybral si @" ; text "Withdrew @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	;text "(S)."
	prompt

_PlayersPCNoRoomWithdrawText::
	text "Nemas miesto" ; text "There's no room"
	line "v batohu." ; line "for more items."
	prompt

_PlayersPCNoItemsText::
	text "Ziadne predmety!" ; text "No items here!"
	prompt

_PlayersPCHowManyDepositText::
	text "Kolko chces" ; text "How many do you"
	line "odoslat?" ; line "want to deposit?"
	done

_PlayersPCDepositItemsText::
	text "Odoslal si @" ; text "Deposited @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	;text "(S)."
	prompt

_PlayersPCNoRoomDepositText::
	text "Nie je miesto na" ; text "There's no room to"
	line "odlozenie predmetov." ; line "store items."
	prompt

_PokecenterPCTurnOnText::
	text "<PLAYER> zapol" ; text "<PLAYER> turned on"
	line "PC." ; line "the PC."
	prompt

_PokecenterPCWhoseText::
	text "Kam sa prihlasit?" ; text "Access whose PC?"
	done

_PokecenterBillsPCText::
	text "Pripojil si sa" ; text "BILL's PC"
	line "k BILLovmu PC." ; line "accessed."

	para "#MON" ; para "#MON Storage"
	line "system otvoreny." ; line "System opened."
	prompt

_PokecenterPlayersPCText:: ;;;added line
	text "Pripojil si sa" ; text "Accessed own PC."
	line "k svojmu PC."
	para "System skladovania" ; para "Item Storage"
	line "predmetov otvoreny." ; line "System opened."
	prompt

_PokecenterOaksPCText::
	text "Pripojil si sa" ; text "PROF.OAK's PC"
	line "k PROF.OAK PC" ; line "accessed."

	para "#DEX" ; para "#DEX Rating"
	line "System otvoreny." ; line "System opened."
	prompt

_PokecenterPCOaksClosedText::
	text "…"
	line "PC vypnuty…" ; line "Link closed…"
	done

_OakPCText1::
	text "Chces ohodnotit" ; text "Want to get your"
	line "#DEX?" ; line "#DEX rated?"
	done

_OakPCText2::
	text "Aktualna uroven" ; text "Current #DEX"
	line "dokoncenia #DEX" ; line "completion level:"
	prompt

_OakPCText3::
	text_ram wStringBuffer3
	text " #MON videnych" ; text " #MON seen"
	line "@"
	text_ram wStringBuffer4
	text " #MON chytenych" ; text " #MON owned"

	para "PROF.OAKove"
	line "Hodnotenie:" ; line "Rating:"
	done

_OakRating01::
	text "Hladaj #MON v" ; text "Look for #MON"
	line "lesnych oblastiach!" ; line "in grassy areas!"
	done

_OakRating02::
	text "Dobre. Vidim, ze" ; text "Good. I see you"
	line "dokazes pouzivat" ; line "understand how to"
	cont "# BALLS." ; cont "use # BALLS."
	done

_OakRating03::
	text "Stale sa" ; text "You're getting" 
	line "zlepsujes." ; line "good at this."

	para "Ale mas pred sebou" ; para "But you have a"
	line "este dlhu cestu." ; line "long way to go."
	done

_OakRating04::
	text "Musis naplnit" ; text "You need to fill"
	line "svoj #DEX." ; line "up the #DEX."

	para "Pochytaj rozne" ; para "Catch different"
	line "druhy #MON!" ; line "kinds of #MON!"
	done

_OakRating05::
	text "Snazis sa--" ; text "You're trying--I"
	line "vidim to." ; line "can see that."

	para "Tvoj #DEX sa" ; para "Your #DEX is"
	line "pomaly zaplnuje." ; line "coming together."
	done

_OakRating06::
	text "K vyvinu niektorych" ; text "To evolve, some"
	line "#MON," ; line "#MON grow,"

	para "potrebujes pouzit" ; para "others use the"
	line "ucinky STONES." ; line "effects of STONES."
	done

_OakRating07::
	text "Ziskal si uz" ; text "Have you gotten a"
	line "UDICU? Mozes" ; line "fishing ROD? You"

	para "chytat #MON" ; para "can catch #MON"
	line "rybarcenim." ; line "by fishing."
	done

_OakRating08::
	text "Vyborne! Zda sa" ; text "Excellent! You"
	line "ze rad zbieras" ; line "seem to like col-"
	cont "veci!" ; cont "lecting things!"
	done

_OakRating09::
	text "Niektori #MON sa" ; text "Some #MON only"
	line "objavia iba" ; line "appear during"

	para "v urcitu dobu" ; para "certain times of"
	line "dna." ; line "the day."
	done

_OakRating10::
	text "Tvoj #DEX sa" ; text "Your #DEX is"
	line "naplnuje." ; line "filling up. Keep"
	cont "Pokracuj v praci!" ; cont "up the good work!"
	done

_OakRating11::
	text "Som ohromeny." ; text "I'm impressed."
	line "Vyvijas svojich" ; line "You're evolving"

	para "#MON, a nie" ; para "#MON, not just"
	line "len chytas." ; line "catching them."
	done

_OakRating12::
	text "Stretol si KURTa?" ; text "Have you met KURT?"
	line "Jeho BALLS" ; line "His custom BALLS"
	cont "ti pomozu." ; cont "should help."
	done

_OakRating13::
	text "Wow. Nasiel si" ; 	text "Wow. You've found"
	line "viac #MON ako" ; line "more #MON than"

	para "posledny #DEX" ; para "the last #DEX"
	line "vyskumny projekt." ; line "research project."
	done

_OakRating14::
	text "Vymienal si" ; text "Are you trading"
	line "svojich #MON?" ; line "your #MON?"

	para "Je to tazke" ; para "It's tough to do"
	line "dosiahnut to sam!" ; line "this alone!"
	done

_OakRating15::
	text "Wow! dosiahol si" ; text "Wow! You've hit"
	line "200! Tvoj #DEX" ; line "200! Your #DEX"
	cont "vypada skvele!" ; cont "is looking great!"
	done

_OakRating16::
	text "Nasiel si tak" ; text "You've found so"
	line "vela #MON!" ; line "many #MON!"

	para "Velmi si mi po-" ; para "You've really"
	line "mohol so studiami!" ; line "helped my studies!"
	done

_OakRating17::
	text "Velkolepe! Mohol" ; text "Magnificent! You"
	line "by si sa stat" ; line "could become a"

	para "#MON profesorom" ; para "#MON professor"
	line "hned teraz!" ; line "right now!"
	done

_OakRating18::
	text "Tvoj #DEX je" ; text "Your #DEX is"
	line "uzasny! Si" ; line "amazing! You're"

	para "pripraveny sa stat" ; para "ready to turn"
	line "profesionalom!" ; line "professional!"
	done

_OakRating19::
	text "Whou! Dokonaly" ; text "Whoa! A perfect"
	line "#DEX! O" ; line "#DEX! I've"

	para "tomto som snival!" ; para "dreamt about this!"
	line "Gratulujem!" ; line "Congratulations!"
	done

_OakPCText4::
	text "Odpojil si sa z" ; text "The link to PROF."
	line "PROF.OAK PC." ; line "OAK's PC closed."
	done

_TrainerRankingExplanationText:: ; unreferenced
	text "Triple-theme"
	line "trainer ranking!"

	para "The SAVE file you"
	line "just sent might"
	cont "make the rankings!"

	para ""
	done

_TrainerRankingNoDataText:: ; unreferenced
	text "There is no"
	line "ranking data."

	para "Link to obtain"
	line "ranking data."

	para ""
	done

_MemoryGameYeahText::
	text " , yeah!" ; text " , yeah!"
	done

_MemoryGameDarnText::
	text "Sakra…" ; text "Darn…"
	done

_StartMenuContestEndText::
	text "Chces ukoncit" ; text "Would you like to"
	line "sutaz?" ; line "end the Contest?"
	done

_ItemsTossOutHowManyText::
	text "Odhodit kolko" ; text "Toss out how many"
	line "@"
	text_ram wStringBuffer2
	;text "(S)?"
	done

_ItemsThrowAwayText::
	text "Odhodit @" ; text "Throw away @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	;text "(S)?"
	done

_ItemsDiscardedText::
	text "Vyhodil si" ; text "Discarded"
	line "@"
	text_ram wStringBuffer1
	;text "(S)."
	prompt

_ItemsTooImportantText::
	text "To je prilis dole-" ; text "That's too impor-"
	line "zite na vyhodenie!" ; line "tant to toss out!"
	prompt

_ItemsOakWarningText::
	text "OAK: <PLAYER>!" ; text "OAK: <PLAYER>!"
	line "Toto teraz" ; line "This isn't the"
	cont "nemozes pouzit!" ; cont "time to use that!"
	done

_PokemonSwapItemText::
	text "Vzal si @" ; text "Took @"
	text_ram wMonOrItemNameBuffer
	;text "'s"
	line "@"
	text_ram wStringBuffer1
	text " a" ; text " and"

	para "dal si mu" ; para "made it hold"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonHoldItemText::
	text "Dal si @" ; text "Made @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "drzat @" ; line "hold @"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonRemoveMailText::
	text "Prosim najprv" ; text "Please remove the"
	line "odstran MAIL." ; line "MAIL first."
	prompt

_PokemonNotHoldingText::
	text_ram wMonOrItemNameBuffer
	text " nic" ; text " isn't"
	line "nedrzi." ; line "holding anything."
	prompt

_ItemStorageFullText::
	text "BATOH je" ; text "Item storage space"
	line "plny." ; line "full."
	prompt

_PokemonTookItemText::
	text "Vzal si @" ; text "Took @"
	text_ram wStringBuffer1
	text_start
	line "z @" ; line "from @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

_PokemonAskSwapItemText::
	text_ram wMonOrItemNameBuffer
	text " uz" ; text " is"
	line "drzi" ; line "already holding"

	para "@"
	text_ram wStringBuffer1
	text "."
	line "Vymenit predmety?" ; line "Switch items?"
	done

_ItemCantHeldText::
	text "Tento predmet ne-" ; text "This item can't be"
	line "moze byt drzany." ; line "held."
	prompt

_MailLoseMessageText::
	text "MAIL strati" ; text "The MAIL will lose"
	line "svoju spravu. OK?" ; line "its message. OK?"
	done

_MailDetachedText::
	text "MAIL odobraty z" ; text "MAIL detached from"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MailNoSpaceText::
	text "Nie je miesto" ; text "There's no space"
	line "na odobratie MAILu." ; line "for removing MAIL."
	prompt

_MailAskSendToPCText::
	text "Odoslat odobraty" ; text "Send the removed"
	line "MAIL do tvojho PC?" ; line "MAIL to your PC?"
	done

_MailboxFullText::
	text "Tvoj PC MAILBOX" ; text "Your PC's MAILBOX"
	line "je plny." ; line "is full."
	prompt

_MailSentToPCText::
	text "MAIL bol odoslany" ; text "The MAIL was sent"
	line "do tvojho PC." ; line "to your PC."
	prompt

_PokemonNotEnoughHPText::
	text "Nedostatok HP!" ; text "Not enough HP!"
	prompt

_MayRegisterItemText::
	text "Predmet v tvojom" ; text "An item in your"
	line "BATOHU moze byt" ; line "PACK may be"

	para "oznaceny na" ; para "registered for use"
	line "SELECT tlacitko." ; line "on SELECT Button."
	done

_OakText1::
	text "Ahoj! Prepac" ; text "Hello! Sorry to"
	line "za zdrzanie!" ; line "keep you waiting!"

	para "Vitaj v svete" ; para "Welcome to the"
	line "#MON!" ; line "world of #MON!"

	para "Som OAK." ; para "My name is OAK."

	para "Ludia ma volaju" ; para "People call me the"
	line "#MON PROF." ; line "#MON PROF."
	prompt

_OakText2::
	text "Tento svet je" ; text "This world is in-"
	line "obyvany tvormi," ; line "habited by crea-"
	cont "ktore volame" ; cont "tures that we call"
	cont "#MON.@" 
	text_end

_OakText3::
	text_promptbutton
	text_end

	text_end ; unreferenced

_OakText4::
	text "Ludia a #MON" ; text "People and #MON"
	line "ziju spolu" ; line "live together by"

	para "podporujuc jeden" ; para "supporting each"
	line "druheho." ; line "other."

	para "Niektori ludia sa" ; para "Some people play"
	line "hraju s #MON," ; line "with #MON, some"
	cont "niektori s nimi" ; cont "battle with them."
	cont "zapasia." ; cont "battle with them."
	prompt

_OakText5::
	text "Stale vsak nevieme" ; text "But we don't know"
	line "vsetko o" ; line "everything about"
	cont "#MON." ; cont "#MON yet."

	para "Stale existuje" ; para "There are still"
	line "vela zahad" ; line "many mysteries to"
	cont "na vyriesenie." ; cont "solve."

	para "Preto studujem" ; para "That's why I study"
	line "#MON kazdy den." ; line "#MON every day."
	prompt
