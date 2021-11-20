	object_const_def
	const BATTLETOWER1F_RECEPTIONIST
	const BATTLETOWER1F_YOUNGSTER
	const BATTLETOWER1F_COOLTRAINER_F
	const BATTLETOWER1F_BUG_CATCHER
	const BATTLETOWER1F_GRANNY

BattleTower1F_MapScripts:
	def_scene_scripts
	scene_script .Scene0 ; SCENE_DEFAULT
	scene_script .Scene1 ; SCENE_FINISHED

	def_callbacks

.Scene0:
	setval BATTLETOWERACTION_CHECKSAVEFILEISYOURS
	special BattleTowerAction
	iffalse .SkipEverything
	setval BATTLETOWERACTION_GET_CHALLENGE_STATE ; readmem sBattleTowerChallengeState
	special BattleTowerAction
	ifequal $0, .SkipEverything
	ifequal $2, .LeftWithoutSaving
	ifequal $3, .SkipEverything
	ifequal $4, .SkipEverything
	opentext
	writetext Text_WeveBeenWaitingForYou
	waitbutton
	closetext
	sdefer Script_ResumeBattleTowerChallenge
	end

.LeftWithoutSaving
	sdefer BattleTower_LeftWithoutSaving
	setval BATTLETOWERACTION_CHALLENGECANCELED
	special BattleTowerAction
	setval BATTLETOWERACTION_06
	special BattleTowerAction
.SkipEverything:
	setscene SCENE_FINISHED
.Scene1:
	end

BattleTower1FRulesSign:
	opentext
	writetext Text_ReadBattleTowerRules
	yesorno
	iffalse .skip
	writetext Text_BattleTowerRules
	waitbutton
.skip:
	closetext
	end

BattleTower1FReceptionistScript:
	setval BATTLETOWERACTION_GET_CHALLENGE_STATE ; readmem sBattleTowerChallengeState
	special BattleTowerAction
	ifequal $3, Script_BeatenAllTrainers2 ; maps/BattleTowerBattleRoom.asm
	opentext
	writetext Text_BattleTowerWelcomesYou
	promptbutton
	setval BATTLETOWERACTION_CHECK_EXPLANATION_READ ; if new save file: bit 1, [sBattleTowerSaveFileFlags]
	special BattleTowerAction
	ifnotequal $0, Script_Menu_ChallengeExplanationCancel
	sjump Script_BattleTowerIntroductionYesNo

Script_Menu_ChallengeExplanationCancel:
	writetext Text_WantToGoIntoABattleRoom
	setval TRUE
	special Menu_ChallengeExplanationCancel
	ifequal 1, Script_ChooseChallenge
	ifequal 2, Script_BattleTowerExplanation
	sjump Script_BattleTowerHopeToServeYouAgain

Script_ChooseChallenge:
	setval BATTLETOWERACTION_RESETDATA ; ResetBattleTowerTrainerSRAM
	special BattleTowerAction
	special CheckForBattleTowerRules
	ifnotequal FALSE, Script_WaitButton
	writetext Text_SaveBeforeEnteringBattleRoom
	yesorno
	iffalse Script_Menu_ChallengeExplanationCancel
	setscene SCENE_DEFAULT
	special TryQuickSave
	iffalse Script_Menu_ChallengeExplanationCancel
	setscene SCENE_FINISHED
	setval BATTLETOWERACTION_SET_EXPLANATION_READ ; set 1, [sBattleTowerSaveFileFlags]
	special BattleTowerAction
	special BattleTowerRoomMenu
	ifequal $a, Script_Menu_ChallengeExplanationCancel
	ifnotequal $0, Script_MobileError
	setval BATTLETOWERACTION_11
	special BattleTowerAction
	writetext Text_RightThisWayToYourBattleRoom
	waitbutton
	closetext
	setval BATTLETOWERACTION_CHOOSEREWARD
	special BattleTowerAction
	sjump Script_WalkToBattleTowerElevator

Script_ResumeBattleTowerChallenge:
	closetext
	setval BATTLETOWERACTION_LOADLEVELGROUP ; load choice of level group
	special BattleTowerAction
