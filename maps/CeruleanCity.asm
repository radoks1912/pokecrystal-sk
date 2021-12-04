	object_const_def
	const CERULEANCITY_COOLTRAINER_M
	const CERULEANCITY_SUPER_NERD
	const CERULEANCITY_SLOWPOKE
	const CERULEANCITY_COOLTRAINER_F
	const CERULEANCITY_FISHER
	const CERULEANCITY_YOUNGSTER

CeruleanCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CERULEAN
	endcallback

CeruleanCityCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext CeruleanCityCooltrainerMText1
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext CeruleanCityCooltrainerMText2
	waitbutton
	closetext
	end

CeruleanCitySuperNerdScript:
	jumptextfaceplayer CeruleanCitySuperNerdText

CeruleanCitySlowbro:
	opentext
	writetext CeruleanCitySlowbroText
	cry SLOWBRO
	waitbutton
	closetext
	end

CeruleanCityCooltrainerFScript:
	faceplayer
	opentext
	writetext CeruleanCityCooltrainerFText1
	waitbutton
	closetext
	turnobject CERULEANCITY_COOLTRAINER_F, LEFT
	opentext
	writetext CeruleanCityCooltrainerFText2
	waitbutton
	closetext
	opentext
	writetext CeruleanCitySlowbroText
	cry SLOWBRO
	waitbutton
	closetext
	opentext
	writetext CeruleanCityCooltrainerFText3
	waitbutton
	closetext
	end

CeruleanCityFisherScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	checkevent EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	iftrue .MetCeruleanRocket
.ReturnedMachinePart:
	writetext CeruleanCityFisherText
	waitbutton
	closetext
	end

.MetCeruleanRocket:
	writetext CeruleanCityFisherRocketTipText
	waitbutton
	closetext
	end

CeruleanCityYoungsterScript:
	faceplayer
	opentext
	writetext CeruleanCityYoungsterText1
	waitbutton
	closetext
	checkevent EVENT_FOUND_BERSERK_GENE_IN_CERULEAN_CITY
	iffalse .BerserkGenePingsItemfinder
	end

.BerserkGenePingsItemfinder:
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	playsound SFX_SECOND_PART_OF_ITEMFINDER
	waitsfx
	playsound SFX_TRANSACTION
	waitsfx
	showemote EMOTE_SHOCK, CERULEANCITY_YOUNGSTER, 15
	turnobject CERULEANCITY_YOUNGSTER, LEFT
	opentext
	writetext CeruleanCityYoungsterText2
	waitbutton
	closetext
	end

CeruleanCitySign:
	jumptext CeruleanCitySignText

CeruleanGymSign:
	jumptext CeruleanGymSignText

CeruleanBikeShopSign:
	jumptext CeruleanBikeShopSignText

CeruleanPoliceSign:
	jumptext CeruleanPoliceSignText

CeruleanCapeSign:
	jumptext CeruleanCapeSignText

CeruleanLockedDoor:
	jumptext CeruleanLockedDoorText

CeruleanCityPokecenterSign:
	jumpstd PokecenterSignScript

CeruleanCityMartSign:
	jumpstd MartSignScript

CeruleanCityHiddenBerserkGene:
	hiddenitem BERSERK_GENE, EVENT_FOUND_BERSERK_GENE_IN_CERULEAN_CITY

CeruleanCityCooltrainerMText1:
	text "KANTO ELEKTRAREN?" ; text "KANTO's POWER"
	;line "PLANT?" ; line "PLANT?"

	para "Je nedaleko" ; para "It's near the end"
	line "ROUTE 9, cesta," ; line "of ROUTE 9, the"

	para "ktora odtialto" ; para "road that heads"
	line "vedie na vychod." ; line "east from here."

	para "Myslim, ze sa tam" ; para "I think there was"
	line "stala vraj nejaka" ; line "an accident of"
	cont "nehoda." ; cont "some sort there."
	done

CeruleanCityCooltrainerMText2:
	text "Snazis sa chytit" ; text "You're collecting"
	line "kazdeho jedneho" ; line "every single kind"
	cont "#MONa?" ; cont "of #MON?"

	para "To musi byt celkom" ; para "That must be quite"
	line "vyzva, ale znie to" ; line "a challenge, but"
	cont "taktiez zabavne." ; cont "it sounds fun too."
	done

CeruleanCitySuperNerdText:
	text "Mys na severe" ; text "The CAPE in the"
	line "je dobre miesto" ; line "north is a good"

	para "na rande. Dievcata" ; para "place for dates."
	line "ho maju rady!" ; line "Girls like it!"
	done

