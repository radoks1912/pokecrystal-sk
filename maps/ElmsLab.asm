	object_const_def
	const ELMSLAB_ELM
	const ELMSLAB_ELMS_AIDE
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMSLAB_OFFICER

ElmsLab_MapScripts:
	def_scene_scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_ELMSLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_ELMSLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_ELMSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_ELMSLAB_AIDE_GIVES_POTION

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .MoveElmCallback

.MeetElm:
	sdefer .WalkUpToElm
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.MoveElmCallback:
	checkscene
	iftrue .Skip ; not SCENE_DEFAULT
	moveobject ELMSLAB_ELM, 3, 4
.Skip:
	endcallback

.WalkUpToElm:
	applymovement PLAYER, ElmsLab_WalkUpToElmMovement
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, RIGHT
	opentext
	writetext ElmText_Intro
.MustSayYes:
	yesorno
	iftrue .ElmGetsEmail
	writetext ElmText_Refused
	sjump .MustSayYes

.ElmGetsEmail:
	writetext ElmText_Accepted
	promptbutton
	writetext ElmText_ResearchAmbitions
	waitbutton
	closetext
	playsound SFX_GLASS_TING
	pause 30
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 10
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext ElmText_GotAnEmail
	waitbutton
	closetext
	opentext
	turnobject ELMSLAB_ELM, RIGHT
	writetext ElmText_MissionFromMrPokemon
	waitbutton
	closetext
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement1
	turnobject PLAYER, UP
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement2
	turnobject PLAYER, RIGHT
	opentext
	writetext ElmText_ChooseAPokemon
	waitbutton
	setscene SCENE_ELMSLAB_CANT_LEAVE
	closetext
	end

ProfElmScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue ElmCheckMasterBall
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue ElmGiveTicketScript
ElmCheckMasterBall:
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue ElmCheckEverstone
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
ElmCheckEverstone:
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue ElmScript_CallYou
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue ElmGiveEverstoneScript
	checkevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	iffalse ElmCheckTogepiEgg
	setval TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	setval TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	writetext ElmThoughtEggHatchedText
	waitbutton
	closetext
	end

ElmEggHatchedScript:
	setval TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	setval TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	sjump ElmCheckGotEggAgain

ElmCheckTogepiEgg:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse ElmCheckGotEggAgain
	checkevent EVENT_TOGEPI_HATCHED
	iftrue ElmEggHatchedScript
ElmCheckGotEggAgain:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext ElmText_LetYourMonBattleIt
	waitbutton
	closetext
	end

LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CYNDAQUIL
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterCyndaquilMovement
	sjump ElmDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, TOTODILE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TOTODILE, 5, BERRY
	closetext
	applymovement PLAYER, AfterTotodileMovement
	sjump ElmDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHIKORITA
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHIKORITA, 5, BERRY
	closetext
	applymovement PLAYER, AfterChikoritaMovement
	sjump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

ElmDirectionsScript:
	turnobject PLAYER, UP
	opentext
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum PHONE_ELM
	opentext
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext ElmDirectionsText2
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext ElmDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_RIVAL_CHERRYGROVE_CITY
	setscene SCENE_ELMSLAB_AIDE_GIVES_POTION
	setmapscene NEW_BARK_TOWN, SCENE_FINISHED
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

ElmAfterTheftDoneScript:
	waitbutton
	closetext
	end

ElmAfterTheftScript:
	writetext ElmAfterTheftText1
	checkitem MYSTERY_EGG
	iffalse ElmAfterTheftDoneScript
	promptbutton
	writetext ElmAfterTheftText2
	waitbutton
	takeitem MYSTERY_EGG
	scall ElmJumpBackScript1
	writetext ElmAfterTheftText3
	waitbutton
	scall ElmJumpBackScript2
	writetext ElmAfterTheftText4
	promptbutton
	writetext ElmAfterTheftText5
	promptbutton
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	setflag ENGINE_MAIN_MENU_MOBILE_CHOICES
	setmapscene ROUTE_29, SCENE_ROUTE29_CATCH_TUTORIAL
	clearevent EVENT_ROUTE_30_YOUNGSTER_JOEY
	setevent EVENT_ROUTE_30_BATTLE
	writetext ElmAfterTheftText6
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS
	end

