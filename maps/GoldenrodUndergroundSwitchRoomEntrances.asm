; block ids
DEF UNDERGROUND_DOOR_CLOSED1 EQU $2a
DEF UNDERGROUND_DOOR_CLOSED2 EQU $3e
DEF UNDERGROUND_DOOR_CLOSED3 EQU $3f
DEF UNDERGROUND_DOOR_OPEN1   EQU $2d
DEF UNDERGROUND_DOOR_OPEN2   EQU $3d

MACRO ugdoor
	DEF UGDOOR_\1_XCOORD EQU \2
	DEF UGDOOR_\1_YCOORD EQU \3
ENDM

	;      id,  x,  y
	ugdoor  1,  6, 16
	ugdoor  2,  6, 10
	ugdoor  3,  6,  2
	ugdoor  4, 10,  2
	ugdoor  5, 10, 10
	ugdoor  6, 10, 16
	ugdoor  7,  6, 12
	ugdoor  8,  8, 12
	ugdoor  9,  6,  6
	ugdoor 10,  8,  6
	ugdoor 11, 10, 12
	ugdoor 12, 12, 12
	ugdoor 13, 10,  6
	ugdoor 14, 12,  6
	ugdoor 15, 10, 18
	ugdoor 16, 12, 18

MACRO doorstate
	changeblock UGDOOR_\1_YCOORD, UGDOOR_\1_XCOORD, UNDERGROUND_DOOR_\2
ENDM

	object_const_def
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_PHARMACIST1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_PHARMACIST2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET3
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_ROCKET_GIRL
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_TEACHER
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SUPER_NERD
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_POKE_BALL1
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_POKE_BALL2
	const GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER

GoldenrodUndergroundSwitchRoomEntrances_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL_BATTLE
	scene_script .DummyScene1, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, .UpdateDoorPositions

.DummyScene0:
	end

.DummyScene1:
	end

.UpdateDoorPositions:
	checkevent EVENT_SWITCH_4
	iffalse .false4
	doorstate 1, OPEN1
.false4
	checkevent EVENT_SWITCH_5
	iffalse .false5
	doorstate 2, OPEN1
.false5
	checkevent EVENT_SWITCH_6
	iffalse .false6
	doorstate 3, OPEN1
.false6
	checkevent EVENT_SWITCH_7
	iffalse .false7
	doorstate 4, OPEN1
.false7
	checkevent EVENT_SWITCH_8
	iffalse .false8
	doorstate 5, OPEN1
.false8
	checkevent EVENT_SWITCH_9
	iffalse .false9
	doorstate 6, OPEN1
.false9
	checkevent EVENT_SWITCH_10
	iffalse .false10
	doorstate 7, CLOSED1
	doorstate 8, OPEN1
.false10
	checkevent EVENT_SWITCH_11
	iffalse .false11
	doorstate 9, CLOSED1
	doorstate 10, OPEN1
.false11
	checkevent EVENT_SWITCH_12
	iffalse .false12
	doorstate 11, CLOSED1
	doorstate 12, OPEN1
.false12
	checkevent EVENT_SWITCH_13
	iffalse .false13
	doorstate 13, CLOSED1
	doorstate 14, OPEN1
.false13
	checkevent EVENT_SWITCH_14
	iffalse .false14
	doorstate 15, CLOSED1
	doorstate 16, OPEN1
.false14
	endcallback

GoldenrodUndergroundSwitchRoomEntrancesSuperNerdScript:
	jumptextfaceplayer GoldenrodUndergroundSwitchRoomEntrances_SuperNerdText

GoldenrodUndergroundSwitchRoomEntrancesTeacherScript:
	jumptextfaceplayer GoldenrodUndergroundSwitchRoomEntrances_TeacherText

UndergroundSilverScene1:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_EXIT_BUILDING
	appear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER
	waitsfx
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER, UndergroundSilverApproachMovement1
	turnobject PLAYER, RIGHT
	scall UndergroundSilverBattleScript
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER, UndergroundSilverRetreatMovement1
	playsound SFX_EXIT_BUILDING
	disappear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER
	setscene SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_NOOP
	waitsfx
	playmapmusic
	end

