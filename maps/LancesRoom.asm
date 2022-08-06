	object_const_def
	const LANCESROOM_LANCE
	const LANCESROOM_MARY
	const LANCESROOM_OAK

LancesRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor,   SCENE_LANCESROOM_LOCK_DOOR
	scene_script .DummyScene, SCENE_LANCESROOM_APPROACH_LANCE

	def_callbacks
	callback MAPCALLBACK_TILES, .LancesRoomDoors

.LockDoor:
	sdefer .LancesDoorLocksBehindYou
	end

.DummyScene:
	end

.LancesRoomDoors:
	checkevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 22, $34 ; wall
.KeepEntranceOpen:
	checkevent EVENT_LANCES_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 0, $0b ; open door
.KeepExitClosed:
	endcallback

.LancesDoorLocksBehindYou:
	applymovement PLAYER, LancesRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 22, $34 ; wall
	reloadmappart
	closetext
	setscene SCENE_LANCESROOM_APPROACH_LANCE
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	end

Script_ApproachLanceFromLeft:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromLeft
	sjump LancesRoomLanceScript

Script_ApproachLanceFromRight:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromRight
LancesRoomLanceScript:
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	writetext LanceBattleIntroText
	waitbutton
	closetext
	winlosstext LanceBattleWinText, 0
	setlasttalked LANCESROOM_LANCE
	loadtrainer CHAMPION, LANCE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_CHAMPION_LANCE
	opentext
	writetext LanceBattleAfterText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0b ; open door
	reloadmappart
	closetext
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	musicfadeout MUSIC_BEAUTY_ENCOUNTER, 16
	pause 30
	showemote EMOTE_SHOCK, LANCESROOM_LANCE, 15
	turnobject LANCESROOM_LANCE, DOWN
	pause 10
	turnobject PLAYER, DOWN
	appear LANCESROOM_MARY
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRushesIn
	opentext
	writetext LancesRoomMaryOhNoOakText
	waitbutton
	closetext
	appear LANCESROOM_OAK
	applymovement LANCESROOM_OAK, LancesRoomMovementData_OakWalksIn
	follow LANCESROOM_MARY, LANCESROOM_OAK
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryYieldsToOak
	stopfollow
	turnobject LANCESROOM_OAK, UP
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	writetext LancesRoomOakCongratulationsText
	waitbutton
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryInterviewChampion
	turnobject PLAYER, LEFT
	opentext
	writetext LancesRoomMaryInterviewText
	waitbutton
	closetext
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway
	turnobject PLAYER, UP
	opentext
	writetext LancesRoomNoisyText
	waitbutton
	closetext
	follow LANCESROOM_LANCE, PLAYER
	turnobject LANCESROOM_MARY, UP
	turnobject LANCESROOM_OAK, UP
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LanceLeadsPlayerToHallOfFame
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear LANCESROOM_LANCE
	applymovement PLAYER, LancesRoomMovementData_PlayerExits
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryTriesToFollow
	showemote EMOTE_SHOCK, LANCESROOM_MARY, 15
	opentext
	writetext LancesRoomMaryNoInterviewText
	pause 30
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRunsBackAndForth
	special FadeOutPalettes
	pause 15
	warpfacing UP, HALL_OF_FAME, 4, 13
	end

LancesRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementData_ApproachLanceFromLeft:
	step UP
	step UP
	turn_head RIGHT
	step_end

MovementData_ApproachLanceFromRight:
	step UP
	step LEFT
	step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryRushesIn:
	big_step UP
	big_step UP
	big_step UP
	turn_head DOWN
	step_end

LancesRoomMovementData_OakWalksIn:
	step UP
	step UP
	step_end

LancesRoomMovementData_MaryYieldsToOak:
	step LEFT
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryInterviewChampion:
	big_step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway:
	step UP
	step LEFT
	turn_head DOWN
	step_end

LancesRoomMovementData_LanceLeadsPlayerToHallOfFame:
	step UP
	step_end

LancesRoomMovementData_PlayerExits:
	step UP
	step_end

LancesRoomMovementData_MaryTriesToFollow:
	step UP
	step RIGHT
	turn_head UP
	step_end

LancesRoomMovementData_MaryRunsBackAndForth:
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

