	object_const_def
	const FASTSHIPCABINS_SW_SSW_NW_FISHER
	const FASTSHIPCABINS_SW_SSW_NW_BUG_CATCHER
	const FASTSHIPCABINS_SW_SSW_NW_BEAUTY
	const FASTSHIPCABINS_SW_SSW_NW_ROCKER

FastShipCabins_SW_SSW_NW_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerFirebreatherLyle:
	trainer FIREBREATHER, LYLE, EVENT_BEAT_FIREBREATHER_LYLE, FirebreatherLyleSeenText, FirebreatherLyleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherLyleAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherKen:
	trainer BUG_CATCHER, KEN, EVENT_BEAT_BUG_CATCHER_KEN, BugCatcherKenSeenText, BugCatcherKenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherKenAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyCassie:
	trainer BEAUTY, CASSIE, EVENT_BEAT_BEAUTY_CASSIE, BeautyCassieSeenText, BeautyCassieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyCassieAfterBattleText
	waitbutton
	closetext
	end

TrainerGuitaristClyde:
	trainer GUITARIST, CLYDE, EVENT_BEAT_GUITARIST_CLYDE, GuitaristClydeSeenText, GuitaristClydeBeatenText, 0, .Script

.Script:
	endifjustbattled
	special Mobile_DummyReturnFalse
	iftrue .mobile
	opentext
	writetext GuitaristClydeAfterBattleText
	waitbutton
	closetext
	end

.mobile
	opentext
	writetext GuitaristClydeAfterBattleMobileText
	waitbutton
	closetext
	end

FastShipBed:
	opentext
	writetext FastShipBedText1
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special FadeInQuickly
	opentext
	writetext FastShipBedText2
	waitbutton
	closetext
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue .AlreadyArrived
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iftrue .CanArrive
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .CanArrive
.AlreadyArrived:
	end

.CanArrive:
	playsound SFX_ELEVATOR_END
	pause 30
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue .ArrivedOlivine
	opentext
	writetext FastShipArrivedVermilionText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

.ArrivedOlivine:
	opentext
	writetext FastShipArrivedOlivineText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

FastShipCabinsNorthwestCabinTrashcan:
	jumpstd TrashCanScript

FirebreatherLyleSeenText:
	text "Idem do KANTO" ; text "I'm going to KANTO"
	line "predviest ohnivu" ; line "to put on fire-"
	cont "show!" ; cont "breathing shows!"
	done

FirebreatherLyleBeatenText:
	text "Sssss… Ohen" ; text "Fizzle… The"
	line "je malinky…" ; line "flame's tiny…"
	done

FirebreatherLyleAfterBattleText:
	text "Ohen je zjavne" ; text "I guess fire is"
	line "slaby na mori." ; line "weak on the sea."

	para "Nezalezi na tom?" ; para "It doesn't matter?"
	line "Fakt?" ; line "Really?"
	done

BugCatcherKenSeenText:
	text "Navsteujem moju" ; text "I'm visiting my"
	line "babku a chytame" ; line "grandma to catch"
	cont "chrobaky!" ; cont "me some bugs!"
	done

BugCatcherKenBeatenText:
	text "Ooh, wau." ; text "Ooh, wow."
	line "Si silny!" ; line "You're tough!"
	done

BugCatcherKenAfterBattleText:
	text "Na stromoch v" ; text "You can find lots"
	line "JOHTO sa nachadza" ; line "of #MON in the"
	cont "vela #MONov!" ; cont "trees of JOHTO!"
	done

BeautyCassieSeenText:
	text "Snazim sa zabudnut" ; text "I'm trying to"
	line "na moje trapenie." ; line "forget my woes."
	cont "Podme zapasit!" ; cont "Let's battle!"
	done

BeautyCassieBeatenText:
	text "Moje srdce…" ; text "My heart weeps…"
	done

BeautyCassieAfterBattleText:
	text "Plavba je najlep-" ; text "A voyage is best"
	line "si liek na zlo-" ; line "for getting over"
	cont "mene srdce." ; cont "a broken heart."

	para "Ale FAST SHIP" ; para "But a FAST SHIP"
	line "je prilis rychla" ; line "trip is too short"
	cont "na smutenie." ; cont "for grieving."
	done

GuitaristClydeSeenText:
	text "Moje pesnicky budu" ; text "I'm going to audi-"
	line "vysielane v" ; line "tion my songs at"

	para "GOLDENROD RADIO" ; para "GOLDENROD's RADIO"
	line "STANICI." ; line "STATION."
	done

GuitaristClydeBeatenText:
	text "Jejda!" ; text "Yowza!"
	line "Uplne skreslene!" ; line "Total distortion!"
	done

GuitaristClydeAfterBattleMobileText:
	text "Chcel som debuto-" ; text "I was going to"
	line "vat v BATTLE" ; line "make my debut at"
	cont "TOWER…" ; cont "the BATTLE TOWER…"

	para "Mal by som sa vra-" ; para "I should go back"
	line "tit do VERMILION" ; line "to VERMILION and"
	cont "a viac trenovat…" ; cont "redo my training…"
	done

GuitaristClydeAfterBattleText:
	text "Spominajuc" ; text "Speaking of the"
	line "RADIO STANICU," ; line "RADIO STATION,"

	para "ake je tento tyz-" ; para "what's this week's"
	line "den stastne cislo?" ; line "lucky number?"
	done

FastShipBedText1:
	text "Pohodlna postel!" ; text "A comfy bed!"
	line "Cas na spanok…" ; line "Time to sleep…"
	done

FastShipBedText2:
	text "Ah, osviezeny a" ; text "Ah, refreshed and"
	line "znovuzrodeny!" ; line "restored!"
	done

FastShipArrivedOlivineText:
	text "FAST SHIP S.S.AQUA" ; text "FAST SHIP S.S.AQUA"
	line "dorazila do" ; line "has arrived in"
	cont "OLIVINE CITY." ; cont "OLIVINE CITY."
	done

FastShipArrivedVermilionText:
	text "FAST SHIP S.S.AQUA" ; text "FAST SHIP S.S.AQUA"
	line "dorazila do" ; line "has arrived in"
	cont "VERMILION CITY." ; cont "VERMILION CITY."
	done

FastShipCabins_SW_SSW_NW_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, FAST_SHIP_1F, 5
	warp_event  2, 19, FAST_SHIP_1F, 6
	warp_event  3, 19, FAST_SHIP_1F, 6
	warp_event  2, 31, FAST_SHIP_1F, 7
	warp_event  3, 31, FAST_SHIP_1F, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, FastShipBed
	bg_event  7,  2, BGEVENT_READ, FastShipBed
	bg_event  7,  7, BGEVENT_READ, FastShipCabinsNorthwestCabinTrashcan

	def_object_events
	object_event  1, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherLyle, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  6, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherKen, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  1, 26, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyCassie, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  3, 28, SPRITE_ROCKER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristClyde, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