Script_WalkToBattleTowerElevator:
	musicfadeout MUSIC_NONE, 8
	setmapscene BATTLE_TOWER_BATTLE_ROOM, SCENE_DEFAULT
	setmapscene BATTLE_TOWER_ELEVATOR, SCENE_DEFAULT
	setmapscene BATTLE_TOWER_HALLWAY, SCENE_DEFAULT
	follow BATTLETOWER1F_RECEPTIONIST, PLAYER
	applymovement BATTLETOWER1F_RECEPTIONIST, MovementData_BattleTower1FWalkToElevator
	setval BATTLETOWERACTION_0A
	special BattleTowerAction
	warpsound
	disappear BATTLETOWER1F_RECEPTIONIST
	stopfollow
	applymovement PLAYER, MovementData_BattleTowerHallwayPlayerEntersBattleRoom
	warpcheck
	end

Script_GivePlayerHisPrize:
	setval BATTLETOWERACTION_1C
	special BattleTowerAction
	setval BATTLETOWERACTION_GIVEREWARD
	special BattleTowerAction
	ifequal POTION, Script_YourPackIsStuffedFull
	getitemname STRING_BUFFER_4, USE_SCRIPT_VAR
	giveitem ITEM_FROM_MEM, 5
	writetext Text_PlayerGotFive
	setval BATTLETOWERACTION_1D
	special BattleTowerAction
	closetext
	end

Script_YourPackIsStuffedFull:
	writetext Text_YourPackIsStuffedFull
	waitbutton
	closetext
	end

Script_BattleTowerIntroductionYesNo:
	writetext Text_WouldYouLikeToHearAboutTheBattleTower
	yesorno
	iffalse Script_BattleTowerSkipExplanation
Script_BattleTowerExplanation:
	writetext Text_BattleTowerIntroduction_2
Script_BattleTowerSkipExplanation:
	setval BATTLETOWERACTION_SET_EXPLANATION_READ
	special BattleTowerAction
	sjump Script_Menu_ChallengeExplanationCancel

Script_BattleTowerHopeToServeYouAgain:
	writetext Text_WeHopeToServeYouAgain
	waitbutton
	closetext
	end

Script_MobileError2: ; unreferenced
	special BattleTowerMobileError
	closetext
	end

Script_WaitButton:
	waitbutton
	closetext
	end

Script_ChooseChallenge2: ; unreferenced
	writetext Text_SaveBeforeEnteringBattleRoom
	yesorno
	iffalse Script_Menu_ChallengeExplanationCancel
	special TryQuickSave
	iffalse Script_Menu_ChallengeExplanationCancel
	setval BATTLETOWERACTION_SET_EXPLANATION_READ
	special BattleTowerAction
	special Function1700ba
	ifequal $a, Script_Menu_ChallengeExplanationCancel
	ifnotequal $0, Script_MobileError
	writetext Text_ReceivedAListOfLeadersOnTheHonorRoll
	turnobject BATTLETOWER1F_RECEPTIONIST, LEFT
	writetext Text_PleaseConfirmOnThisMonitor
	waitbutton
	turnobject BATTLETOWER1F_RECEPTIONIST, DOWN
	closetext
	end

Script_StartChallenge: ; unreferenced
	setval BATTLETOWERACTION_LEVEL_CHECK
	special BattleTowerAction
	ifnotequal $0, Script_AMonLevelExceeds
	setval BATTLETOWERACTION_UBERS_CHECK
	special BattleTowerAction
	ifnotequal $0, Script_MayNotEnterABattleRoomUnderL70
	special CheckForBattleTowerRules
	ifnotequal FALSE, Script_WaitButton
	setval BATTLETOWERACTION_05
	special BattleTowerAction
	ifequal $0, .zero
	writetext Text_CantBeRegistered_PreviousRecordDeleted
	sjump .continue

.zero
	writetext Text_CantBeRegistered
.continue
	yesorno
	iffalse Script_Menu_ChallengeExplanationCancel
	writetext Text_SaveBeforeReentry
	yesorno
	iffalse Script_Menu_ChallengeExplanationCancel
	setscene SCENE_DEFAULT
	special TryQuickSave
	iffalse Script_Menu_ChallengeExplanationCancel
	setscene SCENE_FINISHED
	setval BATTLETOWERACTION_06
	special BattleTowerAction
	setval BATTLETOWERACTION_12
	special BattleTowerAction
	writetext Text_RightThisWayToYourBattleRoom
	waitbutton
	sjump Script_ResumeBattleTowerChallenge

Script_ReachedBattleLimit: ; unreferenced
	writetext Text_FiveDayBattleLimit_Mobile
	waitbutton
	sjump Script_BattleTowerHopeToServeYouAgain

