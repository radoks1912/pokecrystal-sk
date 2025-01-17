	object_const_def
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_FISHER
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN
	const CHERRYGROVEPOKECENTER1F_TEACHER

CherrygrovePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygrovePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CherrygrovePokecenter1FFisherScript:
	jumptextfaceplayer CherrygrovePokecenter1FFisherText

CherrygrovePokecenter1FGentlemanScript:
	jumptextfaceplayer CherrygrovePokecenter1FGentlemanText

CherrygrovePokecenter1FTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .CommCenterOpen
	writetext CherrygrovePokecenter1FTeacherText
	waitbutton
	closetext
	end

.CommCenterOpen:
	writetext CherrygrovePokecenter1FTeacherText_CommCenterOpen
	waitbutton
	closetext
	end

CherrygrovePokecenter1FFisherText:
	text "Skvele. Mozem" ; text "It's great. I can"
	line "chytit #MONov" ; line "store any number"

	para "kolko chcem a je" ; para "of #MON, and"
	line "to stale zdarma." ; line "it's all free."
	done

CherrygrovePokecenter1FGentlemanText:
	text "Ten PC je zdarma" ; text "That PC is free"
	line "pre akehokolvek" ; line "for any trainer"
	cont "trenera." ; cont "to use."
	done

CherrygrovePokecenter1FTeacherText:
	text "KOMUNIKACNE CENTRO" ; text "The COMMUNICATION"
	line "bolo prave" ; line "CENTER upstairs"
	cont "postavene." ; cont "was just built."

	para "Ale stale ho este" ; para "But they're still"
	line "dokoncuju." ; line "finishing it up."
	done

CherrygrovePokecenter1FTeacherText_CommCenterOpen:
	text "KOMUNIKACNE CENTRO" ; text "The COMMUNICATION"
	line "bolo prave" ; line "CENTER upstairs"
	cont "postavene." ; cont "was just built."

	para "Uz som vymenil" ; para "I traded #MON"
	line "#MONa!" ; line "there already!"
	done

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CHERRYGROVE_CITY, 2
	warp_event  4,  7, CHERRYGROVE_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FFisherScript, -1
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentlemanScript, -1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FTeacherScript, -1
