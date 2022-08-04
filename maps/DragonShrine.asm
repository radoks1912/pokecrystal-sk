	object_const_def
	const DRAGONSHRINE_ELDER1
	const DRAGONSHRINE_ELDER2
	const DRAGONSHRINE_ELDER3
	const DRAGONSHRINE_CLAIR

DragonShrine_MapScripts:
	def_scene_scripts
	scene_script .DragonShrineTest, SCENE_DRAGONSHRINE_TAKE_TEST
	scene_script .DummyScene,       SCENE_DRAGONSHRINE_NOOP

	def_callbacks

.DragonShrineTest:
	sdefer .DragonShrineTestScript
	end

.DummyScene:
	end

.DragonShrineTestScript:
	applymovement PLAYER, DragonShrinePlayerWalkInMovement
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderStepDownMovement
	opentext
	writetext DragonShrineElderGreetingText
	promptbutton
.Question1:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	writetext DragonShrineQuestion1Text
	promptbutton
	loadmenu DragonShrineQuestion1_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer
	end

.Question2:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	writetext DragonShrineQuestion2Text
	promptbutton
	loadmenu DragonShrineQuestion2_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer
.Question3:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	writetext DragonShrineQuestion3Text
	promptbutton
	loadmenu DragonShrineQuestion3_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .RightAnswer
.Question4:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	writetext DragonShrineQuestion4Text
	promptbutton
	loadmenu DragonShrineQuestion4_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer
.Question5:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	writetext DragonShrineQuestion5Text
	promptbutton
	loadmenu DragonShrineQuestion5_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer
.RightAnswer:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .PassedTheTest
	writetext DragonShrineRightAnswerText
	promptbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question2
.WrongAnswer:
	closetext
	turnobject DRAGONSHRINE_ELDER1, LEFT
	opentext
	writetext DragonShrineWrongAnswerText1
	waitbutton
	closetext
	turnobject DRAGONSHRINE_ELDER1, DOWN
	opentext
	writetext DragonShrineWrongAnswerText2
	waitbutton
	closetext
	setevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question1
.PassedTheTest:
	writetext DragonShrinePassedTestText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_CLAIR
	appear DRAGONSHRINE_CLAIR
	waitsfx
	turnobject PLAYER, DOWN
	pause 30
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkInMovement
	turnobject DRAGONSHRINE_CLAIR, RIGHT
	turnobject PLAYER, LEFT
	turnobject DRAGONSHRINE_ELDER1, LEFT
	opentext
	writetext DragonShrineClairYouPassedText
	waitbutton
	closetext
	special FadeOutMusic
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairBigStepLeftMovement
	opentext
	writetext DragonShrineClairThatCantBeText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairSlowStepLeftMovement
	opentext
	writetext DragonShrineClairYoureLyingText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkToClairMovement
	turnobject DRAGONSHRINE_CLAIR, UP
	opentext
	writetext DragonShrineMustIInformLanceText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, DRAGONSHRINE_CLAIR, 15
	opentext
	writetext DragonShrineIUnderstandText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairTwoSlowStepsRightMovement
	opentext
	writetext DragonShrineHereRisingBadgeText
	waitbutton
	setflag ENGINE_RISINGBADGE
	playsound SFX_GET_BADGE
	waitsfx
	special RestartMapMusic
	specialphonecall SPECIALCALL_MASTERBALL
	setscene SCENE_DRAGONSHRINE_NOOP
	setmapscene DRAGONS_DEN_B1F, SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM
	writetext DragonShrinePlayerReceivedRisingBadgeText
	promptbutton
	writetext DragonShrineRisingBadgeExplanationText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway1Movement
	turnobject DRAGONSHRINE_CLAIR, UP
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway2Movement
	turnobject PLAYER, UP
	opentext
	writetext DragonShrineElderScoldsClairText
	waitbutton
	closetext
	opentext
	writetext DragonShrineSpeechlessText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkOutMovement
	playsound SFX_ENTER_DOOR
	disappear DRAGONSHRINE_CLAIR
	waitsfx
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

