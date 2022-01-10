	object_const_def
	const FUCHSIAGYM_JANINE
	const FUCHSIAGYM_FUCHSIA_GYM_1
	const FUCHSIAGYM_FUCHSIA_GYM_2
	const FUCHSIAGYM_FUCHSIA_GYM_3
	const FUCHSIAGYM_FUCHSIA_GYM_4
	const FUCHSIAGYM_GYM_GUIDE

FuchsiaGym_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGymJanineScript:
	checkflag ENGINE_SOULBADGE
	iftrue .FightDone
	applymovement FUCHSIAGYM_JANINE, Movement_NinjaSpin
	faceplayer
	opentext
	writetext JanineText_DisappointYou
	waitbutton
	closetext
	winlosstext JanineText_ToughOne, 0
	loadtrainer JANINE, JANINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_LASS_ALICE
	setevent EVENT_BEAT_LASS_LINDA
	setevent EVENT_BEAT_PICNICKER_CINDY
	setevent EVENT_BEAT_CAMPER_BARRY
	variablesprite SPRITE_FUCHSIA_GYM_1, SPRITE_LASS
	variablesprite SPRITE_FUCHSIA_GYM_2, SPRITE_LASS
	variablesprite SPRITE_FUCHSIA_GYM_3, SPRITE_LASS
	variablesprite SPRITE_FUCHSIA_GYM_4, SPRITE_YOUNGSTER
	special LoadUsedSpritesGFX
	opentext
	writetext Text_ReceivedSoulBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
	sjump .AfterBattle
.FightDone:
	faceplayer
	opentext
.AfterBattle:
	checkevent EVENT_GOT_TM06_TOXIC
	iftrue .AfterTM
	writetext JanineText_ToxicSpeech
	promptbutton
	verbosegiveitem TM_TOXIC
	iffalse .AfterTM
	setevent EVENT_GOT_TM06_TOXIC
.AfterTM:
	writetext JanineText_ApplyMyself
	waitbutton
	closetext
	end

LassAliceScript:
	checkevent EVENT_BEAT_LASS_ALICE
	iftrue .AliceUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_1, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_1, SPRITE_LASS
	special LoadUsedSpritesGFX
.AliceUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LASS_ALICE
	iftrue .AliceAfterScript
	writetext LassAliceBeforeText
	waitbutton
	closetext
	winlosstext LassAliceBeatenText, 0
	loadtrainer LASS, ALICE
	startbattle
	iftrue .AliceBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_LASS_ALICE
	end

.AliceBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_1, SPRITE_JANINE
	reloadmapafterbattle
	end

.AliceAfterScript:
	writetext LassAliceAfterText
	waitbutton
	closetext
	end

LassLindaScript:
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue .LindaUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_2, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_2, SPRITE_LASS
	special LoadUsedSpritesGFX
.LindaUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue .LindaAfterScript
	writetext LassLindaBeforeText
	waitbutton
	closetext
	winlosstext LassLindaBeatenText, 0
	loadtrainer LASS, LINDA
	startbattle
	iftrue .LindaBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_LASS_LINDA
	end

.LindaBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_2, SPRITE_JANINE
	reloadmapafterbattle
	end

.LindaAfterScript:
	writetext LassLindaAfterText
	waitbutton
	closetext
	end

PicnickerCindyScript:
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue .CindyUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_3, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_3, SPRITE_LASS
	special LoadUsedSpritesGFX
.CindyUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue .CindyAfterScript
	writetext PicnickerCindyBeforeText
	waitbutton
	closetext
	winlosstext PicnickerCindyBeatenText, 0
	loadtrainer PICNICKER, CINDY
	startbattle
	iftrue .CindyBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_PICNICKER_CINDY
	end

.CindyBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_3, SPRITE_JANINE
	reloadmapafterbattle
	end

.CindyAfterScript:
	writetext PicnickerCindyAfterText
	waitbutton
	closetext
	end

CamperBarryScript:
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue .BarryUnmasked
	applymovement FUCHSIAGYM_FUCHSIA_GYM_4, Movement_NinjaSpin
	faceplayer
	variablesprite SPRITE_FUCHSIA_GYM_4, SPRITE_YOUNGSTER
	special LoadUsedSpritesGFX
.BarryUnmasked:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue .BarryAfterScript
	writetext CamperBarryBeforeText
	waitbutton
	closetext
	winlosstext CamperBarryBeatenText, 0
	loadtrainer CAMPER, BARRY
	startbattle
	iftrue .BarryBecomesJanine
	reloadmapafterbattle
	setevent EVENT_BEAT_CAMPER_BARRY
	end

.BarryBecomesJanine:
	variablesprite SPRITE_FUCHSIA_GYM_4, SPRITE_JANINE
	reloadmapafterbattle
	end

.BarryAfterScript:
	writetext CamperBarryAfterText
	waitbutton
	closetext
	end

FuchsiaGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JANINE
	iftrue .FuchsiaGymGuideWinScript
	writetext FuchsiaGymGuideText
	waitbutton
	closetext
	end

.FuchsiaGymGuideWinScript:
	writetext FuchsiaGymGuideWinText
	waitbutton
	closetext
	end

FuchsiaGymStatue:
	checkflag ENGINE_SOULBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JANINE, JANINE1
	jumpstd GymStatue2Script

Movement_NinjaSpin:
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

