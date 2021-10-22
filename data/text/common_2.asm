_NoPhotoText::
	text "Oh, no picture?" ; text "Oh, no picture?"
	line "Come again, OK?" ; line "Come again, OK?"
	done

_EggPhotoText::
	text "An EGG? My talent" ; text "An EGG? My talent"
	line "is worth more…" ; line "is worth more…"
	done

_NameRaterHelloText::
	text "Hello, hello! I'm" ; text "Hello, hello! I'm"
	line "the NAME RATER." ; line "the NAME RATER."

	para "I rate the names" ; para "I rate the names"
	line "of #MON." ; line "of #MON."

	para "Would you like me" ; para "Would you like me"
	line "to rate names?" ; line "to rate names?"
	done

_NameRaterWhichMonText::
	text "Which #MON's" ; text "Which #MON's"
	line "nickname should I" ; line "nickname should I"
	cont "rate for you?" ; cont "rate for you?"
	prompt

_NameRaterBetterNameText::
	text "Hm… @" ; text "Hm… @"
	text_ram wStringBuffer1
	text "…"
	line "That's a fairly" ; line "That's a fairly"
	cont "decent name." ; cont "decent name."

	para "But, how about a" ; para "But, how about a"
	line "slightly better" ; line "slightly better"
	cont "nickname?" ; cont "nickname?"

	para "Want me to give it" ; para "Want me to give it"
	line "a better name?" ; line "a better name?"
	done

_NameRaterWhatNameText::
	text "All right. What" ; text "All right. What"
	line "name should we" ; line "name should we"
	cont "give it, then?" ; cont "give it, then?"
	prompt

_NameRaterFinishedText::
	text "That's a better" ; text "That's a better"
	line "name than before!" ; line "name than before!"

	para "Well done!" ; para "Well done!"
	done

_NameRaterComeAgainText::
	text "OK, then. Come" ; text "OK, then. Come"
	line "again sometime." ; line "again sometime."
	done

_NameRaterPerfectNameText::
	text "Hm… @" ; text "Hm… @"
	text_ram wStringBuffer1
	text "?"
	line "What a great name!" ; line "What a great name!"
	cont "It's perfect." ; cont "It's perfect."

	para "Treat @" ; para "Treat @"
	text_ram wStringBuffer1
	text_start
	line "with loving care." ; line "with loving care."
	done

_NameRaterEggText::
	text "Whoa… That's just" ; text "Whoa… That's just"
	line "an EGG." ; line "an EGG." 
	done

_NameRaterSameNameText::
	text "It might look the" ; text "It might look the"
	line "same as before," ; line "same as before,"

	para "but this new name" ; para "but this new name"
	line "is much better!" ; line "is much better!"

	para "Well done!" ; para "Well done!"
	done

_NameRaterNamedText::
	text "All right. This" ; text "All right. This"
	line "#MON is now" ; line "#MON is now"
	cont "named @" ; cont "named @"
	text_ram wStringBuffer1
	text "."
	prompt

Text_Gained::
	text_ram wStringBuffer1
	text " gained@" ; text " gained@"
	text_end

_BoostedExpPointsText::
	text_start
	line "a boosted" ; line "a boosted"
	cont "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. Points!" ; text " EXP. Points!"
	prompt

_ExpPointsText::
	text_start
	line "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. Points!" ; text " EXP. Points!"
	prompt

_GoMonText::
	text "Go! @" ; text "Go! @"
	text_end

_DoItMonText::
	text "Do it! @" ; text "Do it! @"
	text_end

_GoForItMonText::
	text "Go for it," ; text "Go for it,"
	line "@"
	text_end

_YourFoesWeakGetmMonText::
	text "Your foe's weak!" ; text "Your foe's weak!"
	line "Get'm, @" ; line "Get'm, @"
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
	text " that's" ; text " that's"
	line "enough! Come back!@" ; line "enough! Come back!@"
	text_end

_OKComeBackText::
	text " OK!" ; text " OK!"
	line "Come back!@" ; line "Come back!@"
	text_end

_GoodComeBackText::
	text " good!" ; text " good!"
	line "Come back!@" ; line "Come back!@"
	text_end

_ComeBackText::
	text " come" ; text " come"
	line "back!" ; line "back!"
	done

_BootedTMText::
	text "Booted up a TM." ; text "Booted up a TM."
	prompt

_BootedHMText::
	text "Booted up an HM." ; text "Booted up an HM."
	prompt

_ContainedMoveText::
	text "It contained" ; text "It contained"
	line "@"
	text_ram wStringBuffer2
	text "."

	para "Teach @" ; para "Teach @"
	text_ram wStringBuffer2
	text_start
	line "to a #MON?" ; line "to a #MON?"
	done