Script_AMonLevelExceeds:
	writetext Text_AMonLevelExceeds
	waitbutton
	sjump Script_Menu_ChallengeExplanationCancel

Script_MayNotEnterABattleRoomUnderL70:
	writetext Text_MayNotEnterABattleRoomUnderL70
	waitbutton
	sjump Script_Menu_ChallengeExplanationCancel

Script_MobileError:
	special BattleTowerMobileError
	closetext
	end

BattleTower_LeftWithoutSaving:
	opentext
	writetext Text_BattleTower_LeftWithoutSaving
	waitbutton
	sjump Script_BattleTowerHopeToServeYouAgain

BattleTower1FYoungsterScript:
	faceplayer
	opentext
	writetext Text_BattleTowerYoungster
	waitbutton
	closetext
	turnobject BATTLETOWER1F_YOUNGSTER, RIGHT
	end

BattleTower1FCooltrainerFScript:
	jumptextfaceplayer Text_BattleTowerCooltrainerF

BattleTower1FBugCatcherScript:
	jumptextfaceplayer Text_BattleTowerBugCatcher

BattleTower1FGrannyScript:
	jumptextfaceplayer Text_BattleTowerGranny

MovementData_BattleTower1FWalkToElevator:
	step UP
	step UP
	step UP
	step UP
	step UP
MovementData_BattleTowerHallwayPlayerEntersBattleRoom:
	step UP
	step_end

MovementData_BattleTowerElevatorExitElevator:
	step DOWN
	step_end

MovementData_BattleTowerHallwayWalkTo1020Room:
	step RIGHT
	step RIGHT
MovementData_BattleTowerHallwayWalkTo3040Room:
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	turn_head LEFT
	step_end

MovementData_BattleTowerHallwayWalkTo90100Room:
	step LEFT
	step LEFT
MovementData_BattleTowerHallwayWalkTo7080Room:
	step LEFT
	step LEFT
MovementData_BattleTowerHallwayWalkTo5060Room:
	step LEFT
	step LEFT
	step UP
	step LEFT
	turn_head RIGHT
	step_end

MovementData_BattleTowerBattleRoomPlayerWalksIn:
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

MovementData_BattleTowerBattleRoomOpponentWalksIn:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	turn_head LEFT
	step_end

MovementData_BattleTowerBattleRoomOpponentWalksOut:
	turn_head UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

MovementData_BattleTowerBattleRoomReceptionistWalksToPlayer:
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	slow_step UP
	step_end

MovementData_BattleTowerBattleRoomReceptionistWalksAway:
	slow_step DOWN
	slow_step DOWN
	slow_step LEFT
	slow_step LEFT
	turn_head RIGHT
	step_end

MovementData_BattleTowerBattleRoomPlayerTurnsToFaceReceptionist:
	turn_head DOWN
	step_end

MovementData_BattleTowerBattleRoomPlayerTurnsToFaceNextOpponent:
	turn_head RIGHT
	step_end

Text_BattleTowerWelcomesYou:
	text "BATTLE TOWER" ; text "BATTLE TOWER"
	line "ta vita!" ; line "welcomes you!"

	para "Zavediem ta do" ; para "I could show you"
	line "BATTLE ROOM." ; line "to a BATTLE ROOM."
	done

Text_WantToGoIntoABattleRoom:
	text "Chces ist do" ; text "Want to go into a"
	line "BATTLE ROOM?" ; line "BATTLE ROOM?"
	done

Text_RightThisWayToYourBattleRoom:
	text "Tadialto do tvojej" ; text "Right this way to"
	line "BATTLE ROOM." ; line "your BATTLE ROOM."
	done

Text_BattleTowerIntroduction_1: ; unreferenced
	text "BATTLE TOWER is a"
	line "facility made for"
	cont "#MON battles."

	para "Countless #MON"
	line "trainers gather"

	para "from all over to"
	line "hold battles in"

	para "specially designed"
	line "BATTLE ROOMS."

	para "There are many"
	line "BATTLE ROOMS in"
	cont "the BATTLE TOWER."

	para "Each ROOM holds"
	line "seven trainers."

	para "If you defeat the"
	line "seven in a ROOM,"

	para "and you have a"
	line "good record, you"

	para "could become the"
	line "ROOM's LEADER."

	para "All LEADERS will"
	line "be recorded in the"

	para "HONOR ROLL for"
	line "posterity."

	para "You may challenge"
	line "in up to five"

	para "BATTLE ROOMS each"
	line "day."

	para "However, you may"
	line "battle only once a"

	para "day in any given"
	line "ROOM."

	para "To interrupt a"
	line "session, you must"

	para "SAVE. If not, you"
	line "won't be able to"

	para "resume your ROOM"
	line "challenge."

	para ""
	done

