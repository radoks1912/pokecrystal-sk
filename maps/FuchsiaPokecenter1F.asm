	object_const_def
	const FUCHSIAPOKECENTER1F_NURSE
	const FUCHSIAPOKECENTER1F_COOLTRAINER_M
	const FUCHSIAPOKECENTER1F_COOLTRAINER_F
	const FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR

FuchsiaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; unusable

	def_callbacks

.DummyScene:
	end

FuchsiaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

FuchsiaPokecenter1FCooltrainerMScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerMText

FuchsiaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerFText

FuchsiaPokecenter1FJanineImpersonatorScript:
	faceplayer
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonatorText1
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, FuchsiaPokecenter1FJanineImpersonatorSpinMovement
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_JANINE
	special LoadUsedSpritesGFX
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonatorText2
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, FuchsiaPokecenter1FJanineImpersonatorSpinMovement
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_LASS
	special LoadUsedSpritesGFX
	end

FuchsiaPokecenter1FJanineImpersonatorSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

FuchsiaPokecenter1FCooltrainerMText:
	text "Hej! Mas uplne" ; text "Hey! You have a"
	line "najnovsi model" ; line "brand new kind of"
	cont "#DEXu." ; cont "#DEX."

	para "Dal ti ho" ; para "Did PROF.OAK give"
	line "PROF.OAK?" ; line "that to you?"
	done

FuchsiaPokecenter1FCooltrainerFText:
	text "Tunajsi GYM ma" ; text "I got quite a"
	line "celkom sokoval." ; line "shock at the GYM."

	para "Boli tam same" ; para "There were all"
	line "dievcata, ktore" ; line "these girls who"
	cont "vypadali rovnako." ; cont "looked identical."
	done

FuchsiaPokecenter1FJanineImpersonatorText1:
	text "I'm JANINE! Hocus-" ; text "I'm JANINE! Hocus-"
	line "pocus… Poof!" ; line "pocus… Poof!"
	done

FuchsiaPokecenter1FJanineImpersonatorText2:
	text "Vidis? Vypadam" ; text "See? I look just"
	line "presne ako ona!" ; line "like her now!"
	done

FuchsiaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, FUCHSIA_CITY, 5
	warp_event  4,  7, FUCHSIA_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerFScript, -1
	object_event  5,  3, SPRITE_JANINE_IMPERSONATOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FJanineImpersonatorScript, -1
