	object_const_def
	const BLACKTHORNCITY_SUPER_NERD1
	const BLACKTHORNCITY_SUPER_NERD2
	const BLACKTHORNCITY_GRAMPS1
	const BLACKTHORNCITY_GRAMPS2
	const BLACKTHORNCITY_BLACK_BELT
	const BLACKTHORNCITY_COOLTRAINER_F1
	const BLACKTHORNCITY_YOUNGSTER1
	const BLACKTHORNCITY_SANTOS
	const BLACKTHORNCITY_COOLTRAINER_F2

BlackthornCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Santos

.FlyPoint:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	endcallback

.Santos:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .SantosAppears
	disappear BLACKTHORNCITY_SANTOS
	endcallback

.SantosAppears:
	appear BLACKTHORNCITY_SANTOS
	endcallback

BlackthornSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BeatClair
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext Text_ClairIsOut
	waitbutton
	closetext
	end

.ClearedRadioTower:
	writetext Text_ClairIsIn
	waitbutton
	closetext
	end

.BeatClair:
	writetext Text_ClairIsBeaten
	waitbutton
	closetext
	end

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText

BlackthornGramps2Script:
	jumptextfaceplayer BlackthornGrampsGrantsEntryText

BlackthornBlackBeltScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext BlackBeltText_WeirdRadio
	waitbutton
	closetext
	end

.ClearedRadioTower:
	writetext BlackBeltText_VoicesInMyHead
	waitbutton
	closetext
	end

BlackthornCooltrainerF1Script:
	jumptextfaceplayer BlackthornCooltrainerF1Text

BlackthornYoungsterScript:
	jumptextfaceplayer BlackthornYoungsterText

BlackthornCooltrainerF2Script:
	jumptextfaceplayer BlackthornCooltrainerF2Text

SantosScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	iftrue .Saturday
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .NotSaturday
	checkevent EVENT_MET_SANTOS_OF_SATURDAY
	iftrue .MetSantos
	writetext MeetSantosText
	promptbutton
	setevent EVENT_MET_SANTOS_OF_SATURDAY
.MetSantos:
	writetext SantosGivesGiftText
	promptbutton
	verbosegiveitem SPELL_TAG
	iffalse .Done
	setevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	writetext SantosGaveGiftText
	waitbutton
	closetext
	end

.Saturday:
	writetext SantosSaturdayText
	waitbutton
.Done:
	closetext
	end

.NotSaturday:
	writetext SantosNotSaturdayText
	waitbutton
	closetext
	end

BlackthornCitySign:
	jumptext BlackthornCitySignText

BlackthornGymSign:
	jumptext BlackthornGymSignText

MoveDeletersHouseSign:
	jumptext MoveDeletersHouseSignText

DragonDensSign:
	jumptext DragonDensSignText

BlackthornCityTrainerTips:
	jumptext BlackthornCityTrainerTipsText

BlackthornCityPokecenterSign:
	jumpstd PokecenterSignScript

BlackthornCityMartSign:
	jumpstd MartSignScript

Text_ClairIsOut:
	text "Je mi luto." ; text "I am sorry."

	para "CLAIR, nas GYM" ; para "CLAIR, our GYM"
	line "LEADER, vstupila" ; line "LEADER, entered"

	para "do DRAGON'S DEN" ; para "the DRAGON'S DEN"
	line "za GYMom."

	para "Vobec netusim," ; para "I have no idea"
	line "kedy sa nas LEADER" ; line "when our LEADER"
	cont "vrati." ; cont "will return."
	done

Text_ClairIsIn:
	text "CLAIR, nas GYM" ; text "CLAIR, our GYM"
	line "LEADER, ta" ; line "LEADER, is waiting"
	cont "ocakava." ; cont "for you."

	para "Avsak je nemozne," ; para "However, it would"
	line "aby taky obycajny" ; line "be impossible for"

	para "trener vyhral." ; para "a run-of-the-mill"
	;line "trainer to win." ; line "trainer to win."
	done

Text_ClairIsBeaten:
	text "Porazil si" ; text "You defeated"
	line "CLAIR?" ; line "CLAIR?"

	para "To je skvele!" ; para "That's amazing!"

	para "Nikdy som nepocul," ; para "I've never heard"
	line "aby prehrala proti" ; line "of her losing to"

	para "niekomu inemu, ako" ; para "anyone other than"
	line "LANCEovi." ; line "LANCE."
	done

BlackthornGrampsRefusesEntryText:
	text "Nie. Iba vybrani" ; text "No. Only chosen"
	line "treneri tu mozu" ; line "trainers may train"

	para "cvicit." ; para "here."
	line "Odid, prosim." ; line "Please leave."
	done

BlackthornGrampsGrantsEntryText:
	text "Ak to CLAIR dovo-" ; text "If CLAIR allows"
	line "li, jej praotec,"  ;line "it, her grand-"
	cont "nas MASTER," ; cont "father--our MASTER"
	cont "dovoli tiez." ; cont "--will also."

	para "Mozes vstupit." ; para "You may enter."
	done

