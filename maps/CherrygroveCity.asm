	object_const_def
	const CHERRYGROVECITY_GRAMPS
	const CHERRYGROVECITY_SILVER
	const CHERRYGROVECITY_TEACHER
	const CHERRYGROVECITY_YOUNGSTER
	const CHERRYGROVECITY_FISHER

CherrygroveCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_CHERRYGROVECITY_NOOP
	scene_script .DummyScene1, SCENE_CHERRYGROVECITY_MEET_RIVAL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	endcallback

CherrygroveCityGuideGent:
	faceplayer
	opentext
	writetext GuideGentIntroText
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	writetext GuideGentTourText1
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow CHERRYGROVECITY_GRAMPS, PLAYER
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement1
	opentext
	writetext GuideGentPokecenterText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement2
	turnobject PLAYER, UP
	opentext
	writetext GuideGentMartText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement3
	turnobject PLAYER, UP
	opentext
	writetext GuideGentRoute30Text
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement4
	turnobject PLAYER, LEFT
	opentext
	writetext GuideGentSeaText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement5
	turnobject PLAYER, UP
	pause 60
	turnobject CHERRYGROVECITY_GRAMPS, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext GuideGentGiftText
	promptbutton
	getstring STRING_BUFFER_4, .mapcardname
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	writetext GotMapCardText
	promptbutton
	writetext GuideGentPokegearText
	waitbutton
	closetext
	stopfollow
	special RestartMapMusic
	turnobject PLAYER, UP
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement6
	playsound SFX_ENTER_DOOR
	disappear CHERRYGROVECITY_GRAMPS
	clearevent EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
	waitsfx
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.mapcardname
	db "MAP CARD@"

.No:
	writetext GuideGentNoText
	waitbutton
	closetext
	end

CherrygroveSilverSceneSouth:
	moveobject CHERRYGROVECITY_SILVER, 39, 7
CherrygroveSilverSceneNorth:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear CHERRYGROVECITY_SILVER
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalWalksToYou
	turnobject PLAYER, RIGHT
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext CherrygroveRivalText_Seen
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouWon
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouLost
	waitbutton
	closetext
.FinishRival:
	playsound SFX_TACKLE
	applymovement PLAYER, CherrygroveCity_RivalPushesYouOutOfTheWay
	turnobject PLAYER, LEFT
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalExitsStageLeft
	disappear CHERRYGROVECITY_SILVER
	setscene SCENE_CHERRYGROVECITY_NOOP
	special HealParty
	playmapmusic
	end

CherrygroveTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_MAP_CARD
	iftrue .HaveMapCard
	writetext CherrygroveTeacherText_NoMapCard
	waitbutton
	closetext
	end

.HaveMapCard:
	writetext CherrygroveTeacherText_HaveMapCard
	waitbutton
	closetext
	end

CherrygroveYoungsterScript:
	faceplayer
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .HavePokedex
	writetext CherrygroveYoungsterText_NoPokedex
	waitbutton
	closetext
	end

.HavePokedex:
	writetext CherrygroveYoungsterText_HavePokedex
	waitbutton
	closetext
	end

MysticWaterGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
	iftrue .After
	writetext MysticWaterGuyTextBefore
	promptbutton
	verbosegiveitem MYSTIC_WATER
	iffalse .Exit
	setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
.After:
	writetext MysticWaterGuyTextAfter
	waitbutton
.Exit:
	closetext
	end

CherrygroveCitySign:
	jumptext CherrygroveCitySignText

GuideGentsHouseSign:
	jumptext GuideGentsHouseSignText

CherrygroveCityPokecenterSign:
	jumpstd PokecenterSignScript

CherrygroveCityMartSign:
	jumpstd MartSignScript

GuideGentMovement1:
	step LEFT
	step LEFT
	step UP
	step LEFT
	turn_head UP
	step_end

GuideGentMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement3:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement4:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	turn_head LEFT
	step_end

GuideGentMovement5:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

GuideGentMovement6:
	step UP
	step UP
	step_end

CherrygroveCity_RivalWalksToYou:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

CherrygroveCity_RivalPushesYouOutOfTheWay:
	big_step DOWN
	turn_head UP
	step_end

CherrygroveCity_UnusedMovementData: ; unreferenced
	step LEFT
	turn_head DOWN
	step_end

