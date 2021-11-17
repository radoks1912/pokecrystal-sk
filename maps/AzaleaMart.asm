	object_const_def
	const AZALEAMART_CLERK
	const AZALEAMART_COOLTRAINER_M
	const AZALEAMART_BUG_CATCHER

AzaleaMart_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

AzaleaMartCooltrainerMScript:
	jumptextfaceplayer AzaleaMartCooltrainerMText

AzaleaMartBugCatcherScript:
	jumptextfaceplayer AzaleaMartBugCatcherText

AzaleaMartCooltrainerMText:
	text "Nie je tu ziadny" ; text "There's no GREAT"
	line "GREAT BALL. #" ; line "BALL here. #"

	para "BALLS ti musia" ; para "BALLS will have"
	line "stacit." ; line "to do."

	para "Kiezby mi KURT" ; para "I wish KURT would"
	line "spravil par BALLS" ; line "make me some of"
	cont "namieru." ; cont "his custom BALLS."
	done

AzaleaMartBugCatcherText:
	text "GREAT BALL je" ; text "A GREAT BALL is"
	line "lepsi na chytanie" ; line "better for catch-"
	cont "#MON ako" ; cont "ing #MON than a"
	cont "# BALL." ; cont "# BALL."

	para "Ale KURTove mozu" ; para "But KURT's might"
	line "byt niekedy este" ; line "be better some-"
	cont "lepsie." ; cont "times."
	done

AzaleaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, AZALEA_TOWN, 3
	warp_event  3,  7, AZALEA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMartClerkScript, -1
	object_event  2,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMartCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaMartBugCatcherScript, -1