DragonShrineElder1Script:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .DontGiveDratiniYet
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	iftrue .ReceivedDratini
	checkevent EVENT_GOT_DRATINI
	iffalse .GiveDratini
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .BeatRivalInMtMoon
	writetext DragonShrineClairsGrandfatherText
	waitbutton
	closetext
	end

.GiveDratini:
	writetext DragonShrineTakeThisDratiniText
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	writetext DragonShrinePlayerReceivedDratiniText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke DRATINI, 15
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	special GiveDratini
	setevent EVENT_GOT_DRATINI
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	writetext DragonShrineSymbolicDragonText
	waitbutton
	closetext
	end

.PartyFull:
	writetext DragonShrinePartyFullText
	waitbutton
	closetext
	end

.BeatRivalInMtMoon:
	writetext DragonShrineSilverIsInTrainingText
	waitbutton
	closetext
	end

.DontGiveDratiniYet:
	writetext DragonShrineComeAgainText
	waitbutton
	closetext
	end

.ReceivedDratini:
	writetext DragonShrineSymbolicDragonText
	waitbutton
	closetext
	end

DragonShrineElder2Script:
	faceplayer
	opentext
	writetext DragonShrineElder2Text
	waitbutton
	closetext
	end

DragonShrineElder3Script:
	faceplayer
	opentext
	writetext DragonShrineElder3Text
	waitbutton
	closetext
	end

DragonShrineQuestion1_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Kolega@" ; db "Pal@"
	db "Podriadeny@" ; db "Underling@"
	db "Kamarat@" ; db "Friend@"

DragonShrineQuestion2_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Strategia@" ; db "Strategy@"
	db "Vychova@" ; db "Raising@"
	db "Podvod@" ; db "Cheating@"

DragonShrineQuestion3_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Slabosi@" ; db "Weak person@"
	db "Silaci@" ; db "Tough person@"
	db "Akykolvek@" ; db "Anybody@"

DragonShrineQuestion4_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Laska@" ; db "Love@"
	db "Nasilie@" ; db "Violence@"
	db "Znalost@" ; db "Knowledge@"

DragonShrineQuestion5_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Silny@" ; db "Tough@"
	db "Obaja@" ; db "Both@"
	db "Slaby@" ; db "Weak@"

DragonShrinePlayerWalkInMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

DragonShrineElderStepDownMovement:
	slow_step DOWN
	step_end

DragonShrineElderWalkToClairMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	turn_head DOWN
	step_end

DragonShrineElderWalkAway1Movement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

DragonShrineElderWalkAway2Movement:
	slow_step RIGHT
	turn_head DOWN
	step_end

DragonShrineClairWalkInMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

DragonShrineClairBigStepLeftMovement:
	fix_facing
	big_step LEFT
	step_end

DragonShrineClairSlowStepLeftMovement:
	slow_step LEFT
	remove_fixed_facing
	step_end

DragonShrineClairTwoSlowStepsRightMovement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

DragonShrineClairWalkOutMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

DragonShrineElderGreetingText:
	text "Hm… Som rad, ze" ; text "Hm… Good to see"
	line "ta tu vidim." ; line "you here."

	para "Nemusis vysvetlo-" ; para "No need to explain"
	line "vat, preco si tu." ; line "why you came."

	para "Poslala ta CLAIR," ; para "CLAIR sent you"
	line "vsak?" ; line "here, didn't she?"

	para "Ta zena je teda" ; para "That girl is a"
	line "nezvladnutelna…" ; line "handful…"

	para "Prepac, ale musim" ; para "I am sorry, but I"
	line "ta otestovat." ; line "must test you."

	para "Neboj sa, je to" ; para "Not to worry, you"
	line "iba zopar otazok." ; line "are to answer only"
	;cont "a few questions." ; cont "a few questions."

	para "Pripraveny?" ; para "Ready?"
	done

DragonShrineQuestion1Text:
	text "Co je pre teba" ; text "What are #MON"
	line "#MON?" ; line "to you?"
	done

DragonShrineQuestion2Text:
	text "Co ti pomaha vy-" ; text "What helps you to"
	line "hrat zapasy?" ; line "win battles?"
	done