ElmStudyingEggScript:
	writetext ElmStudyingEggText
	waitbutton
	closetext
	end

ElmAideHasEggScript:
	writetext ElmAideHasEggText
	waitbutton
	closetext
	end

ElmWaitingEggHatchScript:
	writetext ElmWaitingEggHatchText
	waitbutton
	closetext
	end

ShowElmTogepiScript:
	writetext ShowElmTogepiText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	setevent EVENT_SHOWED_TOGEPI_TO_ELM
	opentext
	writetext ShowElmTogepiText2
	promptbutton
	writetext ShowElmTogepiText3
	promptbutton
ElmGiveEverstoneScript:
	writetext ElmGiveEverstoneText1
	promptbutton
	verbosegiveitem EVERSTONE
	iffalse ElmScript_NoRoomForEverstone
	writetext ElmGiveEverstoneText2
	waitbutton
	closetext
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end

ElmScript_CallYou:
	writetext ElmText_CallYou
	waitbutton
ElmScript_NoRoomForEverstone:
	closetext
	end

ElmGiveMasterBallScript:
	writetext ElmGiveMasterBallText1
	promptbutton
	verbosegiveitem MASTER_BALL
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	waitbutton
.notdone
	closetext
	end

ElmGiveTicketScript:
	writetext ElmGiveTicketText1
	promptbutton
	verbosegiveitem S_S_TICKET
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	waitbutton
	closetext
	end

ElmJumpBackScript1:
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpDownScript
	ifequal UP, ElmJumpUpScript
	ifequal LEFT, ElmJumpLeftScript
	ifequal RIGHT, ElmJumpRightScript
	end

ElmJumpBackScript2:
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpUpScript
	ifequal UP, ElmJumpDownScript
	ifequal LEFT, ElmJumpRightScript
	ifequal RIGHT, ElmJumpLeftScript
	end

ElmJumpUpScript:
	applymovement ELMSLAB_ELM, ElmJumpUpMovement
	opentext
	end

ElmJumpDownScript:
	applymovement ELMSLAB_ELM, ElmJumpDownMovement
	opentext
	end

ElmJumpLeftScript:
	applymovement ELMSLAB_ELM, ElmJumpLeftMovement
	opentext
	end

ElmJumpRightScript:
	applymovement ELMSLAB_ELM, ElmJumpRightMovement
	opentext
	end

AideScript_WalkPotion1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkPotion2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GivePotion:
	opentext
	writetext AideText_GiveYouPotion
	promptbutton
	verbosegiveitem POTION
	writetext AideText_AlwaysBusy
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_WalkBalls1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkBalls2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GiveYouBalls:
	opentext
	writetext AideText_GiveYouBalls
	promptbutton
	getitemname STRING_BUFFER_4, POKE_BALL
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext AideText_ExplainBalls
	promptbutton
	itemnotify
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd ReceiveItemScript
	end

ElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue AideScript_AfterTheft
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue AideScript_ExplainBalls
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue AideScript_TheftTestimony
	writetext AideText_AlwaysBusy
	waitbutton
	closetext
	end

AideScript_TheftTestimony:
	writetext AideText_TheftTestimony
	waitbutton
	closetext
	end

AideScript_ExplainBalls:
	writetext AideText_ExplainBalls
	waitbutton
	closetext
	end

AideScript_AfterTheft:
	writetext AideText_AfterTheft
	waitbutton
	closetext
	end

MeetCopScript2:
	applymovement PLAYER, MeetCopScript2_StepLeft

MeetCopScript:
	applymovement PLAYER, MeetCopScript_WalkUp
CopScript:
	turnobject ELMSLAB_OFFICER, LEFT
	opentext
	writetext ElmsLabOfficerText1
	promptbutton
	special NameRival
	writetext ElmsLabOfficerText2
	waitbutton
	closetext
	applymovement ELMSLAB_OFFICER, OfficerLeavesMovement
	disappear ELMSLAB_OFFICER
	setscene SCENE_ELMSLAB_NOTHING
	end

