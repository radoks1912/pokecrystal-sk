_OakText6::
	text "Tak, ako si hovo-" ; text "Now, what did you"
	line "ril, ze sa volas?" ; line "say your name was?"
	prompt

_OakText7::
	text "<PLAYER>, si" ; text "<PLAYER>, are you"
	line "pripraveny?" ; line "ready?"

	para "Tvoj vlastny" ; para "Your very own"
	line "#MON pribeh" ; line "#MON story is"
	cont "sa prave zacina." ; cont "about to unfold."

	para "Caka ta zabava" ; para "You'll face fun"
	line "ale aj tazke" ; line "times and tough"
	cont "vyzvy." ; cont "challenges."

	para "Svet snov" ; para "A world of dreams"
	line "a dobrodruzstva" ; line "and adventures"

	para "s #MON" ; para "with #MON"
	line "caka! Podme na to!" ; line "awaits! Let's go!"

	para "Uvidime sa" ; para "I'll be seeing you"
	line "neskor!" ; line "later!"
	done

_ClockTimeMayBeWrongText::
	text "Cas moze byt" ; text "The clock's time"
	line "nespravny." ; line "may be wrong."

	para "Resetni prosim" ; para "Please reset the"
	line "cas." ; line "time."
	prompt

_ClockSetWithControlPadText::
	text "Nastav s" ; text "Set with the"
	line "Control Pad." ; line "Control Pad."

	para "Potvrdit: A " ; para "Confirm: A Button"
	line "Zrusit:  B" ; line "Cancel:  B Button"
	done

_ClockIsThisOKText::
	text "Je to OK?" ; text "Is this OK?"
	done

_ClockHasResetText::
	text "Cas bol" ; text "The clock has been"
	line "nastaveny." ; line "reset."
	done

_LinkTimeoutText::
	text "Cas spojenia" ; text "Too much time has"
	line "vyprsal. Skus" ; line "elapsed. Please"
	cont "prosim znova." ; cont "try again."
	prompt

_LinkTradeCantBattleText::
	text "Ak vymenis toho" ; text "If you trade that"
	line "#MON, nebudes" ; line "#MON, you won't"
	cont "moct zapasit." ; cont "be able to battle."
	prompt

_LinkAbnormalMonText::
	text "Priatelov" ; text "Your friend's"
	line "@"
	text_ram wStringBuffer1
	text " sa zda" ; text " appears"
	cont "byt abnormalny!" ; cont "to be abnormal!"
	prompt

_LinkAskTradeForText::
	text "Vymenit @" ; text "Trade @"
	text_ram wBufferTrademonNickname
	text_start
	line "za @" ; line "for @"
	text_ram wStringBuffer1
	text "?"
	done

_MobileBattleMustPickThreeMonText::
	text "Na vstup do" ; text "To enter a mobile"
	line "zapasu si musis" ; line "battle, you must"

	para "zvolit" ; para "pick a team of"
	line "troch #MON." ; line "three #MON."

	para "Je to OK?" ; para "Is that OK?"
	done

_MobileBattleMoreInfoText::
	text "Zobrazit viac info" ; text "Need more info on"
	line "o zapasoch?" ; line "mobile battles?"
	done

_MobileBattleRulesText::
	text "Na zapas" ; text "For a mobile"
	line "si zvol" ; line "battle, choose"
	cont "troch #MON." ; cont "three #MON."

	para "Maximalny denny" ; para "The maximum daily"
	line "limit je 10" ; line "play time is ten"

	para "minut pre kazdeho" ; para "minutes for each"
	line "pripojeneho hraca." ; line "linked player."

	para "Ak zapas neskonci" ; para "If a battle isn't"
	line "pocas casoveho" ; line "finished within"

	para "limitu, hrac" ; para "the time limit,"
	line "s najmensim poctom" ; line "the player with"

	para "odpadnutych" ; para "the fewest fainted"
	line "#MON wins." ; line "#MON wins."

	para "Pri remize, tym," ; para "If tied, the team"
	line "ktory stratil" ; line "that lost the"

	para "najmensie mnozstvo" ; para "least amount of HP"
	line "HP, vyhrava." ; line "wins."
	done

_WouldYouLikeToMobileBattleText::
	text "Dnesny zostavajuci" ; text "Today's remaining"
	line "cas je @" ; line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min." ; text " min."

	para "Chces" ; para "Would you like to"
	line "zapasit?" ; line "battle?"
	done

_WantAQuickMobileBattleText::
	text "Zostavaju @" ; text "There are only @"
	text_decimal wStringBuffer2, 1, 2
	text_start
	line "min. pre dnesok." ; line "min. left today."

	para "Chces rychly" ; para "Want a quick"
	line "zapas?" ; line "battle?"
	done

_WantToRushThroughAMobileBattleText::
	text "Zostava posledna" ; text "There is only"
	line "minuta pre dnesok!" ; line "1 min. left today!"

	para "Chces expresny" ; para "Want to rush"
	line "zapas?" ; line "through a battle?"
	done

_PleaseTryAgainTomorrowText::
	text "Zostava menej ako" ; text "There is less than"
	line "jedna minuta!" ; line "1 min. left today!"

	para "Skus to prosim" ; para "Please try again"
	line "zajtra." ; line "tomorrow."
	done

_TryAgainUsingSameSettingsText::
	text "Skusit znova s" ; text "Try again using"
	line "rovnakymi" ; line "the same settings?"
	cont "nastaveniami ?" 
	done