_TMHMNotCompatibleText::
	text_ram wStringBuffer2
	text " is" ; text " is"
	line "not compatible" ; line "not compatible"
	cont "with @" ; cont "with @"
	text_ram wStringBuffer1
	text "."

	para "It can't learn" ; para "It can't learn"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_NoRoomTMHMText::
	text "You have no room" ; text "You have no room"
	line "for any more" ; line "for any more"
	cont "@"
	text_ram wStringBuffer1
	text "S."
	prompt

_ReceivedTMHMText::
	text "You received" ; text "You received"
	line "@"
	text_ram wStringBuffer1
	text "!"
	prompt

_MysteryGiftCanceledText::
	text "The link has been" ; text "The link has been"
	line "cancelled." ; line "cancelled."
	prompt

_MysteryGiftCommErrorText::
	text "Communication" ; text "Communication"
	line "error." ; line "error."
	prompt

_RetrieveMysteryGiftText::
	text "Must retrieve GIFT" ; text "Must retrieve GIFT"
	line "at #MON CENTER." ; line "at #MON CENTER."
	prompt

_YourFriendIsNotReadyText::
	text "Your friend isn't" ; text "Your friend isn't"
	line "ready." ; line "ready."
	prompt

_MysteryGiftFiveADayText::
	text "Sorry--only five" ; text "Sorry--only five"
	line "GIFTS a day." ; line "GIFTS a day."
	prompt

_MysteryGiftOneADayText::
	text "Sorry. One GIFT" ; text "Sorry. One GIFT"
	line "a day per person." ; line "a day per person."
	prompt

_MysteryGiftSentText::
	text_ram wMysteryGiftPartnerName
	text " sent" ; text " sent"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MysteryGiftSentHomeText::
	text_ram wMysteryGiftPartnerName
	text " sent" ; text " sent"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "to @" ; cont "to @"
	text_ram wMysteryGiftPlayerName
	text "'s home." ; text "'s home."
	prompt

_NameCardReceivedCardText::
	text "Received" ; text "Received"
	line "@"
	text_ram wMysteryGiftCardHolderName
	text "'s CARD." ; text "'s CARD."
	prompt

_NameCardListedCardText::
	text_ram wMysteryGiftCardHolderName
	text "'s CARD was" ; text "'s CARD was"
	line "listed as no.@" ; line "listed as no.@"
	text_decimal wTextDecimalByte, 1, 2
	text "."
	prompt

_NameCardNotRegisteredCardText::
	text "The CARD was not" ; text "The CARD was not"
	line "registered." ; line "registered."
	prompt

_NameCardLinkCancelledText::
	text "The link has been" ; text "The link has been"
	line "cancelled." ; line "cancelled."
	prompt

_NameCardLinkCommErrorText::
	text "Communication" ; text "Communication"
	line "error." ; line "error."
	prompt

_BadgeRequiredText::
	text "Sorry! A new BADGE" ; text "Sorry! A new BADGE"
	line "is required." ; line "is required."
	prompt

_CantUseItemText::
	text "Can't use that" ; text "Can't use that"
	line "here." ; line "here."
	prompt

_UseCutText::
	text_ram wStringBuffer2
	text " used" ; text " used"
	line "CUT!" ; line "CUT!"
	prompt

_CutNothingText::
	text "There's nothing to" ; text "There's nothing to"
	line "CUT here." ; line "CUT here."
	prompt

_BlindingFlashText::
	text "A blinding FLASH" ; text "A blinding FLASH"
	line "lights the area!@" ; line "lights the area!@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_UsedSurfText::
	text_ram wStringBuffer2
	text " used" ; text " used"
	line "SURF!" ; line "SURF!"
	done

_CantSurfText::
	text "You can't SURF" ; text "You can't SURF"
	line "here." ; line "here."
	prompt

_AlreadySurfingText::
	text "You're already" ; text "You're already"
	line "SURFING." ; line "SURFING."
	prompt

_AskSurfText::
	text "The water is calm." ; text "The water is calm."
	line "Want to SURF?" ; line "Want to SURF?"
	done

_UseWaterfallText::
	text_ram wStringBuffer2
	text " used" ; text " used"
	line "WATERFALL!" ; line "WATERFALL!"
	done

_HugeWaterfallText::
	text "Wow, it's a huge" ; text "Wow, it's a huge"
	line "waterfall." ; line "waterfall."
	done

_AskWaterfallText::
	text "Do you want to use" ; text "Do you want to use"
	line "WATERFALL?" ; line "WATERFALL?"
	done