Text_BattleTowerIntroduction_2:
	text "BATTLE TOWER je" ; text "BATTLE TOWER is a"
	line "zariadenie na" ; line "facility made for"
	cont "#MON zapasy." ; cont "#MON battles."

	para "Nespocet #MON" ; para "Countless #MON"
	line "trenerov sa stre-"  ;line "trainers gather"

	para "tava na" ; para "from all over to"
	line "zapasy v specialne" ; line "hold battles in"

	para "navrhnutych" ; para "specially designed"
	line "BATTLE ROOMS." ; line "BATTLE ROOMS."

	para "Je mnoho" ; para "There are many"
	line "BATTLE ROOMS v" ; line "BATTLE ROOMS in"
	cont "v BATTLE TOWER." ; cont "the BATTLE TOWER."

	para "Kazda ROOM je pre" ; para "Each ROOM holds"
	line "7 trenerov." ; line "seven trainers."

	para "Poraz vsetkych a" ; para "Beat them all, and"
	line "vyhras cenu." ; line "win a prize."

	para "Na prerusenie" ; para "To interrupt a"
	line "musis hru ulozit." ; line "session, you must"

	para "Ak neulozis, ne-" ; para "SAVE. If not, you"
	line "budes sa moct vra-" ; line "won't be able to"

	para "tit do ROOM" ; para "resume your ROOM"
	line "vyzvy." ; line "challenge."

	para ""
	done

Text_ReceivedAListOfLeadersOnTheHonorRoll:
	text "Dostal si zoznam" ; text "Received a list of"
	line "LEADERov na" ; line "LEADERS on the"
	cont "HONOR ROLL." ; cont "HONOR ROLL."

	para ""
	done

Text_PleaseConfirmOnThisMonitor:
	text "Prosim potvrd na" ; text "Please confirm on"
	line "tomto monitore." ; line "this monitor."
	done

Text_ThankYou: ; unreferenced
	text "Thank you!"

	para ""
	done

Text_ThanksForVisiting:
	text "Dakujeme za" ; text "Thanks for"
	line "navstevu!" ; line "visiting!"
	done

Text_BeatenAllTheTrainers_Mobile: ; unreferenced
	text "Congratulations!"

	para "You've beaten all"
	line "the trainers!"

	para "Your feat may be"
	line "worth registering,"

	para "<PLAYER>. With your"
	line "results, you may"

	para "be chosen as a"
	line "ROOM LEADER."

	para ""
	done

Text_CongratulationsYouveBeatenAllTheTrainers:
	text "Gratulujeme!" ; text "Congratulations!"

	para "Porazil si vset-" ; para "You've beaten all"
	line "kych trenerov!" ; line "the trainers!"

	para "Vyhravas za to" ; para "For that, you get"
	line "tuto skvelu cenu!" ; line "this great prize!"

	para ""
	done

Text_AskRegisterRecord_Mobile: ; unreferenced
	text "Would you like to"
	line "register your"

	para "record with the"
	line "CENTER?"
	done

Text_PlayerGotFive:
	text "<PLAYER> dostal 5" ; text "<PLAYER> got five"
	line "@"
	text_ram wStringBuffer4
	text "!@"
	sound_item
	text_promptbutton
	text_end

Text_YourPackIsStuffedFull:
	text "Ups, tvoj BATOH je" ; text "Oops, your PACK is"
	line "preplneny." ; line "stuffed full."

	para "Sprav si miesto" ; para "Please make room"
	line "a vrat sa." ; line "and come back."
	done

Text_YourRegistrationIsComplete: ; unreferenced
	text "Your registration"
	line "is complete."

	para "Please come again!"
	done

Text_WeHopeToServeYouAgain:
	text "Dufame, ze ti opat" ; text "We hope to serve"
	line "posluzime." ; line "you again."
	done

Text_PleaseStepThisWay:
	text "Tadialto," ; text "Please step this"
	line "prosim." ; line "way."
	done

