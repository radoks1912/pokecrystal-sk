_FruitBearingTreeText::
	text "Je to ovocny" ; text "It's a fruit-"
	line "strom."  ; line "bearing tree."
	done

_HeyItsFruitText::
	text "Hej! to je" ; text "Hey! It's"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ObtainedFruitText::
	text "Ziskal si" ; text "Obtained"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_FruitPackIsFullText::
	text "Ale BATOH je" ; text "But the PACK is"
	line "plny…" ; line "full…"
	done

_NothingHereText::
	text "Nic tu" ; text "There's nothing"
	line "nie je…" ; line "here…"
	done

_WhichApricornText::
	text "Ktory APRICORN" ; text "Which APRICORN"
	line "mam pouzit?" ; line "should I use?"
	done

_HowManyShouldIMakeText::
	text "Kolko ich mam" ; text "How many should I"
	line "spravit?" ; line "make?"
	done

_RecoveredSomeHPText::
	text_ram wStringBuffer1
	text_start
	line "obnovil @" ; line "recovered @"
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text "HP!"
	done

_CuredOfPoisonText::
	text_ram wStringBuffer1
	text "sa vyliecil" ; text "'s"
	line "z otravenia." ; line "cured of poison."
	done

_RidOfParalysisText::
	text_ram wStringBuffer1
	text "sa vyliecil" ; text "'s"
	line "z paralyzy." ; line "rid of paralysis."
	done

_BurnWasHealedText::
	text_ram wStringBuffer1
	text "sa vyliecil" ; text "'s"
	line "z popalenia." ; line "burn was healed."
	done

_WasDefrostedText::
	text_ram wStringBuffer1
	text_start
	line "sa rozmrazil." ; line "was defrosted."
	done

_WokeUpText::
	text_ram wStringBuffer1
	text_start
	line "sa zobudil." ; line "woke up."
	done

_HealthReturnedText::
	text_ram wStringBuffer1
	text "sa "
	line "uzdravil." ; line "health returned."
	done

_RevitalizedText::
	text_ram wStringBuffer1
	text_start
	line "je revitalizovany." ; line "is revitalized."
	done

_GrewToLevelText::
	text_ram wStringBuffer1
	text " vyrastol na" ; text " grew to"
	line "level @" ; line "level @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79 ; plays SFX_DEX_FANFARE_50_79, identical to SFX_LEVEL_UP
	text_promptbutton
	text_end

	text_end ; unreferenced

_CameToItsSensesText::
	text_ram wStringBuffer1
	text " prisiel" ; text " came"
	line "k rozumu." ; line "to its senses."
	done

_EnterNewPasscodeText::
	text "Vloz prosim" ; text "Please enter any"
	line "4-miestne cislo." ; line "four-digit number."
	done

_ConfirmPasscodeText::
	text "Vloz rovnake cislo" ; text "Enter the same"
	line "na potvrdenie." ; line "number to confirm."
	done

_PasscodesNotSameText::
	text "Cisla sa" ; text "That's not the"
	line "nezhoduju." ; line "same number."
	done

_PasscodeSetText::
	text "Tvoje heslo" ; text "Your PASSCODE has"
	line "bolo nastavene." ; line "been set."

	para "Vloz toto cislo" ; para "Enter this number"
	line "na otvorenie" ; line "next time to open"
	cont "CARD FOLDER." ; cont "the CARD FOLDER."

	para ""
	done

_FourZerosInvalidText::
	text "0000 je neplatne!" ; text "0000 is invalid!"

	para ""
	done

_EnterPasscodeText::
	text "Vloz CARD" ; text "Enter the CARD"
	next "FOLDER heslo." ; next "FOLDER PASSCODE."
	done

_IncorrectPasscodeText::
	text "Nespravne" ; text "Incorrect"
	line "heslo!" ; line "PASSCODE!"

	para ""
	done

_CardFolderOpenText::
	text "FOLDER otvoreny.@" ; text "CARD FOLDER open.@"
	text_end

_OakTimeWokeUpText::
	text "<……><……><……><……><……><……>"
	line "<……><……><……><……><……><……>"

	para "Zzz… Hm? Co…?" ; para "Zzz… Hm? Wha…?"
	line "Zobudil si ma!" ; line "You woke me up!"

	para "Skontrolujes cas, " ; para "Will you check the"
	line "prosim?" ; line "clock for me?"
	prompt

_OakTimeWhatTimeIsItText::
	text "Kolko je hodin?" ; text "What time is it?"
	done

_OakTimeWhatHoursText::
	text "Coze?@" ; text "What?@" 
	text_end

_OakTimeHoursQuestionMarkText::
	text "?" ; text "?"
	done

_OakTimeHowManyMinutesText::
	text "Kolko minut?" ; text "How many minutes?"
	done

_OakTimeWhoaMinutesText::
	text "Wou!@" ; text "Whoa!@"
	text_end

_OakTimeMinutesQuestionMarkText::
	text "?" ; text "?"
	done

_OakTimeOversleptText::
	text "!"
	line "Zaspal som!" ; line "I overslept!"
	done

_OakTimeYikesText::
	text "!"
	line "Kelu! Zaspal" ; line "Yikes! I over-"
	cont "som!" ; cont "slept!"
	done

_OakTimeSoDarkText::
	text "!"
	line "Niet divu, este" ; line "No wonder it's so"
	cont "je tma!" ; cont "dark!"
	done

_OakTimeWhatDayIsItText::
	text "Aky je dnes den?" ; text "What day is it?"
	done

_OakTimeIsItText::
	text ", vsak?" ; text ", is it?"
	done

; Mobile Adapter

_ThereIsNothingConnectedText:: ; unreferenced
	text "There is nothing"
	line "connected."
	done