CherrygroveCity_RivalExitsStageLeft:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

GuideGentIntroText:
	text "Si zaciatocnik," ; text "You're a rookie"
	line "ze to je tak?" ; line "trainer, aren't"
	cont "Je mi to jasne!" ; cont "you? I can tell!"

	para "Je to OK! Kazdy" ; para "That's OK! Every-"
	line "bol raz zaciatoc-" ; line "one is a rookie"
	cont "nik!" ; cont "at some point!"

	para "Ak chces, mozem" ; para "If you'd like, I"
	line "ta naucit zopar" ; line "can teach you a"
	cont "veci." ; cont "few things."
	done

GuideGentTourText1:
	text "OK, teda!" ; text "OK, then!"
	line "Nasleduj ma!" ; line "Follow me!"
	done

GuideGentPokecenterText:
	text "Toto je #MON" ; text "This is a #MON"
	line "CENTER. Tu ti vy-" ; line "CENTER. They heal"

	para "liecia #MONov." ; para "your #MON in no"
	;line "time at all." ; line "time at all."

	para "Budes sem chodit" ; para "You'll be relying"
	line "casto, tak je" ; line "on them a lot, so"

	para "dobre sa s nimi" ; para "you better learn"
	line "oboznamit." ; line "about them."
	done

GuideGentMartText:
	text "Toto je #MON" ; text "This is a #MON"
	line "MART." ; line "MART."

	para "Predavaju BALLS" ; para "They sell BALLS"
	line "na chytanie divych" ; line "for catching wild"

	para "#MON a ine" ; para "#MON and other"
	line "uzitocne veci." ; line "useful items."
	done

GuideGentRoute30Text:
	text "ROUTE 30 je cesta" ; text "ROUTE 30 is out"
	line "prec." ; line "this way."

	para "Treneri tu" ; para "Trainers will be"
	line "zapasia so svojimi" ; line "battling their"

	para "cennymi #MONmi." ; para "prized #MON"
	;line "there." ; line "there."
	done

GuideGentSeaText:
	text "Toto je more," ; text "This is the sea,"
	line "ako vidis." ; line "as you can see."

	para "Niektori #MONi" ; para "Some #MON are"
	line "ziju iba vo vode." ; line "found only in"
	;cont "water." ; cont "water."
	done

GuideGentGiftText:
	text "Hla…" ; text "Here…"

	para "Toto je moj dom!" ; para "It's my house!"
	line "Dakujem ti za" ; line "Thanks for your"
	cont "spolocnost." ; cont "company."

	para "Dovol mi dat ti" ; para "Let me give you a"
	line "maly darcek." ; line "small gift."
	done

GotMapCardText:
	text "<PLAYER>ov #GEAR" ; text "<PLAYER>'s #GEAR"
	line "ma teraz MAPU!" ; line "now has a MAP!"
	done

GuideGentPokegearText:
	text "#GEAR je" ; text "#GEAR becomes"
	line "uzitocnejsi, ked" ; line "more useful as you"
	cont "pridas CARDS." ; cont "add CARDS."

	para "Zelam ti na tvojom" ; para "I wish you luck on"
	line "dobrodruzstve vela" ; line "your journey!"
	cont "stastia!"
	done

GuideGentNoText:
	text "Oh… Je to nieco," ; text "Oh… It's something"
	line "co rad robim…" ; line "I enjoy doing…"

	para "Fajn. Prid ma" ; para "Fine. Come see me"
	line "pozriet, ked budes" ; line "when you like."
	cont "chciet."
	done

CherrygroveRivalText_Seen:
	text "<……> <……> <……>"

	para "Dostal si #MONa" ; para "You got a #MON"
	line "v LABAKU." ; line "at the LAB."

	para "Aka skoda." ; para "What a waste."
	line "Slaboch ako ty." ; line "A wimp like you."

	para "<……> <……> <……>"

	para "Nechapes, co ti" ; para "Don't you get what"
	line "hovorim?" ; line "I'm saying?"

	para "Aj ja mam dobreho" ; para "Well, I too, have"
	line "#MON." ; line "a good #MON."

	para "Ukazem ti, co" ; para "I'll show you"
	line "tym myslim!" ; line "what I mean!"
	done