UndergroundSilverScene2:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_EXIT_BUILDING
	appear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER
	waitsfx
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER, UndergroundSilverApproachMovement2
	turnobject PLAYER, RIGHT
	scall UndergroundSilverBattleScript
	applymovement GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER, UndergroundSilverRetreatMovement2
	playsound SFX_EXIT_BUILDING
	disappear GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER
	setscene SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_NOOP
	waitsfx
	playmapmusic
	end

UndergroundSilverBattleScript:
	checkevent EVENT_RIVAL_BURNED_TOWER
	iftrue .Continue
	setevent EVENT_RIVAL_BURNED_TOWER
	setmapscene BURNED_TOWER_1F, SCENE_BURNEDTOWER1F_RIVAL_BATTLE
.Continue:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext UndergroundSilverBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_GOLDENROD_UNDERGROUND
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext UndergroundSilverWinText, UndergroundSilverLossText
	setlasttalked GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER
	loadtrainer RIVAL1, RIVAL1_4_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.Totodile:
	winlosstext UndergroundSilverWinText, UndergroundSilverLossText
	setlasttalked GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER
	loadtrainer RIVAL1, RIVAL1_4_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.Chikorita:
	winlosstext UndergroundSilverWinText, UndergroundSilverLossText
	setlasttalked GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_SILVER
	loadtrainer RIVAL1, RIVAL1_4_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.FinishRivalBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext UndergroundSilverAfterText
	waitbutton
	closetext
	end

TrainerGruntM11:
	trainer GRUNTM, GRUNTM_11, EVENT_BEAT_ROCKET_GRUNTM_11, GruntM11SeenText, GruntM11BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM11AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM25:
	trainer GRUNTM, GRUNTM_25, EVENT_BEAT_ROCKET_GRUNTM_25, GruntM25SeenText, GruntM25BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM25AfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarDuncan:
	trainer BURGLAR, DUNCAN, EVENT_BEAT_BURGLAR_DUNCAN, BurglarDuncanSeenText, BurglarDuncanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarDuncanAfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarEddie:
	trainer BURGLAR, EDDIE, EVENT_BEAT_BURGLAR_EDDIE, BurglarEddieSeenText, BurglarEddieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarEddieAfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM13:
	trainer GRUNTM, GRUNTM_13, EVENT_BEAT_ROCKET_GRUNTM_13, GruntM13SeenText, GruntM13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM13AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF3:
	trainer GRUNTF, GRUNTF_3, EVENT_BEAT_ROCKET_GRUNTF_3, GruntF3SeenText, GruntF3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF3AfterBattleText
	waitbutton
	closetext
	end

Switch1Script:
	opentext
	writetext SwitchRoomText_Switch1
	promptbutton
	checkevent EVENT_SWITCH_1
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 1
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_1
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -1
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_1
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

Switch2Script:
	opentext
	writetext SwitchRoomText_Switch2
	promptbutton
	checkevent EVENT_SWITCH_2
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 2
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_2
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -2
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_2
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

Switch3Script:
	opentext
	writetext SwitchRoomText_Switch3
	promptbutton
	checkevent EVENT_SWITCH_3
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 3
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -3
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

EmergencySwitchScript:
	opentext
	writetext SwitchRoomText_Emergency
	promptbutton
	checkevent EVENT_EMERGENCY_SWITCH
	iftrue .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	setval 7
	writemem wUndergroundSwitchPositions
	setevent EVENT_EMERGENCY_SWITCH
	setevent EVENT_SWITCH_1
	setevent EVENT_SWITCH_2
	setevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalse GoldenrodUndergroundSwitchRoomEntrances_DontToggle
	setval 0
	writemem wUndergroundSwitchPositions
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	sjump GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors

GoldenrodUndergroundSwitchRoomEntrances_DontToggle:
	closetext
	end

GoldenrodUndergroundSwitchRoomEntrances_UpdateDoors:
	readmem wUndergroundSwitchPositions
	ifequal 0, .Position0
	ifequal 1, .Position1
	ifequal 2, .Position2
	ifequal 3, .Position3
	ifequal 4, .Position4
	ifequal 5, .Position5
	ifequal 6, .Position6
	ifequal 7, .EmergencyPosition
