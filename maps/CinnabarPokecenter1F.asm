	object_const_def
	const CINNABARPOKECENTER1F_NURSE
	const CINNABARPOKECENTER1F_COOLTRAINER_F
	const CINNABARPOKECENTER1F_FISHER

CinnabarPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CinnabarPokecenter1FCooltrainerFScript:
	jumptextfaceplayer CinnabarPokecenter1FCooltrainerFText

CinnabarPokecenter1FFisherScript:
	jumptextfaceplayer CinnabarPokecenter1FFisherText

CinnabarPokecenter1FCooltrainerFText:
	text "BLAINE z CINNABAR" ; text "CINNABAR GYM's"
	line "GYMu zjavne zije" ; line "BLAINE apparently"

	para "sam v jaskyni na" ; para "lives alone in the"
	line "SEAFOAM ISLANDS…" ; line "SEAFOAM ISLANDS"
	;cont "cave…" ; cont "cave…"
	done

CinnabarPokecenter1FFisherText:
	text "Ta sopka naposledy" ; text "It's been a year"
	line "vybuchla pred ro-" ; line "since the volcano"
	cont "kom." ; cont "erupted."
	done

CinnabarPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 1
	warp_event  4,  7, CINNABAR_ISLAND, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FCooltrainerFScript, -1
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FFisherScript, -1