_UseDigText::
	text_ram wStringBuffer2
	text " used" ; text " used"
	line "DIG!" ; line "DIG!"
	done

_UseEscapeRopeText::
	text "<PLAYER> used an" ; text "<PLAYER> used an"
	line "ESCAPE ROPE." ; line "ESCAPE ROPE."
	done

_CantUseDigText::
	text "Can't use that" ; text "Can't use that"
	line "here." ; line "here."
	done

_TeleportReturnText::
	text "Return to the last" ; text "Return to the last"
	line "#MON CENTER."
	done

_CantUseTeleportText::
	text "Can't use that" ; text "Can't use that"
	line "here." ; line "here."

	para ""
	done

_AlreadyUsingStrengthText::
	text "A #MON is using" ; text "A #MON is using"
	line "STRENGTH already." ; line "STRENGTH already."
	prompt

_UseStrengthText::
	text_ram wStringBuffer2
	text " used" ; text " used"
	line "STRENGTH!" ; line "STRENGTH!"
	done

_MoveBoulderText::
	text_ram wStringBuffer1
	text " can" ; text " can"
	line "move boulders." ; line "move boulders."
	prompt

_AskStrengthText::
	text "A #MON may be" ; text "A #MON may be"
	line "able to move this." ; line "able to move this."

	para "Want to use" ; para "Want to use"
	line "STRENGTH?"
	done

_BouldersMoveText::
	text "Boulders may now" ; text "Boulders may now"
	line "be moved!" ; line "be moved!"
	done

_BouldersMayMoveText::
	text "A #MON may be" ; text "A #MON may be"
	line "able to move this." ; line "able to move this."
	done

_UseWhirlpoolText::
	text_ram wStringBuffer2
	text " used" ; text " used"
	line "WHIRLPOOL!"
	prompt

_MayPassWhirlpoolText::
	text "It's a vicious" ; text "It's a vicious"
	line "whirlpool!" ; line "whirlpool!"

	para "A #MON may be" ; para "A #MON may be"
	line "able to pass it." ; line "able to pass it."
	done

_AskWhirlpoolText::
	text "A whirlpool is in" ; text "A whirlpool is in"
	line "the way." ; line "the way."

	para "Want to use" ; para "Want to use"
	line "WHIRLPOOL?"
	done

_UseHeadbuttText::
	text_ram wStringBuffer2
	text " did a" ; text " did a"
	line "HEADBUTT!"
	prompt

_HeadbuttNothingText::
	text "Nope. Nothing…" ; text "Nope. Nothing…"
	done

_AskHeadbuttText::
	text "A #MON could be" ; text "A #MON could be"
	line "in this tree." ; line "in this tree."

	para "Want to HEADBUTT" ; para "Want to HEADBUTT"
	line "it?" ; line "it?"
	done

_UseRockSmashText::
	text_ram wStringBuffer2
	text " used" ; text " used"
	line "ROCK SMASH!"
	prompt

_MaySmashText::
	text "Maybe a #MON" ; text "Maybe a #MON"
	line "can break this." ; line "can break this."
	done

_AskRockSmashText::
	text "This rock looks" ; text "This rock looks"
	line "breakable." ; line "breakable."

	para "Want to use ROCK" ; para "Want to use ROCK"
	line "SMASH?" ; line "SMASH?"
	done

_RodBiteText::
	text "Oh!" ; text "Oh!"
	line "A bite!" ; line "A bite!"
	prompt

_RodNothingText::
	text "Not even a nibble!" ; text "Not even a nibble!"
	prompt

_UnusedNothingHereText::
	text "Looks like there's" ; text "Looks like there's"
	line "nothing here." ; line "nothing here."
	prompt

_CantGetOffBikeText::
	text "You can't get off" ; text "You can't get off"
	line "here!" ; line "here!"
	done

_GotOnBikeText::
	text "<PLAYER> got on the" ; text "<PLAYER> got on the"
	line "@"
	text_ram wStringBuffer2
	text "."
	done

_GotOffBikeText::
	text "<PLAYER> got off" ; text "<PLAYER> got off"
	line "the @" ; line "the @"
	text_ram wStringBuffer2
	text "."
	done

_AskCutText::
	text "This tree can be" ; text "This tree can be"
	line "CUT!"

	para "Want to use CUT?" ; para "Want to use CUT?"
	done

_CanCutText::
	text "This tree can be" ; text "This tree can be"
	line "CUT!"
	done

_FoundItemText::
	text "<PLAYER> found" ; text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_CantCarryItemText::
	text "But <PLAYER> can't" ; text "But <PLAYER> can't"
	line "carry any more" ; line "carry any more"
	cont "items." ; cont "items."
	done

