	object_const_def
	const GOLDENRODDEPTSTORE1F_RECEPTIONIST
	const GOLDENRODDEPTSTORE1F_POKEFAN_F
	const GOLDENRODDEPTSTORE1F_BUG_CATCHER
	const GOLDENRODDEPTSTORE1F_GENTLEMAN

GoldenrodDeptStore1F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore1FReceptionistScript:
	jumptextfaceplayer GoldenrodDeptStore1FReceptionistText

GoldenrodDeptStore1FGentlemanScript:
	jumptextfaceplayer GoldenrodDeptStore1FGentlemanText

GoldenrodDeptStore1FPokefanFScript:
	jumptextfaceplayer GoldenrodDeptStore1FPokefanFText

GoldenrodDeptStore1FBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStore1FBugCatcherText

GoldenrodDeptStore1FDirectory:
	jumptext GoldenrodDeptStore1FDirectoryText

GoldenrodDeptStore1FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore1FReceptionistText:
	text "Vitajte v GOLDEN-" ; text "Welcome to GOLDEN-"
	line "ROD DEPT.STORE." ; line "ROD DEPT.STORE."
	done

GoldenrodDeptStore1FGentlemanText:
	text "DEPT.STORE" ; text "The DEPT.STORE"
	line "ma skvely vyber." ; line "has a decent se-"
	;cont "lection." ; cont "lection."

	para "Ale niektore veci" ; para "But some items"
	line "su dostupne iba" ; line "are only available"

	para "ako ceny v" ; para "as GAME CORNER"
	line "GAME CORNER." ; line "prizes."
	done

GoldenrodDeptStore1FPokefanFText:
	text "Skocim si dnes" ; text "I'm raring to shop"
	line "znova do obchodu!" ; line "again today!"
	done

GoldenrodDeptStore1FBugCatcherText:
	text "Mama sleduje" ; text "Mom's good at"
	line "vsetky vypredaje." ; line "bargain hunting."

	para "Vzdy nakupi za" ; para "She always buys"
	line "skvele ceny." ; line "stuff at lower"
	;cont "prices." ; cont "prices."
	done

GoldenrodDeptStore1FDirectoryText:
	text "1P OBSLUZNY PULT" ; text "1F SERVICE COUNTER"

	para "2P TRENERSKY" ; para "2F TRAINER'S"
	line "   MARKET" ; line "   MARKET"

	para "3P ZAPASOVA" ; para "3F BATTLE"
	line "   KOLEKCIA" ; line "   COLLECTION"

	para "4P LEKAREN" ; para "4F MEDICINE BOX"

	para "5P TM KUTIK" ; para "5F TM CORNER"

	para "6P KLUDNE NAMESTIE" ; para "6F TRANQUIL SQUARE"

	para "STRESNA VYHLIADKA" ; para "ROOFTOP LOOKOUT"
	done

GoldenrodDeptStore1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, GOLDENROD_CITY, 9
	warp_event  8,  7, GOLDENROD_CITY, 9
	warp_event 15,  0, GOLDENROD_DEPT_STORE_2F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore1FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore1FElevatorButton

	def_object_events
	object_event 10,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FReceptionistScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FPokefanFScript, -1
	object_event  5,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FBugCatcherScript, -1
	object_event 11,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore1FGentlemanScript, -1
