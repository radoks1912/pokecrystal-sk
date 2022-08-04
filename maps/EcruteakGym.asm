	object_const_def
	const ECRUTEAKGYM_MORTY
	const ECRUTEAKGYM_SAGE1
	const ECRUTEAKGYM_SAGE2
	const ECRUTEAKGYM_GRANNY1
	const ECRUTEAKGYM_GRANNY2
	const ECRUTEAKGYM_GYM_GUIDE
	const ECRUTEAKGYM_GRAMPS

EcruteakGym_MapScripts:
	def_scene_scripts
	scene_script .ForcedToLeave, SCENE_ECRUTEAKGYM_FORCED_TO_LEAVE
	scene_script .DummyScene,    SCENE_ECRUTEAKGYM_NOOP

	def_callbacks

.ForcedToLeave:
	sdefer EcruteakGymClosed
	end

.DummyScene:
	end

EcruteakGymMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .FightDone
	writetext MortyIntroText
	waitbutton
	closetext
	winlosstext MortyWinLossText, 0
	loadtrainer MORTY, MORTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY
	opentext
	writetext Text_ReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	readvar VAR_BADGES
	scall EcruteakGymActivateRockets
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
	setevent EVENT_RANG_CLEAR_BELL_1
	setevent EVENT_RANG_CLEAR_BELL_2
.FightDone:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue .GotShadowBall
	setevent EVENT_BEAT_SAGE_JEFFREY
	setevent EVENT_BEAT_SAGE_PING
	setevent EVENT_BEAT_MEDIUM_MARTHA
	setevent EVENT_BEAT_MEDIUM_GRACE
	writetext MortyText_FogBadgeSpeech
	promptbutton
	verbosegiveitem TM_SHADOW_BALL
	iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
	writetext MortyText_ShadowBallSpeech
	waitbutton
	closetext
	end

.GotShadowBall:
	writetext MortyFightDoneText
	waitbutton
.NoRoomForShadowBall:
	closetext
	end

EcruteakGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

EcruteakGymClosed:
	applymovement PLAYER, EcruteakGymPlayerStepUpMovement
	applymovement ECRUTEAKGYM_GRAMPS, EcruteakGymGrampsSlowStepDownMovement
	opentext
	writetext EcruteakGymClosedText
	waitbutton
	closetext
	follow PLAYER, ECRUTEAKGYM_GRAMPS
	applymovement PLAYER, EcruteakGymPlayerSlowStepDownMovement
	stopfollow
	special FadeOutPalettes
	playsound SFX_ENTER_DOOR
	waitsfx
	warp ECRUTEAK_CITY, 6, 27
	end

TrainerSageJeffrey:
	trainer SAGE, JEFFREY, EVENT_BEAT_SAGE_JEFFREY, SageJeffreySeenText, SageJeffreyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJeffreyAfterBattleText
	waitbutton
	closetext
	end

TrainerSagePing:
	trainer SAGE, PING, EVENT_BEAT_SAGE_PING, SagePingSeenText, SagePingBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SagePingAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumMartha:
	trainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMarthaAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumGrace:
	trainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumGraceAfterBattleText
	waitbutton
	closetext
	end

EcruteakGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .EcruteakGymGuideWinScript
	writetext EcruteakGymGuideText
	waitbutton
	closetext
	end

.EcruteakGymGuideWinScript:
	writetext EcruteakGymGuideWinText
	waitbutton
	closetext
	end

EcruteakGymStatue:
	checkflag ENGINE_FOGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, MORTY, MORTY1
	jumpstd GymStatue2Script

EcruteakGymPlayerStepUpMovement:
	step UP
	step_end

EcruteakGymPlayerSlowStepDownMovement:
	fix_facing
	slow_step DOWN
	remove_fixed_facing
	step_end

EcruteakGymGrampsSlowStepDownMovement:
	slow_step DOWN
	step_end