_WhitedOutText::
	text "<PLAYER> is out of" ; text "<PLAYER> is out of"
	line "useable #MON!" ; line "useable #MON!"

	para "<PLAYER> whited" ; para "<PLAYER> whited"
	line "out!" ; line "out!"
	done

_ItemfinderItemNearbyText::
	text "Yes! ITEMFINDER" ; text "Yes! ITEMFINDER"
	line "indicates there's" ; line "indicates there's"
	cont "an item nearby." ; cont "an item nearby."
	prompt

_ItemfinderNopeText::
	text "Nope! ITEMFINDER" ; text "Nope! ITEMFINDER"
	line "isn't responding." ; line "isn't responding."
	prompt

_PoisonFaintText::
	text_ram wStringBuffer3
	text_start
	line "fainted!" ; line "fainted!"
	prompt

_PoisonWhiteoutText::
	text "<PLAYER> is out of" ; text "<PLAYER> is out of"
	line "useable #MON!" ; line "useable #MON!"

	para "<PLAYER> whited" ; para "<PLAYER> whited"
	line "out!" ; line "out!"
	prompt

_UseSweetScentText::
	text_ram wStringBuffer3
	text " used" ; text " used"
	line "SWEET SCENT!" ; line "SWEET SCENT!"
	done

_SweetScentNothingText::
	text "Looks like there's" ; text "Looks like there's"
	line "nothing here…" ; line "nothing here…"
	done

_SquirtbottleNothingText::
	text "<PLAYER> sprinkled" ; text "<PLAYER> sprinkled"
	line "water." ; line "water."

	para "But nothing" ; para "But nothing"
	line "happened…" ; line "happened…"
	done

_UseSacredAshText::
	text "<PLAYER>'s #MON" ; text "<PLAYER>'s #MON"
	line "were all healed!" ; line "were all healed!"
	done

_AnEggCantHoldAnItemText::
	text "An EGG can't hold" ; text "An EGG can't hold"
	line "an item." ; line "an item."
	prompt

_PackNoItemText::
	text "No items." ; text "No items."
	done

_AskThrowAwayText::
	text "Throw away how" ; text "Throw away how"
	line "many?" ; line "many?"
	done

_AskQuantityThrowAwayText::
	text "Throw away @" ; text "Throw away @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?" 
	done

_ThrewAwayText::
	text "Threw away" ; text "Threw away"
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_OakThisIsntTheTimeText::
	text "OAK: <PLAYER>!" ; text "OAK: <PLAYER>!"
	line "This isn't the" ; line "This isn't the"
	cont "time to use that!" ; cont "time to use that!"
	prompt

_YouDontHaveAMonText::
	text "You don't have a" ; text "You don't have a"
	line "#MON!"
	prompt

_RegisteredItemText::
	text "Registered the" ; text "Registered the"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_CantRegisterText::
	text "You can't register" ; text "You can't register"
	line "that item." ; line "that item."
	prompt

_AskItemMoveText::
	text "Where should this" ; text "Where should this"
	line "be moved to?" ; line "be moved to?"
	done

_PackEmptyText::
	text_start
	done

_YouCantUseItInABattleText::
	text "You can't use it" ; text "You can't use it"
	line "in a battle." ; line "in a battle."
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
	text "<SCROLL>went way up!" ; text "<SCROLL>went way up!"
	prompt

_BattleStatWentUpText::
	text " went up!" ; text " went up!"
	prompt

Text_BattleFoeEffectActivate::
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_BattleStatSharplyFellText::
	text_pause
	text "<SCROLL>sharply fell!" ; text "<SCROLL>sharply fell!"
	prompt

_BattleStatFellText::
	text " fell!" ; text " fell!"
	prompt

Text_BattleUser::
	text "<USER>@"
	text_end

_BattleMadeWhirlwindText::
	text_start
	line "made a whirlwind!" ; line "made a whirlwind!"
	prompt

_BattleTookSunlightText::
	text_start
	line "took in sunlight!" ; line "took in sunlight!"
	prompt

_BattleLoweredHeadText::
	text_start
	line "lowered its head!" ; line "lowered its head!"
	prompt

_BattleGlowingText::
	text_start
	line "is glowing!" ; line "is glowing!"
	prompt

_BattleFlewText::
	text_start
	line "flew up high!" ; line "flew up high!"
	prompt

_BattleDugText::
	text_start
	line "dug a hole!" ; line "dug a hole!"
	prompt

_ActorNameText::
	text "<USER>@"
	text_end

_UsedMove1Text::
	text_start
	line "used @" ; line "used @"
	text_end

_UsedMove2Text::
	text_start
	line "used @" ; line "used @"
	text_end

