	object_const_def
	const CIANWOODLUGIASPEECHHOUSE_TEACHER
	const CIANWOODLUGIASPEECHHOUSE_LASS
	const CIANWOODLUGIASPEECHHOUSE_TWIN

CianwoodLugiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodLugiaSpeechHouseTeacherScript:
	jumptextfaceplayer CianwoodLugiaSpeechHouseTeacherText

CianwoodLugiaSpeechHouseLassScript:
	jumptextfaceplayer CianwoodLugiaSpeechHouseLassText

CianwoodLugiaSpeechHouseTwinScript:
	jumptextfaceplayer CianwoodLugiaSpeechHouseTwinText

CianwoodLugiaSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CianwoodLugiaSpeechHouseTeacherText:
	text "Prisiel si z" ; text "You came from"
	line "OLIVINE?" ; line "OLIVINE?"

	para "Spominas si na tie" ; para "Do you remember"
	line "styri ostrovy po" ; line "the four islands"
	cont "ceste?" ; cont "along the way?"

	para "Pocul som, ze sa" ; para "I heard that a "
	line "tam udajne ukryva" ; line "mythical sea crea-"
	cont "morske stvorenie." ; cont "ture is hiding in"
	;cont "them." ; cont "them."
	done

CianwoodLugiaSpeechHouseLassText:
	text "Pocul som, ze ju" ; text "I heard that you"
	line "mozes vidiet, iba" ; line "can only see it if"

	para "ak mas SILVER" ; para "you have a SILVER"
	line "WING." ; line "WING."

	para "Musi mat rovnaku" ; para "It must have the"
	line "vonu ako to" ; line "same scent as the"
	cont "stvorenie." ; cont "creature."
	done

CianwoodLugiaSpeechHouseTwinText:
	text "Pocul som, ze" ; text "I've heard that"
	line "vodne viry okolo" ; line "the whirlpools"

	para "ostrovov su sposo-" ; para "around the islands"
	line "bene morskym stvo-" ; line "are caused by the"
	cont "renim." ; cont "sea creature."

	para "Mozno budes na to" ; para "You might need a"
	line "potrebovat speci-" ; line "special move to"
	cont "alny utok." ; cont "get past them."
	done

CianwoodLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 6
	warp_event  3,  7, CIANWOOD_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodLugiaSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodLugiaSpeechHouseBookshelf

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseTeacherScript, -1
	object_event  6,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseLassScript, -1
	object_event  0,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseTwinScript, -1
