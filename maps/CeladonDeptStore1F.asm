	object_const_def
	const CELADONDEPTSTORE1F_RECEPTIONIST
	const CELADONDEPTSTORE1F_GENTLEMAN
	const CELADONDEPTSTORE1F_TEACHER

CeladonDeptStore1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore1FReceptionistScript:
	jumptextfaceplayer CeladonDeptStore1FReceptionistText

CeladonDeptStore1FGentlemanScript:
	jumptextfaceplayer CeladonDeptStore1FGentlemanText

CeladonDeptStore1FTeacherScript:
	jumptextfaceplayer CeladonDeptStore1FTeacherText

CeladonDeptStore1FDirectory:
	jumptext CeladonDeptStore1FDirectoryText

CeladonDeptStore1FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore1FReceptionistText:
	text "Ahoj! Vitaj v" ; text "Hello! Welcome to"
	line "CELADON DEPT." ; line "CELADON DEPT."
	cont "STORE!" ; cont "STORE!"

	para "Sluzby su napisane" ; para "The directory is"
	line "na nastenke." ; line "on the wall."
	done

CeladonDeptStore1FGentlemanText:
	text "Tento DEPT.STORE" ; text "This DEPT.STORE is"
	line "je francizou" ; line "part of the same"

	para "obchodu v" ; para "chain as the one"
	line "GOLDENROD CITY." ; line "in GOLDENROD CITY."

	para "Oba boli zrenovo-" ; para "They were both"
	line "vane v rovnakej" ; line "renovated at the"
	cont "dobe." ; cont "same time."
	done

CeladonDeptStore1FTeacherText:
	text "Som tu dnes" ; text "This is my first"
	line "po prvykrat." ; line "time here."

	para "Je to tu obrovske…" ; para "It's so big…"

	para "Bojim sa, ze sa tu" ; para "I'm afraid I'll"
	line "stratim." ; line "get lost."
	done

CeladonDeptStore1FDirectoryText:
	text "1P: OBSLUZNA" ; text "1F: SERVICE"
	line "    PREPAZKA" ; line "    COUNTER"

	para "2P: TRENERSKY" ; para "2F: TRAINER'S"
	line "    MARKET" ; line "    MARKET"

	para "3P: TM OBCHOD" ; para "3F: TM SHOP"

	para "4P: DARCEKY" ; para "4F: WISEMAN GIFTS"

	para "5P: LEKAREN" ; para "5F: DRUG STORE"

	para "6P: STRESNE" ; para "6F: ROOFTOP"
	line "   NAMESTIE" ; line "    SQUARE"
	done

CeladonDeptStore1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, CELADON_CITY, 1
	warp_event  8,  7, CELADON_CITY, 1
	warp_event 15,  0, CELADON_DEPT_STORE_2F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, CeladonDeptStore1FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore1FElevatorButton

	def_object_events
	object_event 10,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore1FReceptionistScript, -1
	object_event 11,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore1FGentlemanScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore1FTeacherScript, -1