ElmsLabWindow:
	opentext
	checkflag ENGINE_FLYPOINT_VIOLET
	iftrue .Normal
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .BreakIn
	sjump .Normal

.BreakIn:
	writetext ElmsLabWindowText2
	waitbutton
	closetext
	end

.Normal:
	writetext ElmsLabWindowText1
	waitbutton
	closetext
	end

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	jumptext ElmsLabPCText

ElmsLabTrashcan2: ; unreferenced
	jumpstd TrashCanScript

ElmsLabBookshelf:
	jumpstd DifficultBookshelfScript

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

ElmsLab_CantLeaveMovement:
	step UP
	step_end

MeetCopScript2_StepLeft:
	step LEFT
	step_end

MeetCopScript_WalkUp:
	step UP
	step UP
	turn_head RIGHT
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterCyndaquilMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

ElmText_Intro:
	text "ELM: <PLAY_G>!" ; text "ELM: <PLAY_G>!"
	line "Tak si prisiel!" ; line "There you are!"

	para "Potrebujem od teba" ; para "I needed to ask"
	line "laskavost." ; line "you a favor."

	para "Pracujem na novom" ; para "I'm conducting new"
	line "#MON vyskume." ; line "#MON research"

	para "Zaujima ma, ci by" ; para "right now. I was"
	line "si mi s nim chcel" ; line "wondering if you"

	para "pomoct," ; para "could help me with"
	line "<PLAY_G>." ; line "it, <PLAY_G>."

	para "Vies…" ; para "You see…"

	para "Zrovna pisem" ; para "I'm writing a"
	line "referat, ktory" ; line "paper that I want"

	para "chcem odprezento-" ; para "to present at a"
	line "vat na konferencii" ; line "conference."

	para "Ale su veci, kto-" ; para "But there are some"
	line "rym stale este" ; line "things I don't"

	para "ani ja nero-" ; para "quite understand"
	line "zumiem." ; line "yet."

	para "Takze!" ; para "So!"

	para "Chcem aby si vy-" ; para "I'd like you to"
	line "choval #MONov," ; line "raise a #MON"

	para "ktorych som neda-" ; para "that I recently"
	line "vno chytil." ; line "caught."
	done

ElmText_Accepted:
	text "Dakujem, <PLAY_G>!" ; text "Thanks, <PLAY_G>!"

	para "Budes velka" ; para "You're a great"
	line "pomoc!" ; line "help!"
	done

ElmText_Refused:
	text "Ale… Prosim," ; text "But… Please, I"
	line "potrebujem pomoc!" ; line "need your help!"
	done

ElmText_ResearchAmbitions:
	text "Ked oznamim svoje" ; text "When I announce my"
	line "vysledky, som si" ; line "findings, I'm sure"

	para "isty, ze sa pono-" ; para "we'll delve a bit"
	line "rime hlbsie do" ; line "deeper into the"

	para "zahad vsetkych" ; para "many mysteries of"
	line "#MONov." ; line "#MON."

	para "Mozes sa na to" ; para "You can count on"
	line "spolahnut!" ; line "it!"
	done

ElmText_GotAnEmail:
	text "Hej! Dostal som" ; text "Oh, hey! I got an"
	line "e-mail!" ; line "e-mail!"

	para "<……><……><……>"
	line "Hm… Aha…" ; line "Hm… Uh-huh…"

	para "Okej…" ; para "Okay…"
	done

ElmText_MissionFromMrPokemon:
	text "Pocuj." ; text "Hey, listen."

	para "Mam znameho, vola" ; para "I have an acquain-"
	line "sa MR." ; line "tance called MR."
	cont "#MON." ; cont "#MON."

	para "Vzdy objavi velmi" ; para "He keeps finding"
	line "zvlastne veci a"  ;line "weird things and"

	para "bluzni o svojich" ; para "raving about his"
	line "objavoch." ; line "discoveries."

	para "Kazdopadne, dostal" ; para "Anyway, I just got"
	line "som od neho e-mail" ; line "an e-mail from him"

	para "ze tentoraz to je" ; para "saying that this"
	line "skutocne." ; line "time it's real."

	para "Zaujimave, ale my" ; para "It is intriguing,"
	line "mame plne ruky s" ; line "but we're busy"

	para "nasim vyskumom" ; para "with our #MON"
	line "#MONov…" ; line "research…"

	para "Pockat!" ; para "Wait!"

	para "Uz viem!" ; para "I know!"

	para "<PLAY_G>, mozes" ; para "<PLAY_G>, can you"
	line "tam ist za nas?" ; line "go in our place?"
	done