_MobileBattleLessThanOneMinuteLeftText::
	text "Zostava menej ako" ; text "There is less than"
	line "jedna minuta!" ; line "1 min. left today!"
	done

_MobileBattleNoTimeLeftForLinkingText::
	text "Nezostal ziaden cas" ; text "No time left for"
	line "na pripojenie." ; line "linking today."
	done

_PickThreeMonForMobileBattleText::
	text "Zvol 3 #MON" ; text "Pick three #MON"
	line "na zapas." ; line "for battle."
	done

_MobileBattleRemainingTimeText::
	text "Dnesny zostavajuci" ; text "Today's remaining"
	line "cas je @" ; line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min." ; text " min."
	done

_WouldYouLikeToSaveTheGameText::
	text "Chces ulozit" ; text "Would you like to"
	line "svoju hru?" ; line "save the game?"
	done

_SavingDontTurnOffThePowerText::
	text "UKLADAM… NEVY-" ; text "SAVING… DON'T TURN"
	line "PINAJ NAPAJANIE." ; line "OFF THE POWER."
	done

_SavedTheGameText::
	text "<PLAYER> ulozil" ; text "<PLAYER> saved"
	line "hru." ; line "the game."
	done

_AlreadyASaveFileText::
	text "Save uz existuje." ; text "There is already a"
	line "Prepisat?" ; line "save file. Is it"
	;cont "OK to overwrite?" ; cont "OK to overwrite?"
	done

_AnotherSaveFileText::
	text "Save uz existuje." ; text "There is another"
	line "Prepisat" ; line "save file. Is it"
	;cont "OK to overwrite?" ; cont "OK to overwrite?"
	done

_SaveFileCorruptedText::
	text "Save je" ; text "The save file is"
	line "poskodeny!" ; 	line "corrupted!"
	prompt

_ChangeBoxSaveText::
	text "Ked zmenis" ; text "When you change a"
	line "#MON BOX, hra" ; line "#MON BOX, data"
	cont "bude ulozena. OK?" ; cont "will be saved. OK?"
	done

_MoveMonWOMailSaveText::
	text "Pri presuvani" ; text "Each time you move"
	line "#MON bude hra" ; line "a #MON, data"
	cont "ulozena. OK?" ; cont "will be saved. OK?"
	done

_WindowAreaExceededErrorText:: ; unreferenced
	text "The window save"
	line "area was exceeded."
	done

_WindowPoppingErrorText:: ; ???
	text "No windows avail-" ; text "No windows avail-"
	line "able for popping." ; line "able for popping."
	done

_CorruptedEventText:: ; unreferenced
	text "Corrupted event!"
	prompt

_ObjectEventText::
	text "Object event"
	done

_BGEventText::
	text "BG event"
	done

_CoordinatesEventText::
	text "Coordinates event"
	done

_ReceivedItemText::
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

_PutItemInPocketText::
	text "<PLAYER> odlozil" ; text "<PLAYER> put the"
	line "@"
	text_ram wStringBuffer1
	text " do" ; text " in"
	cont "svojho @" ; cont "the @"
	text_ram wStringBuffer3
	text "."
	prompt

_PocketIsFullText::
	text "@" ; text "The @"
	text_ram wStringBuffer3
	text_start
	line "je plny…" ; line "is full…"
	prompt

_SeerSeeAllText::
	text "Vidim vsetko." ; text "I see all."
	line "Viem vsetko…" ; line "I know all…"

	para "Urcite viem o" ; para "Certainly, I know"
	line "tvojich #MON!" ; line "of your #MON!"
	done

_SeerCantTellAThingText::
	text "Cozeee? Neviem" ; text "Whaaaat? I can't"
	line "nic!" ; line "tell a thing!"

	para "Ako som o tom" ; para "How could I not"
	line "mohol nevediet?" ; line "know of this?"
	done

_SeerNameLocationText::
	text "Hm… Stretol si" ; text "Hm… I see you met"
	line "@"
	text_ram wSeerNickname
	text " tu:" ; text " here:"
	cont "@"
	text_ram wSeerCaughtLocation
	text "!"
	prompt

_SeerTimeLevelText::
	text "Cas bol" ; text "The time was"
	line "@"
	text_ram wSeerTimeOfDay
	text "!"

	para "Jeho level bol @" ; para "Its level was @"
	text_ram wSeerCaughtLevelString
	text "!"

	para "Som dobry, vsak?" ; para "Am I good or what?"
	prompt

_SeerTradeText::
	text "Hm… @"
	text_ram wSeerNickname
	text_start
	line "pochadza od @" ; line "came from @"
	text_ram wSeerOT
	text_start
	cont "z vymeny?" ; cont "in a trade?"

	para "@"
	text_ram wSeerCaughtLocation
	text_start
	line "bolo kde @" ; line "was where @"
	text_ram wSeerOT
	text_start
	cont "stretol @" ; cont "met @"
	text_ram wSeerNickname
	text "!"
	prompt

_SeerNoLocationText::
	text "Coze? Neuveritelne!" ; text "What!? Incredible!"

	para "Nerozumiem ako," ; para "I don't understand"
	line "ale je to" ; line "how, but it is"

	para "neuveritelne!" ;para "incredible!"
	line "Si specialny." ; line "You are special."

	para "Neviem, kde ste sa" ; para "I can't tell where"
	line "stretli, ale bol" ; line "you met it, but it"
	cont "level @" ; cont "was at level @"
	text_ram wSeerCaughtLevelString
	text "."

	para "Som dobry, vsak?" ; para "Am I good or what?"
	prompt