.Position0:
	playsound SFX_ENTER_DOOR
	scall .Clear4
	scall .Clear5
	scall .Clear6
	scall .Clear7
	scall .Clear8
	scall .Clear9
	scall .Clear10
	scall .Clear11
	scall .Clear12
	scall .Clear13
	scall .Clear14
	reloadmappart
	closetext
	end

.Position1:
	playsound SFX_ENTER_DOOR
	scall .Set4
	scall .Set10
	scall .Set13
	scall .Clear9
	scall .Clear11
	scall .Clear12
	scall .Clear14
	reloadmappart
	closetext
	end

.Position2:
	playsound SFX_ENTER_DOOR
	scall .Set5
	scall .Set11
	scall .Set12
	scall .Clear8
	scall .Clear10
	scall .Clear13
	scall .Clear14
	reloadmappart
	closetext
	end

.Position3:
	playsound SFX_ENTER_DOOR
	scall .Set6
	scall .Set10
	scall .Set13
	scall .Clear7
	scall .Clear11
	scall .Clear12
	scall .Clear14
	reloadmappart
	closetext
	end

.Position4:
	playsound SFX_ENTER_DOOR
	scall .Set7
	scall .Set11
	scall .Set12
	scall .Clear6
	scall .Clear10
	scall .Clear13
	scall .Clear14
	reloadmappart
	closetext
	end

.Position5:
	playsound SFX_ENTER_DOOR
	scall .Set8
	scall .Set10
	scall .Set13
	scall .Clear5
	scall .Clear11
	scall .Clear12
	scall .Clear14
	reloadmappart
	closetext
	end

.Position6:
	playsound SFX_ENTER_DOOR
	scall .Set9
	scall .Set11
	scall .Set12
	scall .Set14
	scall .Clear4
	scall .Clear10
	scall .Clear13
	reloadmappart
	closetext
	end

.EmergencyPosition:
	playsound SFX_ENTER_DOOR
	scall .Clear4
	scall .Clear5
	scall .Set6
	scall .Clear7
	scall .Set8
	scall .Set9
	scall .Clear10
	scall .Set11
	scall .Set12
	scall .Clear13
	scall .Set14
	reloadmappart
	closetext
	setval 6
	writemem wUndergroundSwitchPositions
	end

.Set4:
	doorstate 1, OPEN1
	setevent EVENT_SWITCH_4
	end

.Set5:
	doorstate 2, OPEN1
	setevent EVENT_SWITCH_5
	end

.Set6:
	doorstate 3, OPEN1
	setevent EVENT_SWITCH_6
	end

.Set7:
	doorstate 4, OPEN1
	setevent EVENT_SWITCH_7
	end

.Set8:
	doorstate 5, OPEN1
	setevent EVENT_SWITCH_8
	end

.Set9:
	doorstate 6, OPEN1
	setevent EVENT_SWITCH_9
	end

.Set10:
	doorstate 7, CLOSED1
	doorstate 8, OPEN1
	setevent EVENT_SWITCH_10
	end

.Set11:
	doorstate 9, CLOSED1
	doorstate 10, OPEN1
	setevent EVENT_SWITCH_11
	end

.Set12:
	doorstate 11, CLOSED1
	doorstate 12, OPEN1
	setevent EVENT_SWITCH_12
	end

.Set13:
	doorstate 13, CLOSED1
	doorstate 14, OPEN1
	setevent EVENT_SWITCH_13
	end

.Set14:
	doorstate 15, CLOSED1
	doorstate 16, OPEN1
	setevent EVENT_SWITCH_14
	end

.Clear4:
	doorstate 1, CLOSED2
	clearevent EVENT_SWITCH_4
	end

.Clear5:
	doorstate 2, CLOSED2
	clearevent EVENT_SWITCH_5
	end

.Clear6:
	doorstate 3, CLOSED2
	clearevent EVENT_SWITCH_6
	end

.Clear7:
	doorstate 4, CLOSED2
	clearevent EVENT_SWITCH_7
	end

.Clear8:
	doorstate 5, CLOSED2
	clearevent EVENT_SWITCH_8
	end

.Clear9:
	doorstate 6, CLOSED2
	clearevent EVENT_SWITCH_9
	end

.Clear10:
	doorstate 7, CLOSED3
	doorstate 8, OPEN2
	clearevent EVENT_SWITCH_10
	end