ElmText_ChooseAPokemon:
	text "Chcem, aby si" ; text "I want you to"
	line "vychoval jedneho" ; line "raise one of the"

	para "#MONa z" ; para "#MON contained"
	line "tychto tu." ; line "in these BALLS."

	para "Budes prvy partner" ; para "You'll be that"
	line "tohto #MONa," ; line "#MON's first"
	cont "<PLAY_G>!" ; cont "partner, <PLAY_G>!"

	para "Vyber si jedneho!" ; para "Go on. Pick one!"
	done

ElmText_LetYourMonBattleIt:
	text "Ak objavis diveho" ; text "If a wild #MON"
	line "#MONa, posli nanho" ; line "appears, let your"
	cont "svojho #MONa!" ; cont "#MON battle it!"
	done

LabWhereGoingText:
	text "ELM: Pockaj! Kam" ; text "ELM: Wait! Where"
	line "to ides?" ; line "are you going?"
	done

TakeCyndaquilText:
	text "ELM: Vezmes si" ; text "ELM: You'll take"
	line "CYNDAQUILa," ; line "CYNDAQUIL, the"
	cont "ohniveho #MONa?" ; cont "fire #MON?"
	done

TakeTotodileText:
	text "ELM: Chces" ; text "ELM: Do you want"
	line "TOTODILEa," ; line "TOTODILE, the"
	cont "vodneho #MONa?" ; cont "water #MON?"
	done

TakeChikoritaText:
	text "ELM: Takze" ; text "ELM: So, you like"
	line "CHIKORITU, tra-" ; line "CHIKORITA, the"
	cont "voveho #MONa?" ; cont "grass #MON?"
	done

DidntChooseStarterText:
	text "ELM: Dobre si to" ; text "ELM: Think it over"
	line "rozmysli." ; line "carefully."

	para "Tvoj partner je" ; para "Your partner is"
	line "dolezity." ; line "important."
	done

ChoseStarterText:
	text "ELM: Myslim, ze" ; text "ELM: I think"
	line "to je skvely" ; line "that's a great"
	cont "#MON!" ; cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "MR.#MON zije" ; text "MR.#MON lives a"
	line "nedaleko za" ; line "little bit beyond"

	para "CHERRYGROVE, je to" ; para "CHERRYGROVE, the"
	line "to dalsie mesto." ; line "next city over."

	para "Je to skoro" ; para "It's almost a"
	line "priama cesta tam," ; line "direct route"

	para "nemozes sa takmer" ; para "there, so you"
	line "netrafit." ; line "can't miss it."

	para "Ale pre kazdy pri-" ; para "But just in case,"
	line "pad, tu mas moj" ; line "here's my phone"

	para "telefon. Zavolaj," ; para "number. Call me if"
	line "ak sa nieco bude" ; line "anything comes up!"
	cont "diat."
	done

ElmDirectionsText2:
	text "Ak je tvoj #MON" ; text "If your #MON is"
	line "zraneny, pouzi" ; line "hurt, you should"

	para "tento pristroj na" ; para "heal it with this"
	line "liecenie." ; line "machine."

	para "Pokojne ho kedy-" ; para "Feel free to use"
	line "kolvek pouzi." ; line "it anytime."
	done

ElmDirectionsText3:
	text "<PLAY_G>," ; text "<PLAY_G>, I'm"
	line "spolieham na teba!" ; line "counting on you!"
	done

GotElmsNumberText:
	text "<PLAYER> dostal" ; text "<PLAYER> got ELM's"
	line "ELMove cislo." ; line "phone number."
	done

