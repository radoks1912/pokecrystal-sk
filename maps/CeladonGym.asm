	object_const_def
	const CELADONGYM_ERIKA
	const CELADONGYM_LASS1
	const CELADONGYM_LASS2
	const CELADONGYM_BEAUTY
	const CELADONGYM_TWIN1
	const CELADONGYM_TWIN2

CeladonGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGymErikaScript:
	faceplayer
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .FightDone
	writetext ErikaBeforeBattleText
	waitbutton
	closetext
	winlosstext ErikaBeatenText, 0
	loadtrainer ERIKA, ERIKA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_LASS_MICHELLE
	setevent EVENT_BEAT_PICNICKER_TANYA
	setevent EVENT_BEAT_BEAUTY_JULIA
	setevent EVENT_BEAT_TWINS_JO_AND_ZOE
	opentext
	writetext PlayerReceivedRainbowBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
.FightDone:
	checkevent EVENT_GOT_TM19_GIGA_DRAIN
	iftrue .GotGigaDrain
	writetext ErikaExplainTMText
	promptbutton
	verbosegiveitem TM_GIGA_DRAIN
	iffalse .GotGigaDrain
	setevent EVENT_GOT_TM19_GIGA_DRAIN
.GotGigaDrain:
	writetext ErikaAfterBattleText
	waitbutton
	closetext
	end

TrainerLassMichelle:
	trainer LASS, MICHELLE, EVENT_BEAT_LASS_MICHELLE, LassMichelleSeenText, LassMichelleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMichelleAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerTanya:
	trainer PICNICKER, TANYA, EVENT_BEAT_PICNICKER_TANYA, PicnickerTanyaSeenText, PicnickerTanyaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerTanyaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyJulia:
	trainer BEAUTY, JULIA, EVENT_BEAT_BEAUTY_JULIA, BeautyJuliaSeenText, BeautyJuliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJuliaAfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsJoAndZoe1:
	trainer TWINS, JOANDZOE1, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe1SeenText, TwinsJoAndZoe1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsJoAndZoe1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsJoAndZoe2:
	trainer TWINS, JOANDZOE2, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe2SeenText, TwinsJoAndZoe2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsJoAndZoe2AfterBattleText
	waitbutton
	closetext
	end

CeladonGymStatue:
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, ERIKA, ERIKA1
	jumpstd GymStatue2Script

ErikaBeforeBattleText:
	text "ERIKA: Ahoj…" ; text "ERIKA: Hello…"
	line "Krasne pocasie," ; line "Lovely weather,"

	para "vsak?" ; para "isn't it?"
	line "Tak prijemne…" ; line "It's so pleasant…"

	para "…Bojim sa, ze asi" ; para "…I'm afraid I may"
	line "zadriemem…" ; line "doze off…"

	para "Volam sa ERIKA." ; para "My name is ERIKA."
	line "Som LEADER" ; line "I am the LEADER of"
	cont "CELADON GYMu." ; cont "CELADON GYM."

	para "…Oh? Vravis, ze" ; para "…Oh? All the way"
	line "si az z JOHTA?" ; line "from JOHTO, you"
	cont "Uzasne…" ; cont "say? How nice…"

	para "Oh. Prepac," ; para "Oh. I'm sorry, I"
	line "neuvedomila som si" ; line "didn't realize"

	para "ze ma chces vyzvat" ; para "that you wished to"
	line "na zapas." ; line "challenge me."

	para "V poriadku, ale" ; para "Very well, but I"
	line "neprehram." ; line "shall not lose."
	done

ErikaBeatenText:
	text "ERIKA: Oh!" ; text "ERIKA: Oh!"
	line "Priznavam prehru…" ; line "I concede defeat…"

	para "Si pozoruhodne" ; para "You are remarkably"
	line "silny…" ; line "strong…"

	para "Dam ti" ; para "I shall give you"
	line "RAINBOWBADGE…" ; line "RAINBOWBADGE…"
	done

PlayerReceivedRainbowBadgeText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "RAINBOWBADGE."
	done