_SeerEggText::
	text "Hej!" ; text "Hey!"

	para "To je VAJICKO!" ; para "That's an EGG!"

	para "Nemozes povedat," ; para "You can't say that"
	line "ze ste sa stretli…" ; line "you've met it yet…"
	done

_SeerDoNothingText::
	text "Hahaha! Vedel som" ; text "Fufufu! I saw that"
	line "ze nespravis nic!" ; line "you'd do nothing!"
	done

_SeerMoreCareText::
	text "Incidentally…" ; text "Incidentally…"

	para "It would be wise" ; para "It would be wise"
	line "to raise your" ; line "to raise your"

	para "#MON with a" ; para "#MON with a"
	line "little more care." ; line "little more care."
	done

_SeerMoreConfidentText::
	text "Mimochodom…" ; text "Incidentally…"

	para "Vypada, ze trochu" ; para "It seems to have"
	line "vyrastol." ; line "grown a little."

	para "@"
	text_ram wSeerNickname
	text " seems" ; text " seems"
	line "to be becoming" ; line "to be becoming"
	cont "more confident." ; cont "more confident."
	done

_SeerMuchStrengthText::
	text "Mimochodom…" ; text "Incidentally…"

	para "@"
	text_ram wSeerNickname
	;text " has" ; text " has"
	line "vyrastol a dost" ; line "grown. It's gained"
	cont "zosilnel." ; cont "much strength."
	done

_SeerMightyText::
	text "Mimochodom…" ; text "Incidentally…"

	para "Stal sa z neho" ; para "It certainly has"
	line "silak!" ; line "grown mighty!"

	para "Musi @" ; para "This @"
	text_ram wSeerNickname
	text_start
	line "to byt kvoli" ; line "must have come"

	para "nespocetnymi" ; para "through numerous"
	line "#MON zapasmi." ; line "#MON battles."

	para "Prekypuje" ; para "It looks brimming"
	line "istotou." ; line "with confidence."
	done

_SeerImpressedText::
	text "Mimochodom…" ; text "Incidentally…"

	para "Som uchvateny tvo-" ; para "I'm impressed by"
	line "jim nadsenim." ; line "your dedication."

	para "Uz je to chvila" ; para "It's been a long"
	line "co som videl" ; line "time since I've"

	para "#MON tak" ; para "seen a #MON as"
	line "mocneho ako tento" ; line "mighty as this"
	cont "@"
	text_ram wSeerNickname
	text "."

	para "Som si isty," ; para "I'm sure that"
	line "ze vidiet @" ; line "seeing @"
	text_ram wSeerNickname
	text_start

	para "v zapase by" ; para "in battle would"
	line "vzrusilo kazdeho." ; line "excite anyone."
	done

_CongratulationsYourPokemonText::
	text "Gratulujem!" ; text "Congratulations!"
	line "Tvoj @" ; line "Your @"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_EvolvedIntoText::
	text_start

	para "sa vyvinul na" ; para "evolved into"
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_StoppedEvolvingText::
	text "Hm? @" ; text "Huh? @"
	text_ram wStringBuffer2
	text_start
	line "sa prestal vyvijat!" ; line "stopped evolving!"
	prompt

_EvolvingText::
	text "Coze? @" ; text "What? @"
	text_ram wStringBuffer2
	text_start
	line "sa vyvija!" ; line "is evolving!"
	done

_MartHowManyText::
	text "Kolko?" ; text "How many?"
	done

_MartFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " @"
	text_ram wStringBuffer2
	;text "(S)"
	line "bude ¥@" ; line "will be ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_HerbShopLadyIntroText::
	text "Ahoj, drahy." ; text "Hello, dear."

	para "Predavam lacnu" ; para "I sell inexpensive"
	line "bylinkovu medicinu." ; line "herbal medicine."

	para "Je dobra," ; para "They're good, but"
	line "ale malicko horka." ; line "a trifle bitter."

	para "Tvoji #MON ju" ; para "Your #MON may"
	line "nemusia mat radi." ; line "not like them."

	para "Hehehehe…" ; para "Hehehehe…"
	done

_HerbalLadyHowManyText::
	text "Kolko?" ; text "How many?"
	done

_HerbalLadyFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " @"
	text_ram wStringBuffer2
	;text "(S)"
	line "bude ¥@" ; line "will be ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_HerbalLadyThanksText::
	text "Dakujem, drahy." ; text "Thank you, dear."
	line "Hehehehe…" ; line "Hehehehe…"
	done

_HerbalLadyPackFullText::
	text "Oh? Tvoj BATOH je" ; text "Oh? Your PACK is"
	line "plny, drahy." ; line "full, dear."
	done

_HerbalLadyNoMoneyText::
	text "Hehehe… Nemas" ; text "Hehehe… You don't"
	line "peniaze." ; line "have the money."
	done

_HerbalLadyComeAgainText::
	text "Prid znova, drahy." ; text "Come again, dear."
	line "Hehehehe…" ; line "Hehehehe…"
	done

_BargainShopIntroText::
	text "Ahoj! Chces vidiet" ; text "Hiya! Care to see"
	line "akcie?" ; line "some bargains?"

	para "Predavam vzacne" ; para "I sell rare items"
	line "predmety, ktore" ; line "that nobody else"

	para "nikto nema--ale iba" ; para "carries--but only"
	line "po kuse." ; line "one of each item."
	done