_CheckCellPhoneAdapterText:: ; unreferenced
	text "Check cell phone"
	line "adapter."
	done

_CheckCDMAAdapterText:: ; unreferenced
	text "Check CDMA"
	line "adapter."
	done

_CheckDOCOMOPHSAdapterText:: ; unreferenced
	text "Check DOCOMO PHS"
	line "adapter."
	done

_CheckDDIPHSAdapterText:: ; unreferenced
	text "Check DDI PHS"
	line "adapter."
	done

_CheckMobileAdapterText:: ; unreferenced
	text "Check unlimited"
	line "battle mobile"
	cont "adapter."
	done

; Mobile Adapter End

_ThePasswordIsText:: ; unreferenced
	text "The password is:"
	line ""
	done

_IsThisOKText:: ; unreferenced
	text "Is this OK?"
	done

_EnterTheIDNoText:: ; unreferenced
	text "Enter the"
	line "ID no."
	done

_EnterTheAmountText:: ; unreferenced
	text "Enter the"
	line "amount."
	done

_NothingToChooseText::
	text "Nie je co" ; text "There's nothing to"
	line "vybrat." ; line "choose."
	prompt

_WhichSidePutOnText::
	text "Na ktoru stranu" ; text "Which side do you"
	line "to chces polozit?" ; line "want to put it on?"
	done

_WhichSidePutAwayText::
	text "Na ktoru stranu" ; text "Which side do you"
	line "to chces odlozit?" ; line "want to put away?"
	done

_PutAwayTheDecoText::
	text "Odlozil si" ; text "Put away the"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_NothingToPutAwayText::
	text "Nie je nic" ; text "There's nothing to"
	line "na odlozenie." ; line "put away."
	prompt

_SetUpTheDecoText::
	text "Postavil si" ; text "Set up the"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_PutAwayAndSetUpText::
	text "Odlozil si" ; text "Put away the"
	line "@"
	text_ram wStringBuffer3
	text_start

	para "a postavil si" ; para "and set up the"
	line "@"
	text_ram wStringBuffer4
	text "."
	prompt

_AlreadySetUpText::
	text "To uz je" ; text "That's already set"
	line "postavene." ; line "up."
	prompt

_LookTownMapText::
	text "Je to MAPA SVETA." ; text "It's the TOWN MAP."
	done

_LookPikachuPosterText::
	text "Je to plagat" ; text "It's a poster of a"
	line "mileho PIKACHU." ; line "cute PIKACHU."
	done

_LookClefairyPosterText::
	text "Je to plagat" ; text "It's a poster of a"
	line "mileho CLEFAIRY." ; line "cute CLEFAIRY."
	done

_LookJigglypuffPosterText::
	text "Je to plagat" ; text "It's a poster of a"
	line "mileho JIGGLYPUFF." ; line "cute JIGGLYPUFF."
	done

_LookAdorableDecoText::
	text "Je to rozkosny" ; text "It's an adorable"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

_LookGiantDecoText::
	text "Obrovska babika! Je" ; text "A giant doll! It's"
	line "chlpata a pritulna." ; line "fluffy and cuddly."
	done

_MomHiHowAreYouText::
	text "Ahoj, <PLAYER>!" ; text "Hi, <PLAYER>!"
	line "Ako sa mas?" ; line "How are you?"
	prompt

_MomFoundAnItemText::
	text "Nasla som uzitocnu" ; text "I found a useful"
	line "vec v shope, kupila" ; line "item shopping, so"
	prompt

_MomBoughtWithYourMoneyText::
	text "som to z tvojich" ; text "I bought it with"
	line "penazi, prepac!" ; line "your money. Sorry!"
	prompt

_MomItsInPCText::
	text "Najdes ju v PC." ; text "It's in your PC."
	line "Bude sa ti pacit!" ; line "You'll like it!"
	done

_MomFoundADollText::
	text "Dnes pocas nakupu" ; text "While shopping"
	line "som nasla tuto" ; line "today, I saw this"
	cont "rozkosnu babiku," ; cont "adorable doll, so"
	prompt

_MomItsInYourRoomText::
	text "Mas ju v izbe" ; text "It's in your room."
	line "Bude sa ti pacit!" ; line "You'll love it!"
	done

_MonWasSentToText::
	text_ram wPlayerTrademonSpeciesName
	text " bol" ; text " was"
	line "poslany @" ; line "sent to @"
	text_ram wOTTrademonSenderName
	text "."
	done

_MonNameSentToText::
	text_start
	done

_BidsFarewellToMonText::
	text_ram wOTTrademonSenderName
	text " sa rozlucil" ; text " bids"
	line "s" ; line "farewell to"
	done

_MonNameBidsFarewellText::
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TakeGoodCareOfMonText::
	text "Dobre sa postaraj o" ; text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_ForYourMonSendsText::
	text "Za @" ; text "For @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text ","
	done

_OTSendsText::
	text_ram wOTTrademonSenderName
	text " sends" ; text " sends"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_WillTradeText::
	text_ram wOTTrademonSenderName
	text " bude" ; text " will"
	line "posielat @" ; line "trade @"
	text_ram wOTTrademonSpeciesName
	text_end

	text_end ; unreferenced

_ForYourMonWillTradeText::
	text "za @" ; text "for @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text "."
	done

_MobilePlayerWillTradeMonText::
	text_ram wPlayerTrademonSenderName
	text " bude" ; text " will"
	line "posielat @" ; line "trade @"
	text_ram wPlayerTrademonSpeciesName
	text_end

	text_end ; unreferenced

_MobileForPartnersMonText::
	text "za @" ; text "for @"
	text_ram wOTTrademonSenderName
	text "'s"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobilePlayersMonTradeText::
	text_ram wPlayerTrademonSenderName
	text "'s" ; text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " posiela…" ; text " trade…"
	done