DragonShrineQuestion3Text:
	text "S akymi trenermi" ; text "What kind of"
	line "by si si prial" ; line "trainer do you"
	cont "zapasit?" ; cont "wish to battle?"
	done

DragonShrineQuestion4Text:
	text "Co je najdolezi-" ; text "What is most"
	line "tejsie pri vychove" ; line "important for"
	cont "#MON?" ; cont "raising #MON?"
	done

DragonShrineQuestion5Text:
	text "Silny #MON." ; text "Strong #MON."
	line "Slaby #MON." ; line "Weak #MON."

	para "Ktory je dolezi-" ; para "Which is more"
	line "tejsi?" ; line "important?"
	done

DragonShrinePassedTestText:
	text "Hm… Vidim…" ; text "Hm… I see…"

	para "Velmi ti zalezi na" ; para "You care deeply"
	line "#MONoch." ; line "for #MON."

	para "Chvalihodne." ; para "Very commendable."

	para "Presvedcenie je" ; para "That conviction is"
	line "najdolezitejsie!" ; line "what is important!"

	para "<PLAYER>, nestrat" ; para "<PLAYER>, don't"
	line "tu vieru." ; line "lose that belief."

	para "Pomoze ti neskor v" ; para "It will see you"
	line "#MON LEAGUE." ; line "through at the"
	;cont "." ; cont "#MON LEAGUE."
	done

DragonShrineMustIInformLanceText:
	text "CLAIR!" ; text "CLAIR!"

	para "Tento synak je" ; para "This child is"
	line "dokonaly, v sikov-" ; line "impeccable, in"
	cont "nosti aj duchovne!" ; cont "skill and spirit!"

	para "Priznaj porazku a" ; para "Admit defeat and"
	line "udel RISINGBADGE!" ; line "confer the RISING-"
	;cont "BADGE!" ; cont "BADGE!"

	para "…Alebo to mam o-" ; para "…Or must I inform"
	line "znamit LANCEovi?" ; line "LANCE of this?"
	done

DragonShrineElderScoldsClairText:
	text "CLAIR…" ; text "CLAIR…"

	para "Zamysli sa nad" ; para "Reflect upon what"
	line "tym, co ti chyba," ; line "it is that you"

	para "co tento synak" ; para "lack and this"
	line "ma." ; line "child has."
	done

DragonShrineComeAgainText:
	text "Prid znova, ak" ; text "Come again, if you"
	line "si zelas." ; line "so desire."
	done

DragonShrineTakeThisDratiniText:
	text "Hm… Som rad, ze" ; text "Hm… Good to see"
	line "ta tu vidim." ; line "you here."

	para "Tvoj prichod je" ; para "Your arrival is"
	line "skvely." ; line "most fortunate."

	para "Nieco pre teba" ; para "I have something"
	line "mam." ; line "for you."

	para "Vezmi si DRATINIho" ; para "Take this DRATINI"
	line "ako dokaz, ze" ; line "as proof that I"

	para "si uznavany" ; para "have recognized"
	line "trener." ; line "your worth."
	done

DragonShrinePlayerReceivedDratiniText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "DRATINI!" ; line "DRATINI!"
	done

DragonShrinePartyFullText:
	text "Hm? Mas plnu" ; text "Hm? Your #MON"
	line "partu." ; line "party is full."
	done

DragonShrineSymbolicDragonText:
	text "Draci #MONi su" ; text "Dragon #MON are"
	line "symbolom naseho" ; line "symbolic of our"
	cont "klanu." ; cont "clan."

	para "Ukazal si, ze ti" ; para "You have shown"
	line "moze byt jeden" ; line "that you can be"

	para "drak zdeleny." ; para "entrusted with"
	;line "one." ; line "one."
	done

DragonShrineClairsGrandfatherText:
	text "CLAIR sa od teba" ; text "CLAIR appears to"
	line "dostala neocenite-" ; line "have learned an"

	para "lnu lekciu." ; para "invaluable lesson"
	;line "from you." ; line "from you."

	para "Dakujem ti ako jej" ; para "I thank you as her"
	line "stary otec." ; line "grandfather."
	done