_UsedInsteadText::
	text "instead," ; text "instead,"
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
	text "Huh?" ; text "Huh?"

	para "@"
	text_end

_BreedClearboxText::
	text_start
	done

_BreedEggHatchText::
	text_ram wStringBuffer1
	text " came" ; text " came"
	line "out of its EGG!@" ; line "out of its EGG!@"
	sound_caught_mon
	text_promptbutton
	text_end

	text_end ; unreferenced

_BreedAskNicknameText::
	text "Give a nickname to" ; text "Give a nickname to"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_LeftWithDayCareLadyText::
	text "It's @" ; text "It's @"
	text_ram wBreedMon2Nickname
	text_start
	line "that was left with" ; line "that was left with"
	cont "the DAY-CARE LADY." ; cont "the DAY-CARE LADY."
	done

_LeftWithDayCareManText::
	text "It's @" ; text "It's @"
	text_ram wBreedMon1Nickname
	text_start
	line "that was left with" ; line "that was left with"
	cont "the DAY-CARE MAN." ; cont "the DAY-CARE MAN."
	done

_BreedBrimmingWithEnergyText::
	text "It's brimming with" ; text "It's brimming with"
	line "energy." ; line "energy."
	prompt

_BreedNoInterestText::
	text "It has no interest" ; text "It has no interest"
	line "in @" ; line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedAppearsToCareForText::
	text "It appears to care" ; text "It appears to care"
	line "for @" ; line "for @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedFriendlyText::
	text "It's friendly with" ; text "It's friendly with"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedShowsInterestText::
	text "It shows interest" ; text "It shows interest"
	line "in @" ; line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

_EmptyMailboxText::
	text "There's no MAIL" ; text "There's no MAIL"
	line "here." ; line "here."
	prompt

_MailClearedPutAwayText::
	text "The cleared MAIL" ; text "The cleared MAIL"
	line "was put away." ; line "was put away."
	prompt

_MailPackFullText::
	text "The PACK is full." ; text "The PACK is full."
	prompt

_MailMessageLostText::
	text "The MAIL's message" ; text "The MAIL's message"
	line "will be lost. OK?" ; line "will be lost. OK?"
	done

_MailAlreadyHoldingItemText::
	text "It's already hold-" ; text "It's already hold-"
	line "ing an item." ; line "ing an item."
	prompt

_MailEggText::
	text "An EGG can't hold" ; text "An EGG can't hold"
	line "any MAIL." ; line "any MAIL."
	prompt

_MailMovedFromBoxText::
	text "The MAIL was moved" ; text "The MAIL was moved"
	line "from the MAILBOX." ; line "from the MAILBOX."
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
	text " was" ; text " was"
	line "sent to BILL's PC." ; line "sent to BILL's PC."
	prompt

_PCGottaHavePokemonText::
	text "You gotta have" ; text "You gotta have"
	line "#MON to call!" ; line "#MON to call!"
	prompt

_PCWhatText::
	text "What?" ; text "What?"
	done

_PCMonHoldingMailText::
	text "There is a #MON" ; text "There is a #MON"
	line "holding MAIL." ; line "holding MAIL."

	para "Please remove the" ; para "Please remove the"
	line "MAIL." ; line "MAIL."
	prompt

_PCNoSingleMonText::
	text "You don't have a" ; text "You don't have a"
	line "single #MON!" ; line "single #MON!"
	prompt

_PCCantDepositLastMonText::
	text "You can't deposit" ; text "You can't deposit"
	line "your last #MON!" ; line "your last #MON!"
	prompt

_PCCantTakeText::
	text "You can't take any" ; text "You can't take any"
	line "more #MON." ; line "more #MON."
	prompt

_ContestCaughtMonText::
	text "Caught @" ; text "Caught @"
	text_ram wStringBuffer1
	text "!"
	prompt

_ContestAskSwitchText::
	text "Switch #MON?" ; text "Switch #MON?"
	done

_ContestAlreadyCaughtText::
	text "You already caught" ; text "You already caught"
	line "a @" ; line "a @"
	text_ram wStringBuffer1
	text "."
	prompt

_ContestJudging_FirstPlaceText::
	text "This Bug-Catching" ; text "This Bug-Catching"
	line "Contest winner is@" ; line "Contest winner is@"
	text_pause
	text "…"

	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "who caught a" ; line "who caught a"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_FirstPlaceScoreText::
	text_start

	para "The winning score" ; para "The winning score"
	line "was @" ; line "was @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " points!" ; text " points!"
	prompt

_ContestJudging_SecondPlaceText::
	text "Placing second was" ; text "Placing second was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a" ; para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_SecondPlaceScoreText::
	text_start

	para "The score was" ; para "The score was"
	line "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " points!" ; text " points!"
	prompt