_MobileTakeGoodCareOfMonText::
	text "Dobre sa postaraj o" ; text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobilePlayersMonTrade2Text::
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " posiela…" ; text " trade…"
	done

_MobileTakeGoodCareOfText::
	text "Dobre sa postaraj o" ; text "Take good care of"
	line "@" 
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobileTradeCameBackText::
	text_ram wOTTrademonSpeciesName
	text " sa" ; text " came"
	line "vratil!" ; line "back!"
	done

; Oak's Pokémon Talk

_OPT_IntroText1::
	text_start
	line "MARY: PROF.OAK'S" ; line "MARY: PROF.OAK'S"
	done

_OPT_IntroText2::
	text_start
	line "#MON TALK!" ; line "#MON TALK!"
	done

_OPT_IntroText3::
	text_start
	line "So mnou, MARY!" ; line "With me, MARY!"
	done

_OPT_OakText1::
	text_start
	line "OAK: @"
	text_ram wMonOrItemNameBuffer
	text_end

	text_end ; unreferenced

_OPT_OakText2::
	text_start
	line "mozno vidiet okolo" ; line "may be seen around"
	done

_OPT_OakText3::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_OPT_MaryText1::
	text_start
	line "MARY: @"
	text_ram wStringBuffer1
	text "'s"
	done

_OPT_SweetAdorablyText::
	text_start
	line "sladko a rozkosne" ; line "sweet and adorably"
	done

_OPT_WigglySlicklyText::
	text_start
	line "vrtko a klzko" ; line "wiggly and slickly"
	done

_OPT_AptlyNamedText::
	text_start
	line "trefne pomenovane a" ; line "aptly named and"
	done

_OPT_UndeniablyKindOfText:: ;; added line
	text_start
	line "nepopieratelne mile" ; line "undeniably kind of"
	text "od"
	done

_OPT_UnbearablyText::
	text_start
	line "tak neznesitelne" ; line "so, so unbearably"
	done

_OPT_WowImpressivelyText::
	text_start
	line "wow, posobivo" ; line "wow, impressively"
	done

_OPT_AlmostPoisonouslyText::
	text_start
	line "takmer jedovato" ; line "almost poisonously"
	done

_OPT_SensuallyText::
	text_start
	line "oh, tak zmyselne" ; line "ooh, so sensually"
	done

_OPT_MischievouslyText::
	text_start
	line "tak sibalsky" ; line "so mischievously"
	done

_OPT_TopicallyText::
	text_start
	line "tak aktualne" ; line "so very topically"
	done

_OPT_AddictivelyText::
	text_start
	line "tak navykovo" ; line "sure addictively"
	done

_OPT_LooksInWaterText::
	text_start
	line "pohlad do vody je" ; line "looks in water is"
	done

_OPT_EvolutionMustBeText::
	text_start
	line "evolucia musi byt" ; line "evolution must be"
	done

_OPT_ProvocativelyText::
	text_start
	line "provokativne" ; line "provocatively"
	done

_OPT_FlippedOutText::
	text_start
	line "napalil sa a" ; line "so flipped out and"
	done

_OPT_HeartMeltinglyText::
	text_start
	line "dojemne" ; line "heart-meltingly"
	done

_OPT_CuteText::
	text_start
	line "zlato." ; line "cute."
	done

_OPT_WeirdText::
	text_start
	line "divne." ; line "weird."
	done

_OPT_PleasantText::
	text_start
	line "prijemne." ; line "pleasant."
	done

_OPT_BoldSortOfText::
	text_start
	line "odvazne, trochu." ; line "bold, sort of."
	done

_OPT_FrighteningText::
	text_start
	line "desive." ; line "frightening."
	done

_OPT_SuaveDebonairText::
	text_start
	line "laskave a carovne!" ; line "suave & debonair!"
	done

_OPT_PowerfulText::
	text_start
	line "mocne." ; line "powerful."
	done

_OPT_ExcitingText::
	text_start
	line "vzrusujuce." ; line "exciting."
	done

_OPT_GroovyText::
	text_start
	line "atraktivne!" ; line "groovy!"
	done

_OPT_InspiringText::
	text_start
	line "inspirujuce." ; line "inspiring."
	done

_OPT_FriendlyText::
	text_start
	line "priatelske." ; line "friendly."
	done

_OPT_HotHotHotText::
	text_start
	line "hot, hot, hot!" ; line "hot, hot, hot!"
	done

_OPT_StimulatingText::
	text_start
	line "stimulujuce." ; line "stimulating."
	done

_OPT_GuardedText::
	text_start
	line "strazene." ; line "guarded."
	done

_OPT_LovelyText::
	text_start
	line "krasne." ; line "lovely."
	done

_OPT_SpeedyText::
	text_start
	line "rychle." ; line "speedy."
	done

_OPT_PokemonChannelText::
	text "#MON"
	done

_PokedexShowText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unreferenced

; Pokémon Music Channel / Pokémusic

_BenIntroText1::
	text_start
	line "BEN: #MON MUSIC"
	done

_BenIntroText2::
	text_start
	line "CHANNEL!"
	done

_BenIntroText3::
	text_start
	line "Som DJ BEN!" ; line "It's me, DJ BEN!"
	done

_FernIntroText1::
	text_start
	line "FERN: #MUSIC!"
	done

_FernIntroText2::
	text_start
	line "S DJ FERN!" ; line "With DJ FERN!"
	done

_BenFernText1::
	text_start
	line "Dnes je @" ; line "Today's @"
	text_today
	text ","
	done

_BenFernText2A::
	text_start
	line "zajamujme si" ; line "so let us jam to"
	done

_BenFernText2B::
	text_start
	line "vychillujme" ; line "so chill out to"
	done