ElmDescribesMrPokemonText:
	text "MR.#MON ide" ; text "MR.#MON goes"
	line "vsade a najde" ; line "everywhere and"
	cont "vzacnosti." ; cont "finds rarities."

	para "Bohuzial, nie vzdy" ; para "Too bad they're"
	line "su tieto vzac-" ; line "just rare and"
	cont "nosti uzitocne…" ; cont "not very useful…"
	done

ElmPokeBallText:
	text "Obsahuje" ; text "It contains a"
	line "#MONa od" ; line "#MON caught by"
	cont "PROF.ELMa." ; cont "PROF.ELM."
	done

ElmsLabHealingMachineText1:
	text "Som zvedavy, k" ; text "I wonder what this"
	line "k comu to je?" ; line "does?"
	done

ElmsLabHealingMachineText2:
	text "Chces vyliecit" ; text "Would you like to"
	line "svojich #MONov?" ; line "heal your #MON?"
	done

ElmAfterTheftText1:
	text "ELM: <PLAY_G>, je" ; text "ELM: <PLAY_G>, this"
	line "to strasne…" ; line "is terrible…"

	para "Oh, co bol" ; para "Oh, yes, what was"
	line "MR.#MONov" ; line "MR.#MON's big"
	cont "velky objav?" ; cont "discovery?"
	done

ElmAfterTheftText2:
	text "<PLAYER> dal" ; text "<PLAYER> handed"
	line "MYSTERY VAJICKO" ; line "the MYSTERY EGG to"
	cont "PROF.ELMovi." ; cont "PROF.ELM."
	done

ElmAfterTheftText3:
	text "ELM: Toto?" ; text "ELM: This?"
	done

ElmAfterTheftText4:
	text "Ale… Je to snad" ; text "But… Is it a"
	line "#MON VAJICKO?" ; line "#MON EGG?"

	para "Ak ano, je to" ; para "If it is, it is a"
	line "uzasny objav!" ; line "great discovery!"
	done

ElmAfterTheftText5:
	text "ELM: COZE?!?" ; text "ELM: What?!?"

	para "PROF.OAK ti dal" ; para "PROF.OAK gave you"
	line "#DEX?" ; line "a #DEX?"

	para "<PLAY_G>, je to" ; para "<PLAY_G>, is that"
	line "pravda? T-To je" ; line "true? Th-that's"
	cont "neuveritelne!" ; cont "incredible!"

	para "Je dobry v odha-" ; para "He is superb at"
	line "dovani potencialu" ; line "seeing the poten-"
	cont "ludi, ktori chcu" ; cont "tial of people as"
	cont "byt trenermi." ; cont "trainers."

	para "Wau, <PLAY_G>." ; para "Wow, <PLAY_G>. You"
	line "Mozno mas to, co" ; line "may have what it"

	para "musi mat" ; para "takes to become"
	line "SAMPION." ; line "the CHAMPION."

	para "Vypada to, ze si" ; para "You seem to be"
	line "skvele rozumies s" ; line "getting on great"
	cont "tvojim #MONom." ; cont "with #MON too."

	para "Mal by si ist do" ; para "You should take"
	line "#MON GYMu a" ; line "the #MON GYM"
	cont "skusit zapasit." ; cont "challenge."

	para "Najblizsi GYM" ; para "The closest GYM"
	line "je ten vo VIOLET" ; line "would be the one"
	cont "CITY." ; cont "in VIOLET CITY."
	done

ElmAfterTheftText6:
	text "…<PLAY_G>." ; text "…<PLAY_G>. The"
	line "Cesta za vitaz- " ; line "road to the"

	para "stvom bude velmi" ; para "championship will"
	line "dlha." ; line "be a long one."

	para "Predtym nez odides" ; para "Before you leave,"
	line "zastav sa u" ; line "make sure that you"
	cont "mamy." ; cont "talk to your mom."
	done

ElmStudyingEggText:
	text "ELM: Nevzdavaj sa!" ; text "ELM: Don't give"
	line "Zavolam ti, ak" ; line "up! I'll call if"

	para "zistim nieco nove" ; para "I learn anything"
	line "o VAJICKU!" ; line "about that EGG!"
	done

