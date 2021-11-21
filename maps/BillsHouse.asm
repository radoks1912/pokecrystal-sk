	object_const_def
	const BILLSHOUSE_GRAMPS

BillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillsGrandpa:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .JustShowedSomething
	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotThunderstone
	checkevent EVENT_MET_BILLS_GRANDPA
	iftrue .MetGrandpa
	writetext BillsGrandpaIntroText
	promptbutton
	setevent EVENT_MET_BILLS_GRANDPA
.MetGrandpa:
	checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	iftrue .ShowedPichu
	checkevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	iftrue .ShowedGrowlitheVulpix
	checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	iftrue .ShowedStaryu
	checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	iftrue .ShowedOddish
	checkevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	iftrue .ShowedLickitung
	writetext BillsGrandpaLickitungText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal LICKITUNG, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	sjump .ShowedLickitung

.GotEverstone:
	writetext BillsGrandpaOddishText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal ODDISH, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	sjump .ShowedOddish

.GotLeafStone:
	writetext BillsGrandpaStaryuText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal STARYU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	sjump .ShowedStaryu

.GotWaterStone:
	checkver
	iftrue .AskVulpix
	writetext BillsGrandpaGrowlitheText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal GROWLITHE, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	sjump .ShowedGrowlitheVulpix

.AskVulpix:
	writetext BillsGrandpaVulpixText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal VULPIX, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	sjump .ShowedGrowlitheVulpix

.GotFireStone:
	writetext BillsGrandpaPichuText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal PICHU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	sjump .ShowedPichu

.ShowedLickitung:
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotEverstone
	scall .ReceiveItem
	verbosegiveitem EVERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedOddish:
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue .GotLeafStone
	scall .ReceiveItem
	verbosegiveitem LEAF_STONE
	iffalse .BagFull
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedStaryu:
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue .GotWaterStone
	scall .ReceiveItem
	verbosegiveitem WATER_STONE
	iffalse .BagFull
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedGrowlitheVulpix:
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue .GotFireStone
	scall .ReceiveItem
	verbosegiveitem FIRE_STONE
	iffalse .BagFull
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedPichu:
	scall .ReceiveItem
	verbosegiveitem THUNDERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	closetext
	end

.ExcitedToSee:
	writetext BillsGrandpaExcitedToSeeText
	promptbutton
	end

.SaidNo:
	writetext BillsGrandpaYouDontHaveItTextText
	waitbutton
	closetext
	end

.CorrectPokemon:
	writetext BillsGrandpaShownPokemonText
	promptbutton
	end

.ReceiveItem:
	writetext BillsGrandpaTokenOfAppreciationText
	promptbutton
	end

.JustShowedSomething:
	writetext BillsGrandpaComeAgainText
	waitbutton
	closetext
	end

.GotThunderstone:
	writetext BillsGrandpaShownAllThePokemonText
	waitbutton
	closetext
	end

.WrongPokemon:
	writetext BillsGrandpaWrongPokemonText
	waitbutton
	closetext
	end

.BagFull:
	closetext
	end

BillsGrandpaIntroText:
	text "Hm? Poznas BILLa?" ; text "Hm? You know BILL?"
	line "Je to moj pravnuk." ; line "He's my grandson."

	para "Je v JOHTO. Robi" ; para "He's in JOHTO. He"
	line "nieco s" ; line "does something"

	para "PC, tak mu strazim" ; para "with PCs, so I'm"
	line "dom." ; line "house-sitting."
	done

BillsGrandpaAskToSeeMonText:
	text "Ak mas toho" ; text "If you have that"
	line "#MONa, mozem ho" ; line "#MON, may I see"
	cont "vidiet, prosim?" ; cont "it, please?"
	done

BillsGrandpaExcitedToSeeText:
	text "Ukazes mi?" ; text "You will show me?"
	line "Ake skvele!" ; line "How good of you!"
	done

BillsGrandpaYouDontHaveItTextText:
	text "Nemas ho?" ; text "You don't have it?"
	line "Nic moc…" ; line "That's too bad…"
	done