_ContestJudging_ThirdPlaceText::
	text "Placing third was" ; text "Placing third was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a" ; para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_ThirdPlaceScoreText::
	text_start

	para "The score was" ; para "The score was"
	line "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " points!" ; text " points!"
	prompt

_MagikarpGuruMeasureText::
	text "Let me measure" ; text "Let me measure"
	line "that MAGIKARP." ; line "that MAGIKARP."

	para "…Hm, it measures" ; para "…Hm, it measures"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_KarpGuruRecordText::
	text "CURRENT RECORD" ; text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer1
	text " caught by" ; text " caught by"
	line "@"
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

	text_end ; unreferenced

_LuckyNumberMatchPartyText::
	text "Congratulations!" ; text "Congratulations!"

	para "We have a match" ; para "We have a match"
	line "with the ID number" ; line "with the ID number"

	para "of @" ; para "of @"
	text_ram wStringBuffer1
	text " in" ; text " in"
	line "your party." ; line "your party."
	prompt

_LuckyNumberMatchPCText::
	text "Congratulations!" ; text "Congratulations!"

	para "We have a match" ; para "We have a match"
	line "with the ID number" ; line "with the ID number"

	para "of @" ; para "of @"
	text_ram wStringBuffer1
	text " in" ; text " in"
	line "your PC BOX." ; line "your PC BOX."
	prompt

_CaughtAskNicknameText::
	text "Give a nickname to" ; text "Give a nickname to"
	line "the @" ; line "the @"
	text_ram wStringBuffer1
	text " you" ; text " you"
	cont "received?" ; cont "received?"
	done

_PokecenterPCCantUseText::
	text "Bzzzzt! You must" ; text "Bzzzzt! You must"
	line "have a #MON to" ; line "have a #MON to"
	cont "use this!" ; cont "use this!"
	prompt

_PlayersPCTurnOnText::
	text "<PLAYER> turned on" ; text "<PLAYER> turned on"
	line "the PC." ; line "the PC."
	prompt

_PlayersPCAskWhatDoText::
	text "What do you want" ; text "What do you want"
	line "to do?" ; line "to do?"
	done

_PlayersPCHowManyWithdrawText::
	text "How many do you" ; text "How many do you"
	line "want to withdraw?" ; line "want to withdraw?"
	done

_PlayersPCWithdrewItemsText::
	text "Withdrew @" ; text "Withdrew @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_PlayersPCNoRoomWithdrawText::
	text "There's no room" ; text "There's no room"
	line "for more items." ; line "for more items."
	prompt

_PlayersPCNoItemsText::
	text "No items here!" ; text "No items here!"
	prompt

_PlayersPCHowManyDepositText::
	text "How many do you" ; text "How many do you"
	line "want to deposit?" ; line "want to deposit?"
	done

_PlayersPCDepositItemsText::
	text "Deposited @" ; text "Deposited @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_PlayersPCNoRoomDepositText::
	text "There's no room to" ; text "There's no room to"
	line "store items." ; line "store items."
	prompt

_PokecenterPCTurnOnText::
	text "<PLAYER> turned on" ; text "<PLAYER> turned on"
	line "the PC." ; line "the PC."
	prompt

_PokecenterPCWhoseText::
	text "Access whose PC?" ; text "Access whose PC?"
	done

_PokecenterBillsPCText::
	text "BILL's PC" ; text "BILL's PC"
	line "accessed." ; line "accessed."

	para "#MON Storage" ; para "#MON Storage"
	line "System opened." ; line "System opened."
	prompt

_PokecenterPlayersPCText::
	text "Accessed own PC." ; text "Accessed own PC."

	para "Item Storage" ; para "Item Storage"
	line "System opened." ; line "System opened."
	prompt

_PokecenterOaksPCText::
	text "PROF.OAK's PC" ; text "PROF.OAK's PC"
	line "accessed." ; line "accessed."

	para "#DEX Rating" ; para "#DEX Rating"
	line "System opened." ; line "System opened."
	prompt

_PokecenterPCOaksClosedText::
	text "…"
	line "Link closed…" ; line "Link closed…"
	done

_OakPCText1::
	text "Want to get your" ; text "Want to get your"
	line "#DEX rated?" ; line "#DEX rated?"
	done

_OakPCText2::
	text "Current #DEX" ; text "Current #DEX"
	line "completion level:" ; line "completion level:"
	prompt

_OakPCText3::
	text_ram wStringBuffer3
	text " #MON seen" ; text " #MON seen"
	line "@"
	text_ram wStringBuffer4
	text " #MON owned" ; text " #MON owned"

	para "PROF.OAK's"
	line "Rating:" ; line "Rating:"
	done

