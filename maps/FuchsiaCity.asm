	object_const_def
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_FRUIT_TREE

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText

FuchsiaCityPokefanM:
	jumptextfaceplayer FuchsiaCityPokefanMText

FuchsiaCityTeacher:
	jumptextfaceplayer FuchsiaCityTeacherText

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

NoLitteringSign:
	jumptext NoLitteringSignText

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityMartSign:
	jumpstd MartSignScript

FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY

FuchsiaCityYoungsterText:
	text "Jeden z ELITNEJ" ; text "One of the ELITE"
	line "STVORKY bol kedysi" ; line "FOUR used to be"

	para "LEADER" ; para "the LEADER of"
	line "FUCHSIA GYMu." ; line "FUCHSIA's GYM."
	done

FuchsiaCityPokefanMText:
	text "Dcera KOGU" ; text "KOGA's daughter"
	line "je teraz" ; line "succeeded him as"

	para "GYM LEADER" ; para "the GYM LEADER"
	line "po tom, co on" ; line "after he joined"
	cont "odisiel do ELITNEJ" ; cont "the ELITE FOUR."
	cont "STVORKY."
	done

FuchsiaCityTeacherText:
	text "SAFARI ZONA je" ; text "The SAFARI ZONE is"
	line "zatvorena… Je to" ; line "closed… It's sad,"

	para "smutne, pretoze to" ; para "considering it's"
	line "je hlavna atrakcia" ; line "FUCHSIA's main"
	cont "FUCHSIE." ; cont "attraction."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY" ; text "FUCHSIA CITY"

	para "Hla! Jeho" ; para "Behold! It's"
	line "ruzova pasia!" ; line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY" ; text "FUCHSIA CITY"
	line "#MON GYM" ; line "#MON GYM"
	cont "LEADER: JANINE" ; cont "LEADER: JANINE"

	para "Jedovaty" ; para "The Poisonous"
	line "Ninja Majster" ; line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "Je tu nejaky" ; text "There's a notice"
	line "oznam…" ; line "here…"

	para "SAFARI ZONA" ; para "SAFARI ZONE OFFICE"
	line "je zatvorena az do" ; line "is closed until"
	cont "odvolania." ; cont "further notice."
	done

WardensHomeSignText:
	text "SAFARI ZONA" ; text "SAFARI ZONE"
	line "SPRAVCOV DOM" ; line "WARDEN'S HOME"
	done

SafariZoneClosedSignText:
	text "SPRAVCA prave" ; text "The WARDEN is"
	line "cestuje." ; line "traveling abroad."

	para "Preto je" ; para "Therefore, the"
	line "SAFARI ZONA" ; line "SAFARI ZONE is"
	cont "zatvorena." ; cont "closed."
	done

NoLitteringSignText:
	text "Zakaz vyhadzovania" ; text "No littering."
	line "odpadkov."

	para "Zoberte si prosim" ; para "Please take your"
	line "odpad so sebou." ; line "waste with you."
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_BROTHERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 18,  3, SAFARI_ZONE_FUCHSIA_GATE_BETA, 3 ; inaccessible
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 25, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneClosedSign
	bg_event 13, 15, BGEVENT_READ, NoLitteringSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign

	def_object_events
	object_event 23, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 13,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 16, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
