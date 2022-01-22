	object_const_def
	const GOLDENRODPPSPEECHHOUSE_FISHER
	const GOLDENRODPPSPEECHHOUSE_LASS

GoldenrodPPSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodPPSpeechHouseFisherScript:
	jumptextfaceplayer GoldenrodPPSpeechHouseFisherText

GoldenrodPPSpeechHouseLassScript:
	jumptextfaceplayer GoldenrodPPSpeechHouseLassText

GoldenrodPPSpeechHouseBookshelf2:
	jumpstd DifficultBookshelfScript

GoldenrodPPSpeechHouseBookshelf1:
	jumpstd MagazineBookshelfScript

GoldenrodPPSpeechHouseRadio:
	jumpstd Radio2Script

GoldenrodPPSpeechHouseFisherText:
	text "Raz pri zapase" ; text "Once while I was"
	line "moj #MON" ; line "battling, my"

	para "nemohol pouzit" ; para "#MON couldn't"
	line "ziaden utok." ; line "make any moves."

	para "POWER POINTY," ; para "The POWER POINTS,"
	line "alebo PP vsetkych" ; line "or PP, of its"

	para "jeho utokov boli" ; para "moves were all"
	line "prec." ; line "gone."
	done

GoldenrodPPSpeechHouseLassText:
	text "Niekedy aj zdravy" ; text "Sometimes, a"
	line "#MON nemoze" ; line "healthy #MON"

	para "utocit." ; para "may be unable to"
	;line "use its moves." ; line "use its moves."

	para "Ak sa ti to stane," ; para "If that happens,"
	line "navstiv #-" ; line "heal it at a #-"
	cont "MON CENTER alebo" ; cont "MON CENTER or use"
	cont "pouzi predmet." ; cont "an item."
	done

GoldenrodPPSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 7
	warp_event  3,  7, GOLDENROD_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, GoldenrodPPSpeechHouseBookshelf1
	bg_event  1,  1, BGEVENT_READ, GoldenrodPPSpeechHouseBookshelf2
	bg_event  7,  1, BGEVENT_READ, GoldenrodPPSpeechHouseRadio

	def_object_events
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPPSpeechHouseFisherScript, -1
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPPSpeechHouseLassScript, -1
