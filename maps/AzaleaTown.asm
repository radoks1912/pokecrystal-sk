	object_const_def
	const AZALEATOWN_AZALEA_ROCKET1
	const AZALEATOWN_GRAMPS
	const AZALEATOWN_TEACHER
	const AZALEATOWN_YOUNGSTER
	const AZALEATOWN_SLOWPOKE1
	const AZALEATOWN_SLOWPOKE2
	const AZALEATOWN_SLOWPOKE3
	const AZALEATOWN_SLOWPOKE4
	const AZALEATOWN_FRUIT_TREE
	const AZALEATOWN_SILVER
	const AZALEATOWN_AZALEA_ROCKET3
	const AZALEATOWN_KURT_OUTSIDE

AzaleaTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_AZALEATOWN_NOTHING
	scene_script .DummyScene1 ; SCENE_AZALEATOWN_RIVAL_BATTLE
	scene_script .DummyScene2 ; SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.Flypoint:
	setflag ENGINE_FLYPOINT_AZALEA
	endcallback

AzaleaTownRivalBattleScene1:
	moveobject AZALEATOWN_SILVER, 11, 11
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear AZALEATOWN_SILVER
	applymovement AZALEATOWN_SILVER, AzaleaTownRivalBattleApproachMovement1
	turnobject PLAYER, DOWN
	sjump AzaleaTownRivalBattleScript

AzaleaTownRivalBattleScene2:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear AZALEATOWN_SILVER
	applymovement AZALEATOWN_SILVER, AzaleaTownRivalBattleApproachMovement2
	turnobject PLAYER, UP
AzaleaTownRivalBattleScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext AzaleaTownRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_AZALEA_TOWN
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_SILVER
	loadtrainer RIVAL1, RIVAL1_2_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Totodile:
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_SILVER
	loadtrainer RIVAL1, RIVAL1_2_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Chikorita:
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_SILVER
	loadtrainer RIVAL1, RIVAL1_2_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext AzaleaTownRivalAfterText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement AZALEATOWN_SILVER, AzaleaTownRivalBattleExitMovement
	playsound SFX_EXIT_BUILDING
	disappear AZALEATOWN_SILVER
	setscene SCENE_AZALEATOWN_NOTHING
	waitsfx
	playmapmusic
	end

AzaleaTownRocket1Script:
	jumptextfaceplayer AzaleaTownRocket1Text

AzaleaTownRocket2Script:
	jumptextfaceplayer AzaleaTownRocket2Text

AzaleaTownGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .ClearedWell
	writetext AzaleaTownGrampsTextBefore
	waitbutton
	closetext
	end

.ClearedWell:
	writetext AzaleaTownGrampsTextAfter
	waitbutton
	closetext
	end

AzaleaTownTeacherScript:
	jumptextfaceplayer AzaleaTownTeacherText

AzaleaTownYoungsterScript:
	jumptextfaceplayer AzaleaTownYoungsterText

AzaleaTownSlowpokeScript:
	opentext
	writetext AzaleaTownSlowpokeText1
	pause 60
	writetext AzaleaTownSlowpokeText2
	cry SLOWPOKE
	waitbutton
	closetext
	end

UnusedWoosterScript: ; unreferenced
	faceplayer
	opentext
	writetext WoosterText
	cry QUAGSIRE
	waitbutton
	closetext
	end

AzaleaTownCelebiScene:
	applymovement PLAYER, AzaleaTownPlayerLeavesKurtsHouseMovement
	opentext
	writetext AzaleaTownKurtText1
	promptbutton
	turnobject AZALEATOWN_KURT_OUTSIDE, RIGHT
	writetext AzaleaTownKurtText2
	promptbutton
	writetext AzaleaTownKurtText3
	waitbutton
	verbosegiveitem GS_BALL
	turnobject AZALEATOWN_KURT_OUTSIDE, LEFT
	setflag ENGINE_FOREST_IS_RESTLESS
	clearevent EVENT_ILEX_FOREST_LASS
	setevent EVENT_ROUTE_34_ILEX_FOREST_GATE_LASS
	setscene SCENE_AZALEATOWN_NOTHING
	closetext
	end

AzaleaTownKurtScript:
	faceplayer
	opentext
	writetext AzaleaTownKurtText3
	waitbutton
	turnobject AZALEATOWN_KURT_OUTSIDE, LEFT
	closetext
	end

AzaleaTownSign:
	jumptext AzaleaTownSignText

KurtsHouseSign:
	jumptext KurtsHouseSignText

AzaleaGymSign:
	jumptext AzaleaGymSignText

SlowpokeWellSign:
	jumptext SlowpokeWellSignText

CharcoalKilnSign:
	jumptext CharcoalKilnSignText

AzaleaTownIlextForestSign:
	jumptext AzaleaTownIlexForestSignText

AzaleaTownPokecenterSign:
	jumpstd PokecenterSignScript

AzaleaTownMartSign:
	jumpstd MartSignScript

WhiteApricornTree:
	fruittree FRUITTREE_AZALEA_TOWN

AzaleaTownHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_AZALEA_TOWN_HIDDEN_FULL_HEAL

AzaleaTownRivalBattleApproachMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

AzaleaTownRivalBattleApproachMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AzaleaTownRivalBattleExitMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end

AzaleaTownPlayerLeavesKurtsHouseMovement:
	step LEFT
	step LEFT
	step UP
	turn_head LEFT
	step_end

AzaleaTownRivalBeforeText:
	text "…Povedz mi" ; text "…Tell me some-"
	line "nieco." ; line "thing."

	para "Je pravda, ze sa" ; para "Is it true that"
	line "TEAM ROCKET" ; line "TEAM ROCKET has"
	cont "vratil?" ; cont "returned?"

	para "Coze? Ty si ich" ; para "What? You beat"
	line "porazil? No to" ; line "them? Hah! Quit"
	cont "urcite." ; cont "lying."

	para "Myslis to vazne?" ; para "You're not joking?"
	line "Tak teda ukaz," ; line "Then let's see how"
	cont "aky si dobry." ; cont "good you are."
	done

AzaleaTownRivalWinText:
	text "… Hmmm! Zbytocni" ; text "… Humph! Useless"
	line "#MONi!" ; line "#MON!"

	para "Pocuvaj ma, vyhral" ; para "Listen, you. You"
	line "si, len preto ze" ; line "only won because"

	para "moji #MONi" ; para "my #MON were"
	line "su slabi." ; line "weak."
	done

AzaleaTownRivalAfterText:
	text "Neznasam slabochov" ; text "I hate the weak."

	para "#MONi, treneri." ; para "#MON, trainers."
	line "Je jedno koho," ; line "It doesn't matter"
	cont "alebo co." ; cont "who or what."

	para "Stanem sa silnym" ; para "I'm going to be"
	line "a odrovnam" ; line "strong and wipe"
	cont "slabochov." ; cont "out the weak."

	para "To plati i pre" ; para "That goes for TEAM"
	line "TEAM ROCKET." ; line "ROCKET too."

	para "Tvaria sa silni," ; para "They act big and"
	line "ked su v skupine." ; line "tough in a group."

	para "Ale ako jednotliv-" ; para "But get them"
	line "ci su slabi." ; line "alone, and they're"
	;cont "weak." ; cont "weak."

	para "Neznasam ich." ; para "I hate them all."

	para "Neplet sa mi do" ; para "You stay out of my"
	line "cesty. Slaboch ako" ; line "way. A weakling"

	para "ty ma iba" ; para "like you is only a"
	line "rozptyli." ; line "distraction."
	done

AzaleaTownRivalLossText:
	text "…Hmmm! Vedel som," ; text "…Humph! I knew"
	line "ze klames." ;  line "you were lying."
	done

AzaleaTownRocket1Text:
	text "Nie je to bezpec-" ; text "It's unsafe to go"
	line "ne tam ist, preto" ; line "in there, so I'm"
	cont "tu strazim." ; cont "standing guard."

	para "No nie som dobry" ; para "Aren't I a good"
	line "samaritan?" ; line "Samaritan?"
	done

AzaleaTownRocket2Text:
	text "Pocul si o" ; text "Do you know about"
	line "SLOWPOKETAILoch?" ; line "SLOWPOKETAIL? I"
	cont "Vraj su chutne!" ; cont "heard it's tasty!"

	para "Mas radost, ze to" ; para "Aren't you glad I"
	line "teraz vies?" ; line "told you that?"
	done

AzaleaTownGrampsTextBefore:
	text "SLOWPOKEovia sa" ; text "The SLOWPOKE have"
	line "vytratili z" ; line "disappeared from"
	cont "mesta…" ; cont "town…"

	para "Pocul som ze ich" ; para "I heard their"
	line "CHVOSTY sa niekde" ; line "TAILS are being"
	cont "i predavaju." ; cont "sold somewhere."
	done

AzaleaTownGrampsTextAfter:
	text "SLOWPOKEovia sa" ; text "The SLOWPOKE have"
	line "vratili." ; line "returned."

	para "Ako ich tak poz-" ; para "Knowing them, they"
	line "nam, urcite sa" ; line "could've just been"

	para "niekde iba" ; para "goofing off some-"
	line "flakali." ; line "where."
	done

AzaleaTownTeacherText:
	text "Prisiel si kvoli" ; text "Did you come to"
	line "KURTovi, aby ti" ; line "get KURT to make"
	cont "spravil BALLS?" ; cont "some BALLS?"

	para "Vela ludi je tu" ; para "A lot of people do"
	line "prave preto." ; line "just that."
	done

AzaleaTownYoungsterText:
	text "Prejdi cez AZALEA" ; text "Cut through AZALEA"
	line "a dostanes sa do" ; line "and you'll be in"
	cont "ILEX FOREST." ; cont "ILEX FOREST."

	para "Ale kvoli tymto" ; para "But these skinny"
	line "tenkym stromom" ; line "trees make it"

	para "sa neda dostat" ; para "impossible to get"
	line "dalej." ; line "through."

	para "CHARCOAL MANov" ; para "The CHARCOAL MAN's"
	line "#MON vie pouzit" ; line "#MON can CUT"
	cont "CUT na stromy." ; cont "down trees."
	done

AzaleaTownSlowpokeText1:
	text "SLOWPOKE: …" ; text "SLOWPOKE: …"

	para "<……> <……> <……>" ; para "<……> <……> <……>"
	done

AzaleaTownSlowpokeText2:
	text "<……> <……>Uaaa?" ; text "<……> <……>Yawn?"
	done

WoosterText:
	text "WOOSTER: Gugyoo…" ; text "WOOSTER: Gugyoo…"
	done

AzaleaTownKurtText1:
	text "ILEX FOREST je" ; text "ILEX FOREST is"
	line "strasidelny!" ; line "restless!"

	para "Co sa deje?" ; para "What is going on?"
	done

AzaleaTownKurtText2:
	text "<PLAYER>, tu" ; text "<PLAYER>, here's"
	line "mas spat GS BALL!" ; line "your GS BALL back!"
	done

AzaleaTownKurtText3:
	text "Mozes ist zistit," ; text "Could you go see"
	line "preco ILEX FOREST" ; line "why ILEX FOREST is"
	cont "je tak nepokojny?" ; cont "so restless?"
	done

AzaleaTownSignText:
	text "AZALEA TOWN" ; text "AZALEA TOWN"
	line "mesto, kde ludia a" ; line "Where People and"

	para "#MON ziju v" ; para "#MON Live in"
	line "spolocnej harmonii" ; line "Happy Harmony"
	done

KurtsHouseSignText:
	text "KURTOV DOM" ; text "KURT'S HOUSE"
	done

AzaleaGymSignText:
	text "AZALEA TOWN" ; text "AZALEA TOWN"
	line "#MON GYM" ; line "#MON GYM"
	cont "LEADER: BUGSY" ; cont "LEADER: BUGSY"

	para "Chodiaca hmyzia" ; para "The Walking"
	line "#MON" ; line "Bug #MON"
	cont "Encyclopedia" ; cont "Encyclopedia"
	done

SlowpokeWellSignText:
	text "SLOWPOKEOVA STUDNA" ; text "SLOWPOKE WELL"

	para "Taktiez znama ako" ; para "Also known as the"
	line "RAINMAKER STUDNA." ; line "RAINMAKER WELL."

	para "Domaci veria, ze" ; para "Locals believe"
	line "SLOWPOKEove ziv-" ; line "that a SLOWPOKE's"
	cont "nutie prinesie" ; cont "yawn summons rain."

	para "dazd. Zaznamy tvr-" ; para "Records show that"
	line "dia, ze jedno tak" ; line "a SLOWPOKE's yawn"

	para "ukoncilo sucho" ; para "ended a drought"
	line "pred 400 rokmi." ; line "400 years ago."
	done

CharcoalKilnSignText:
	text "CHARCOAL VYHNA" ; text "CHARCOAL KILN"
	done

AzaleaTownIlexForestSignText:
	text "ILEX FOREST" ; text "ILEX FOREST"

	para "Vstupte cez" ; para "Enter through the"
	line "branu." ; line "gate."
	done

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  9, AZALEA_POKECENTER_1F, 1
	warp_event 21, 13, CHARCOAL_KILN, 1
	warp_event 21,  5, AZALEA_MART, 2
	warp_event  9,  5, KURTS_HOUSE, 1
	warp_event 10, 15, AZALEA_GYM, 1
	warp_event 31,  7, SLOWPOKE_WELL_B1F, 1
	warp_event  2, 10, ILEX_FOREST_AZALEA_GATE, 3
	warp_event  2, 11, ILEX_FOREST_AZALEA_GATE, 4

	def_coord_events
	coord_event  5, 10, SCENE_AZALEATOWN_RIVAL_BATTLE, AzaleaTownRivalBattleScene1
	coord_event  5, 11, SCENE_AZALEATOWN_RIVAL_BATTLE, AzaleaTownRivalBattleScene2
	coord_event  9,  6, SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL, AzaleaTownCelebiScene

	def_bg_events
	bg_event 19,  9, BGEVENT_READ, AzaleaTownSign
	bg_event 10,  9, BGEVENT_READ, KurtsHouseSign
	bg_event 14, 15, BGEVENT_READ, AzaleaGymSign
	bg_event 29,  7, BGEVENT_READ, SlowpokeWellSign
	bg_event 19, 13, BGEVENT_READ, CharcoalKilnSign
	bg_event 16,  9, BGEVENT_READ, AzaleaTownPokecenterSign
	bg_event 22,  5, BGEVENT_READ, AzaleaTownMartSign
	bg_event  3,  9, BGEVENT_READ, AzaleaTownIlextForestSign
	bg_event 31,  6, BGEVENT_ITEM, AzaleaTownHiddenFullHeal

	def_object_events
	object_event 31,  9, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownRocket1Script, EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	object_event 21,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownGrampsScript, -1
	object_event 15, 13, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaTownTeacherScript, -1
	object_event  7,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaTownYoungsterScript, -1
	object_event  8, 17, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 18,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 29,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 15, 15, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event  8,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhiteApricornTree, -1
	object_event 11, 10, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_AZALEA_TOWN
	object_event 10, 16, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownRocket2Script, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  6,  5, SPRITE_KURT_OUTSIDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownKurtScript, EVENT_AZALEA_TOWN_KURT
