	object_const_def
	const GOLDENRODDEPTSTORE3F_CLERK
	const GOLDENRODDEPTSTORE3F_SUPER_NERD
	const GOLDENRODDEPTSTORE3F_ROCKER

GoldenrodDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore3FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_3F
	closetext
	end

GoldenrodDeptStore3FSuperNerdScript:
	jumptextfaceplayer GoldenrodDeptStore3FSuperNerdText

GoldenrodDeptStore3FRockerScript:
	jumptextfaceplayer GoldenrodDeptStore3FRockerText

GoldenrodDeptStore3FDirectory:
	jumptext GoldenrodDeptStore3FDirectoryText

GoldenrodDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore3FSuperNerdText:
	text "Ja, ja, ja som tak" ; text "I, I, I'm really"
	line "netrpezlivy!" ; line "impatient!"

	para "Pouzil som X SPEED" ; para "I use X SPEED in"
	line "v zapase na zvyse-" ; line "battle to speed up"
	cont "nie rychlosti" ; cont "my #MON."
	cont "mojho #MONa."
	done

GoldenrodDeptStore3FRockerText:
	text "Hej! Ked zapasis," ; text "Hey! When you bat-"
	line "pouzivas X" ; line "tle, do you use X"
	cont "SPECIAL?" ; cont "SPECIAL?"

	para "Je skvely." ; para "It's awesome. It"
	line "Ohromne zvysuje" ; line "really jacks up"
	cont "SPECIALNY UTOK!" ; cont "SPECIAL ATTACK!"
	done

GoldenrodDeptStore3FDirectoryText:
	text "Pre hladacov" ; text "For Victory"
	line "vitazstiev" ; line "Seekers"

	para "3P ZAPASOVA" ; para "3F BATTLE"
	line "   KOLEKCIA" ; line "   COLLECTION"
	done

GoldenrodDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_2F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_4F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore3FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore3FElevatorButton

	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FClerkScript, -1
	object_event 12,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FSuperNerdScript, -1
	object_event  2,  5, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FRockerScript, -1
