	object_const_def
	const ECRUTEAKCITY_GRAMPS1
	const ECRUTEAKCITY_GRAMPS2
	const ECRUTEAKCITY_LASS1
	const ECRUTEAKCITY_LASS2
	const ECRUTEAKCITY_FISHER
	const ECRUTEAKCITY_YOUNGSTER
	const ECRUTEAKCITY_GRAMPS3

EcruteakCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_ECRUTEAK
	endcallback

EcruteakCityGramps1Script:
	jumptextfaceplayer EcruteakCityGramps1Text

EcruteakCityGramps2Script:
	jumptextfaceplayer EcruteakCityGramps2Text

EcruteakCityGramps3Script:
	jumptextfaceplayer EcruteakCityGramps3Text

EcruteakCityLass1Script:
	jumptextfaceplayer EcruteakCityLass1Text

EcruteakCityLass2Script:
	faceplayer
	opentext
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue .ReleasedBeasts
	writetext EcruteakCityLass2Text
	waitbutton
	closetext
	end

.ReleasedBeasts:
	writetext EcruteakCityLass2Text_ReleasedBeasts
	waitbutton
	closetext
	end

EcruteakCityFisherScript:
	faceplayer
	opentext
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftrue .JasmineReturned
	writetext EcruteakCityFisherText
	waitbutton
	closetext
	end

.JasmineReturned:
	writetext EcruteakCityFisherText_JasmineReturned
	waitbutton
	closetext
	end

EcruteakCityYoungsterScript:
	jumptextfaceplayer EcruteakCityYoungsterText

EcruteakCitySign:
	jumptext EcruteakCitySignText

TinTowerSign:
	jumptext TinTowerSignText

EcruteakGymSign:
	jumptext EcruteakGymSignText

EcruteakDanceTheaterSign:
	jumptext EcruteakDanceTheaterSignText

BurnedTowerSign:
	jumptext BurnedTowerSignText

EcruteakCityPokecenterSign:
	jumpstd PokecenterSignScript

EcruteakCityMartSign:
	jumpstd MartSignScript

EcruteakCityHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ECRUTEAK_CITY_HIDDEN_HYPER_POTION

UnusedMissingDaughterText: ; unreferenced
	text "Oh, no. Oh, no…"

	para "My daughter is"
	line "missing."

	para "No… She couldn't"
	line "have gone to the"
	cont "BURNED TOWER."

	para "I told her not to"
	line "go near it…"

	para "People seem to"
	line "disappear there…"

	para "Oh, what should I"
	line "do…?"
	done

EcruteakCityGramps1Text:
	text "ECRUTEAK kedysi" ; text "ECRUTEAK used to"
	line "mal dve veze:" ; line "have two towers:"

	para "jednu na vychode a" ; para "one each in the"
	line "jednu na zapade." ; line "east and west."
	done

EcruteakCityGramps2Text:
	text "Ach, dieta." ; text "Ah, child."
	line "Naucil si sa tan-" ; line "Have you learned"

	para "covat ako nase" ; para "to dance like the"
	line "KIMONO ZENY?" ; line "KIMONO GIRLS?"

	para "Ak pojdes do ich" ; para "If you go to their"
	line "DANCE THEATERu," ; line "DANCE THEATER, an"

	para "zvlastny starsi" ; para "odd old man will"
	line "pan ti da nieco" ; line "give you something"
	cont "uzitocne." ; cont "nice, I hear."
	done

EcruteakCityLass1Text:
	text "Budem trenovat" ; text "I'm going to prac-"
	line "v DANCE THEATER." ; line "tice at the DANCE"

	para "Chces sa ku mne" ; para "THEATER. Care to"
	line "pridat?" ; line "join me?"
	done

EcruteakCityLass2Text:
	text "Ta veza, ktora tu" ; text "The tower that"
	line "kedysi bola…" ; line "used to be here…"

	para "Babka hovori, ze" ; para "My grandma told me"
	line "kedysi bola ovela" ; line "it used to be much"
	cont "vacsia." ; cont "taller."
	done

EcruteakCityLass2Text_ReleasedBeasts:
	text "Traja velki" ; text "Three big #MON"
	line "#MON sa roz-" ; line "ran off in differ-"
	cont "prchli roznymi" ; cont "ent directions."
	cont "smermi." ; cont "What were they?"
	done

EcruteakCityFisherText:
	text "Pocul som famu" ; text "I heard a rumor"
	line "o OLIVINE" ; line "about OLIVINE"
	cont "MAJAKU." ; cont "LIGHTHOUSE."

	para "#MON, ktory" ; para "The #MON that"
	line "sluzi ako " ; line "serves as the"

	para "majak, ochorel." ; para "beacon fell ill."
	line "Znie to akoby" ; line "Sounds like they"
	cont "mali problemy." ; cont "are in trouble."
	done

EcruteakCityFisherText_JasmineReturned:
	text "#MON v" ; text "The #MON at"
	line "OLIVINE MAJAKU" ; line "OLIVINE LIGHTHOUSE"
	cont "je vylieceny." ; cont "has been cured."

	para "Lode mozu opat" ; para "Boats can safely"
	line "v noci bezpecne" ; line "sail out to sea at"
	cont "vyplavat." ; cont "night again."
	done