.Clear11:
	doorstate 9, CLOSED3
	doorstate 10, OPEN2
	clearevent EVENT_SWITCH_11
	end

.Clear12:
	doorstate 11, CLOSED3
	doorstate 12, OPEN2
	clearevent EVENT_SWITCH_12
	end

.Clear13:
	doorstate 13, CLOSED3
	doorstate 14, OPEN2
	clearevent EVENT_SWITCH_13
	end

.Clear14:
	doorstate 15, CLOSED3
	doorstate 16, OPEN2
	clearevent EVENT_SWITCH_14
	end

GoldenrodUndergroundSwitchRoomEntrancesSmokeBall:
	itemball SMOKE_BALL

GoldenrodUndergroundSwitchRoomEntrancesFullHeal:
	itemball FULL_HEAL

GoldenrodUndergroundSwitchRoomEntrancesHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_HIDDEN_MAX_POTION

GoldenrodUndergroundSwitchRoomEntrancesHiddenRevive:
	hiddenitem REVIVE, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_HIDDEN_REVIVE

UndergroundSilverApproachMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end

UndergroundSilverApproachMovement2:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end

UndergroundSilverRetreatMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

UndergroundSilverRetreatMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

UndergroundSilverBeforeText:
	text "Pockat!" ; text "Hold it!"

	para "Videl som ta, tak" ; para "I saw you, so I"
	line "som ta sledoval." ; line "tailed you."

	para "Nepotrebujem ta tu" ; para "I don't need you"
	line "kym budem riesit" ; line "underfoot while I"

	para "TEAM ROCKET." ; para "take care of TEAM"
	;line "." ; line "ROCKET."

	para "…Pockat." ; para "…Wait a second."
	line "Uz si ma raz po-" ; line "You beat me be-"
	cont "razil, vsak?" ; cont "fore, didn't you?"

	para "To bola iba" ; para "That was just a"
	line "nahoda." ; line "fluke."

	para "Ale teraz ti to" ; para "But I repay my"
	line "vratim!" ; line "debts!"
	done

UndergroundSilverWinText:
	text "…Preco…" ; text "…Why…"
	line "Preco som prehral?" ; line "Why do I lose?"

	para "Mam v parte naj-" ; para "I've assembled the"
	line "silnejsich" ; line "toughest #MON."
	cont "#MONov."

	para "Nepolavil som ani" ; para "I didn't ease up"
	line "na sekundu." ; line "on the gas."

	para "Preco som prehral?" ; para "So why do I lose?"
	done

UndergroundSilverAfterText:
	text "…Rozumiem…" ; text "…I don't under-"
	;line "stand…" ; line "stand…"

	para "Hovoril ten LANCE" ; para "Is what that LANCE"
	line "pravdu?" ; line "guy said true?"

	para "Ze sa nechovam k" ; para "That I don't treat"
	line "#MONom" ; line "#MON properly?"
	cont "spravne?"

	para "Laska…" ; para "Love…"

	para "Dovera…" ; para "Trust…"

	para "Je to to, co mi" ; para "Are they really"
	line "chyba?" ; line "what I lack?"

	para "Kvoli tomu nemozem" ; para "Are they keeping"
	line "vyhrat?" ; line "me from winning?"

	para "Ja… Ja tomu" ; para "I… I just don't"
	line "nerozumiem." ; line "understand."

	para "Ale tymto to" ; para "But it's not going"
	line "nekonci." ; line "to end here."

	para "Nie teraz. Nie" ; para "Not now. Not"
	line "takto." ; line "because of this."

	para "Nevzdam moj sen" ; para "I won't give up my"
	line "byt najlepsi" ; line "dream of becoming"

	para "trener #MONov" ; para "the world's best"
	line "na svete!" ; line "#MON trainer!"
	done

UndergroundSilverLossText:
	text "Hm. Toto je moja" ; text "Humph. This is my"
	line "skutocna sila." ; line "real power, wimp."

	para "TEAM ROCKET bude" ; para "I'll make TEAM"
	line "minulost." ; line "ROCKET history."

	para "A toho trenera" ; para "And I'm going to"
	line "LANCEa udupem." ; line "grind that LANCE"
	;cont "under my heels." ; cont "under my heels."
	done