_BargainShopFinalPriceText::
	text_ram wStringBuffer2
	text " stoji" ; text " costs"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text ". Chces?" ; text ". Want it?"
	done

_BargainShopThanksText::
	text "Dakujem." ; text "Thanks."
	done

_BargainShopPackFullText::
	text "Oou, tvoj BATOH" ; text "Uh-oh, your PACK"
	line "je preplneny." ; line "is chock-full."
	done

_BargainShopSoldOutText::
	text "To si si uz" ; text "You bought that"
	line "kupil. Uz to" ; line "already. I'm all"
	cont "je vypredane." ; cont "sold out of it."
	done

_BargainShopNoFundsText::
	text "Oou, nemas" ; text "Uh-oh, you're"
	line "dostatok penazi." ; line "short on funds."
	done

_BargainShopComeAgainText::
	text "Prid niekedy" ; text "Come by again"
	line "znova." ; line "sometime."
	done

_PharmacyIntroText::
	text "Ako to ide? Po-" ; text "What's up? Need"
	line "trebujes medicinu?" ; line "some medicine?"
	done

_PharmacyHowManyText::
	text "Kolko?" ; text "How many?"
	done

_PharmacyFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " @"
	text_ram wStringBuffer2
	;text "(S)"
	line "bude stat ¥@" ; line "will cost ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_PharmacyThanksText::
	text "Dakujem pekne!" ; text "Thanks much!"
	done

_PharmacyPackFullText::
	text "Nemas dost miesta" ; text "You don't have any"
	line "v BATOHU." ; line "more space."
	done

_PharmacyNoMoneyText::
	text "Hm? To nie je" ; text "Huh? That's not"
	line "dost penazi." ; line "enough money."
	done

_PharmacyComeAgainText::
	text "V poriadku." ; text "All right."
	line "Tak zatial ahoj." ; line "See you around."
	done

_NothingToSellText::
	text "Nemas nic" ; text "You don't have"
	line "na predaj" ; line "anything to sell."
	prompt

_MartSellHowManyText::
	text "Kolko?" ; text "How many?"
	done

_MartSellPriceText::
	text "Mozem ti zaplatit" ; text "I can pay you"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."

	para "Je to OK?" ; para "Is that OK?"
	done

_MartWelcomeText::
	text "Vitaj! Ako ti" ; text "Welcome! How may I"
	line "mozem pomoct?" ; line "help you?"
	done

_MartThanksText::
	text "Nech sa paci." ; text "Here you are."
	line "Dakujem!" ; line "Thank you!"
	done

_MartNoMoneyText::
	text "Nemas dost" ; text "You don't have"
	line "penazi." ; line "enough money."
	done

_MartPackFullText::
	text "Nezmesti sa ti" ; text "You can't carry"
	line "viac veci." ; line "any more items."
	done

_MartCantBuyText::
	text "Prepac, to od teba" ; text "Sorry, I can't buy"
	line "nemozem kupit." ; line "that from you."
	prompt

_MartComeAgainText::
	text "Prid prosim znova!" ; text "Please come again!"
	done

_MartAskMoreText::
	text "Mozem ti este" ; text "Can I do anything"
	line "s niecim pomoct?" ; line "else for you?"
	done

_MartBoughtText::
	text "Dostal si ¥@" ; text "Got ¥@"
	text_decimal hMoneyTemp, 3, 6
	text " za" ; text " for"
	line "@"
	text_ram wStringBuffer2
	;text "(S)."
	done

_SlotsBetHowManyCoinsText::
	text "Kolko zetonov chces" ; text "Bet how many"
	line "stavit?" ; line "coins?"
	done

_SlotsStartText::
	text "Start!"
	done

_SlotsNotEnoughCoinsText::
	text "Nedostatok" ; text "Not enough"
	line "zetonov." ; line "coins."
	prompt

_SlotsRanOutOfCoinsText::
	text "Sakra… minul som" ; text "Darn… Ran out of"
	line "zetony…" ; line "coins…"
	done

_SlotsPlayAgainText::
	text "Hrat znova?" ; text "Play again?"
	done

_SlotsLinedUpText::
	text "Bingo!" ; text "lined up!"
	line "Vyhravas @" ; line "Won @"
	text_ram wStringBuffer2
	text " zetonov!" ; text " coins!"
	done

_SlotsDarnText::
	text "Sakra!" ; text "Darn!"
	done

_MobileStadiumEntryText::
	text "Data z" ; text "Data for use in"
	line "MOBILE STADIUM" ; line "the MOBILE STADIUM"

	para "z N64 #MON" ; para "of the N64 #MON"
	line "STADIUM 2 sa" ; line "STADIUM 2 can be"
	cont "daju precitat tu." ; cont "read here."

	para "Precitat data?" ; para "Read the data?"
	done

_MobileStadiumSuccessText::
	text "Prenos dat" ; text "Data transfer is"
	line "je dokonceny." ; line "complete."

	para "Uzite si" ; para "We hope you enjoy"
	line "MOBILE STADIUM" ; line "MOBILE STADIUM"

	para "zapasy v N64" ; para "battles in the N64"
	line "#MON STADIUM 2." ; line "#MON STADIUM 2."

	para ""
	done

_MainMenuTimeUnknownText::
	text "Systemovy cas je" ; text "Clock time unknown"
	line "neznamy."
	done