Text_WouldYouLikeToHearAboutTheBattleTower:
	text "Chces porozpravat" ; text "Would you like to"
	line "o tejto" ; line "hear about the"
	cont "BATTLE TOWER?" ; cont "BATTLE TOWER?"
	done

Text_CantBeRegistered:
	text "Tvoj zaznam z" ; text "Your record from"
	line "predchadzajucej" ; line "the previous"

	para "BATTLE ROOM nemoze" ; para "BATTLE ROOM can't"
	line "byt ulozeny. OK?" ; line "be registered. OK?"
	done

Text_CantBeRegistered_PreviousRecordDeleted:
	text "Tvoj zaznam z" ; text "Your record from"
	line "predchadzajucej" ; line "the previous"

	para "BATTLE ROOM nemoze" ; para "BATTLE ROOM can't"
	line "byt ulozeny." ; line "be registered."

	para "Aktualny zaznam" ; para "Also, the existing"
	line "bude taktiez" ; line "record will be"
	cont "zmazany. OK?" ; cont "deleted. OK?"
	done

Text_CheckTheLeaderHonorRoll: ; unreferenced
	text "Check the LEADER"
	line "HONOR ROLL?"
	done

Text_ReadBattleTowerRules:
	text "Pravidla BATTLE" ; text "BATTLE TOWER rules"
	line "TOWER su tu." ; line "are written here."

	para "Precitat?" ; para "Read the rules?"
	done

Text_BattleTowerRules:
	text "Mozes pouzit 3" ; text "Three #MON may"
	line "#MONov." ; line "enter battles."

	para "Vsetci traja musia" ; para "All three must be"
	line "byt rozni." ; line "different."

	para "Drzane predmety" ; para "The items they"
	line "musia byt taktiez" ; line "hold must also be"
	cont "rozdielne." ; cont "different."

	para "Niektori #MON" ; para "Certain #MON"
	line "moze mat aj" ; line "may also have"

	para "levelove" ; para "level restrictions"
	line "obmedzenie." ; line "placed on them."
	done

Text_BattleTower_LeftWithoutSaving:
	text "Prepacte!" ; text "Excuse me!"
	line "Neulozili ste si" ; line "You didn't SAVE"

	para "hru pre odchodom" ; para "before exiting"
	line "z BATTLE ROOM." ; line "the BATTLE ROOM."

	para "Je mi to luto," ; para "I'm awfully sorry,"
	line "ale vasa vyzva" ; line "but your challenge"

	para "bude vyhlasena za" ; para "will be declared"
	line "neplatnu." ; line "invalid."
	done

Text_YourMonWillBeHealedToFullHealth:
	text "Tvoji #MONi" ; text "Your #MON will"
	line "budu doplna" ; line "be healed to full"
	cont "vylieceni." ; cont "health."
	done

Text_NextUpOpponentNo:
	text "Dalej, super" ; text "Next up, opponent"
	line "c.@" ; line "no.@"
	text_ram wStringBuffer3
	text ". Pripraveny?" ; text ". Ready?"
	done

Text_SaveBeforeConnecting_Mobile: ; unreferenced
	text "Your session will"
	line "be SAVED before"

	para "connecting with"
	line "the CENTER."
	done

Text_SaveBeforeEnteringBattleRoom:
	text "Pred vstupom do" ; text "Before entering"
	line "BATTLE ROOM" ; line "the BATTLE ROOM,"

	para "bude tvoj priebeh" ; para "your progress will"
	line "ulozeny." ; line "be saved."
	done

Text_SaveAndEndTheSession:
	text "Ulozit a ukoncit?" ; text "SAVE and end the"
	;line "session?" ; line "session?"
	done

Text_SaveBeforeReentry:
	text "Tvoj priebeh bude" ; text "Your record will"
	line "ulozeny, predtym" ; line "be SAVED before"

	para "nez sa vratis do" ; para "you go back into"
	line "minulej ROOM." ; line "the previous ROOM."
	done

Text_CancelYourBattleRoomChallenge:
	text "Zrusit BATTLE" ; text "Cancel your BATTLE"
	line "ROOM zapas?" ; line "ROOM challenge?"
	done

Text_RegisterRecordOnFile_Mobile: ; unreferenced
	text "Mame od teba" ; text "We have your"
	line "minuly zaznam." ; line "previous record on"

	para "Chces si ho" ; para "file. Would you"
	line "zaregistrovat" ; line "like to register"
	cont "v CENTRE?" ; cont "it at the CENTER?"
	done

