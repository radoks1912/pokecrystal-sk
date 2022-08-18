	object_const_def
	const MAHOGANYPOKECENTER1F_NURSE
	const MAHOGANYPOKECENTER1F_POKEFAN_M
	const MAHOGANYPOKECENTER1F_YOUNGSTER
	const MAHOGANYPOKECENTER1F_COOLTRAINER_F

MahoganyPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

MahoganyPokecenter1FPokefanMScript:
	jumptextfaceplayer MahoganyPokecenter1FPokefanMText

MahoganyPokecenter1FYoungsterScript:
	jumptextfaceplayer MahoganyPokecenter1FYoungsterText

MahoganyPokecenter1FCooltrainerFScript:
	jumptextfaceplayer MahoganyPokecenter1FCooltrainerFText

MahoganyPokecenter1FPokefanMText:
	text "Coze? TEAM" ; text "What's this? TEAM"
	line "ROCKET sa vratil" ; line "ROCKET has come"
	cont "spat?" ; cont "back?"

	para "Videl som ciernych" ; para "I saw some men in"
	line "muzov na JAZERE" ; line "black at LAKE OF"
	cont "HNEVU…" ; cont "RAGE…"
	done

MahoganyPokecenter1FYoungsterText:
	text "Mojich #MONov" ; text "I stop my #MON"
	line "vyvijam az" ; line "from evolving too"
	cont "neskor." ; cont "early."

	para "Najprv ich necham" ; para "I make them learn"
	line "naucit sa niektore" ; line "certain moves be-"
	cont "utoky." ; cont "fore I let them"
	;cont "evolve." ; cont "evolve."
	done

MahoganyPokecenter1FCooltrainerFText:
	text "#MON su s vyvinom" ; text "#MON do become"
	line "silnejsi, ale" ; line "stronger when they"

	para "nove utoky sa ucia" ; para "evolve, but they"
	line "potom pomalsie." ; line "also learn moves"
	;cont "more slowly." ; cont "more slowly."
	done

MahoganyPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MAHOGANY_TOWN, 4
	warp_event  4,  7, MAHOGANY_TOWN, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FPokefanMScript, -1
	object_event  1,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FYoungsterScript, -1
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FCooltrainerFScript, -1