_BenFernText3A::
	text_start
	line "#MON Pochod!" ; line "#MON March!"
	done

_BenFernText3B::
	text_start
	line "#MON Uspavanka!" ; line "#MON Lullaby!"
	done

; Lucky Channel

_LC_Text1::
	text_start
	line "REED: Yeehaw! Ako" ; line "REED: Yeehaw! How"
	done

_LC_Text2::
	text_start
	line "sa vsetci mate?" ; line "y'all doin' now?"
	done

_LC_Text3::
	text_start
	line "Ci dobre" ; line "Whether you're up"
	done

_LC_Text4::
	text_start
	line "alebo zle," ; line "or way down low,"
	done

_LC_Text5::
	text_start
	line "nepresvihnite" ; line "don't you miss the"
	done

_LC_Text6::
	text_start
	line "CISELNU LOTERIU!" ; line "LUCKY NUMBER SHOW!"
	done

_LC_Text7::
	text_start
	line "Tohtotyzdnove" ; line "This week's Lucky"
	done

_LC_Text8::
	text_start
	line "zlate cislo je @" ; line "Number is @"
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

_LC_Text9::
	text_start
	line "Opakujem!" ; line "I'll repeat that!"
	done

_LC_Text10::
	text_start
	line "Ak ho mas, chod do" ; line "Match it and go to"
	done

_LC_Text11::
	text_start
	line "RADIO TOWER!" ; line "the RADIO TOWER!"
	done

_LC_DragText1::
	text_start
	line "…Opakujem" ; line "…Repeating myself"
	done

_LC_DragText2::
	text_start
	line "sa stava brzdou…" ; line "gets to be a drag…"
	done

; Places and People

_PnP_Text1::
	text_start
	line "MIESTA A LUDIA!" ; line "PLACES AND PEOPLE!"
	done

_PnP_Text2::
	text_start
	line "Vam prinasa" ; line "Brought to you by"
	done

_PnP_Text3::
	text_start
	line "DJ LILY!" ; line "me, DJ LILY!"
	done

_PnP_Text4::
	text_start
	line "@"
	text_ram wStringBuffer2
	text " @"
	text_ram wStringBuffer1
	text_end

	text_end ; unreferenced

_PnP_CuteText::
	text_start
	line "je mile." ; line "is cute."
	done

_PnP_LazyText::
	text_start
	line "je trosku lenive." ; line "is sort of lazy." 
	done

_PnP_HappyText::
	text_start
	line "je vzdy vesele." ; line "is always happy."
	done

_PnP_NoisyText::
	text_start
	line "je dost hlucne." ; line "is quite noisy."
	done

_PnP_PrecociousText::
	text_start
	line "je zrele." ; line "is precocious."
	done

_PnP_BoldText::
	text_start
	line "je odvazne." ; line "is somewhat bold."
	done

_PnP_PickyText::
	text_start
	line "je prilis vyberave!" ; line "is too picky!"
	done

_PnP_SortOfOKText::
	text_start
	line "je vcelku OK." ; line "is sort of OK."
	done

_PnP_SoSoText::
	text_start
	line "je len tak-tak." ; line "is just so-so."
	done

_PnP_GreatText::
	text_start
	line "je vlastne skvele." ; line "is actually great."
	done

_PnP_MyTypeText::
	text_start
	line "je moj typ." ; line "is just my type."
	done

_PnP_CoolText::
	text_start
	line "je tak cool, ze?" ; line "is so cool, no?"
	done

_PnP_InspiringText::
	text_start
	line "tak inspirujuce!" ; line "is inspiring!"
	done

_PnP_WeirdText::
	text_start
	line "je trosku divne." ; line "is kind of weird." 
	done

_PnP_RightForMeText::
	text_start
	line "je pre mna prave?" ; line "is right for me?"
	done

_PnP_OddText::
	text_start
	line "je urcite zvlastne!" ; line "is definitely odd!"
	done

_PnP_Text5::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unreferenced

_RocketRadioText1::
	text_start
	line "… …Ehm, sme" ; line "… …Ahem, we are"
	done

_RocketRadioText2::
	text_start
	line "TEAM ROCKET!" ; line "TEAM ROCKET!"
	done

_RocketRadioText3::
	text_start
	line "Po 3 rokoch" ; line "After three years"
	done

_RocketRadioText4::
	text_start
	line "priprav, sme" ; line "of preparation, we" 
	done

_RocketRadioText5::
	text_start
	line "znova povstali" ; line "have risen again"
	done

_RocketRadioText6::
	text_start
	line "z popola!" ; line "from the ashes!"
	done

_RocketRadioText7::
	text_start
	line "GIOVANNI! @"
	text_pause
	text "Pocujes" ; text "Can you"
	done

_RocketRadioText8::
	text_start
	line "nas?@" ; line "hear?@"
	text_pause
	text " Dokazali sme to!" ; text " We did it!"
	done

_RocketRadioText9::
	text_start
	line "@"
	text_pause
	text "Kde je nas sef?" ; text "Where is our boss?"
	done

_RocketRadioText10::
	text_start
	line "@"
	text_pause
	text "Pocuje nas?" ; text "Is he listening?"
	done

_BuenaRadioText1::
	text_start
	line "BUENA: tu BUENA!" ; line "BUENA: BUENA here!"
	done

_BuenaRadioText2::
	text_start
	line "Dnesne heslo!" ; line "Today's password!"
	done

_BuenaRadioText3::
	text_start
	line "Pockat… Je to" ; line "Let me think… It's"
	done

_BuenaRadioText4::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_BuenaRadioText5::
	text_start
	line "Nezabudni to!" ; line "Don't forget it!"
	done