ElmAideHasEggText:
	text "ELM: <PLAY_G>?" ; text "ELM: <PLAY_G>?"
	line "Nestretol si mojho" ; line "Didn't you meet my"
	cont "asistenta?" ; cont "assistant?"

	para "Mal ta stretnut a" ; para "He should have met"
	line "dat ti VAJICKO" ; line "you with the EGG"

	para "vo VIOLET CITY" ; para "at VIOLET CITY's"
	line "#MON CENTER." ; line "#MON CENTER."

	para "Asi ste sa minuli." ; para "You must have just"
	line "Skus ho tam vy-" ; line "missed him. Try to"
	cont "hladat." ; cont "catch him there."
	done

ElmWaitingEggHatchText:
	text "ELM: Hej, zmenilo" ; text "ELM: Hey, has that"
	line "sa nejak VAJICKO?" ; line "EGG changed any?"
	done

ElmThoughtEggHatchedText:
	text "<PLAY_G>? Myslel" ; text "<PLAY_G>? I thought"
	line "som, ze vajicko" ; line "the EGG hatched."
	cont "sa uz vyliahlo."

	para "Kde je" ; para "Where is the"
	line "#MON?" ; line "#MON?"
	done

ShowElmTogepiText1:
	text "ELM: <PLAY_G>," ; text "ELM: <PLAY_G>, you"
	line "vypadas skvele!" ; line "look great!"
	done

ShowElmTogepiText2:
	text "Coze?" ; text "What?"
	line "Tento #MON!?!" ; line "That #MON!?!"
	done

ShowElmTogepiText3:
	text "Vyliahlo sa!" ; text "The EGG hatched!"
	line "Takze #MONi sa" ; line "So, #MON are"
	cont "liahnu z VAJICOK…" ; cont "born from EGGS…"

	para "Mozno nie vsetci" ; para "No, perhaps not"
	line "#MONi." ; line "all #MON are."

	para "Stale vsak zostava" ; para "Wow, there's still"
	line "mnoho veci na" ; line "a lot of research"
	cont "vyskum." ; cont "to be done."
	done

ElmGiveEverstoneText1:
	text "Dakujem, <PLAY_G>!" ; text "Thanks, <PLAY_G>!"
	line "Pomahas odhalit" ; line "You're helping"

	para "#MON zahady" ; para "unravel #MON"
	line "pre nas vsetkych!" ; line "mysteries for us!"

	para "Chcem aby si si" ; para "I want you to have"
	line "vzal toto ako" ; line "this as a token of"
	cont "odmenu." ; cont "our appreciation."
	done

ElmGiveEverstoneText2:
	text "Je to" ; text "That's an"
	line "EVERSTONE." ; line "EVERSTONE."

	para "Niektori #MONi" ; para "Some species of"
	line "sa vyvinu po do-" ; line "#MON evolve"

	para "siahnuti urciteho" ; para "when they grow to"
	line "levelu." ; line "certain levels."

	para "#MON drziaci" ; para "A #MON holding"
	line "EVERSTONE sa" ; line "the EVERSTONE"
	cont "nevyvinie." ; cont "won't evolve."

	para "Daj ho #-" ; para "Give it to a #-"
	line "MONovi, ktoreho" ; line "MON you don't want"
	cont "nechces vyvinut." ; cont "to evolve."
	done

ElmText_CallYou:
	text "ELM: <PLAY_G>," ; text "ELM: <PLAY_G>, I'll"
	line "Zavolam, ked sa" ; line "call you if any-"
	cont "nieco stane." ; cont "thing comes up."
	done

AideText_AfterTheft:
	text "…och… Ten ukrad-" ; text "…sigh… That"
	line "nuty #MON." ; line "stolen #MON."

	para "Ako sa mu asi" ; para "I wonder how it's"
	line "dari." ; line "doing."

	para "Hovori sa, ze" ; para "They say a #MON"
	line "#MON vychovany" ; line "raised by a bad"

	para "zlym clovekom sa" ; para "person turns bad"
	line "stane zlym." ; line "itself."
	done