BlackBeltText_WeirdRadio:
	text "Mam pokazene ra-" ; text "My radio's busted?"
	line "dio? Chytam iba" ; line "Lately, I only get"
	cont "tento divny signal" ; cont "this weird signal."
	done

BlackBeltText_VoicesInMyHead:
	text "Arooo! Hlasy" ; text "Arooo! Voices in"
	line "v mojej hlave!" ; line "my head!"

	para "Hm? Pocuvam moje" ; para "Huh? I'm listening"
	line "radio!" ; line "to my radio!"
	done

BlackthornCooltrainerF1Text:
	text "Chces, aby tvoj" ; text "Are you going to"
	line "#MON zabudol" ; line "make your #MON"
	cont "nejake utoky?" ; cont "forget some moves?"
	done

BlackthornYoungsterText:
	text "Draci majstri" ; text "Dragon masters all"
	line "pochadzaju" ; line "come from the city"
	cont "z BLACKTHORN." ; cont "of BLACKTHORN."
	done

MeetSantosText:
	text "SANTOS: …" ; text "SANTOS: …"

	para "Je sobota…" ; para "It's Saturday…"

	para "Som sobotny" ; para "I'm SANTOS of"
	line "SANTOS…" ; line "Saturday…"
	done

SantosGivesGiftText:
	text "Vezmi si toto…" ; text "You can have this…"
	done

SantosGaveGiftText:
	text "SANTOS: …" ; text "SANTOS: …"

	para "SPELL TAG…" ; para "SPELL TAG…"

	para "Ghost-typ utoky" ; para "Ghost-type moves"
	line "su silnejsie…" ; line "get stronger…"

	para "Vydesi ta" ; para "It will frighten"
	line "to…" ; line "you…"
	done

SantosSaturdayText:
	text "SANTOS: …" ; text "SANTOS: …"

	para "Uvidime sa znova" ; para "See you again on"
	line "inu sobotu…" ; line "another Saturday…"

	para "Nebudem mat uz" ; para "I won't have any"
	line "ziadne dary…" ; line "more gifts…"
	done

SantosNotSaturdayText:
	text "SANTOS: Dnes nie" ; text "SANTOS: Today's"
	line "je sobota…"
	done

BlackthornCooltrainerF2Text:
	text "Wau, presiel si" ; text "Wow, you came"
	line "cez ICE PATH?" ; line "through the ICE"
	;cont "PATH?" ; cont "PATH?"

	para "Tak to musis byt" ; para "You must be a real"
	line "vyborny trener!" ; line "hotshot trainer!"
	done

BlackthornCitySignText:
	text "BLACKTHORN CITY" ; text "BLACKTHORN CITY"

	para "Tiche horske" ; para "A Quiet Mountain"
	line "utocisko" ; line "Retreat"
	done

BlackthornGymSignText:
	text "BLACKTHORN CITY" ; text "BLACKTHORN CITY"
	line "#MON GYM" ; line "#MON GYM"
	cont "LEADER: CLAIR" ; cont "LEADER: CLAIR"

	para "Nadany uzivatel" ; para "The Blessed User"
	line "dracich #MONov" ; line "of Dragon #MON"
	done

MoveDeletersHouseSignText:
	text "MOVE DELETER" ; text "MOVE DELETER'S"
	line "DOM" ; line "HOUSE"
	done

DragonDensSignText:
	text "DRAGON'S DEN" ; text "DRAGON'S DEN"
	;line "AHEAD" ; line "AHEAD"
	done

BlackthornCityTrainerTipsText:
	text "TRENERSKE TIPY" ; text "TRAINER TIPS"

	para "#MON drziaci" ; para "A #MON holding"
	line "MIRACLEBERRY" ; line "a MIRACLEBERRY"

	para "sa vylieci z" ; para "will cure itself"
	line "akehokolvek status" ; line "of any status"
	cont "problemu." ; cont "problem."
	done

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 11, BLACKTHORN_GYM_1F, 1
	warp_event 13, 21, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 29, 23, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 15, 29, BLACKTHORN_MART, 2
	warp_event 21, 29, BLACKTHORN_POKECENTER_1F, 1
	warp_event  9, 31, MOVE_DELETERS_HOUSE, 1
	warp_event 36,  9, ICE_PATH_1F, 2
	warp_event 20,  1, DRAGONS_DEN_1F, 1

	def_coord_events

	def_bg_events
	bg_event 34, 24, BGEVENT_READ, BlackthornCitySign
	bg_event 17, 13, BGEVENT_READ, BlackthornGymSign
	bg_event  7, 31, BGEVENT_READ, MoveDeletersHouseSign
	bg_event 21,  3, BGEVENT_READ, DragonDensSign
	bg_event  5, 25, BGEVENT_READ, BlackthornCityTrainerTips
	bg_event 16, 29, BGEVENT_READ, BlackthornCityMartSign
	bg_event 22, 29, BGEVENT_READ, BlackthornCityPokecenterSign

	def_object_events
	object_event 18, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	object_event 19, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	object_event 20,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	object_event 21,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	object_event 24, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
	object_event 13, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 22, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, EVENT_BLACKTHORN_CITY_SANTOS_OF_SATURDAY
	object_event 35, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