_BuenaRadioText6::
	text_start
	line "Som v GOLDENROD" ; line "I'm in GOLDENROD's"
	done

_BuenaRadioText7::
	text_start
	line "RADIO TOWER!" ; line "RADIO TOWER!"
	done

_BuenaRadioMidnightText1::
	text_start
	line "BUENA: Oou…" ; line "BUENA: Oh my…"
	done

_BuenaRadioMidnightText2::
	text_start
	line "Je polnoc!" ; line "It's midnight! I"
	done

_BuenaRadioMidnightText3::
	text_start
	line "Musime koncit!" ; line "have to shut down!"
	done

_BuenaRadioMidnightText4::
	text_start
	line "Diky za naladenie" ; line "Thanks for tuning"
	done

_BuenaRadioMidnightText5::
	text_start
	line "az do konca! Ale" ; line "in to the end! But"
	done

_BuenaRadioMidnightText6::
	text_start
	line "nehalabuste" ; line "don't stay up too"
	done

_BuenaRadioMidnightText7::
	text_start
	line "do noci! Ja som" ; line "late! Presented to"
	done

_BuenaRadioMidnightText8::
	text_start
	line "DJ BUENA!" ; line "you by DJ BUENA!"
	done

_BuenaRadioMidnightText9::
	text "Majte sa!" ; text "I'm outta here!"
	done

_BuenaRadioMidnightText10::
	text "…"
	done

_BuenaOffTheAirText::
	text_start
	line ""
	done

_EnemyWithdrewText::
	text "<ENEMY>"
	line "stiahol" ; line "withdrew"
	cont "@"
	text_ram wEnemyMonNickname
	text "!"
	prompt

_EnemyUsedOnText::
	text "<ENEMY>"
	line "pouzil @" ; line "used @"
	text_ram wMonOrItemNameBuffer
	text_start
	cont "na @" ; cont "on @"
	text_ram wEnemyMonNickname
	text "!"
	prompt

_ThatCantBeUsedRightNowText:: ; unreferenced
	text "That can't be used"
	line "right now."
	prompt

_ThatItemCantBePutInThePackText:: ; unreferenced
	text "That item can't be"
	line "put in the PACK."
	done

_TheItemWasPutInThePackText:: ; unreferenced
	text "The @"
	text_ram wStringBuffer1
	text_start
	line "was put in the"
	cont "PACK."
	done

_RemainingTimeText:: ; unreferenced
	text "Remaining Time"
	done

_YourMonsHPWasHealedText:: ; unreferenced
	text "Your #MON's HP"
	line "was healed."
	prompt

_WarpingText:: ; unreferenced
	text "Warping…"
	done

_ChangeWhichNumberText:: ; unreferenced
	text "Which number"
	line "should be changed?"
	done

_WillYouPlayWithMonText:: ; unreferenced
	text "Will you play with"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

_YouNeedTwoMonForBreedingText:: ; unreferenced
	text "You need two #-"
	line "MON for breeding."
	prompt

_BreedingIsNotPossibleText:: ; unreferenced
	text "Breeding is not"
	line "possible."
	prompt

_CompatibilityShouldTheyBreedText:: ; unreferenced
	text "The compatibility"
	line "is @"
	text_decimal wBreedingCompatibility, 1, 3
	text "."
	cont "Should they breed?"
	done

_ThereIsNoEggText:: ; unreferenced
	text "There is no EGG."
	line ""
	prompt

_ItsGoingToHatchText:: ; unreferenced
	text "It's going to"
	line "hatch!"
	prompt

_TestEventText:: ; unreferenced
	text "Test event"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text "?"
	done

_StartText:: ; unreferenced
	text "Start!"
	done

_EndText:: ; unreferenced
	text "End!"
	done

_ForABoyText:: ; unreferenced
	text "For a boy!"
	done

_ForAGirlText:: ; unreferenced
	text "For a girl!"
	done

_DoesntConcernABoyText:: ; unreferenced
	text "This doesn't"
	line "concern a boy!"
	done

_TheBoxIsFullText:: ; unreferenced
	text "The BOX is full!"
	done

; Mobile Adapter

_NewCardArrivedText::
	text "Dorazila nova CARD" ; text "A new CARD arrived"
	line "od @" ; line "from @"
	text_ram wStringBuffer2
	text "."
	done

_PutCardInCardFolderText::
	text "Vlozit CARD do" ; text "Put this CARD in"
	line "CARD FOLDER?" ; line "the CARD FOLDER?"
	done

_CardWasListedText::
	text_ram wStringBuffer2
	text "CARD bola" ; text "'s CARD was"
	line "pod cislom.@" ; line "listed as no.@"
	text_decimal wStringBuffer1, 1, 2
	text "."
	prompt

_StartingLinkText::
	text "Startujem link." ; text "Starting link."
	done

_LinkTerminatedText::
	text "Link ukonceny." ; text "Link terminated."
	done

_ClosingLinkText::
	text "Zatvaram link." ; text "Closing link."
	done

_ClearTimeLimitText:: ; unreferenced
	text "Clear the time"
	line "limit?"
	done

_TimeLimitWasClearedText:: ; unreferenced
	text "The time limit was"
	line "cleared."
	done

_PickErrorPacketText:: ; unreferenced
	text "Pick which packet"
	line "as an error?"
	done

_TradingMonForOTMonText::
	text "Menim @" ; text "Trading @"
	text_ram wStringBuffer2
	text_start
	line "za @" ; line "for @"
	text_ram wStringBuffer1
	text "…"
	done

; Mobile Adapter End

_ObtainedTheVoltorbBadgeText:: ; unreferenced
	text "Obtained the"
	line "VOLTORBBADGE!"
	done

_AskFloorElevatorText::
	text "Ktore poschodie?" ; text "Which floor?"
	done