DragonShrineSilverIsInTrainingText:
	text "Chlapec v tvojom" ; text "A boy close to"
	line "veku tu taktiez" ; line "your age is in"
	cont "trenuje." ; cont "training here."

	para "Je ako CLAIR, ked" ; para "He is much like"
	line "bola mladsia." ; line "CLAIR when she was"

	para "Je to trochu" ; para "younger. It is a"
	line "znepokojujuce…" ; line "little worrisome…"
	done

DragonShrineWrongAnswerText1:
	text "Hah? Nepocul som" ; text "Hah? I didn't"
	line "ta dobre…" ; line "quite catch that…"
	done

DragonShrineWrongAnswerText2:
	text "Co si to" ; text "What was it you"
	line "hovoril?" ; line "said?"
	done

DragonShrineRightAnswerText:
	text "Och, rozumiem…" ; text "Oh, I understand…"
	done

DragonShrineElder2Text:
	text "Uz je to nejaka" ; text "It's been quite"
	line "chvila, co trener" ; line "some time since a"

	para "dostal od naseho" ; para "trainer has gained"
	line "MASTERa suhlas." ; line "our MASTER's rare"
	;cont "approval." ; cont "approval."

	para "V podstate nie od" ; para "In fact, not since"
	line "Mastera LANCEa." ; line "Master LANCE."
	done

DragonShrineElder3Text:
	text "Poznas mladeho" ; text "You know young"
	line "Mastera LANCEa?" ; line "Master LANCE?"

	para "Vypada uplne ro-" ; para "He looks so much"
	line "nako ako nas" ; line "like our MASTER"
	cont "MASTER zamlada." ; cont "did in his youth."

	para "Maju to v" ; para "It's in their"
	line "krvi." ; line "blood."
	done

DragonShrineClairYouPassedText:
	text "Tak ako to islo?" ; text "So how did it go?"

	para "Naco sa ta vlastne" ; para "I guess there's no"
	line "pytam." ; line "point in asking."

	para "Nepresiel si?" ; para "You did fail?"

	para "<……><……><……><……><……><……>"

	para "…Coze? Presiel?" ; para "…What? You passed?"
	done

DragonShrineClairThatCantBeText:
	text "Nemozne!" ; text "That can't be!"
	done

DragonShrineClairYoureLyingText:
	text "Klames!" ; text "You're lying!"

	para "Ani ja som este" ; para "Even I haven't"
	line "nedostala suhlas!" ; line "been approved!"
	done

DragonShrineIUnderstandText:
	text "Ro-rozumiem…" ; text "I-I understand…"
	done

DragonShrineHereRisingBadgeText:
	text "Prosim, tu je" ; text "Here, this is the"
	line "RISINGBADGE…" ; line "RISINGBADGE…"

	para "Rychlo! Vezmi ho!" ; para "Hurry up! Take it!"
	done

DragonShrinePlayerReceivedRisingBadgeText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "RISINGBADGE."
	done

DragonShrineRisingBadgeExplanationText:
	text "RISINGBADGE umozni" ; text "RISINGBADGE will"
	line "tvojim #MON" ; line "enable your"

	para "pouzivat utok" ; para "#MON to use the"
	line "na vystup na" ; line "move for climbing"
	cont "vodopady." ; cont "waterfalls."

	para "Vsetci #MON" ; para "Also, all #MON"
	line "ta budu uznavat" ; line "will recognize you"

	para "ako trenera a po-" ; para "as a trainer and"
	line "sluchnu kazdy tvoj" ; line "obey your every"

	para "prikaz bez" ; para "command without"
	line "otazok." ; line "question."
	done

DragonShrineSpeechlessText:
	text "<……><……><……><……><……><……>"
	done

DragonShrine_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, DRAGONS_DEN_B1F, 2
	warp_event  5,  9, DRAGONS_DEN_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder1Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  2,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder2Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder3Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  4,  8, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGON_SHRINE_CLAIR