ElmGiveMasterBallText1:
	text "ELM: Ahoj, <PLAY_G>!" ; text "ELM: Hi, <PLAY_G>!"
	line "Vdaka tebe moj" ; line "Thanks to you, my"

	para "vyskum napreduje" ; para "research is going"
	line "milovymi krokmi!" ; line "great!"

	para "Vezmi si toto" ; para "Take this as a"
	line "ako moje poda-" ; line "token of my"
	cont "kovanie." ; cont "appreciation."
	done

ElmGiveMasterBallText2:
	text "MASTER BALL je" ; text "The MASTER BALL is"
	line "najlepsi!" ; line "the best!"

	para "Dokaze chytit" ; para "It's the ultimate"
	line "akehokolvek" ; line "BALL! It'll catch"

	para "#MONa bez" ; para "any #MON with-"
	line "zlyhania." ; line "out fail."

	para "Dostanu ho iba" ; para "It's given only to"
	line "uznavani #MON" ; line "recognized #MON"
	cont "vyskumnici." ; cont "researchers."

	para "Myslim, ze tebe sa" ; para "I think you can"
	line "bude hodit ovela" ; line "make much better"

	para "viac, ako mne," ; para "use of it than I"
	line "<PLAY_G>!" ; line "can, <PLAY_G>!"
	done

ElmGiveTicketText1:
	text "ELM: <PLAY_G>!" ; text "ELM: <PLAY_G>!"
	line "Tak si prisiel!" ; line "There you are!"

	para "Volal som ti, pre-" ; para "I called because I"
	line "toze pre teba" ; line "have something for"
	cont "nieco mam." ; cont "you."

	para "Vidis? Je to" ; para "See? It's an"
	line "S.S.TICKET." ; line "S.S.TICKET."

	para "Mozes teraz chytat" ; para "Now you can catch"
	line "#MONov v KANTO." ; line "#MON in KANTO."
	done

ElmGiveTicketText2:
	text "Lod vyplava" ; text "The ship departs"
	line "z OLIVINE CITY." ; line "from OLIVINE CITY."

	para "Ale to uz predsa" ; para "But you knew that"
	line "vies, <PLAY_G>." ; line "already, <PLAY_G>."

	para "Ved si predsa pre-" ; para "After all, you've"
	line "cestoval kus" ; line "traveled all over"
	cont "sveta." ; cont "with your #MON."

	para "Pozdrav odo mna" ; para "Give my regards to"
	line "PROF.OAKa v KANTO!" ; line "PROF.OAK in KANTO!"
	done

ElmsLabMonEggText: ; unreferenced
	text "It's the #MON"
	line "EGG being studied"
	cont "by PROF.ELM."
	done

AideText_GiveYouPotion:
	text "<PLAY_G>, chcem" ; text "<PLAY_G>, I want"
	line "aby si si vzal odo" ; line "you to have this"
	cont "mna toto." ; cont "for your errand."
	done

AideText_AlwaysBusy:
	text "Sme tu iba dvaja," ; text "There are only two"
	line "takze sme stale" ; line "of us, so we're"
	cont "zaneprazdneni." ; cont "always busy."
	done

AideText_TheftTestimony:
	text "Vonku bolo pocut" ; text "There was a loud"
	line "velky hluk…" ; line "noise outside…"

	para "Ked sme sa isli" ; para "When we went to"
	line "pozriet, niekto" ; line "look, someone"
	cont "ukradol #MONa." ; cont "stole a #MON."

	para "Neuveritelne, ze" ; para "It's unbelievable"
	line "by to niekto do-" ; line "that anyone would"
	cont "kazal spravit!" ; cont "do that!"

	para "…och… Ten ukrad-" ; para "…sigh… That"
	line "nuty #MON." ; line "stolen #MON."

	para "Ako sa mu asi" ; para "I wonder how it's"
	line "dari." ; line "doing."

	para "#MON vychovany" ; para "They say a #MON"
	line "zlym trenerom sa" ; line "raised by a bad"

	para "tiez stane" ; para "person turns bad"
	line "zlym." ; line "itself."
	done

