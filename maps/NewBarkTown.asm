	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU
	scene_script .DummyScene1, SCENE_NEWBARKTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

NewBarkTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherRunsToYouMovement2
	turnobject PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

NewBarkTownSilverScript:
	opentext
	writetext NewBarkTownRivalText1
	waitbutton
	closetext
	turnobject NEWBARKTOWN_SILVER, LEFT
	opentext
	writetext NewBarkTownRivalText2
	waitbutton
	closetext
	follow PLAYER, NEWBARKTOWN_SILVER
	applymovement PLAYER, NewBarkTown_SilverPushesYouAwayMovement
	stopfollow
	pause 5
	turnobject NEWBARKTOWN_SILVER, DOWN
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, NewBarkTown_SilverShovesYouOutMovement
	applymovement NEWBARKTOWN_SILVER, NewBarkTown_SilverReturnsToTheShadowsMovement
	end

NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText

NewBarkTown_TeacherRunsToYouMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

NewBarkTown_TeacherRunsToYouMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

NewBarkTown_TeacherBringsYouBackMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

NewBarkTown_TeacherBringsYouBackMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

NewBarkTown_SilverPushesYouAwayMovement:
	turn_head UP
	step DOWN
	step_end

NewBarkTown_SilverShovesYouOutMovement:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

NewBarkTown_SilverReturnsToTheShadowsMovement:
	step RIGHT
	step_end

Text_GearIsImpressive:
	text "Wau, ten #GEAR" ; text "Wow, your #GEAR"
	line "je uzasny!" ; line "is impressive!"

	para "Dostal si ho od" ; para "Did your mom get"
	line "mamy?" ; line "it for you?"
	done

Text_WaitPlayer:
	text "Cakaj, <PLAY_G>!" ; text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "Zblaznil si sa?" ; text "What do you think"
	;line "you're doing?" ; line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "Je nebezpecne ist" ; text "It's dangerous to"
	line "bez" ; line "go out without a"
	cont "#MONa!" ; cont "#MON!"

	para "Divoki #MONi" ; para "Wild #MON"
	line "mozu na teba" ; line "jump out of the"

	para "vyskocit z travy" ; para "grass on the way"
	line "na ceste do" ; line "to the next town."
	cont "dalsieho mesta!"
	done

Text_YourMonIsAdorable:
	text "Oh! Tvoj #MON" ; text "Oh! Your #MON"
	line "je zlaty! Kiezby" ; line "is adorable!"
	cont "som jedneho mala!" ; cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Ahoj, <PLAY_G>!" ; text "Hi, <PLAY_G>!"
	line "Odchadzas?" ; line "Leaving again?"

	para "Nezabudni to" ;  para "You should tell"
	line "povedat svojej" ; line "your mom if you"
	cont "mame." ; cont "are leaving."
	done

Text_CallMomOnGear:
	text "Zavolaj mame cez" ; text "Call your mom on"
	line "tvoj #GEAR a" ; line "your #GEAR to"

	para "daj jej vediet," ; para "let her know how"
	line "ako sa ti dari." ; line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Jo, <PLAYER>!" ; text "Yo, <PLAYER>!"

	para "Udajne PROF.ELM" ; para "I hear PROF.ELM"
	line "objavil noveho" ; line "discovered some"
	cont "#MONa." ; cont "new #MON."
	done

NewBarkTownRivalText1:
	text "<……>"

	para "Takze toto je ten" ; para "So this is the"
	line "slavny ELMov" ; line "famous ELM #MON"
	cont "#MON labak…" ; cont "LAB…"
	done

NewBarkTownRivalText2:
	text "…Co tu chces?" ; text "…What are you"
	line "Zmizni!" ; line "staring at?"
	done

NewBarkTownSignText:
	text "NEW BARK TOWN" ; text "NEW BARK TOWN"

	para "Mesto, kde fuka" ; para "The Town Where the"
	line "vietor novych" ; line "Winds of a New"
	cont "zaciatkov" ; cont "Beginning Blow"
	done

NewBarkTownPlayersHouseSignText:
	text "<PLAYER>ov Dom" ; text "<PLAYER>'s House"
	done

NewBarkTownElmsLabSignText:
	text "LABORATORIUM ELMA" ; text "ELM #MON LAB"
	done

NewBarkTownElmsHouseSignText:
	text "ELMOV DOM" ; text "ELM'S HOUSE"
	done

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  3, ELMS_LAB, 1
	warp_event 13,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 11, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 13, ELMS_HOUSE, 1

	def_coord_events
	coord_event  1,  8, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, NewBarkTown_TeacherStopsYouScene1
	coord_event  1,  9, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, NewBarkTown_TeacherStopsYouScene2

	def_bg_events
	bg_event  8,  8, BGEVENT_READ, NewBarkTownSign
	bg_event 11,  5, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  3,  3, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9, 13, BGEVENT_READ, NewBarkTownElmsHouseSign

	def_object_events
	object_event  6,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 12,  9, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	object_event  3,  2, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownSilverScript, EVENT_RIVAL_NEW_BARK_TOWN