CeruleanCitySlowbroText:
	text "SLOWBRO: Yarah?" ; text "SLOWBRO: Yarah?"
	done

CeruleanCityCooltrainerFText1:
	text "Moj SLOWBRO a ja" ; text "My SLOWBRO and I"
	line "tvorime uzasny" ; line "make an awesome"
	cont "par!" ; cont "combination!"
	done

CeruleanCityCooltrainerFText2:
	text "SLOWBRO, ukaz mi" ; text "SLOWBRO, show me"
	line "CONFUSION!" ; line "your CONFUSION!"
	done

CeruleanCityCooltrainerFText3:
	text "…"
	done

CeruleanCityFisherText:
	text "Som velky fanusik" ; text "I'm a huge fan of"
	line "MISTY z" ; line "CERULEAN GYM's"
	cont "CERULEAN GYM." ; cont "MISTY."
	done

CeruleanCityFisherRocketTipText:
	text "Videl som podozri-" ; text "I saw this shady"
	line "veho chlapa, ako" ; line "guy go off toward"
	cont "ide k MYSU." ; cont "CERULEAN's CAPE."
	done

CeruleanCityYoungsterText1:
	text "Kedysi tu bola" ; text "There used to be a"
	line "jaskyna, ktora " ; line "cave here that had"

	para "mala silnych" ; para "horribly powerful"
	line "#MONov." ; line "#MON in it."
	done

CeruleanCityYoungsterText2:
	text "Ha?" ; text "Ayuh?"

	para "Moj ITEMFINDER" ; para "My ITEMFINDER is"
	line "pipa…" ; line "responding…"
	done

CeruleanCitySignText:
	text "CERULEAN CITY" ; text "CERULEAN CITY"

	para "Obklopene zvlast-" ; para "A Mysterious Blue"
	line "nou modrou aurou" ; line "Aura Surrounds It"
	done

CeruleanGymSignText:
	text "CERULEAN CITY" ; text "CERULEAN CITY"
	line "#MON GYM" ; line "#MON GYM"
	cont "LEADER: MISTY" ; cont "LEADER: MISTY"

	para "Divoka morska" ; para "The Tomboyish"
	line "panna" ; line "Mermaid"
	done

CeruleanBikeShopSignText:
	text "Je tu nejaky" ; text "There's a notice"
	line "oznam…" ; line "here…"

	para "Prestahovali sme" ; para "The BIKE SHOP has"
	line "sa do GOLDENROD" ; line "moved to GOLDENROD"
	cont "CITY in JOHTO…" ; cont "CITY in JOHTO…"
	done

CeruleanPoliceSignText:
	text "Je tu nejaky" ; text "There's a notice"
	line "oznam…" ; line "here…"

	para "Bojujme proti" ; para "Stamp out thievery"
	line "zlodejom a spravme" ; line "and make the city"

	para "mesto priatelske" ; para "a friendlier, more"
	line "a vesele!" ; line "cheerful place!"

	para "CERULEAN POLICIA" ; para "CERULEAN POLICE"
	done

CeruleanCapeSignText:
	text "CERULEAN MYS" ; text "CERULEAN CAPE"
	;line "AHEAD" ; line "AHEAD"
	done

CeruleanLockedDoorText:
	text "Zamknute…" ; text "It's locked…"
	done

CeruleanCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1
	warp_event 28, 17, CERULEAN_POLICE_STATION, 1
	warp_event 13, 19, CERULEAN_TRADE_SPEECH_HOUSE, 1
	warp_event 19, 21, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 23, CERULEAN_GYM, 1
	warp_event 25, 29, CERULEAN_MART, 2

	def_coord_events

	def_bg_events
	bg_event 23, 23, BGEVENT_READ, CeruleanCitySign
	bg_event 27, 25, BGEVENT_READ, CeruleanGymSign
	bg_event 11, 29, BGEVENT_READ, CeruleanBikeShopSign
	bg_event 25, 17, BGEVENT_READ, CeruleanPoliceSign
	bg_event 23,  7, BGEVENT_READ, CeruleanCapeSign
	bg_event 14, 29, BGEVENT_READ, CeruleanLockedDoor
	bg_event 20, 21, BGEVENT_READ, CeruleanCityPokecenterSign
	bg_event 26, 29, BGEVENT_READ, CeruleanCityMartSign
	bg_event  2, 12, BGEVENT_ITEM, CeruleanCityHiddenBerserkGene

	def_object_events
	object_event 15, 23, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerMScript, -1
	object_event 23, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerdScript, -1
	object_event 20, 24, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCitySlowbro, -1
	object_event 21, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerFScript, -1
	object_event 30, 26, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCityFisherScript, -1
	object_event  6, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCityYoungsterScript, -1