GoldenrodUndergroundSwitchRoomEntrances_SuperNerdText:
	text "Vyzvali ma na" ; text "I was challenged"
	line "zapas tu v" ; line "to a battle down-"
	cont "podzemi." ; cont "stairs."

	para "Je to tam drsne." ; para "It's rough down"
	line "Radsej si davaj" ; line "there. You'd"
	cont "pozor." ; cont "better be careful."
	done

GoldenrodUndergroundSwitchRoomEntrances_TeacherText:
	text "Dole su nejake" ; text "There are some"
	line "obchody…" ; line "shops downstairs…"

	para "Ale aj niekolko" ; para "But there are"
	line "trenerov." ; line "also trainers."

	para "Mam strach ist" ; para "I'm scared to go"
	line "dole." ; line "down there."
	done

GruntM11SeenText:
	text "Otvoris jeden," ; text "Open one shutter,"
	line "a druhy sa zavrie." ; line "another closes."

	para "Stavim sa, ze sa" ; para "Bet you can't get"
	line "tam nedostanes!" ; line "where you want!"
	done

GruntM11BeatenText:
	text "Kelu! To ta moja" ; text "Drat! I was sunk"
	line "nerozhodnost!" ; line "by indecision!"
	done

GruntM11AfterBattleText:
	text "Som zmateny…" ; text "I'm confused too…"
	line "Vypinac na konci" ; line "The switch on the"

	para "sa ma stlacit ako" ; para "end is the one to"
	line "prvy, ale…" ; line "press first, but…"
	done

GruntM25SeenText:
	text "Hahahaha!" ; text "Kwahaha!"

	para "Ohromeny vypinacmi" ; para "Confounded by the"
	line "vsakze?" ; line "shutters, are we?"

	para "Ak ma porazis," ; para "I'll let you in on"
	line "prezradim ti" ; line "a secret if you"
	cont "tajomstvo!" ; cont "can beat me!"
	done

GruntM25BeatenText:
	text "Uhhhh…" ; text "Uwww…"
	line "Pokazil som to." ; line "I blew it."
	done

GruntM25AfterBattleText:
	text "V poriadku. Rada!" ; text "All right. A hint!"

	para "Zmen poradie" ; para "Change the order"
	line "zapinania." ; line "of switching."

	para "To zmeni sposob," ; para "That'll change the"
	line "akym sa cesty" ; line "ways the shutters"
	cont "otvaraju." ; cont "open and close."
	done

BurglarDuncanSeenText:
	text "Daj mi tvoje" ; text "Fork over your"
	line "veci!" ; line "goodies!"
	done

BurglarDuncanBeatenText:
	text "Zmilovanie!" ; text "Mercy!"
	done

BurglarDuncanAfterBattleText:
	text "Ukradni a predaj!" ; text "Steal and sell!"
	line "To je zaklad zlo-" ; line "That's basic in"
	cont "cinu, synak!" ; cont "crime, kid!"
	done

BurglarEddieSeenText:
	text "Ukoncili tento" ; text "They ditched this"
	line "projekt pred" ; line "project before"
	cont "dokoncenim." ; cont "they finished."

	para "Hladam zvysky" ; para "I'm searching for"
	line "koristi." ; line "leftover loot."
	done

BurglarEddieBeatenText:
	text "Hrot!" ; text "Over the top!"
	done

BurglarEddieAfterBattleText:
	text "PODZEMNY SKLAD?" ; text "UNDERGROUND WARE-"
	;line "HOUSE?" ; line "HOUSE?"

	para "Naco tam vlastne" ; para "What do you want"
	line "chces ist?" ; line "to go there for?"

	para "Nic tam nie je." ; para "There's nothing"
	;line "down there." ; line "down there."
	done

GruntM13SeenText:
	text "Je mi jedno, ze si" ; text "I don't care if"
	line "sa stratil." ; line "you're lost."

	para "Ked sa tu objavis," ; para "You show up here,"
	line "nie si nic ine ako" ; line "you're nothing but"
	cont "obet!" ; cont "a victim!"
	done

GruntM13BeatenText:
	text "Uch! Ano, si" ; text "Urk! Yeah, think"
	line "v pohode, co?" ; line "you're cool, huh?"
	done

