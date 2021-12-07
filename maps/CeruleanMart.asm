	object_const_def
	const CERULEANMART_CLERK
	const CERULEANMART_COOLTRAINER_M
	const CERULEANMART_COOLTRAINER_F

CeruleanMart_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanMart_Clerk:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CERULEAN
	closetext
	end

CeruleanMart_CooltrainerM:
	jumptextfaceplayer CeruleanMart_CooltrainerMText

CeruleanMart_CooltrainerF:
	jumptextfaceplayer CeruleanMart_CooltrainerFText

CeruleanMart_CooltrainerMText:
	text "Stretnes vela tre-" ; text "You'll run into"
	line "nerov na ceste" ; line "many trainers on"

	para "do CERULEAN" ; para "the way to CERU-"
	line "MYSu." ; line "LEAN's CAPE."

	para "Chcu vediet, ako" ; para "They want to see"
	line "su na tom v poro-" ; line "how they stack"

	para "vnani s ostatnymi" ; para "up against other"
	line "trenermi." ; line "trainers."
	done

CeruleanMart_CooltrainerFText:
	text "MISTY je jediny" ; text "MISTY is about the"
	line "clovek v meste," ; line "only person in"

	para "ktory dokaze pora-" ; para "town who can beat"
	line "zit trenerov v" ; line "the trainers at"
	cont "CERULEAN MYSe." ; cont "CERULEAN's CAPE."
	done

CeruleanMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 6
	warp_event  3,  7, CERULEAN_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMart_Clerk, -1
	object_event  1,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanMart_CooltrainerM, -1
	object_event  7,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanMart_CooltrainerF, -1