Text_WeveBeenWaitingForYou:
	text "Ocakavali sme ta." ; text "We've been waiting"
	line "Podte tadialto do" ; line "for you. This way"

	para "BATTLE ROOM," ; para "to a BATTLE ROOM,"
	line "prosim." ; line "please."
	done

Text_FiveDayBattleLimit_Mobile:
	text "Kazdy den mozes" ; text "You may enter only"
	line "vstupit iba do 5" ; line "five BATTLE ROOMS"
	cont "BATTLE ROOMS." ; cont "each day."

	para "Vrat sa prosim" ; para "Please come back"
	line "zajtra." ; line "tomorrow."
	done

Text_TooMuchTimeElapsedNoRegister:
	text "Prepac, nie je" ; text "Sorry, but it's"
	line "mozne registrovat" ; line "not possible to"

	para "tvoj zaznam v" ; para "register your"
	line "CENTRE, pretoze" ; line "current record at"

	para "uplynulo prilis" ; para "the CENTER because"
	line "mnoho casu od" ; line "too much time has"

	para "zaciatku tvojej" ; para "elapsed since the"
	line "vyzvy." ; line "start of your"
	;cont "challenge." ; cont "challenge."
	done

Text_RegisterRecordTimedOut_Mobile: ; unreferenced
; duplicate of Text_TooMuchTimeElapsedNoRegister
	text "Sorry, but it's"
	line "not possible to"

	para "register your most"
	line "recent record at"

	para "the CENTER because"
	line "too much time has"

	para "elapsed since the"
	line "start of your"
	cont "challenge."
	done

Text_AMonLevelExceeds:
	text "Jeden alebo viac" ; text "One or more of"
	line "#MONov" ; line "your #MON's"
	cont "presahuje level @" ; cont "levels exceeds @"
	text_decimal wScriptVar, 1, 3
	text "."
	done

Text_MayNotEnterABattleRoomUnderL70:
	text_ram wcd49
	text " nemoze" ; text " may not"
	line "vstupit do BATTLE" ; line "enter a BATTLE"
	cont "ROOM pod L70." ; cont "ROOM under L70."

	para "Tento BATTLE ROOM" ; para "This BATTLE ROOM"
	line "je pre L@" ; line "is for L@"
	text_decimal wScriptVar, 1, 3
	text "."
	done

Text_BattleTowerYoungster:
	text "Porazeny prvym" ; text "Destroyed by the"
	line "superom za" ; line "first opponent in"

	para "kratku chvilu…" ; para "no time at all…"
	line "Som nanic…" ; line "I'm no good…"
	done

Text_BattleTowerCooltrainerF:
	text "Je tu kopa" ; text "There are lots of"
	line "BATTLE ROOMS, ale" ; line "BATTLE ROOMS, but"

	para "ja ich vyhram" ; para "I'm going to win"
	line "vsetky!" ; line "them all!"
	done

Text_BattleTowerGranny:
	text "Je to vycerpavaju-" ; text "It's a grueling"
	line "ce, nepouzivat" ; line "task, not being"

	para "ziadne predmety v" ; para "able to use items"
	line "zapase." ; line "in battle."

	para "Drzanie predmetov" ; para "Making your"
	line "#MONmi je klucom" ; line "#MON hold items"

	para "k vitazstvu" ; para "is the key to"
	line "v zapasoch." ; line "winning battles."
	done

Text_BattleTowerBugCatcher:
	text "Snazim sa zistit," ; text "I'm trying to see"
	line "ako daleko sa" ; line "how far I can go"

	para "dostanem s hmyzim" ; para "using just bug"
	line "#MONom." ; line "#MON."

	para "Snad nestretnem" ; para "Don't let there be"
	line "ohniveho #MONa…" ; line "any fire #MON…"
	done

BattleTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, BATTLE_TOWER_OUTSIDE, 3
	warp_event  8,  9, BATTLE_TOWER_OUTSIDE, 4
	warp_event  7,  0, BATTLE_TOWER_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, BattleTower1FRulesSign

	def_object_events
	object_event  7,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower1FReceptionistScript, -1
	object_event 14,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BattleTower1FYoungsterScript, -1
	object_event  4,  9, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BattleTower1FCooltrainerFScript, -1
	object_event  1,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleTower1FBugCatcherScript, -1
	object_event 14,  3, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower1FGrannyScript, -1
