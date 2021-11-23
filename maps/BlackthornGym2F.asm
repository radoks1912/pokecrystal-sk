	object_const_def
	const BLACKTHORNGYM2F_COOLTRAINER_M
	const BLACKTHORNGYM2F_COOLTRAINER_F
	const BLACKTHORNGYM2F_BOULDER1
	const BLACKTHORNGYM2F_BOULDER2
	const BLACKTHORNGYM2F_BOULDER3
	const BLACKTHORNGYM2F_BOULDER4
	const BLACKTHORNGYM2F_BOULDER5
	const BLACKTHORNGYM2F_BOULDER6

BlackthornGym2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, .SetUpStoneTable

.SetUpStoneTable:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 5, BLACKTHORNGYM2F_BOULDER1, .Boulder1
	stonetable 3, BLACKTHORNGYM2F_BOULDER2, .Boulder2
	stonetable 4, BLACKTHORNGYM2F_BOULDER3, .Boulder3
	db -1 ; end

.Boulder1:
	disappear BLACKTHORNGYM2F_BOULDER1
	sjump .Fall

.Boulder2:
	disappear BLACKTHORNGYM2F_BOULDER2
	sjump .Fall

.Boulder3:
	disappear BLACKTHORNGYM2F_BOULDER3
	sjump .Fall

.Fall:
	pause 30
	scall .FX
	opentext
	writetext BlackthornGym2FBoulderFellText
	waitbutton
	closetext
	end

.FX:
	playsound SFX_STRENGTH
	earthquake 80
	end

BlackthornGymBoulder:
	jumpstd StrengthBoulderScript

TrainerCooltrainermCody:
	trainer COOLTRAINERM, CODY, EVENT_BEAT_COOLTRAINERM_CODY, CooltrainermCodySeenText, CooltrainermCodyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermCodyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfFran:
	trainer COOLTRAINERF, FRAN, EVENT_BEAT_COOLTRAINERF_FRAN, CooltrainerfFranSeenText, CooltrainerfFranBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfFranAfterBattleText
	waitbutton
	closetext
	end

CooltrainermCodySeenText:
	text "Vsetci nepouzivame" ; text "It's not as if we"
	line "dracich" ; line "all use dragon-"
	cont "#MONov." ; cont "type #MON."
	done

CooltrainermCodyBeatenText:
	text "Do kelu! If only I" ; text "Rats! If only I"
	line "had a dragon!" ; line "had a dragon!"
	done

CooltrainermCodyAfterBattleText:
	text "Clenovia naseho" ; text "Members of our"
	line "dracieho timu" ; line "dragon-user clan"

	para "mozu mat dracich" ; para "can use dragon"
	line "#MONov iba po" ; line "#MON only after"

	para "schvaleni nasim" ; para "our MASTER allows"
	line "MAJSTROM." ; line "it."
	done

CooltrainerfFranSeenText:
	text "Nemozem pustit" ; text "I can't allow a"
	line "bezmenneho trenera" ; line "nameless trainer"
	cont "ako si ty!" ; cont "past me!"

	para "CLAIR by bola" ; para "CLAIR would be"
	line "napalena!" ; line "livid if I did!"
	done

CooltrainerfFranBeatenText:
	text "Ach… Prehrala som…" ; text "Awww… I lost…"
	done

CooltrainerfFranAfterBattleText:
	text "O-ou… CLAIR bude" ; text "Uh-oh… CLAIR is"
	line "nastvana…" ; line "going to be mad…"
	done

BlackthornGym2FBoulderFellText:
	text "Skala prepadla" ; text "The boulder fell"
	line "skrz!" ; line "through!"
	done

BlackthornGym2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  7, BLACKTHORN_GYM_1F, 3
	warp_event  7,  9, BLACKTHORN_GYM_1F, 4
	warp_event  2,  5, BLACKTHORN_GYM_1F, 5 ; hole
	warp_event  8,  7, BLACKTHORN_GYM_1F, 6 ; hole
	warp_event  8,  3, BLACKTHORN_GYM_1F, 7 ; hole

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermCody, -1
	object_event  4, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfFran, -1
	object_event  8,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	object_event  2,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	object_event  6, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	object_event  3,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
	object_event  6,  1, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
	object_event  8, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGymBoulder, -1