GruntM13AfterBattleText:
	text "Musis mat lad v" ; text "You must have ice"
	line "zilach, ked ohova-" ; line "in your veins to"
	cont "ras TEAM ROCKET." ; cont "dis TEAM ROCKET."
	done

SwitchRoomText_Switch1:
	text "Oznaceny ako" ; text "It's labeled"
	line "VYPINAC 1." ; line "SWITCH 1."
	done

GruntF3SeenText:
	text "Si strateny? Nie," ; text "Are you lost? No,"
	line "urcite nie." ; line "you can't be."

	para "Nemas strach v" ; para "You don't have"
	line "tvari." ; line "that scared look."

	para "Ja ta vystrasim" ; para "I'll give you"
	line "raz, dva!" ; line "something to be"
	;cont "scared about!" ; cont "scared about!"
	done

GruntF3BeatenText:
	text "Ako si len mohol?" ; text "How could you?"
	done

GruntF3AfterBattleText:
	text "Chod,kam chces!" ; text "Go wherever you'd"
	line "Odid! Nezalezi mi" ; line "like! Get lost!"
	cont "na tom!" ; cont "See if I care!"
	done

SwitchRoomText_OffTurnOn:
	text "Je VYPNUTY." ; text "It's OFF."
	line "ZAPNUT?" ; line "Turn it ON?"
	done

SwitchRoomText_OnTurnOff:
	text "Je ZAPNUTY." ; text "It's ON."
	line "VYPNUT?" ; line "Turn it OFF?"
	done

SwitchRoomText_Switch2:
	text "Oznaceny ako" ; text "It's labeled"
	line "VYPINAC 2." ; line "SWITCH 2."
	done

SwitchRoomText_Switch3:
	text "Oznaceny ako" ; text "It's labeled"
	line "VYPINAC 3." ; line "SWITCH 3."
	done

SwitchRoomText_Emergency:
	text "Oznaceny ako" ; text "It's labeled"
	line "POHOTOVOST." ; line "EMERGENCY."
	done

GoldenrodUndergroundSwitchRoomEntrances_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, GOLDENROD_UNDERGROUND, 6
	warp_event 22, 10, GOLDENROD_UNDERGROUND_WAREHOUSE, 1
	warp_event 23, 10, GOLDENROD_UNDERGROUND_WAREHOUSE, 2
	warp_event  5, 25, GOLDENROD_UNDERGROUND, 2
	warp_event  4, 29, GOLDENROD_CITY, 14
	warp_event  5, 29, GOLDENROD_CITY, 14
	warp_event 21, 25, GOLDENROD_UNDERGROUND, 1
	warp_event 20, 29, GOLDENROD_CITY, 13
	warp_event 21, 29, GOLDENROD_CITY, 13

	def_coord_events
	coord_event 19,  4, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL_BATTLE, UndergroundSilverScene1
	coord_event 19,  5, SCENE_GOLDENRODUNDERGROUNDSWITCHROOMENTRANCES_RIVAL_BATTLE, UndergroundSilverScene2

	def_bg_events
	bg_event 16,  1, BGEVENT_READ, Switch1Script
	bg_event 10,  1, BGEVENT_READ, Switch2Script
	bg_event  2,  1, BGEVENT_READ, Switch3Script
	bg_event 20, 11, BGEVENT_READ, EmergencySwitchScript
	bg_event  8,  9, BGEVENT_ITEM, GoldenrodUndergroundSwitchRoomEntrancesHiddenMaxPotion
	bg_event  1,  8, BGEVENT_ITEM, GoldenrodUndergroundSwitchRoomEntrancesHiddenRevive

	def_object_events
	object_event  9, 12, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBurglarDuncan, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  8, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBurglarEddie, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 17,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM13, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 11,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM11, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM25, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 19, 12, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF3, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3, 27, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundSwitchRoomEntrancesTeacherScript, -1
	object_event 19, 27, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundSwitchRoomEntrancesSuperNerdScript, -1
	object_event  1, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundSwitchRoomEntrancesSmokeBall, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_SMOKE_BALL
	object_event 14,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundSwitchRoomEntrancesFullHeal, EVENT_GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES_FULL_HEAL
	object_event 23,  3, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_GOLDENROD_UNDERGROUND