MortyIntroText:
	text "Dobre, ze si" ; text "Good of you to"
	line "prisiel." ; line "have come."

	para "Tu v ECRUTEAK," ; para "Here in ECRUTEAK,"
	line "si #MONov" ; line "#MON have been"
	cont "vazime." ; cont "revered."

	para "Hovori sa, ze" ; para "It's said that a"
	line "duhovo-sfarbeny" ; line "rainbow-colored"

	para "#MON sa zjavi" ; para "#MON will come"
	line "pred skutocne" ; line "down to appear"

	para "silnym #MON" ; para "before a truly"
	line "trenerom." ; line "powerful trainer."

	para "Verim tomu, a tak" ; para "I believed that"
	line "cely svoj zivot" ; line "tale, so I have"

	para "tajne trenujem" ; para "secretly trained"
	line "prave tu." ; line "here all my life."

	para "Ako vysledok vidim" ; para "As a result, I can"
	line "teraz to, co" ; line "now see what"
	cont "ostatni nevidia." ; cont "others cannot."

	para "Trosku viac…" ; para "Just a bit more…"

	para "S troskou naviac" ; para "With a little"
	line "vidim buducnost, v" ; line "more, I could see"

	para "ktorej sa stretnem" ; para "a future in which"
	line "s #MONom" ; line "I meet the #MON"
	cont "duhovej farby." ; cont "of rainbow colors."

	para "Pomozes mi" ; para "You're going to"
	line "dosiahnut tento" ; line "help me reach that"
	cont "level!" ; cont "level!"
	done

MortyWinLossText:
	text "Nie som dost" ; text "I'm not good"
	line "dobry…" ; line "enough yet…"

	para "V poriadku. Tento" ; para "All right. This"
	line "BADGE je tvoj." ; line "BADGE is yours."
	done

Text_ReceivedFogBadge:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "FOGBADGE."
	done

MortyText_FogBadgeSpeech:
	text "Ked mas FOG-" ; text "By having FOG-"
	line "BADGE, #MONi" ; line "BADGE, #MON up"

	para "do L50 ta budu" ; para "to L50 will obey"
	line "posluchat." ; line "you."

	para "Navyse, #MON" ; para "Also, #MON that"
	line "ktory vie SURF," ; line "know SURF will be"

	para "ho moze kedykolvek" ; para "able to use that"
	line "pouzit." ; line "move anytime."

	para "Chcem aby si si" ; para "I want you to have"
	line "vzal toto." ; line "this too."
	done

MortyText_ShadowBallSpeech:
	text "Je to SHADOW BALL." ; text "It's SHADOW BALL."
	line "Sposobuje zranenie" ; line "It causes damage"

	para "a moze znizit" ; para "and may reduce"
	line "SPCL.OBR." ; line "SPCL.DEF."

	para "Pouzi to ako" ; para "Use it if it"
	line "chces." ; line "appeals to you."
	done

MortyFightDoneText:
	text "Aha…" ; text "I see…"

	para "Tvoje dobrodruz-" ; para "Your journey has"
	line "stvo sa odohrava" ; line "taken you to far-"
	cont "v dalekych kon-" ; cont "away places."
	cont "cinach."

	para "A bol si svedkom" ; para "And you have wit-"
	line "mnohych veci, viac" ; line "nessed much more"
	cont "ako ja." ; cont "than I."

	para "Zavidim ti" ; para "I envy you for"
	line "to…" ; line "that…"
	done

SageJeffreySeenText:
	text "Stravil som jar s" ; text "I spent the spring"
	line "mojimi #MONmi." ; line "with my #MON."

	para "Potom leto, jesen" ; para "Then summer, fall"
	line "a zimu…" ; line "and winter…"

	para "Jar prisla opat." ; para "Then spring came"
	line "Zijeme spolu" ; line "again. We have"

	para "uz velmi dlhu" ; para "lived together"
	line "dobu." ; line "for a long time."
	done

SageJeffreyBeatenText:
	text "Vyhry a prehry," ; text "Wins and losses, I"
	line "poznam obe." ; line "experienced both."
	done

SageJeffreyAfterBattleText:
	text "Odkial sa" ; text "Where did #MON"
	line "#MONi vzali?" ; line "come from?"
	done

SagePingSeenText:
	text "Dokazes vobec" ; text "Can you inflict"
	line "zranit nasich"  ;line "any damage on our"
	cont "#MON?" ; cont "#MON?"
	done

SagePingBeatenText:
	text "Ach! Skvele!" ; text "Ah! Well done!"
	done

SagePingAfterBattleText:
	text "Pouzivame iba " ; text "We use only ghost-"
	line "ghost-typ" ; line "type #MON."
	cont "#MONov."

	para "Normalne utoky ich" ; para "No normal-type"
	line "vobec nedokazu" ; line "attack can harm"
	cont "zranit!" ; cont "them!"
	done

MediumMarthaSeenText:
	text "Vyhram!" ; text "I shall win!"
	done

MediumMarthaBeatenText:
	text "P-p-prehra!" ; text "I, I, I lost!"
	done

MediumMarthaAfterBattleText:
	text "Ten, co chce naj-" ; text "The one who wants"
	line "viac vyhrat-vyhra!" ; line "to win most--will!"
	done