SilverCherrygroveWinText:
	text "Hm. Si stastny," ; text "Humph. Are you"
	line "ze si vyhral?" ; line "happy you won?"
	done

CherrygroveRivalText_YouLost:
	text "<……> <……> <……>"

	para "Volam sa ???." ; para "My name's ???."

	para "Stanem sa najlep-" ; para "I'm going to be"
	line "sim trenerom" ; line "the world's great-"
	cont "#MONov na svete." ; cont "est #MON"
	;cont "trainer." ; cont "trainer."
	done

SilverCherrygroveLossText:
	text "Hm. To bola" ; text "Humph. That was a"
	line "strata casu." ; line "waste of time."
	done

CherrygroveRivalText_YouWon:
	text "<……> <……> <……>"

	para "Volam sa ???." ; para "My name's ???."

	para "Stanem sa najlep-" ; para "I'm going to be"
	line "sim trenerom" ; line "the world's great-"
	cont "#MONov na svete." ; cont "est #MON"
	;cont "trainer." ; cont "trainer."
	done

CherrygroveTeacherText_NoMapCard:
	text "Rozpraval si sa so" ; text "Did you talk to"
	line "starym panom pri" ; line "the old man by the"
	cont "#MON CENTER?" ; cont "#MON CENTER?"

	para "Da ti MAPU" ; para "He'll put a MAP of"
	line "JOHTA na tvoj" ; line "JOHTO on your"
	cont "#GEAR." ; cont "#GEAR."
	done

CherrygroveTeacherText_HaveMapCard:
	text "Ak mas so sebou" ; text "When you're with"
	line "#MON, chodit kde-" ; line "#MON, going"
	cont "kolvek je zabava." ; cont "anywhere is fun."
	done

CherrygroveYoungsterText_NoPokedex:
	text "MR.#MONov dom" ; text "MR.#MON's house"
	line "je este troska" ; line "is still farther"
	cont "dalej." ; cont "up ahead."
	done

CherrygroveYoungsterText_HavePokedex:
	text "Zapasil som s tre-" ; text "I battled the"
	line "nermi na" ; line "trainers on the"
	cont "ceste." ; cont "road."

	para "Moji #MONi" ; para "My #MON lost."
	line "prehrali. Musim" ; line "They're a mess! I" 

	para "ich vziat do" ; para "must take them to"
	line "#MON CENTER." ; line "a #MON CENTER."
	done

MysticWaterGuyTextBefore:
	text "#MON, ktoreho som" ; text "A #MON I caught"
	line "chytil, mal pred-" ; line "had an item."
	cont "met."

	para "Myslim, ze to je" ; para "I think it's"
	line "MYSTIC WATER." ; line "MYSTIC WATER."

	para "Nepotrebujem to," ; para "I don't need it,"
	line "chces to?" ; line "so do you want it?"
	done

MysticWaterGuyTextAfter:
	text "Spat k rybarceniu!" ; text "Back to fishing"
	;line "for me, then." ; line "for me, then."
	done

CherrygroveCitySignText:
	text "CHERRYGROVE CITY" ; text "CHERRYGROVE CITY"

	para "Mesto krasnych" ; para "The City of Cute,"
	line "vonavych kvetin" ; line "Fragrant Flowers"
	done

GuideGentsHouseSignText:
	text "SPRIEVODCOV DOM" ; text "GUIDE GENT'S HOUSE"
	done

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, CHERRYGROVE_MART, 2
	warp_event 29,  3, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 17,  7, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 25,  9, GUIDE_GENTS_HOUSE, 1
	warp_event 31, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1

	def_coord_events
	coord_event 33,  6, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneNorth
	coord_event 33,  7, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneSouth

	def_bg_events
	bg_event 30,  8, BGEVENT_READ, CherrygroveCitySign
	bg_event 23,  9, BGEVENT_READ, GuideGentsHouseSign
	bg_event 24,  3, BGEVENT_READ, CherrygroveCityMartSign
	bg_event 30,  3, BGEVENT_READ, CherrygroveCityPokecenterSign

	def_object_events
	object_event 32,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityGuideGent, EVENT_GUIDE_GENT_IN_HIS_HOUSE
	object_event 39,  6, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_CHERRYGROVE_CITY
	object_event 27, 12, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event 23,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	object_event  7, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy, -1