_OakRating01::
	text "Look for #MON" ; text "Look for #MON"
	line "in grassy areas!" ; line "in grassy areas!"
	done

_OakRating02::
	text "Good. I see you" ; text "Good. I see you"
	line "understand how to" ; line "understand how to"
	cont "use # BALLS." ; cont "use # BALLS."
	done

_OakRating03::
	text "You're getting" ; text "You're getting" 
	line "good at this." ; line "good at this."

	para "But you have a" ; para "But you have a"
	line "long way to go." ; line "long way to go."
	done

_OakRating04::
	text "You need to fill" ; text "You need to fill"
	line "up the #DEX." ; line "up the #DEX."

	para "Catch different" ; para "Catch different"
	line "kinds of #MON!" ; line "kinds of #MON!"
	done

_OakRating05::
	text "You're trying--I" ; text "You're trying--I"
	line "can see that." ; line "can see that."

	para "Your #DEX is" ; para "Your #DEX is"
	line "coming together." ; line "coming together."
	done

_OakRating06::
	text "To evolve, some" ; text "To evolve, some"
	line "#MON grow," ; line "#MON grow,"

	para "others use the" ; para "others use the"
	line "effects of STONES." ; line "effects of STONES."
	done

_OakRating07::
	text "Have you gotten a" ; text "Have you gotten a"
	line "fishing ROD? You" ; line "fishing ROD? You"

	para "can catch #MON" ; para "can catch #MON"
	line "by fishing." ; line "by fishing."
	done

_OakRating08::
	text "Excellent! You" ; text "Excellent! You"
	line "seem to like col-" ; line "seem to like col-"
	cont "lecting things!" ; cont "lecting things!"
	done

_OakRating09::
	text "Some #MON only" ; text "Some #MON only"
	line "appear during" ; line "appear during"

	para "certain times of" ; para "certain times of"
	line "the day." ; line "the day."
	done

_OakRating10::
	text "Your #DEX is" ; text "Your #DEX is"
	line "filling up. Keep" ; line "filling up. Keep"
	cont "up the good work!" ; cont "up the good work!"
	done

_OakRating11::
	text "I'm impressed." ; text "I'm impressed."
	line "You're evolving" ; line "You're evolving"

	para "#MON, not just" ; para "#MON, not just"
	line "catching them." ; line "catching them."
	done

_OakRating12::
	text "Have you met KURT?" ; text "Have you met KURT?"
	line "His custom BALLS" ; line "His custom BALLS"
	cont "should help." ; cont "should help."
	done

_OakRating13::
	text "Wow. You've found" ; 	text "Wow. You've found"
	line "more #MON than" ; line "more #MON than"

	para "the last #DEX" ; para "the last #DEX"
	line "research project." ; line "research project."
	done

_OakRating14::
	text "Are you trading" ; text "Are you trading"
	line "your #MON?" ; line "your #MON?"

	para "It's tough to do" ; para "It's tough to do"
	line "this alone!" ; line "this alone!"
	done

_OakRating15::
	text "Wow! You've hit" ; text "Wow! You've hit"
	line "200! Your #DEX" ; line "200! Your #DEX"
	cont "is looking great!" ; cont "is looking great!"
	done

_OakRating16::
	text "You've found so" ; text "You've found so"
	line "many #MON!" ; line "many #MON!"

	para "You've really" ; para "You've really"
	line "helped my studies!" ; line "helped my studies!"
	done

_OakRating17::
	text "Magnificent! You" ; text "Magnificent! You"
	line "could become a" ; line "could become a"

	para "#MON professor" ; para "#MON professor"
	line "right now!" ; line "right now!"
	done

_OakRating18::
	text "Your #DEX is" ; text "Your #DEX is"
	line "amazing! You're" ; line "amazing! You're"

	para "ready to turn" ; para "ready to turn"
	line "professional!" ; line "professional!"
	done

_OakRating19::
	text "Whoa! A perfect" ; text "Whoa! A perfect"
	line "#DEX! I've" ; line "#DEX! I've"

	para "dreamt about this!" ; para "dreamt about this!"
	line "Congratulations!" ; line "Congratulations!"
	done

_OakPCText4::
	text "The link to PROF." ; text "The link to PROF."
	line "OAK's PC closed." ; line "OAK's PC closed."
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
	text "Darn…" ; text "Darn…"
	done

_StartMenuContestEndText::
	text "Would you like to" ; text "Would you like to"
	line "end the Contest?" ; line "end the Contest?"
	done

_ItemsTossOutHowManyText::
	text "Toss out how many" ; text "Toss out how many"
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