ErikaExplainTMText:
	text "ERIKA: Bol to" ; text "ERIKA: That was a"
	line "skvely zapas." ; line "delightful match."

	para "Citim sa inspiro-" ; para "I felt inspired."
	line "vane. Vezmi si" ; line "Please, I wish you"
	cont "tento TM, prosim." ; cont "to have this TM."

	para "Je to GIGA DRAIN." ; para "It is GIGA DRAIN."

	para "Je to svely utok," ; para "It is a wonderful"
	line "ktory ti vrati" ; line "move that drains"

	para "polku poskodenia" ; para "half the damage it"
	line "do HP tvojmu" ; line "inflicts to heal"
	cont "#MONovi." ; cont "your #MON."

	para "Pokojne to pouzi," ; para "Please use it if"
	line "ak mas zaujem…" ; line "it pleases you…"
	done

ErikaAfterBattleText:
	text "ERIKA: Prehra" ; text "ERIKA: Losing"
	line "zanecha smutok" ; line "leaves a bitter"
	cont "na dusi…" ; cont "aftertaste…"

	para "Ale to, ze existu-" ; para "But knowing that"
	line "ju silni treneri" ; line "there are strong"

	para "ma podnecuje k" ; para "trainers spurs me"
	line "lepsiemu vykonu…" ; line "to do better…"
	done

LassMichelleSeenText:
	text "Myslis, ze GYM len" ; text "Do you think a"
	line "pre dievcata je" ; line "girls-only GYM"
	cont "neobvykly?" ; cont "is rare?"
	done

LassMichelleBeatenText:
	text "Oh, fuj!" ; text "Oh, bleah!"
	done

LassMichelleAfterBattleText:
	text "Iba nedbalost --" ; text "I just got care-"
	line "to je cele!" ; line "less, that's all!"
	done

PicnickerTanyaSeenText:
	text "Oh, zapas?" ; text "Oh, a battle?"
	line "Strasidelne, ale" ; line "That's kind of"
	cont "OK!" ; cont "scary, but OK!"
	done

PicnickerTanyaBeatenText:
	text "Oh, hotovo?" ; text "Oh, that's it?"
	done

PicnickerTanyaAfterBattleText:
	text "Oh, pozri na tie" ; text "Oh, look at all"
	line "tvoje ODZNAKY." ; line "your BADGES. No"

	para "Nedivim sa, ze som" ; para "wonder I couldn't"
	line "nedokazala vyhrat!" ; line "win!"
	done

BeautyJuliaSeenText:
	text "Dival si sa na" ; text "Were you looking"
	line "tie kvetiny, alebo" ; line "at these flowers"
	cont "na mna?" ; cont "or at me?"
	done

BeautyJuliaBeatenText:
	text "Ake otravne!" ; text "How annoying!"
	done

BeautyJuliaAfterBattleText:
	text "Ako sa stanem" ; text "How do I go about"
	line "damou, ako je" ; line "becoming ladylike"
	cont "napriklad ERIKA?" ; cont "like ERIKA?"
	done

TwinsJoAndZoe1SeenText:
	text "Ukazeme ti utok," ; text "We'll show you"
	line "ktory nas naucila" ; line "#MON moves that"
	cont "ERIKA!" ; cont "ERIKA taught us!"
	done

TwinsJoAndZoe1BeatenText:
	text "Oh… Prehra…" ; text "Oh… We lost…"
	done

TwinsJoAndZoe1AfterBattleText:
	text "ERIKA ta dostane" ; text "ERIKA will get you"
	line "aj za nas!" ; line "back for us!"
	done

TwinsJoAndZoe2SeenText:
	text "Budeme ERIKU" ; text "We're going to"
	line "ochranovat!" ; line "protect ERIKA!"
	done

TwinsJoAndZoe2BeatenText:
	text "Vyhra nemozna…" ; text "We couldn't win…"
	done

TwinsJoAndZoe2AfterBattleText:
	text "ERIKA je ovela" ; text "ERIKA is much,"
	line "silnejsia!" ; line "much stronger!"
	done

CeladonGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CELADON_CITY, 8
	warp_event  5, 17, CELADON_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CeladonGymStatue
	bg_event  6, 15, BGEVENT_READ, CeladonGymStatue

	def_object_events
	object_event  5,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGymErikaScript, -1
	object_event  7,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassMichelle, -1
	object_event  2,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerTanya, -1
	object_event  3,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulia, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe2, -1