_BugCatchingContestTimeUpText::
	text "ANNOUNCER: PIIIP!" ; text "ANNOUNCER: BEEEP!"

	para "Cas vyprsal!" ; para "Time's up!"
	done

_BugCatchingContestIsOverText::
	text "ANNOUNCER: " ; text "ANNOUNCER: The"
	line "Sutaz skoncila!" ; line "Contest is over!"
	done

_RepelWoreOffText::
	text "REPEL efekt" ; text "REPEL's effect"
	line "stratil ucinok." ; line "wore off."
	done

_PlayerFoundItemText::
	text "<PLAYER> nasiel" ; text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ButNoSpaceText::
	text "Ale <PLAYER> nema" ; text "But <PLAYER> has"
	line "miesto v batohu…" ; line "no space left…"
	done

_JustSawSomeRareMonText::
	text "Videl som" ; text "I just saw some"
	line "vzacneho @" ; line "rare @"
	text_ram wStringBuffer1
	text " v" ; text " in"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Zavolam ti, ked" ; para "I'll call you if I"
	line "uvidim dalsieho" ; line "see another rare"
	cont "#MON, OK?"
	prompt

_SavingRecordText::
	text "UKLADAM…" ; text "SAVING RECORD…"
	line "NEVYPINAT!" ; line "DON'T TURN OFF!"
	done

_ReceiveItemText::
	text_ram wPlayerName
	text " dostal" ; text " received"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text_promptbutton
	text_end

	text_end ; unreferenced

_NoCoinsText::
	text "Nemas mince." ; text "You have no coins."
	prompt

_NoCoinCaseText::
	text "Nemas" ; text "You don't have a"
	line "MESEC." ; line "COIN CASE."
	prompt

_NPCTradeCableText::
	text "OK, pripoj" ; text "OK, connect the"
	line "Game Link Cable." ; line "Game Link Cable."
	prompt

Text_NPCTraded::
	text "<PLAYER> vymenil" ; text "<PLAYER> traded"
	line "@"
	text_ram wMonOrItemNameBuffer
	text " za" ; text " for"
	cont "@"
	text_ram wStringBuffer2
	text ".@"
	text_end

_NPCTradeFanfareText::
	sound_dex_fanfare_80_109
	text_pause
	text_end

	text_end ; unreferenced

_NPCTradeIntroText1::
	text "Zbieram #MON." ; text "I collect #MON."
	line "Nemas nahodou" ; line "Do you have"
	cont "@"
	text_ram wStringBuffer1
	text "?"

	para "Vymenis ho" ; para "Want to trade it"
	line "za mojho @" ; line "for my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText1::
	text "Nechces vymenit?" ; text "You don't want to"
	line "Ahh…" ; line "trade? Aww…"
	done

_NPCTradeWrongText1::
	text "Hm? To nie je" ; text "Huh? That's not"
	line "@"
	text_ram wStringBuffer1
	text ". "
	cont "Ake sklamanie…" ; cont "What a letdown…"
	done

_NPCTradeCompleteText1::
	text "Jej! Dostal som" ; text "Yay! I got myself"
	line "@"
	text_ram wStringBuffer1
	text "!"
	cont "Diky!"
	done

_NPCTradeAfterText1::
	text "Ahoj, ako sa ma moj" ; text "Hi, how's my old"
	line "@"
	text_ram wStringBuffer2
	text " Dobre?" ; text " doing?"
	done

_NPCTradeIntroText2::
	text "Ahoj, hladam" ; text "Hi, I'm looking"
	line "tohto #MON." ; line "for this #MON."

	para "Ak ho mas" ; para "If you have"
	line "@"
	text_ram wStringBuffer1
	text ", chces" ; text ", would"

	para "ho vymenit za" ; para "you trade it for"
	line "mojho @" ; line "my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText2::
	text "Nemas ho" ; text "You don't have"
	line "u seba?" ; line "one either?"

	para "Hm, tak to som" ; para "Gee, that's really"
	line "teda sklamany…" ; line "disappointing…"
	done

_NPCTradeWrongText2::
	text "Nemas" ; text "You don't have"
	line "@"
	text_ram wStringBuffer1
	text "? Tak" ; text "? That's"
	cont "to nic moc, teda." ; cont "too bad, then."
	done

_NPCTradeCompleteText2::
	text "Super! Dakujem!" ; text "Great! Thank you!"

	para "Konecne mam" ; para "I finally got"
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_NPCTradeAfterText2::
	text "Ahoj! @" ; text "Hi! The @"
	text_ram wMonOrItemNameBuffer
	text_start
	line ", co si mi dal" ; line "you traded me is"
	cont "sa ma skvele!" ; cont "doing great!"
	done

_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text "je zlaty," ; text "'s cute,"
	line "ale nemam ho." ; line "but I don't have"

	para "Nemas" ; para "it. Do you have"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "Chces ho vymenit" ; para "Want to trade it"
	line "za mojho @" ; line "for my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText3::
	text "Nechces ho vymenit?" ; text "You don't want to"
	line "No dokelu…" ; line "trade? Oh, darn…"
	done

_NPCTradeWrongText3::
	text "To nie je" ; text "That's not"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Ak ho najdes," ; para "Please trade with"
	line "prid za mnou." ; line "me if you get one."
	done

_NPCTradeCompleteText3::
	text "Wow! Dakujem!" ; text "Wow! Thank you!"
	line "Vzdy som chcel" ; line "I always wanted"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text "!"
	done

_NPCTradeAfterText3::
	text "Ako sa ma" ; text "How is that" 
	line "@"
	text_ram wStringBuffer2
	text " ktoreho" ; text " I"
	cont "som ti vymenil?" ; cont "traded you doing?"

	para "Tvoj @" ; para "Your @"
	text_ram wMonOrItemNameBuffer
	text "je" ; text "'s"
	line "tak roztomily!" ; line "so cute!"
	done