_DeleteSavedLoginPasswordText::
	text "Zmazat" ; text "Delete the saved"
	line "LOG-IN PASSWORD?" ; line "LOG-IN PASSWORD?"
	done

_DeletedTheLoginPasswordText::
	text "Zmazany LOG-IN" ; text "Deleted the LOG-IN"
	line "PASSWORD." ; line "PASSWORD."
	done

_MobilePickThreeMonForBattleText::
	text "Vyber 3 #MON" ; text "Pick three #MON"
	line "na zapas." ; line "for battle."
	prompt

_MobileUseTheseThreeMonText::
	text_ram wMobileParticipant1Nickname
	text ","
	line "@"
	text_ram wMobileParticipant2Nickname
	text " a"
	cont "@"
	text_ram wMobileParticipant3Nickname
	text "."

	para "Pouzit tychto 3?" ; para "Use these three?"
	done

_MobileOnlyThreeMonMayEnterText::
	text "Iba 3 #MON" ; text "Only three #MON"
	line "mozu vstupit." ; line "may enter."
	prompt

_MobileCardFolderIntro1Text::
	text "CARD FOLDER" ; text "The CARD FOLDER"
	line "obsahuje tvoje" ; line "stores your and"

	para "priatelove'" ; para "your friends'"
	line "CARDS." ; line "CARDS."

	para "A CARD obsahuje" ; para "A CARD contains"
	line "informacie ako" ; line "information like"

	para "meno," ; para "the person's name,"
	line "tel.cislo a" ;  line "phone number and"
	cont "profil." ; cont "profile."

	para ""
	done

_MobileCardFolderIntro2Text::
	text "Toto je tvoja CARD." ; text "This is your CARD."

	para "Po vyplneni" ; para "Once you've"
	line "tel. cisla" ; line "entered your phone"

	para "mozes menit" ;para "number, you can"
	line "CARDS s" ; line "trade CARDS with"
	cont "tvojimi priatelmi." ; cont "your friends."

	para ""
	done

_MobileCardFolderIntro3Text::
	text "Ak mas priatelovu" ; text "If you have your"
	line "CARD, mozes ju" ; line "friend's CARD, you"

	para "pouzit na" ; para "can use it to make"
	line "telefonat" ; line "a call from a"

	para "z mobilu na" ; para "mobile phone on"
	line "druhom poschodi v" ; line "the 2nd floor of a"
	cont "#MON CENTER." ; cont "#MON CENTER."

	para ""
	done

_MobileCardFolderIntro4Text::
	text "Pre bezpecne" ; text "To safely store"
	line "ulozenie informacii" ; line "your collection of"

	para "CARDS, musis" ; para "CARDS, you must"
	line "nastavit PASSCODE" ; line "set a PASSCODE for"
	cont "pre CARD FOLDER." ; cont "your CARD FOLDER."

	para ""
	done

_MobileCardFolderAskDeleteText::
	text "Ak CARD FOLDER" ; text "If the CARD FOLDER"
	line "zmazes, vsetky" ; line "is deleted, all"

	para "CARDS a" ; para "its CARDS and the"
	line "PASSCODE budu" ; line "PASSCODE will also"
	cont "tiez zmazane." ; cont "be deleted."

	para "Pozor--zmazany" ; para "Beware--a deleted"
	line "CARD FOLDER sa" ; line "CARD FOLDER can't"
	cont "neda obnovit." ; cont "be restored."

	para "Chces zmazat" ; para "Want to delete"
	line "tvoj CARD FOLDER?" ; line "your CARD FOLDER?"
	done

_MobileCardFolderDeleteAreYouSureText::
	text "Si si isty ze" ; text "Are you sure you"
	line "ho chces zmazat?" ; line "want to delete it?"
	done

_MobileCardFolderDeletedText::
	text "CARD FOLDER" ; text "The CARD FOLDER"
	line "bol zmazany." ; line "has been deleted."

	para ""
	done

_MobileCardFolderAskOpenOldText::
	text "Nasiel som" ; text "There is an older"
	line "CARD FOLDER z" ; line "CARD FOLDER from a"
	cont "minuleho dobrodruzstva." ; cont "previous journey."

	para "Chces ho" ; para "Do you want to"
	line "otvorit?" ; line "open it?"
	done

_MobileCardFolderAskDeleteOldText::
	text "Zmazat stary" ; text "Delete the old"
	line "CARD FOLDER?" ; line "CARD FOLDER?"
	done

_MobileCardFolderFinishRegisteringCardsText::
	text "Dokoncit registra-" ; text "Finish registering"
	line "ciu CARDS?" ; line "CARDS?"
	done

_PhoneWrongNumberText::
	text "Hm? Prepac," ; text "Huh? Sorry, wrong"
	line "nespravne cislo!" ; line "number!"
	done

_PhoneClickText::
	text "Klik!" ; text "Click!"
	done

_PhoneEllipseText::
	text "<……>"
	done

_PhoneOutOfAreaText::
	text "Cislo je mimo" ; text "That number is out"
	line "dosah." ; line "of the area."
	done

_PhoneJustTalkToThemText::
	text "Chod sa s osobou" ; text "Just go talk to"
	line "porozpravat!" ; line "that person!"
	done

_PhoneThankYouText::
	text "Dakujem!" ; text "Thank you!"
	done

_SpaceSpaceColonText:: ; unreferenced
	text "  :"
	done

_PasswordAskResetText::
	text "Heslo OK." ; text "Password OK."
	line "Vyber CONTINUE &" ; line "Select CONTINUE &"
	cont "resetni nastavenia." ; cont "reset settings."
	prompt

