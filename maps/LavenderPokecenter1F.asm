	object_const_def
	const LAVENDERPOKECENTER1F_NURSE
	const LAVENDERPOKECENTER1F_GENTLEMAN
	const LAVENDERPOKECENTER1F_TEACHER
	const LAVENDERPOKECENTER1F_YOUNGSTER

LavenderPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LavenderPokecenter1FGentlemanScript:
	jumptextfaceplayer LavenderPokecenter1FGentlemanText

LavenderPokecenter1FTeacherScript:
	jumptextfaceplayer LavenderPokecenter1FTeacherText

LavenderPokecenter1FYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext LavenderPokecenter1FYoungsterText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext LavenderPokecenter1FYoungsterText_ReturnedMachinePart
	waitbutton
	closetext
	end

LavenderPokecenter1FGentlemanText:
	text "Severne od LAVEN-" ; text "To the north of"
	line "DER je SKALNY" ; line "LAVENDER is ROCK"

	para "TUNEL. Tadial sa" ; para "TUNNEL. Go through"
	line "dostanes do" ; line "it to get to the"
	cont "ELEKTRARNE." ; cont "POWER PLANT."
	done

LavenderPokecenter1FTeacherText:
	text "Existuje radio" ; text "There's a radio"
	line "program, ktory hra" ; line "program that plays"
	cont "# FLUTE hudbu." ; cont "# FLUTE music."

	para "Hm? Ah, tvoje ra-" ; para "Oh? Ah, your radio"
	line "dio potrebuje" ; line "needs an EXPN CARD"
	cont "EXPN KARTU." ; cont "to tune into it."
	done

LavenderPokecenter1FYoungsterText:
	text "Ak ELEKTRAREN ne-" ; text "If the POWER PLANT"
	line "funguje, MAGNET" ; line "isn't running, the"

	para "VLAK nebude" ; para "MAGNET TRAIN won't"
	line "tiez…" ; line "run either…"

	para "Takisto to zname-" ; para "It also means the"
	line "na, ze RADIO STA-" ; line "RADIO STATION"
	cont "NICA nevysiela…" ; cont "can't broadcast…"
	done

LavenderPokecenter1FYoungsterText_ReturnedMachinePart:
	text "RIADITEL RADIO" ; text "The DIRECTOR of"
	line "STANICE bol" ; line "the RADIO STATION"
	cont "urcite rad." ; cont "sure was happy."

	para "Hovoril, ze opat" ; para "He said they're"
	line "vysielaju, preto-" ; line "back on the air"

	para "ze ELEKTRAREN" ; para "because the POWER"
	line "znovu bezstarostne" ; line "PLANT is running"
	cont "funguje." ; cont "smoothly again."
	done

LavenderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 1
	warp_event  4,  7, LAVENDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FGentlemanScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FTeacherScript, -1
	object_event  1,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FYoungsterScript, -1