_NPCTradeCompleteText4::
	text "Hm? Co sa stalo?" ; text "Uh? What happened?"
	done

_NPCTradeAfterText4::
	text "Vymena je zvlastna…" ; text "Trading is so odd…"

	para "Stale sa mam" ; para "I still have a lot"
	line "co ucit." ; line "to learn about it."
	done

_MomLeavingText1::
	text "Wow, aky zlaty" ; text "Wow, that's a cute"
	line "#MON."

	para "Kde si ho" ; para "Where did you get"
	line "vzal?" ; line "it?"

	para "…"

	para "Aha, odchadzas" ; para "So, you're leaving"
	line "na dobrodruzstvo…" ; line "on an adventure…"

	para "OK!" ; para "OK!"
	line "Pomozem ti." ; line "I'll help too."

	para "Ale ako, hmm." ; para "But what can I do"
	line "Co spravim?" ; line "for you?"

	para "Uz viem! Budem" ; para "I know! I'll save"
	line "ti setrit peniaze." ; line "money for you."

	para "Na dobrodruzstve su" ; para "On a long journey,"
	line "peniaze dolezite." ; line "money's important."

	para "Budem ti setrit" ; para "Do you want me to"
	line "tvoje peniaze?" ; line "save your money?"
	done

_MomLeavingText2::
	text "OK, budem ti" ; text "OK, I'll take care"
	line "setrit peniaze." ; line "of your money."

	para "<……><……><……>"
	prompt

_MomLeavingText3::
	text "Davaj si pozor." ; text "Be careful."

	para "#MON su tvoji" ; para "#MON are your"
	line "kamarati. Musite" ; line "friends. You need"
	cont "byt jeden tym." ; cont "to work as a team."

	para "Drzim palce!" ; para "Now, go on!"
	done

_MomIsThisAboutYourMoneyText::
	text "Ahoj! Vitaj doma!" ; text "Hi! Welcome home!"
	line "Vidim, ze sa velmi" ; line "You're trying very"
	cont "snazis." ; cont "hard, I see."

	para "V izbe mas" ; para "I've kept your"
	line "stale poriadok." ; line "room tidy."

	para "Alebo ide o tvoje" ; para "Or is this about"
	line "peniaze?" ; line "your money?"
	done

_MomBankWhatDoYouWantToDoText::
	text "Co chces" ; text "What do you want"
	line "spravit?" ; line "to do?"
	done

_MomStoreMoneyText::
	text "Kolko chces" ; text "How much do you"
	line "usetrit?" ; line "want to save?"
	done

_MomTakeMoneyText::
	text "Kolko si chces" ; text "How much do you"
	line "vybrat?" ; line "want to take?"
	done

_MomSaveMoneyText::
	text "Chces si" ; text "Do you want to"
	line "nieco usetrit?" ; line "save some money?"
	done

_MomHaventSavedThatMuchText::
	text "Tolko si si" ; text "You haven't saved"
	line "neusetril" ; line "that much."
	prompt

_MomNotEnoughRoomInWalletText::
	text "Tolko si nemozes" ; text "You can't take"
	line "vziat." ; line "that much."
	prompt

_MomInsufficientFundsInWalletText::
	text "Tolko tam" ; text "You don't have"
	line "nemas." ; line "that much."
	prompt

_MomNotEnoughRoomInBankText::
	text "Tolko nemozes" ; text "You can't save"
	line "setrit." ; line "that much." 
	prompt

_MomStartSavingMoneyText::
	text "OK, budem ti" ; text "OK, I'll save your"
	line "setrit. Ver mi!" ; line "money. Trust me!"

	para "<PLAYER>, drz" ; para "<PLAYER>, stick"
	line "sa toho!" ; line "with it!"
	done

_MomStoredMoneyText::
	text "Your money's safe" ; text "Your money's safe"
	line "here! Get going!" ; line "here! Get going!"
	done

_MomTakenMoneyText::
	text "<PLAYER>, nevzdavaj" ; text "<PLAYER>, don't"
	line "sa!" ; line "give up!"
	done

_MomJustDoWhatYouCanText::
	text "Urob to, " ; text "Just do what"
	line "co mozes." ; line "you can."
	done

_DaycareDummyText::
	text_start
	done

_DayCareManIntroText::
	text "Som DAY-CARE" ; text "I'm the DAY-CARE"
	line "MAN. Vytrenujem" ; line "MAN. Want me to"
	cont "ti #MON?" ; cont "raise a #MON?"
	done

_DayCareManIntroEggText::
	text "Som DAY-CARE" ; text "I'm the DAY-CARE"
	line "MAN. Vies nieco" ; line "MAN. Do you know"
	cont "o VAJICKACH?" ; cont "about EGGS?"

	para "Trenujem" ; para "I was raising"
	line "#MON s mojou" ; line "#MON with my"
	cont "zenou, vies." ; cont "wife, you see."

	para "Boli sme v soku" ; para "We were shocked to"
	line "z VAJICKA!" ; line "find an EGG!"

	para "Neuveritelne," ; para "How incredible is"
	line "vsak?" ; line "that?"

	para "Tak, vytrenujem ti" ; para "So, want me to"
	line "nejakeho #MON?" ; line "raise a #MON?"
	done

_DayCareLadyIntroText::
	text "Som DAY-CARE" ; text "I'm the DAY-CARE"
	line "LADY." ; line "LADY."

	para "Vytrenujem ti" ; para "Should I raise a"
	line "#MON?" ; line "#MON for you?"
	done