MediumGraceSeenText:
	text "Zaskoceny nasou" ; text "Stumped by our in-"
	line "neviditelnou po-" ; line "visible floor?"
	cont "dlahou?"

	para "Poraz ma a dam ti" ; para "Defeat me if you"
	line "radu!" ; line "want a hint!"
	done

MediumGraceBeatenText:
	text "Co-coze?" ; text "Wha-what?"
	done

MediumGraceAfterBattleText:
	text "Fajn. Vysvetlim ti" ; text "Fine. I shall tell"
	line "tajomstvo nevidi-" ; line "you the secret of"

	para "telnej podlahy." ; para "the invisible"
	;line "floor." ; line "floor."

	para "Cesta je priamo" ; para "The path is right"
	line "pred nasimi ocami!" ; line "before our eyes!"
	done

EcruteakGymGuideText:
	text "Tunajsi treneri" ; text "The trainers here"
	line "maju tajne" ; line "have secret mo-"
	cont "motivy." ; cont "tives."

	para "Ak vyhras, mozno" ; para "If you win, they"
	line "ti povedia temne" ; line "may tell you some"

	para "tajomstva o" ; para "deep secrets about"
	line "ECRUTEAK." ; line "ECRUTEAK."
	done

EcruteakGymGuideWinText:
	text "Fuh, <PLAYER>." ; text "Whew, <PLAYER>."
	line "Skvela praca!" ; line "You did great!"

	para "Krcil som sa v" ; para "I was cowering in"
	line "rohu z uplneho" ; line "the corner out of"
	cont "vystrasenia!" ; cont "pure terror!"
	done

EcruteakGymClosedText:
	text "MORTY, GYM" ; text "MORTY, the GYM"
	line "LEADER, je" ; line "LEADER, is absent."
	cont "nepritomny."

	para "Prepac, ale musis" ; para "Sorry, but you'll"
	line "odist." ; line "have to leave."

	para "Hohohoho." ; para "Hohohoho."
	done

EcruteakGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 10
	warp_event  5, 17, ECRUTEAK_CITY, 10
	warp_event  4, 14, ECRUTEAK_GYM, 4
	warp_event  2,  4, ECRUTEAK_GYM, 3
	warp_event  3,  4, ECRUTEAK_GYM, 3
	warp_event  4,  4, ECRUTEAK_GYM, 3
	warp_event  4,  5, ECRUTEAK_GYM, 3
	warp_event  6,  7, ECRUTEAK_GYM, 3
	warp_event  7,  4, ECRUTEAK_GYM, 3
	warp_event  2,  6, ECRUTEAK_GYM, 3
	warp_event  3,  6, ECRUTEAK_GYM, 3
	warp_event  4,  6, ECRUTEAK_GYM, 3
	warp_event  5,  6, ECRUTEAK_GYM, 3
	warp_event  7,  6, ECRUTEAK_GYM, 3
	warp_event  7,  7, ECRUTEAK_GYM, 3
	warp_event  4,  8, ECRUTEAK_GYM, 3
	warp_event  5,  8, ECRUTEAK_GYM, 3
	warp_event  6,  8, ECRUTEAK_GYM, 3
	warp_event  7,  8, ECRUTEAK_GYM, 3
	warp_event  2,  8, ECRUTEAK_GYM, 3
	warp_event  2,  9, ECRUTEAK_GYM, 3
	warp_event  2, 10, ECRUTEAK_GYM, 3
	warp_event  2, 11, ECRUTEAK_GYM, 3
	warp_event  4, 10, ECRUTEAK_GYM, 3
	warp_event  5, 10, ECRUTEAK_GYM, 3
	warp_event  2, 12, ECRUTEAK_GYM, 3
	warp_event  3, 12, ECRUTEAK_GYM, 3
	warp_event  4, 12, ECRUTEAK_GYM, 3
	warp_event  5, 12, ECRUTEAK_GYM, 3
	warp_event  7, 10, ECRUTEAK_GYM, 3
	warp_event  7, 11, ECRUTEAK_GYM, 3
	warp_event  7, 12, ECRUTEAK_GYM, 3
	warp_event  7, 13, ECRUTEAK_GYM, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, EcruteakGymStatue
	bg_event  6, 15, BGEVENT_READ, EcruteakGymStatue

	def_object_events
	object_event  5,  1, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakGymMortyScript, -1
	object_event  2,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSageJeffrey, -1
	object_event  3, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSagePing, -1
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumMartha, -1
	object_event  7,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumGrace, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakGymGuideScript, -1
	object_event  4, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_GYM_GRAMPS
