	object_const_def
	const CHERRYGROVEGYMSPEECHHOUSE_POKEFAN_M
	const CHERRYGROVEGYMSPEECHHOUSE_BUG_CATCHER

CherrygroveGymSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveGymSpeechHousePokefanMScript:
	jumptextfaceplayer CherrygroveGymSpeechHousePokefanMText

CherrygroveGymSpeechHouseBugCatcherScript:
	jumptextfaceplayer CherrygroveGymSpeechHouseBugCatcherText

CherrygroveGymSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CherrygroveGymSpeechHousePokefanMText:
	text "Snazis sa zistit," ; text "You're trying to"
	line "ci si dobry" ; line "see how good you"

	para "#MONovy trener?" ; para "are as a #MON"
	;line "trainer?" ; line "trainer?"

	para "Tak to potom nav-" ; para "You better visit"
	line "stiv #MON GYMY" ; line "the #MON GYMS"

	para "v JOHTO a nazbie-" ; para "all over JOHTO and"
	line "raj ODZNAKY." ; line "collect BADGES."
	done

CherrygroveGymSpeechHouseBugCatcherText:
	text "Ked budem starsi," ; text "When I get older,"
	line "stanem sa GYM" ; line "I'm going to be a"
	cont "LEADEROM!" ; cont "GYM LEADER!"

	para "Zapasim proti" ; para "I make my #MON"
	line "#MONom mojho" ; line "battle with my"

	para "kamarata, aby boli" ; para "friend's to make"
	line "silnejsi!" ; line "them tougher!"
	done

CherrygroveGymSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 3
	warp_event  3,  7, CHERRYGROVE_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHousePokefanMScript, -1
	object_event  5,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHouseBugCatcherScript, -1