LanceBattleIntroText:
	text "LANCE: Ocakaval" ; text "LANCE: I've been"
	line "som ta." ; line "waiting for you."

	para "<PLAY_G>!" ; para "<PLAY_G>!"

	para "Vedel som, ze s" ; para "I knew that you,"
	line "tvojimi skuseno-" ; line "with your skills,"

	para "stami sa ku mne" ; para "would eventually"
	line "dostanes." ; line "reach me here."

	para "Nema zmysel nieco" ; para "There's no need"
	line "hovorit." ; line "for words now."

	para "Budeme zapasit a" ; para "We will battle to"
	line "zistime, kto z nas" ; line "determine who is"

	para "dvoch je silnejsi" ; para "dvoch je silnejsi"
	line "trener." ; line superus."

	para "Ako najsilnejsi" ; para "As the most power-"
	line "trener a ako" ; line "ful trainer and as"

	para "#MON LEAGUE" ; para "the #MON LEAGUE"
	line "SAMPION…" ; line "CHAMPION…"

	para "Ja, LANCE draci" ; para "I, LANCE the drag-"
	line "majster, prijimam" ; line "on master, accept"
	cont "tvoju vyzvu!" ; cont "your challenge!"
	done

LanceBattleWinText:
	text "…Je koniec." ; text "…It's over."

	para "Ale je to zvlastny" ; para "But it's an odd"
	line "pocit." ; line "feeling."

	para "Nehnevam sa, ze" ; para "I'm not angry that"
	line "som prehral." ; line "I lost. In fact, I"
	cont "Vlastne som rad." ; cont "feel happy."

	para "Stastny, ze som" ; para "Happy that I"
	line "bol svedkom" ; line "witnessed the rise"

	para "vzostupu noveho" ; para "of a great new"
	line "SAMPIONA!" ; line "CHAMPION!"
	done

LanceBattleAfterText:
	text "…Fuh." ; text "…Whew."

	para "Stal si sa skutoc-" ; para "You have become"
	line "cne silnym," ; line "truly powerful,"
	cont "<PLAY_G>." ; cont "<PLAY_G>."

	para "Tvoji #MONi" ; para "Your #MON have"
	line "ta posluchali" ; line "responded to your"

	para "kvoli tvojej" ; para "strong and up-"
	line "silnej povahe." ; line "standing nature."

	para "Ako trener budes" ; para "As a trainer, you"
	line "stale silnejsim" ; line "will continue to"

	para "spolu s tvojimi" ; para "grow strong with"
	line "#MONmi." ; line "your #MON."
	done

LancesRoomMaryOhNoOakText:
	text "MARY: Ach, nie!" ; text "MARY: Oh, no!"
	line "Je koniec!" ; line "It's all over!"

	para "PROF.OAK, keby ste" ; para "PROF.OAK, if you"
	line "neboli tak pomaly…" ; line "weren't so slow…"
	done

LancesRoomOakCongratulationsText:
	text "PROF.OAK: Ach," ; text "PROF.OAK: Ah,"
	line "<PLAY_G>!" ; line "<PLAY_G>!"

	para "Uz je to" ; para "It's been a long"
	line "davno." ; line "while."

	para "Vypadas velmi" ; para "You certainly look"
	line "posobivo." ; line "more impressive."

	para "Tvoje dobytie" ; para "Your conquest of"
	line "LIGY je skratka" ; line "the LEAGUE is just"
	cont "fantasticke!" ; cont "fantastic!"

	para "Tvoja obetavost," ; para "Your dedication,"
	line "dovera a laska" ; line "trust and love for"

	para "pre #MONov" ; para "your #MON made"
	line "to prave umoznila." ; line "this happen."

	para "Mas skvelych" ; para "Your #MON were"
	line "#MONov." ; line "outstanding too."

	para "Pretoze ti verili" ; para "Because they be-"
	line "ako trenerovi," ; line "lieved in you as a"

	para "vytrvali s tebou." ; para "trainer, they per-"
	;line "severed." ; line "severed."

	para "Gratulujem," ; para "Congratulations,"
	line "<PLAY_G>!"
	done

LancesRoomMaryInterviewText:
	text "MARY: Spravme s" ; text "MARY: Let's inter-"
	line "novym SAMPIONOM" ; line "view the brand new"
	cont "rozhovor!" ; cont "CHAMPION!"
	done

LancesRoomNoisyText:
	text "LANCE: Zacina" ; text "LANCE: This is"
	line "tu byt troska" ; line "getting to be a"
	cont "hlucno…" ; cont "bit too noisy…"

	para "<PLAY_G>, mozes" ; para "<PLAY_G>, could you"
	line "ist so mnou?" ; line "come with me?"
	done

LancesRoomMaryNoInterviewText:
	text "MARY: Ach, nie!" ; text "MARY: Oh, wait!"
	line "Nestihli sme" ; line "We haven't done"
	cont "spravit rozhovor!" ; cont "the interview!"
	done

LancesRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 23, KARENS_ROOM, 3
	warp_event  5, 23, KARENS_ROOM, 4
	warp_event  4,  1, HALL_OF_FAME, 1
	warp_event  5,  1, HALL_OF_FAME, 2

	def_coord_events
	coord_event  4,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromLeft
	coord_event  5,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromRight

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LancesRoomLanceScript, -1
	object_event  4,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
	object_event  4,  7, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
