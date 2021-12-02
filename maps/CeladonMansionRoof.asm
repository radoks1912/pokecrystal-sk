	object_const_def
	const CELADONMANSIONROOF_FISHER

CeladonMansionRoof_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofFisherScript:
	jumptextfaceplayer CeladonMansionRoofFisherText

CeladonMansionRoofGraffiti:
	jumptext CeladonMansionRoofGraffitiText

CeladonMansionRoofFisherText:
	text "Vysoke miesta--" ; text "High places--I do"
	line "zboznujem ich!" ; line "love them so!"

	para "Jedina vec, ktora" ; para "I'd say the only"
	line "zboznuje vysky" ; line "thing that loves"

	para "rovnako ako ja," ; para "heights as much as"
	line "je dym!" ; line "me is smoke!"
	done

CeladonMansionRoofGraffitiText:
	text "Na stene je" ; text "There's graffiti"
	line "graffiti…" ; line "on the wall…"

	para "<PLAYER> pridal" ; para "<PLAYER> added a"
	line "fuzy!" ; line "moustache!"
	done

CeladonMansionRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  1, CELADON_MANSION_3F, 1
	warp_event  6,  1, CELADON_MANSION_3F, 4
	warp_event  2,  5, CELADON_MANSION_ROOF_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_LEFT, CeladonMansionRoofGraffiti

	def_object_events
	object_event  7,  5, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofFisherScript, -1