EcruteakCityYoungsterText:
	text "Pocul som, ze" ; text "I hear #MON are"
	line "#MONi zuria" ; line "rampaging at the"

	para "v LAKE OF RAGE." ; para "LAKE OF RAGE. I'd"
	line "Chcel by som to" ; line "like to see that."
	cont "vidiet."
	done

EcruteakCityGramps3Text:
	text "V davnej" ; text "In the distant"
	line "minulosti…" ; line "past…"

	para "Tato veza zhorela." ; para "This tower burned"
	line "Traja bezmenni" ; line "in a fire. Three"

	para "#MON v nej zmizli." ; para "nameless #MON"
	;line "perished in it." ; line "perished in it."

	para "Duhovo-sfarbeny" ; para "A rainbow-colored"
	line "#MON zostupil" ; line "#MON descended"

	para "z neba a vzkriesil" ; para "from the sky and"
	line "ich…" ; line "resurrected them…"

	para "Je to legenda," ; para "It's a legend that"
	line "ktora sa traduje" ; line "has been passed"

	para "medzi ECRUTEAK" ; para "down by ECRUTEAK"
	line "GYM LEADERMI." ; line "GYM LEADERS."

	para "Ja?" ; para "Me?"

	para "Ja som bol vtedy" ; para "I was a trainer"
	line "trener." ; line "way back when."
	cont "Hohoho!" ; cont "Hohoho!"
	done

EcruteakCitySignText:
	text "ECRUTEAK CITY" ; text "ECRUTEAK CITY"
	line "Historicke mesto" ; line "A Historical City"

	para "Kde minulost stre-" ; para "Where the Past"
	line "tava pritomnost" ; line "Meets the Present"
	done

TinTowerSignText:
	text "TIN TOWER" ; text "TIN TOWER"

	para "Legendarny #-" ; para "A legendary #-"
	line "MON tu udajne" ; line "MON is said to"
	cont "hniezdi." ; cont "roost here."
	done

EcruteakGymSignText:
	text "ECRUTEAK CITY" ; text "ECRUTEAK CITY"
	line "#MON GYM" ; line "#MON GYM"
	cont "LEADER: MORTY" ; cont "LEADER: MORTY"

	para "Mysticky vestec" ; para "The Mystic Seer of"
	line "buducnosti" ; line "the Future"
	done

EcruteakDanceTheaterSignText:
	text "ECRUTEAK DANCE" ; text "ECRUTEAK DANCE"
	line "THEATER" ; line "THEATER"
	done

BurnedTowerSignText:
	text "BURNED TOWER" ; text "BURNED TOWER"

	para "Bola znicena" ; para "It was destroyed"
	line "zvlastnym ohnom." ; line "by a mysterious"
	;cont "fire." ; cont "fire."

	para "Nevstupovat," ; para "Please stay away,"
	line "hrozi nebezpecie." ; line "as it is unsafe."
	done

EcruteakCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35, 26, ROUTE_42_ECRUTEAK_GATE, 1
	warp_event 35, 27, ROUTE_42_ECRUTEAK_GATE, 2
	warp_event 18, 11, ECRUTEAK_TIN_TOWER_ENTRANCE, 1
	warp_event 20,  2, WISE_TRIOS_ROOM, 1
	warp_event 20,  3, WISE_TRIOS_ROOM, 2
	warp_event 23, 27, ECRUTEAK_POKECENTER_1F, 1
	warp_event  5, 21, ECRUTEAK_LUGIA_SPEECH_HOUSE, 1
	warp_event 23, 21, DANCE_THEATRE, 1
	warp_event 29, 21, ECRUTEAK_MART, 2
	warp_event  6, 27, ECRUTEAK_GYM, 1
	warp_event 13, 27, ECRUTEAK_ITEMFINDER_HOUSE, 1
	warp_event 37,  7, TIN_TOWER_1F, 1
	warp_event  5,  5, BURNED_TOWER_1F, 1
	warp_event  0, 18, ROUTE_38_ECRUTEAK_GATE, 3
	warp_event  0, 19, ROUTE_38_ECRUTEAK_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 15, 21, BGEVENT_READ, EcruteakCitySign
	bg_event 38, 10, BGEVENT_READ, TinTowerSign
	bg_event  8, 28, BGEVENT_READ, EcruteakGymSign
	bg_event 21, 21, BGEVENT_READ, EcruteakDanceTheaterSign
	bg_event  2, 10, BGEVENT_READ, BurnedTowerSign
	bg_event 24, 27, BGEVENT_READ, EcruteakCityPokecenterSign
	bg_event 30, 21, BGEVENT_READ, EcruteakCityMartSign
	bg_event 23, 14, BGEVENT_ITEM, EcruteakCityHiddenHyperPotion

	def_object_events
	object_event 18, 15, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps1Script, -1
	object_event 20, 21, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps2Script, -1
	object_event 21, 29, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EcruteakCityLass1Script, -1
	object_event  3,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakCityLass2Script, -1
	object_event  9, 22, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakCityFisherScript, -1
	object_event 10, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakCityYoungsterScript, -1
	object_event  3,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakCityGramps3Script, EVENT_ECRUTEAK_CITY_GRAMPS