JanineText_DisappointYou:
	text "Fufufufu…" ; text "Fufufufu…"

	para "Nechcem ta sklamat" ; para "I'm sorry to dis-"
	line "ale…" ; line "appoint you…"

	para "Len vtipkujem!" ; para "I'm only joking!"

	para "Ja som ta prava!" ; para "I'm the real deal!"

	para "JANINE z FUCHSIA" ; para "JANINE of FUCHSIA"
	line "GYMu, to som ja!" ; line "GYM, that's me!"
	done

JanineText_ToughOne:
	text "JANINE: Si" ; text "JANINE: You're a"
	line "tvrdas. Jednoducho" ; line "tough one. You"
	cont "si vyhral…" ; cont "definitely won…"

	para "Tu mas SOULBADGE." ; para "Here's SOULBADGE."
	line "Vezmi si ho." ; line "Take it."
	done

Text_ReceivedSoulBadge:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "SOULBADGE." ; line "SOULBADGE."
	done

JanineText_ToxicSpeech:
	text "JANINE: Si taky" ; text "JANINE: You're so"
	line "sialk! Mam pre" ; line "tough! I have a"
	cont "teba darcek!" ; cont "special gift!"

	para "Je to TOXIC, mocny" ; para "It's TOXIC, a pow-"
	line "jed postupne" ; line "erful poison that"

	para "vysavajuci HP zo" ; para "steadily saps the"
	line "svojej obete." ; line "victim's HP."
	done

JanineText_ApplyMyself:
	text "JANINE: Budem sa" ; text "JANINE: I'm going"
	line "odteraz ovela viac" ; line "to really apply"

	para "snazit zlepsit" ; para "myself and improve"
	line "svoje schopnosti." ; line "my skills."

	para "Chcem byt lepsia" ; para "I want to become"
	line "ako moj otec a--" ; line "better than both"
	cont "i ty!" ; cont "Father and you!"
	done

LassAliceBeforeText:
	text "Fufufu!" ; text "Fufufu!"

	para "Som JANINE," ; para "I'm JANINE, the"
	line "GYM LEADER!" ; line "GYM LEADER!"

	para "Nie, nie som!" ; para "No, I'm not!" 
	line "Dostala som ta!" ; line "Gotcha, sucker!"
	done

LassAliceBeatenText:
	text "Dostala som ta…" ; text "I had you fooled…"
	done

LassAliceAfterText:
	text "Ako odlisis nas" ; text "How will you dis-"
	line "od pravej GYM" ; line "tinguish our real"
	cont "LEADERky?" ; cont "LEADER?"
	done

LassLindaBeforeText:
	text "Mam ta!" ; text "Fooled you!"
	line "Hahaha!" ; line "Hahaha!"
	done

LassLindaBeatenText:
	text "Ooh… Prehrala som…" ; text "Ooh… I lost…"
	line "Nie si slaby…" ; line "You're not weak…"
	done

LassLindaAfterText:
	text "Tak? No nebol moj" ; text "Well? Wasn't my"
	line "prestroj uzasny?" ; line "disguise perfect?"
	done

PicnickerCindyBeforeText:
	text "Som JANINE!" ; text "I'm JANINE!"

	para "Ako si vedel, ze" ; para "How did you know I"
	line "som ta prava?" ; line "was real?"

	para "Zapasme!" ; para "Let's battle!"
	done

PicnickerCindyBeatenText:
	text "Dokelu!" ; text "Darn it!"
	line "Chcela som vyhrat!" ; line "I wanted to win!"
	done

PicnickerCindyAfterText:
	text "Uz musis byt" ; text "You must be"
	line "unaveny." ; line "getting tired."
	done

CamperBarryBeforeText:
	text "Wahahaha!" ; text "Wahahaha!"

	para "Stav sa!" ; para "You betcha!"
	line "Som JANINE!" ; line "I'm JANINE!"
	done

CamperBarryBeatenText:
	text "Moje prestrojenie" ; text "My disguise was"
	line "bolo skvele! Kelu!" ; line "right on! Dang!"
	done

CamperBarryAfterText:
	text "Hej, ty. Moj" ; text "Hey, you. Was my"
	line "prevlek bol mily," ; line "disguise cute or"
	cont "ze ano?" ; cont "what, huh?"
	done

FuchsiaGymGuideText:
	text "Jo, buduci" ; text "Yo, CHAMP in"
	line "sampion!" ; line "making!"

	para "Ups! Dobre sa" ; para "Whoops! Take a"
	line "okolo seba roz-" ; line "good look around"

	para "hliadni. Vsetci" ; para "you. The trainers"
	line "treneri vypadaju" ; line "all look like the"
	cont "ako JANINE." ; cont "LEADER, JANINE."

	para "Ktory z nich je" ; para "Which of them is"
	line "prava JANINE?" ; line "the real JANINE?"
	done

FuchsiaGymGuideWinText:
	text "Bol to skvely" ; text "That was a great"
	line "zapas, trener" ; line "battle, trainer"
	cont "z JOHTA!" ; cont "from JOHTO!"
	done

FuchsiaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, FUCHSIA_CITY, 3
	warp_event  5, 17, FUCHSIA_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, FuchsiaGymStatue
	bg_event  6, 15, BGEVENT_READ, FuchsiaGymStatue

	def_object_events
	object_event  1, 10, SPRITE_JANINE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymJanineScript, -1
	object_event  5,  7, SPRITE_FUCHSIA_GYM_1, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LassAliceScript, -1
	object_event  5, 11, SPRITE_FUCHSIA_GYM_2, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LassLindaScript, -1
	object_event  9,  4, SPRITE_FUCHSIA_GYM_3, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PicnickerCindyScript, -1
	object_event  4,  2, SPRITE_FUCHSIA_GYM_4, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CamperBarryScript, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymGuideScript, -1
