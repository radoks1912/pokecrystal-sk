	object_const_def
	const ECRUTEAKPOKECENTER1F_NURSE
	const ECRUTEAKPOKECENTER1F_POKEFAN_M
	const ECRUTEAKPOKECENTER1F_COOLTRAINER_F
	const ECRUTEAKPOKECENTER1F_GYM_GUIDE
	const ECRUTEAKPOKECENTER1F_BILL

EcruteakPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script .MeetBill,   SCENE_ECRUTEAKPOKECENTER1F_MEET_BILL
	scene_script .DummyScene, SCENE_ECRUTEAKPOKECENTER1F_NOOP

	def_callbacks

.MeetBill:
	sdefer .BillActivatesTimeCapsule
	end

.DummyScene:
	end

.BillActivatesTimeCapsule:
	pause 30
	playsound SFX_EXIT_BUILDING
	appear ECRUTEAKPOKECENTER1F_BILL
	waitsfx
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement1
	applymovement PLAYER, EcruteakPokecenter1FPlayerMovement1
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 30
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 20
	turnobject ECRUTEAKPOKECENTER1F_BILL, DOWN
	pause 10
	opentext
	writetext EcruteakPokecenter1F_BillText1
	promptbutton
	sjump .PointlessJump

.PointlessJump:
	writetext EcruteakPokecenter1F_BillText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement2
	playsound SFX_EXIT_BUILDING
	disappear ECRUTEAKPOKECENTER1F_BILL
	clearevent EVENT_MET_BILL
	setflag ENGINE_TIME_CAPSULE
	setscene SCENE_ECRUTEAKPOKECENTER1F_NOOP
	waitsfx
	end

EcruteakPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

EcruteakPokecenter1FPokefanMScript:
	special Mobile_DummyReturnFalse
	iftrue .mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMText

.mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMTextMobile

EcruteakPokecenter1FCooltrainerFScript:
	jumptextfaceplayer EcruteakPokecenter1FCooltrainerFText

EcruteakPokecenter1FGymGuideScript:
	jumptextfaceplayer EcruteakPokecenter1FGymGuideText

EcruteakPokecenter1FBillMovement1:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

EcruteakPokecenter1FBillMovement2:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

EcruteakPokecenter1FPlayerMovement1:
	step UP
	step UP
	step UP
	step_end

EcruteakPokecenter1F_BillText1:
	text "Cau, som BILL. A" ; text "Hi, I'm BILL. And"
	line "kto si ty?" ; line "who are you?"

	para "Hmm, <PLAYER>, ze?" ; para "Hmm, <PLAYER>, huh?"
	line "Prisiel si v pravy" ; line "You've come at the"
	cont "cas." ; cont "right time."
	done

EcruteakPokecenter1F_BillText2:
	text "Prave som dokoncil" ; text "I just finished"
	line "nastavenia na" ; line "adjustments on my"
	cont "TIME CAPSULE." ; cont "TIME CAPSULE."

	para "Vies, ze" ; para "You know that"
	line "#MON sa daju" ; line "#MON can be"
	cont "vymenit, ze?" ; cont "traded, right?"

	para "Moja TIME CAPSULE" ; para "My TIME CAPSULE"
	line "bola vyvinuta na" ; line "was developed to"

	para "vymeny z minu-" ; para "enable trades with"
	line "losti." ; line "the past."

	para "Ale nemozes poslat" ; para "But you can't send"
	line "cokolvek, co ne-" ; line "anything that"

	para "existovalo v" ; para "didn't exist in"
	line "minulosti." ; line "the past."

	para "Ak by si poslal," ; para "If you did, the PC"
	line "PC z minulosti by" ; line "in the past would"
	cont "spadlo." ; cont "have a breakdown."

	para "Takze musis odo-" ; para "So you have to"
	line "brat cokolvek," ; line "remove anything"

	para "co nebolo v minu-" ; para "that wasn't around"
	line "losti." ; line "in the past."

	para "Jednoducho ziadne" ; para "Put simply, no"
	line "nove utoky alebo" ; line "sending new moves"

	para "#MONi v" ; para "or new #MON in"
	line "TIME CAPSULE." ; line "the TIME CAPSULE."

	para "Neboj sa." ; para "Don't you worry."
	line "Vsetko je uz" ; line "I'm done with the"
	cont "nastavene." ; cont "adjustments."

	para "Zajtra bude TIME" ; para "Tomorrow, TIME"
	line "CAPSULES dostupny" ; line "CAPSULES will be"

	para "vo vsetkych" ; para "running at all"
	line "#MON CENTERS." ; line "#MON CENTERS."

	para "Musim sa ponahlat" ; para "I have to hurry on"
	line "spat do GOLDENROD" ; line "back to GOLDENROD"
	cont "za nasimi." ; cont "and see my folks."

	para "Cauko!" ; para "Buh-bye!"
	done

EcruteakPokecenter1FPokefanMText:
	text "Sposob akym KIMONO" ; text "The way the KIMONO"
	line "ZENY tancuju," ; line "GIRLS dance is"

	para "je uzasny. Rovnako" ; para "marvelous. Just"
	line "ako ked pouzivaju" ; line "like the way they"
	cont "svojich #MONov." ; cont "use their #MON."
	done

EcruteakPokecenter1FPokefanMTextMobile:
	text "Cakal si, ze budes" ; text "You must be hoping"
	line "zapasit s viac" ; line "to battle more"

	para "ludmi, vsak?" ; para "people, right?"
	line "Udajne existuje" ; line "There's apparently"

	para "miesto, kde sa" ; para "some place where"
	line "treneri schadzaju." ; line "trainers gather."

	para "Pytas sa, kde?" ; para "Where, you ask?"

	para "Je to nedaleko" ; para "It's a little past"
	line "OLIVINE CITY." ; line "OLIVINE CITY."
	done

EcruteakPokecenter1FCooltrainerFText:
	text "MORTY, GYM" ; text "MORTY, the GYM"
	line "LEADER, je taaak" ; line "LEADER, is soooo"
	cont "cool." ; cont "cool."

	para "Ma velmi silnych" ; para "His #MON are"
	line "#MONov." ; line "really tough too."
	done

EcruteakPokecenter1FGymGuideText:
	text "LAKE OF RAGE…" ; text "LAKE OF RAGE…"

	para "Vyskyt roju" ; para "The appearance of"
	line "GYARADOSov…" ; line "a GYARADOS swarm…"

	para "Citim spiknutie." ; para "I smell a conspir-"
	line "Urcite!" ; line "acy. I know it!"
	done

EcruteakPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 6
	warp_event  4,  7, ECRUTEAK_CITY, 6
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FPokefanMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FCooltrainerFScript, -1
	object_event  7,  1, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FGymGuideScript, -1
	object_event  0,  7, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_POKE_CENTER_BILL