_DayCareLadyIntroEggText::
	text "Som DAY-CARE" ; text "I'm the DAY-CARE"
	line "LADY. Vies nieco" ; line "LADY. Do you know" 
	cont "o VAJICKACH?" ; cont "about EGGS?"

	para "Moj manzel a ja" ; para "My husband and I"
	line "trenujeme" ; line "were raising some"
	cont "#MON, vies." ; cont "#MON, you see."

	para "Boli sme v soku" ; para "We were shocked to"
	line "z VAJICKA!" ; line "find an EGG!"

	para "Neuveritelne, " ; para "How incredible"
	line "vsak?" ; line "could that be?"

	para "Vytrenujem ti" ; para "Should I raise a"
	line "#MON?" ; line "#MON for you?"
	done

_WhatShouldIRaiseText::
	text "Koho ti" ; text "What should I"
	line "vytrenujem?" ; line "raise for you?"
	prompt

_OnlyOneMonText::
	text "Oh? ale mas iba" ; text "Oh? But you have"
	line "jedneho #MON." ; line "just one #MON."
	prompt

_CantAcceptEggText::
	text "Prepac, nemozem" ; text "Sorry, but I can't"
	line "trenovat VAJICKO." ; line "accept an EGG."
	prompt

_RemoveMailText::
	text "Odober este MAIL" ; text "Remove MAIL before"
	line "a potom prid." ; line "you come see me."
	prompt

_LastHealthyMonText::
	text "Ak mi ho das," ; text "If you give me"
	line "s kym budes" ; line "that, what will"
	cont "potom zapasit?" ; cont "you battle with?"
	prompt

_IllRaiseYourMonText::
	text "OK. Vytrenujem" ; text "OK. I'll raise"
	line "tvojho @" ; line "your @"
	text_ram wStringBuffer1
	text "."
	prompt

_ComeBackLaterText::
	text "Zastav sa prenho" ; text "Come back for it"
	line "neskor." ; line "later."
	done

_AreWeGeniusesText::
	text "No nie sme uzasni?" ; text "Are we geniuses or"
	line "Chces vidiet" ; line "what? Want to see"
	cont "svojho @" ; cont "your @"
	text_ram wStringBuffer1
	text "?"
	done

_YourMonHasGrownText::
	text "Tvoj @" ; text "Your @"
	text_ram wStringBuffer1
	text_start
	line "dost vyrastol." ; line "has grown a lot."

	para "Levelovo vyrastol" ; para "By level, it's"
	line "o @" ; line "grown by @"
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "Ak chces spat" ; para "If you want your"
	line "#MON , bude to" ; line "#MON back, it"
	cont "stat ¥@" ; cont "will cost ¥@"
	text_decimal wStringBuffer2 + 2, 3, 4
	text "."
	done

_PerfectHeresYourMonText::
	text "Vyborne! Tu" ; text "Perfect! Here's"
	line "je tvoj #MON." ; line "your #MON."
	prompt

_GotBackMonText::
	text "<PLAYER> dostal" ; text "<PLAYER> got back"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BackAlreadyText::
	text "Hm? Uz si spat?" ; text "Huh? Back already?"
	line "Tvoj @" ; line "Your @"
	text_ram wStringBuffer1
	text_start
	para "potrebuje trosku" ; para "needs a little"
	line "viac casu s nami." ; line "more time with us."

	para "Ak chces svojho" ; para "If you want your"
	line "#MON spat, bude" ; line "#MON back, it"
	cont "to stat ¥100." ; cont "will cost ¥100."
	done

_HaveNoRoomText::
	text "Nemas nanho" ; text "You have no room"
	line "miesto." ; line "for it."
	prompt

_NotEnoughMoneyText::
	text "Nemas dost" ; text "You don't have"
	line "penazi." ; line "enough money."
	prompt

_OhFineThenText::
	text "Oh, OK." ; text "Oh, fine then."
	prompt

_ComeAgainText::
	text "Pridte znova." ; text "Come again."
	done

_NotYetText::
	text "Este nie…" ; text "Not yet…"
	done

_FoundAnEggText::
	text "Aa, to si ty!" ; text "Ah, it's you!"

	para "Trenovali sme" ; para "We were raising"
	line "tvojho #MON, a" ; line "your #MON, and"

	para "zrazu," ; para "my goodness, were"
	line "prekvapenie!" ; line "we surprised!"

	para "Tvoj #MON" ; para "Your #MON had"
	line "mal VAJICKO!" ; line "an EGG!"

	para "Nevieme, ako sa to" ; para "We don't know how"
	line "stalo, ale" ; line "it got there, but"

	para "tvoj #MON ho" ; para "your #MON had"
	line "mal. Chces ho?" ; line "it. You want it?"
	done

_ReceivedEggText::
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "VAJICKO!" ; line "the EGG!"
	done

_TakeGoodCareOfEggText::
	text "Dobre sa on" ; text "Take good care of"
	line "postaraj." ; line "it."
	done

_IllKeepItThanksText::
	text "Rozumiem, necham" ; text "Well then, I'll"
	line "si ho. Dakujem!" ; line "keep it. Thanks!"
	done

_NoRoomForEggText::
	text "Nemas miesto" ; text "You have no room"
	line "na VAJICKO." ; line "in your party."
	cont "Prid neskor." ; cont "Come back later."
	done

_WhichMonPhotoText::
	text "Ktoreho #MON" ; text "Which #MON"
	line "chces" ; line "should I photo-"
	cont "odfotit?" ; cont "graph?"
	prompt

_HoldStillText::
	text "V poriadku." ; text "All righty. Hold"
	line "Povedzte syyr!" ; line "still for a bit."
	prompt

_PrestoAllDoneText::
	text "Presto! Hotovo." ; text "Presto! All done."
	line "Zastavte sa znova!" ; line "Come again, OK?"
	done
 