BillsGrandpaShownPokemonText:
	text "Ah, takze toto je" ; text "Ah, so that is"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Zlaty!" ; para "Isn't it cute!"
	line "To je od teba" ; line "That's so kind of"
	cont "mile." ; cont "you."
	done

BillsGrandpaTokenOfAppreciationText:
	text "Dakujem!" ; text "Thanks!"

	para "Toto je znak mojho" ; para "This is a token of"
	line "uznania." ; line "my appreciation."
	done

BillsGrandpaComeAgainText:
	text "Pridi ma niekedy" ; text "Come visit again"
	line "pozriet." ; line "sometime."
	done

BillsGrandpaShownAllThePokemonText:
	text "Dakujem, ze si mi" ; text "Thanks for showing"
	line "ukazal zlatych" ; line "me so many cute"
	cont "#MONov." ; cont "#MON."

	para "Velmi som si to" ; para "I really enjoyed"
	line "uzil. Som rad, ze" ; line "myself. I'm glad"

	para "som zil tak" ; para "I've lived such a"
	line "dlhy zivot." ; line "long life."
	done

BillsGrandpaWrongPokemonText:
	text "Hm?" ; text "Hm?"

	para "To nie je" ; para "That's not the"
	line "#MON, ktoreho" ; line "#MON that I was"
	cont "som myslel." ; cont "told about."
	done

BillsGrandpaLickitungText:
	text "Moj pravnuk BILL" ; text "My grandson BILL"
	line "mi hovoril o" ; line "told me about a"

	para "#MONovi, ktory" ; para "#MON that has a"
	line "ma dlhy jazyk." ; line "long tongue."
	done

BillsGrandpaOddishText:
	text "Ah, moj pravnuk" ; text "Ah, my grandson"
	line "spominal gulateho," ; line "mentioned a round,"

	para "zeleneho #MONa," ; para "green #MON that"
	line "ktory ma na hlave" ; line "has leaves growing"
	cont "listy." ; cont "on its head."
	done

BillsGrandpaStaryuText:
	text "Poznas morskeho" ; text "Do you know of a"
	line "#MONa, ktory" ; line "sea #MON that"

	para "ma cerveny kruh" ; para "has a red sphere"
	line "na jeho tele?" ; line "in its body?"

	para "Ved vies, ten co" ; para "You know, the one"
	line "ma tvar ako" ; line "that's shaped like"
	cont "hviezda?" ; cont "a star?"

	para "Udajne sa objavuje" ; para "I heard that it"
	line "iba v noci." ; line "appears at night."

	para "Velmi rad by" ; para "I would surely"
	line "som ho videl." ; line "like to see it."
	done

BillsGrandpaGrowlitheText:
	text "BILL mi hovoril o" ; text "BILL told me about"
	line "#MONovi, ktory" ; line "a #MON that is"

	para "je velmi lojalny" ; para "very loyal to its"
	line "k trenerovi." ; line "trainer."

	para "Dokaze pouzivat" ; para "It's supposed to"
	line "utok ROAR." ; line "ROAR well."
	done

BillsGrandpaVulpixText:
	text "Pocul som o milom" ; text "I heard about a"
	line "#MONovi, ktory" ; line "cute #MON that"
	cont "ma 6 chvostov." ; cont "has six tails."

	para "Rad by som" ; para "I would love to"
	line "objal #MONa" ; line "hug a cute #MON"
	cont "ako je tento." ; cont "like that."
	done

BillsGrandpaPichuText:
	text "Poznas toho" ; text "Do you know that"
	line "velmi znameho" ; line "hugely popular"
	cont "#MONa?" ; cont "#MON?"

	para "#MON ma" ; para "The #MON that"
	line "zlte telo a" ; line "has a yellow body"
	cont "cervene lica." ; cont "and red cheeks."

	para "Chcel by som" ; para "I would love to"
	line "vidiet, ako vypa-" ; line "see what it looks"

	para "da predtym, ako sa" ; para "like before it"
	line "vyvinie." ; line "evolves."
	done

BillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BillsGrandpa, -1