_PasswordWrongText::
	text "Nespravne heslo!" ; text "Wrong password!"
	prompt

_PasswordAskResetClockText::
	text "Resetnut hodiny?" ; text "Reset the clock?"
	done

_PasswordAskEnterText::
	text "Vloz prosim" ; text "Please enter the"
	line "heslo." ; line "password."
	done

_ClearAllSaveDataText::
	text "Zmazat vsetky" ; text "Clear all save"
	line "save data?" ; line "data?"
	done

_LearnedMoveText::
	text_ram wMonOrItemNameBuffer
	text " sa naucil" ; text " learned"
	line "@"
	text_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_promptbutton
	text_end

	text_end ; unreferenced

_MoveAskForgetText::
	text "Ktory utok ma" ; text "Which move should"
	next "zabudnut?" ; next "be forgotten?"
	done

_StopLearningMoveText::
	text "Prestat sa ucit" ; text "Stop learning"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

_DidNotLearnMoveText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "sa nenaucil" ; line "did not learn"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_AskForgetMoveText::
	text_ram wMonOrItemNameBuffer
	text " sa" ; text " is"
	line "snazi naucit" ; line "trying to learn"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Ale @" ; para "But @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "moze mat max" ; line "can't learn more"
	cont "styri utoky." ; cont "than four moves."

	para "Zmazat starsi utok" ; para "Delete an older"
	line "a spravit miesto" ; line "move to make room"
	cont "pre @" ; cont "for @"
	text_ram wStringBuffer2
	text "?"
	done

Text_MoveForgetCount::
	text "1, 2 a…@" ; text "1, 2 and…@"
	text_pause
	text_end

	text_end ; unreferenced

_MoveForgotText::
	text " Puf!@" ; text " Poof!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text " zabudol" ; text " forgot"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "A…" ; para "And…"
	prompt

_MoveCantForgetHMText::
	text "HM sa nedaju" ; text "HM moves can't be"
	line "teraz zabudnut." ; line "forgotten now."
	prompt

_CardFlipPlayWithThreeCoinsText::
	text "Hrat s tromi" ; text "Play with three"
	line "zetonami?" ; line "coins?"
	done

_CardFlipNotEnoughCoinsText::
	text "Nedostatok zetonov…" ; text "Not enough coins…"
	prompt

_CardFlipChooseACardText::
	text "Zvol kartu." ; text "Choose a card."
	done

_CardFlipPlaceYourBetText::
	text "Stav si." ; text "Place your bet."
	done

_CardFlipPlayAgainText::
	text "Chces hrat" ; text "Want to play"
	line "znova?" ; line "again?"
	done

_CardFlipShuffledText::
	text "Karty boli" ; text "The cards have"
	line "zamiesane." ; line "been shuffled."
	prompt

_CardFlipYeahText::
	text "Yeah!" ; text "Yeah!"
	done

_CardFlipDarnText::
	text "Sakra…" ; text "Darn…"
	done

_GearTodayText::
	text_today
	text_end

	text_end ; unreferenced

_GearEllipseText::
	text "<……>"
	done

_GearOutOfServiceText::
	text "Si mimo oblasti" ; text "You're out of the"
	line "signalu." ; line "service area."
	prompt

_PokegearAskWhoCallText::
	text "Komu chces" ; text "Whom do you want"
	line "zavolat?" ; line "to call?"
	done

_PokegearPressButtonText::
	text "Stlac lubovolne" ; text "Press any button"
	line "tlacitko pre" ; line "to exit."
	cont "ukoncenie." 
	done

_PokegearAskDeleteText::
	text "Zmazat ulozene" ; text "Delete this stored"
	line "tel. cislo?" ; line "phone number?"
	done

_BuenaAskWhichPrizeText::
	text "Ktoru cenu" ; text "Which prize would"
	line "si prajes?" ; line "you like?"
	done

_BuenaIsThatRightText::
	text_ram wStringBuffer1
	text "?"
	line "Je to spravne?" ; line "Is that right?"
	done

_BuenaHereYouGoText::
	text "Nech sa paci!" ; text "Here you go!"

	para ""
	done

_BuenaNotEnoughPointsText::
	text "Nemas dostatok" ; text "You don't have"
	line "bodov." ; line "enough points."

	para ""
	done

_BuenaNoRoomText::
	text "Nemas pren" ; text "You have no room"
	line "miesto." ; line "for it."

	para ""
	done

_BuenaComeAgainText::
	text "Oh. Urcite sa" ; text "Oh. Please come"
	line "vrat znova!" ; line "back again!"
	done

_BTExcuseMeText::
	text "Prepac!" ; text "Excuse me!"

	para ""
	done

_ExcuseMeYoureNotReadyText::
	text "Prepac." ; text "Excuse me."
	line "Nie si pripraveny." ; line "You're not ready."

	para ""
	done

_BattleTowerReturnWhenReadyText::
	text "Vrat sa prosim, ked" ; text "Please return when"
	line "budes pripraveny." ; line "you're ready."
	done

_NeedAtLeastThreeMonText::
	text "Potrebujes min" ; text "You need at least"
	line "3 #MON." ; line "three #MON."

	para ""
	done

_EggDoesNotQualifyText::
	text "Prepac, VAJICKO" ; text "Sorry, an EGG"
	line "nesplna podmienky." ; line "doesn't qualify."

	para ""
	done