_ItemsThrowAwayText::
	text "Throw away @" ; text "Throw away @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

_ItemsDiscardedText::
	text "Discarded" ; text "Discarded"
	line "@"
	text_ram wStringBuffer1
	text "(S)."
	prompt

_ItemsTooImportantText::
	text "That's too impor-" ; text "That's too impor-"
	line "tant to toss out!" ; line "tant to toss out!"
	prompt

_ItemsOakWarningText::
	text "OAK: <PLAYER>!" ; text "OAK: <PLAYER>!"
	line "This isn't the" ; line "This isn't the"
	cont "time to use that!" ; cont "time to use that!"
	done

_PokemonSwapItemText::
	text "Took @" ; text "Took @"
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "@"
	text_ram wStringBuffer1
	text " and" ; text " and"

	para "made it hold" ; para "made it hold"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonHoldItemText::
	text "Made @" ; text "Made @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "hold @" ; line "hold @"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonRemoveMailText::
	text "Please remove the" ; text "Please remove the"
	line "MAIL first." ; line "MAIL first."
	prompt

_PokemonNotHoldingText::
	text_ram wMonOrItemNameBuffer
	text " isn't" ; text " isn't"
	line "holding anything." ; line "holding anything."
	prompt

_ItemStorageFullText::
	text "Item storage space" ; text "Item storage space"
	line "full." ; line "full."
	prompt

_PokemonTookItemText::
	text "Took @" ; text "Took @"
	text_ram wStringBuffer1
	text_start
	line "from @" ; line "from @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

_PokemonAskSwapItemText::
	text_ram wMonOrItemNameBuffer
	text " is" ; text " is"
	line "already holding" ; line "already holding"

	para "@"
	text_ram wStringBuffer1
	text "."
	line "Switch items?" ; line "Switch items?"
	done

_ItemCantHeldText::
	text "This item can't be" ; text "This item can't be"
	line "held." ; line "held."
	prompt

_MailLoseMessageText::
	text "The MAIL will lose" ; text "The MAIL will lose"
	line "its message. OK?" ; line "its message. OK?"
	done

_MailDetachedText::
	text "MAIL detached from" ; text "MAIL detached from"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MailNoSpaceText::
	text "There's no space" ; text "There's no space"
	line "for removing MAIL." ; line "for removing MAIL."
	prompt

_MailAskSendToPCText::
	text "Send the removed" ; text "Send the removed"
	line "MAIL to your PC?" ; line "MAIL to your PC?"
	done

_MailboxFullText::
	text "Your PC's MAILBOX" ; text "Your PC's MAILBOX"
	line "is full." ; line "is full."
	prompt

_MailSentToPCText::
	text "The MAIL was sent" ; text "The MAIL was sent"
	line "to your PC." ; line "to your PC."
	prompt

_PokemonNotEnoughHPText::
	text "Not enough HP!" ; text "Not enough HP!"
	prompt

_MayRegisterItemText::
	text "An item in your" ; text "An item in your"
	line "PACK may be" ; line "PACK may be"

	para "registered for use" ; para "registered for use"
	line "on SELECT Button." ; line "on SELECT Button."
	done

_OakText1::
	text "Hello! Sorry to" ; text "Hello! Sorry to"
	line "keep you waiting!" ; line "keep you waiting!"

	para "Welcome to the" ; para "Welcome to the"
	line "world of #MON!" ; line "world of #MON!"

	para "My name is OAK." ; para "My name is OAK."

	para "People call me the" ; para "People call me the"
	line "#MON PROF." ; line "#MON PROF."
	prompt

_OakText2::
	text "This world is in-" ; text "This world is in-"
	line "habited by crea-" ; line "habited by crea-"
	cont "tures that we call" ; cont "tures that we call"
	cont "#MON.@" 
	text_end

_OakText3::
	text_promptbutton
	text_end

	text_end ; unreferenced

_OakText4::
	text "People and #MON" ; text "People and #MON"
	line "live together by" ; line "live together by"

	para "supporting each" ; para "supporting each"
	line "other." ; line "other."

	para "Some people play" ; para "Some people play"
	line "with #MON, some" ; line "with #MON, some"
	cont "battle with them." ; cont "battle with them."
	prompt

_OakText5::
	text "But we don't know" ; text "But we don't know"
	line "everything about" ; line "everything about"
	cont "#MON yet." ; cont "#MON yet."

	para "There are still" ; para "There are still"
	line "many mysteries to" ; line "many mysteries to"
	cont "solve." ; cont "solve."

	para "That's why I study" ; para "That's why I study"
	line "#MON every day." ; line "#MON every day."
	prompt