AideText_GiveYouBalls:
	text "<PLAY_G>!"

	para "Pouzi ich na svoj" ; para "Use these on your"
	line "#DEX quest!" ; line "#DEX quest!"
	done

AideText_ExplainBalls:
	text "Na naplnenie" ; text "To add to your"
	line "#DEX musis" ; line "#DEX, you have"
	cont "chytat #MONov." ; cont "to catch #MON."

	para "Hadz # BALLS" ; para "Throw # BALLS"
	line "na divych #MONov" ; line "at wild #MON"
	cont "aby si ich chytil." ; cont "to get them."
	done

ElmsLabOfficerText1:
	text "Pocul som, ze" ; text "I heard a #MON"
	line "ukradli #MONa…" ; line "was stolen here…"

	para "Zrovna som si" ; para "I was just getting"
	line "spisal informacie" ; line "some information"
	cont "od PROF.ELMa." ; cont "from PROF.ELM."

	para "Udajne to bol" ; para "Apparently, it was"
	line "mladik s dlhymi" ; line "a young male with"
	cont "cervenymi vlasmi…" ; cont "long, red hair…"

	para "Coze?" ; para "What?"

	para "Ty si s takym" ; para "You battled a"
	line "trenerom zapasil?" ; line "trainer like that?"

	para "Zistil si, ako" ; para "Did you happen to"
	line "sa vola?" ; line "get his name?"
	done

ElmsLabOfficerText2:
	text "OK! <RIVAL>" ; text "OK! So <RIVAL>"
	line "je teda jeho meno." ; line "was his name."

	para "Dakujem za pomoc" ; para "Thanks for helping"
	line "pri vysetrovani!" ; line "my investigation!"
	done

ElmsLabWindowText1:
	text "Okno je otvorene." ; text "The window's open."

	para "Dnu fuka prijemny" ; para "A pleasant breeze"
	line "vanok." ; line "is blowing in."
	done

ElmsLabWindowText2:
	text "Dostal sa sem" ; text "He broke in"
	line "tadialto!" ; line "through here!"
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> otvoril" ; text "<PLAYER> opened a"
	line "knihu." ; line "book."

	para "Tip c.1:" ; para "Travel Tip 1:"

	para "Stlac START pre" ; para "Press START to"
	line "otvorenie MENU." ; line "open the MENU."
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> otvoril" ; text "<PLAYER> opened a"
	line "knihu." ; line "book."

	para "Tip c.2:" ; para "Travel Tip 2:"

	para "Uloz si svoj vylet" ; para "Record your trip"
	line "s ULOZIT!" ; line "with SAVE!"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> otvoril" ; text "<PLAYER> opened a"
	line "knihu." ; line "book."

	para "Tip c.3:" ; para "Travel Tip 3:"

	para "Otvor BATOH a" ; para "Open your PACK and"
	line "stlac VYBRAT na" ; line "press SELECT to"
	cont "pohyb predmetov." ; cont "move items."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> otvoril" ; text "<PLAYER> opened a"
	line "knihu." ; line "book."

	para "Tip c.4:" ; para "Travel Tip 4:"

	para "Skontroluj #MON" ; para "Check your #MON"
	line "utoky. Stlac tla-" ; line "moves. Press the"

	para "citko A na preho-" ; para "A Button to switch"
	line "denie utokov." ; line "moves."
	done

ElmsLabTrashcanText:
	text "Je tam obal od" ; text "The wrapper from"
	line "keksiku, ktory" ; line "the snack PROF.ELM"
	cont "zjedol PROF.ELM…" ; cont "ate is in there…"
	done

ElmsLabPCText:
	text "ZAZNAMY Z" ; text "OBSERVATIONS ON"
	line "#MON EVOLUCIE" ; line "#MON EVOLUTION"

	para "…Pise sa na" ; para "…It says on the"
	line "obrazovke…" ; line "screen…"
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	def_coord_events
	coord_event  4,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript
	coord_event  5,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls2

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, ElmsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, ElmsLabPC

	def_object_events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	object_event  5,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CopScript, EVENT_COP_IN_ELMS_LAB