_OnlyThreeMonMayBeEnteredText::
	text "Iba 3 #MON" ; text "Only three #MON"
	line "mozu vstupit." ; line "may be entered."

	para ""
	done

_TheMonMustAllBeDifferentKindsText::
	text "The @" ; text "The @"
	text_ram wStringBuffer2
	text " #MON"
	line "must all be" ; line "must all be"
	cont "different kinds." ; cont "different kinds."

	para ""
	done

_TheMonMustNotHoldTheSameItemsText::
	text "@" ; text "The @"
	text_ram wStringBuffer2
	text " #MON"
	line "nemozu drzat" ; line "must not hold the"
	cont "rovnake veci." ; cont "same items."

	para ""
	done

_YouCantTakeAnEggText::
	text "Nemozes vziat" ; text "You can't take an"
	line "VAJICKO!" ; line "EGG!"

	para ""
	done

_BallDodgedText::
	text "Uhol sa hodenemu" ; text "It dodged the"
	line "BALL!" ; line "thrown BALL!"

	para "Tohto #MON"
	line "nemozes chytit!" ; line "can't be caught!"
	prompt

_BallMissedText::
	text "Netrafil si" ; text "You missed the"
	line "#MON!"
	prompt

_BallBrokeFreeText::
	text "Oh nie! #MON" ; text "Oh no! The #MON"
	line "sa oslobodil!" ; line "broke free!"
	prompt

_BallAppearedCaughtText::
	text "Oww! Vypadal" ; text "Aww! It appeared"
	line "byt chyteny!" ; line "to be caught!"
	prompt

_BallAlmostHadItText::
	text "Aahh!" ; text "Aargh!"
	line "Skoro si ho mal!" ; line "Almost had it!"
	prompt

_BallSoCloseText::
	text "Sakra! To bolo" ; text "Shoot! It was so"
	line "tak tesne!" ; line "close too!"
	prompt

Text_BallCaught::
	text "Mam ta! @" ; text "Gotcha! @"
	text_ram wEnemyMonNickname
	text_start
	line "bol chyteny!@" ; line "was caught!@"
	sound_caught_mon
	text_end

	text_end ; unreferenced

_WaitButtonText::
	text_promptbutton
	text_end

	text_end ; unreferenced

_BallSentToPCText::
	text_ram wMonOrItemNameBuffer
	text " bol" ; text " was"
	line "poslany do BILL PC." ; line "sent to BILL's PC."
	prompt

_NewDexDataText::
	text_ram wEnemyMonNickname
	text "data" ; text "'s data"
	line "boli pridane" ; line "was newly added to"
	cont "do #DEX.@" ; cont "the #DEX.@"
	sound_slot_machine_start
	text_promptbutton
	text_end

	text_end ; unreferenced

_AskGiveNicknameText::
	text "Chces dat prezyvku" ; text "Give a nickname to"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_ItemStatRoseText::
	text_ram wStringBuffer1
	;text "'s"
	line "@"
	text_ram wStringBuffer2
	text " stupol." ; text " rose."
	prompt

_ItemCantUseOnMonText::
	text "Toto nemozes pouzit" ; text "That can't be used"
	line "na tohto #MON." ; line "on this #MON."
	prompt

_RepelUsedEarlierIsStillInEffectText::
	text "REPEL" ; text "The REPEL used"
	line "je stale" ; line "earlier is still"
	cont "aktivny." ; cont "in effect."
	prompt

_PlayedFluteText::
	text "Zahral na #" ; text "Played the #"
	line "FLUTE." ; line "FLUTE."

	para "Teda, to je" ; para "Now, that's a"
	line "chytlava melodia!" ; line "catchy tune!"
	prompt

_FluteWakeUpText::
	text "Vsetci spiaci" ; text "All sleeping"
	line "#MON sa zobudili." ; line "#MON woke up."
	prompt

Text_PlayedPokeFlute::
	text "<PLAYER> zahral na" ; text "<PLAYER> played the"
	line "# FLUTE.@" ; line "# FLUTE.@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_BlueCardBalanceText::
	text "Teraz mas" ; text "You now have"
	line "@"
	text_decimal wBlueCardBalance, 1, 2
	text " bodov." ; text " points."
	done

_CoinCaseCountText::
	text "Zetony:" ; text "Coins:"
	line "@"
	text_decimal wCoins, 2, 4
	text_end

	text_end ; unreferenced

_RaiseThePPOfWhichMoveText::
	text "Zvysit PP ktoreho" ; text "Raise the PP of"
	line "utoku?" ; line "which move?"
	done

_RestoreThePPOfWhichMoveText::
	text "Obnovit PP ktoreho" ; text "Restore the PP of"
	line "utoku?" ; line "which move?"
	done

_PPIsMaxedOutText::
	text_ram wStringBuffer2
	text "PP" ; text "'s PP"
	line "su na maximum." ; line "is maxed out."
	prompt

_PPsIncreasedText::
	text_ram wStringBuffer2
	text "PP" ; text "'s PP"
	line "zvysene." ; line "increased."
	prompt

_PPRestoredText::
	text "PP obnovene." ; text "PP was restored."
	prompt

_SentTrophyHomeText::
	text "Obsahovala vovnutri" ; text "There was a trophy"
	line "trofej!@" ; line "inside!@"
	sound_dex_fanfare_50_79
	text_start

	para "@"
	text_ram wPlayerName
	text " poslal" ; text " sent the"
	line "trofej domov." ; line "trophy home."
	prompt

_ItemLooksBitterText::
	text "Vypada horko…" ; text "It looks bitter…"
	prompt

_ItemCantUseOnEggText::
	text "To nemozes pouzit" ; text "That can't be used"
	line "na VAJICKO." ; line "on an EGG."
	prompt

_ItemOakWarningText::
	text "OAK: <PLAYER>!" ; text "OAK: <PLAYER>!"
	line "Toto teraz" ; line "This isn't the"
	cont "nemozes pouzit!" ; cont "time to use that!"
	prompt

_ItemBelongsToSomeoneElseText::
	text "Toto patri" ; text "That belongs to"
	line "niekomu inemu!" ; line "someone else!"
	prompt

_ItemWontHaveEffectText::
	text "Nebude to mat" ; text "It won't have any"
	line "ziaden efekt." ; line "effect."
	prompt

_BallBlockedText::
	text "Trener" ; text "The trainer"
	line "zablokoval BALL!" ; line "blocked the BALL!"
	prompt

_BallDontBeAThiefText::
	text "Nebud zlodej!" ; text "Don't be a thief!"
	prompt

_NoCyclingText::
	text "Bicyklovanie je" ; text "Cycling isn't"
	line "tu zakazane." ; line "allowed here."
	prompt

_ItemCantGetOnText::
	text "Teraz nemozes " ; text "Can't get on your"
	line "nasadnut na @"
	text_ram wStringBuffer1
	;text " now." ; text " now."
	prompt

_BallBoxFullText::
	text "#MON BOX" ; text "The #MON BOX"
	line "je plny. To teraz" ; line "is full. That"
	cont "nemozes pouzit." ; cont "can't be used now."
	prompt

_ItemUsedText::
	text "<PLAYER> pouzil@" ; text "<PLAYER> used the@"
	text_low
	text_ram wStringBuffer2
	text "."
	done

_ItemGotOnText::
	text "<PLAYER> nasadol na@" ; text "<PLAYER> got on the@"
	text_low
	text_ram wStringBuffer2
	text "."
	prompt

_ItemGotOffText::
	text "<PLAYER> zosadol z@" ; text "<PLAYER> got off@"
	text_low
	text "the @" ; text "the @"
	text_ram wStringBuffer2
	text "."
	prompt

_KnowsMoveText::
	text_ram wStringBuffer1
	text " pozna" ; text " knows"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_MoveKnowsOneText::
	text "Ten #MON pozna" ; text "That #MON knows"
	line "len jeden utok." ; line "only one move."
	done

_AskDeleteMoveText::
	text "Oh, chces zabudnut" ; text "Oh, make it forget"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_DeleterForgotMoveText::
	text "Hotovo! Tvoj #MON" ; text "Done! Your #MON"
	line "zabudol ten utok." ; line "forgot the move."
	done

_DeleterEggText::
	text "VAJICKO nepozna" ; text "An EGG doesn't"
	line "ziadne utoky!" ; line "know any moves!"
	done

_DeleterNoComeAgainText::
	text "Nie? Zastav sa" ; text "No? Come visit me"
	line "niekedy znova." ; line "again."
	done

_DeleterAskWhichMoveText::
	text "Ktory utok ma" ; text "Which move should"
	line "teda zabudnut?" ; line "it forget, then?"
	prompt

_DeleterIntroText::
	text "Hm… Oh, ano, ja" ; text "Um… Oh, yes, I'm"
	line "som MOVE DELETER." ; line "the MOVE DELETER."

	para "Dokazem #MON" ; para "I can make #MON"
	line "odnaucit utok." ; line "forget moves."

	para "Mam tvojho" ; para "Shall I make a"
	line "#MON" ; line "#MON forget?"
	cont "odnaucit utok?"
	done

_DeleterAskWhichMonText::
	text "Ktoreho #MON?" ; text "Which #MON?"
	prompt

_DSTIsThatOKText::
	text " Letny cas," ; text " DST,"
	line "je to OK?" ; line "is that OK?"
	done

_TimeAskOkayText::
	text ","
	line "je to OK?" ; line "is that OK?"
	done

_TimesetAskDSTText::
	text "Chces prepnut na" ; text "Do you want to"
	line "letny cas?" ; line "switch to Daylight"
	;cont "Saving Time?" ; cont "Saving Time?"
	done

_TimesetDSTText::
	text "Nastavila som hodi-" ; text "I set the clock"
	line "ny o hodinu" ; line "forward by one"
	cont "dopredu." ; cont "hour."
	prompt

_TimesetAskNotDSTText::
	text "Skoncil uz" ; text "Is Daylight Saving"
	line "letny cas?" ; line "Time over?"
	done

_TimesetNotDSTText::
	text "Nastavila som hodi-" ; text "I put the clock"
	line "ny o hodinu dozadu." ; line "back one hour."
	prompt

_TimesetAskAdjustDSTText::
	text "Chces nastavit" ; text "Do you want to"
	line "letny alebo" ; line "adjust your clock"

	para "zimny cas" ; para "for Daylight"
	line "na hodinach?" ; line "Saving Time?"
	done

_MomLostGearBookletText::
	text "Stratila som" ; text "I lost the in-"
	line "manual k tvojmu" ; line "struction booklet"
	cont "#GEAR." ; cont "for the #GEAR."

	para "Vrat sa o chvilu" ; para "Come back again in"
	line "znova." ; line "a while."
	prompt
 