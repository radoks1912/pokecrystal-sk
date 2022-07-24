	object_const_def
	const KURTSHOUSE_KURT1
	const KURTSHOUSE_TWIN1
	const KURTSHOUSE_SLOWPOKE
	const KURTSHOUSE_KURT2
	const KURTSHOUSE_TWIN2

KurtsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .KurtCallback

.KurtCallback:
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iffalse .Done
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue .Done
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .MakingBalls
	disappear KURTSHOUSE_KURT2
	appear KURTSHOUSE_KURT1
	disappear KURTSHOUSE_TWIN2
	appear KURTSHOUSE_TWIN1
	endcallback

.MakingBalls:
	disappear KURTSHOUSE_KURT1
	appear KURTSHOUSE_KURT2
	disappear KURTSHOUSE_TWIN1
	appear KURTSHOUSE_TWIN2
.Done:
	endcallback

Kurt1:
	faceplayer
	opentext
	checkevent EVENT_KURT_GAVE_YOU_LURE_BALL
	iftrue .GotLureBall
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .ClearedSlowpokeWell
	writetext KurtsHouseKurtMakingBallsMustWaitText
	waitbutton
	closetext
	special FadeOutMusic
	setevent EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	readvar VAR_FACING
	ifequal UP, .RunAround
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtExitHouseMovement
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	waitsfx
	special RestartMapMusic
	end

.RunAround:
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtGoAroundPlayerThenExitHouseMovement
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	waitsfx
	special RestartMapMusic
	end

.ClearedSlowpokeWell:
	writetext KurtsHouseKurtHonoredToMakeBallsText
	promptbutton
	verbosegiveitem LURE_BALL
	iffalse .NoRoomForBall
	setevent EVENT_KURT_GAVE_YOU_LURE_BALL
.GotLureBall:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .WaitForApricorns
	checkevent EVENT_GAVE_KURT_RED_APRICORN
	iftrue .GiveLevelBall
	checkevent EVENT_GAVE_KURT_BLU_APRICORN
	iftrue .GiveLureBall
	checkevent EVENT_GAVE_KURT_YLW_APRICORN
	iftrue .GiveMoonBall
	checkevent EVENT_GAVE_KURT_GRN_APRICORN
	iftrue .GiveFriendBall
	checkevent EVENT_GAVE_KURT_WHT_APRICORN
	iftrue .GiveFastBall
	checkevent EVENT_GAVE_KURT_BLK_APRICORN
	iftrue .GiveHeavyBall
	checkevent EVENT_GAVE_KURT_PNK_APRICORN
	iftrue .GiveLoveBall
	checkevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	iftrue .CanGiveGSBallToKurt
.NoGSBall:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .CheckApricorns
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .CheckApricorns
	writetext KurtsHouseKurtBallsFromApricornsText
	waitbutton
.CheckApricorns:
	checkitem RED_APRICORN
	iftrue .AskApricorn
	checkitem BLU_APRICORN
	iftrue .AskApricorn
	checkitem YLW_APRICORN
	iftrue .AskApricorn
	checkitem GRN_APRICORN
	iftrue .AskApricorn
	checkitem WHT_APRICORN
	iftrue .AskApricorn
	checkitem BLK_APRICORN
	iftrue .AskApricorn
	checkitem PNK_APRICORN
	iftrue .AskApricorn
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .ThatTurnedOutGreat
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .IMakeBallsFromApricorns
	closetext
	end

.IMakeBallsFromApricorns:
	writetext KurtsHouseKurtBallsFromApricornsText
	waitbutton
	closetext
	end

.AskApricorn:
	writetext KurtsHouseKurtAskYouHaveAnApricornText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	special SelectApricornForKurt
	ifequal FALSE, .Cancel
	ifequal BLU_APRICORN, .Blu
	ifequal YLW_APRICORN, .Ylw
	ifequal GRN_APRICORN, .Grn
	ifequal WHT_APRICORN, .Wht
	ifequal BLK_APRICORN, .Blk
	ifequal PNK_APRICORN, .Pnk
; .Red
	setevent EVENT_GAVE_KURT_RED_APRICORN
	sjump .GaveKurtApricorns

.Blu:
	setevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump .GaveKurtApricorns

.Ylw:
	setevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump .GaveKurtApricorns

.Grn:
	setevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump .GaveKurtApricorns

.Wht:
	setevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump .GaveKurtApricorns

.Blk:
	setevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump .GaveKurtApricorns

.Pnk:
	setevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump .GaveKurtApricorns

.GaveKurtApricorns:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setflag ENGINE_KURT_MAKING_BALLS
.WaitForApricorns:
	writetext KurtsHouseKurtItWillTakeADayText
	waitbutton
	closetext
	end

.Cancel:
	writetext KurtsHouseKurtThatsALetdownText
	waitbutton
	closetext
	end

._ThatTurnedOutGreat:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
.ThatTurnedOutGreat:
	writetext KurtsHouseKurtTurnedOutGreatText
	waitbutton
.NoRoomForBall:
	closetext
	end

.GiveLevelBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LEVEL_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_RED_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveLureBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LURE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLU_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveMoonBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar MOON_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_YLW_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveFriendBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FRIEND_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_GRN_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveFastBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar FAST_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_WHT_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveHeavyBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar HEAVY_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_BLK_APRICORN
	sjump ._ThatTurnedOutGreat

.GiveLoveBall:
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue KurtMakingBallsScript
	writetext KurtsHouseKurtJustFinishedYourBallText
	promptbutton
	verbosegiveitemvar LOVE_BALL, VAR_KURT_APRICORNS
	iffalse .NoRoomForBall
	clearevent EVENT_GAVE_KURT_PNK_APRICORN
	sjump ._ThatTurnedOutGreat

.CanGiveGSBallToKurt:
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iftrue .GaveGSBallToKurt
	checkitem GS_BALL
	iffalse .NoGSBall
	writetext KurtsHouseKurtWhatIsThatText
	waitbutton
	closetext
	setevent EVENT_GAVE_GS_BALL_TO_KURT
	takeitem GS_BALL
	setflag ENGINE_KURT_MAKING_BALLS
	end

.GaveGSBallToKurt:
	checkflag ENGINE_KURT_MAKING_BALLS
	iffalse .NotMakingBalls
	writetext KurtsHouseKurtImCheckingItNowText
	waitbutton
	writetext KurtsHouseKurtAhHaISeeText
	waitbutton
	closetext
	end

.NotMakingBalls:
	writetext KurtsHouseKurtThisBallStartedToShakeText
	waitbutton
	closetext
	setevent EVENT_FOREST_IS_RESTLESS
	clearevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	clearevent EVENT_GAVE_GS_BALL_TO_KURT
	special FadeOutMusic
	pause 20
	showemote EMOTE_SHOCK, KURTSHOUSE_KURT1, 30
	readvar VAR_FACING
	ifequal UP, .GSBallRunAround
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtExitHouseMovement
	sjump .KurtHasLeftTheBuilding

.GSBallRunAround:
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtGoAroundPlayerThenExitHouseMovement
.KurtHasLeftTheBuilding:
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	clearevent EVENT_AZALEA_TOWN_KURT
	waitsfx
	special RestartMapMusic
	setmapscene AZALEA_TOWN, SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL
	end

Kurt2:
	faceplayer
	opentext
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iftrue KurtScript_ImCheckingItNow
KurtMakingBallsScript:
	checkevent EVENT_BUGGING_KURT_TOO_MUCH
	iffalse Script_FirstTimeBuggingKurt
	writetext KurtsHouseKurtDontBotherMeText
	waitbutton
	closetext
	turnobject KURTSHOUSE_KURT2, UP
	end

Script_FirstTimeBuggingKurt:
	writetext KurtsHouseKurtGranddaughterHelpingWorkFasterText
	waitbutton
	closetext
	turnobject KURTSHOUSE_KURT2, UP
	setevent EVENT_BUGGING_KURT_TOO_MUCH
	end

KurtScript_ImCheckingItNow:
	writetext KurtsHouseKurtImCheckingItNowText
	waitbutton
	turnobject KURTSHOUSE_KURT2, UP
	writetext KurtsHouseKurtAhHaISeeText
	waitbutton
	closetext
	end

KurtsGranddaughter1:
	faceplayer
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue KurtsGranddaughter2Subscript
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue KurtsGranddaughterFunScript
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue .Lonely
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .Dad
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .SlowpokeBack
	checkevent EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	iftrue .Lonely
	opentext
	writetext KurtsGranddaughterSlowpokeGoneText
	waitbutton
	closetext
	end

.SlowpokeBack:
	opentext
	writetext KurtsGranddaughterSlowpokeBackText
	waitbutton
	closetext
	end

.Lonely:
	opentext
	writetext KurtsGranddaughterLonelyText
	waitbutton
	closetext
	end

.Dad:
	opentext
	writetext KurtsGranddaughterDadText
	waitbutton
	closetext
	end

KurtsGranddaughter2:
	faceplayer
KurtsGranddaughter2Subscript:
	opentext
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iftrue .GSBall
	writetext KurtsGranddaughterHelpText
	waitbutton
	closetext
	turnobject KURTSHOUSE_TWIN2, RIGHT
	end

.GSBall:
	writetext KurtsGranddaughterGSBallText
	waitbutton
	closetext
	turnobject KURTSHOUSE_TWIN2, RIGHT
	end

KurtsGranddaughterFunScript:
	opentext
	writetext KurtsGranddaughterFunText
	waitbutton
	closetext
	end

KurtsHouseSlowpoke:
	faceplayer
	opentext
	writetext KurtsHouseSlowpokeText
	cry SLOWPOKE
	waitbutton
	closetext
	end

KurtsHouseOakPhoto:
	jumptext KurtsHouseOakPhotoText

KurtsHouseCelebiStatue:
	jumptext KurtsHouseCelebiStatueText

KurtsHouseBookshelf:
	jumpstd DifficultBookshelfScript

KurtsHouseRadio:
	jumpstd Radio2Script

KurtsHouseKurtExitHouseMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

KurtsHouseKurtGoAroundPlayerThenExitHouseMovement:
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

KurtsHouseKurtMakingBallsMustWaitText:
	text "Hm? Kto si?" ; text "Hm? Who are you?"

	para "<PLAYER>, hm?" ; para "<PLAYER>, eh? You"
	line "Chces vyrobit ne-" ; line "want me to make"
	cont "jake BALLS?" ; cont "some BALLS?"

	para "Prepac, bude to" ; para "Sorry, but that'll"
	line "musiet pockat." ; line "have to wait."

	para "Poznam TEAM" ; para "Do you know TEAM"
	line "ROCKET? Nevadi." ; line "ROCKET? Ah, don't"

	para "Poviem ti, o co" ; para "worry. I'll tell"
	line "ide." ; line "you anyhow."

	para "TEAM ROCKET je" ; para "TEAM ROCKET's an"
	line "zly gang, ktory" ; line "evil gang that"

	para "zneuziva #MONov" ; para "uses #MON for"
	line "na spinavu pracu." ; line "their dirty work."

	para "Udajne sa rozpadli" ; para "They're supposed"
	line "priblizne pred" ; line "to have disbanded"
	cont "tromi rokmi." ; cont "three years ago."

	para "Kazdopadne, prave" ; para "Anyway, they're at"
	line "su v STUDNI, a" ; line "the WELL, cutting"

	para "rezu chvosty" ; para "off SLOWPOKETAILS"
	line "SLOWPOKEom!" ; line "for sale!"

	para "Preto im pojdem" ; para "So I'm going to"
	line "dat bolestivu" ; line "go give them a"
	cont "lekciu!" ; cont "lesson in pain!"

	para "Drzte sa, SLOWPOKE" ; para "Hang on, SLOWPOKE!"
	line "Stary KURT je na" ; line "Old KURT is on his"
	cont "ceste!" ; cont "way!"
	done

KurtsHouseKurtHonoredToMakeBallsText:
	text "KURT: <PLAYER>!" ; text "KURT: Hi, <PLAYER>!"

	para "Drzal si sa ako" ; para "You handled your-"
	line "hrdina tam dole" ; line "self like a real"
	cont "v STUDNI." ; cont "hero at the WELL."

	para "Mas super styl!" ; para "I like your style!"

	para "Bude mi ctou vyro-" ; para "I would be honored"
	line "bit ti nejake" ; line "to make BALLS for"

	para "BALLS pre trenera," ; para "a trainer like"
	line "ako si ty." ; line "you."

	para "Toto je vsetko, co" ; para "This is all I have"
	line "mam, vezmi si to." ; line "now, but take it."
	done

KurtsHouseKurtBallsFromApricornsText:
	text "KURT: Robim BALLS" ; text "KURT: I make BALLS"
	line "z APRICORNS." ; line "from APRICORNS."

	para "Pozbieraj ich zo" ; para "Collect them from"
	line "stromov a prines" ; line "trees and bring"
	cont "mi ich." ; cont "'em to me."

	para "Urobim ti z nich" ; para "I'll make BALLS"
	line "BALLS." ; line "out of them."
	done

KurtsHouseKurtAskYouHaveAnApricornText:
	text "KURT: Mas pre mna" ; text "KURT: You have an"
	line "APRICORN?" ; line "APRICORN for me?"

	para "Dobre! Vyrobim z" ; para "Fine! I'll turn it"
	line "neho BALL." ; line "into a BALL."
	done

KurtsHouseKurtItWillTakeADayText:
	text "KURT: Bude to" ; text "KURT: It'll take a"
	line "trvat den." ; line "day to make you a"

	para "Vrat sa pon" ; para "BALL. Come back"
	line "neskor." ; line "for it later."
	done

KurtsHouseKurtThatsALetdownText:
	text "KURT: Och…" ; text "KURT: Oh…"
	line "Ake sklamanie." ; line "That's a letdown."
	done

KurtsHouseKurtDontBotherMeText:
	text "KURT: Pracujem!" ; text "KURT: I'm working!"
	line "Nevyrusuj ma!" ; line "Don't bother me!"
	done

KurtsHouseKurtJustFinishedYourBallText:
	text "KURT: <PLAYER>!" ; text "KURT: Ah, <PLAYER>!"
	line "Prave som dokoncil" ; line "I just finished"
	cont "tvoj BALL. Na!" ; cont "your BALL. Here!"
	done

KurtsHouseKurtTurnedOutGreatText:
	text "KURT: Skvele sa" ; text "KURT: That turned"
	line "vydaril." ; line "out great."

	para "Skus nim chytit" ; para "Try catching"
	line "#MONa." ; line "#MON with it."
	done

KurtsHouseKurtGranddaughterHelpingWorkFasterText:
	text "KURT: Ked mi teraz" ; text "KURT: Now that my"
	line "pomaha vnucka," ; line "granddaughter is"

	para "pracujem ovela" ; para "helping me, I can"
	line "rychlejsie." ; line "work much faster."
	done

KurtsHouseKurtWhatIsThatText:
	text "C-co to je?" ; text "Wh-what is that?"

	para "Nikdy som nic" ; para "I've never seen"
	line "take nevidel." ; line "one before."

	para "Vypada to ako" ; para "It looks a lot"
	line " # BALL," ; line "like a # BALL,"

	para "ale je to nieco" ; para "but it appears to"
	line "ine." ; line "be something else."

	para "Ukaz, skontrolujem" ; para "Let me check it"
	line "to." ; line "for you."
	done

KurtsHouseKurtImCheckingItNowText:
	text "Prave to" ; text "I'm checking it"
	line "kontrolujem." ; line "now."
	done

KurtsHouseKurtAhHaISeeText:
	text "Ah-ha! Takze!" ; text "Ah-ha! I see!"
	line "Hm…" ; line "So…"
	done

KurtsHouseKurtThisBallStartedToShakeText:
	text "<PLAYER>!"

	para "Tento BALL sa" ; para "This BALL started"
	line "zacal triast, ked" ; line "to shake while I"
	cont "som ho kontroloval" ; cont "was checking it."

	para "Nieco na tom" ; para "There must be"
	line "musi byt!" ; line "something to this!"
	done

KurtsGranddaughterSlowpokeGoneText:
	text "SLOWPOKE su prec…" ; text "The SLOWPOKE are"
	line "Zobrali ich zli" ; line "gone… Were they"

	para "ludia?" ; para "taken away by bad"
	;line "people?" ; line "people?"
	done

KurtsGranddaughterLonelyText:
	text "Dedko odisiel…" ; text "Grandpa's gone…"
	line "Som osamela…" ; line "I'm so lonely…"
	done

KurtsGranddaughterSlowpokeBackText:
	text "SLOWPOKE od" ; text "The SLOWPOKE my"
	line "tatka sa vratil!" ; line "dad gave me came"

	para "Jeho CHVOST mu" ; para "back! Its TAIL is"
	line "rastie spat!" ; line "growing back too!"
	done

KurtsGranddaughterDadText:
	text "Tatko pracuje v" ; text "Dad works at SILPH"
	line "SILPH, kde studuje" ; line "where he studies"
	cont "# BALLS." ; cont "# BALLS."

	para "Musim zostat doma" ; para "I have to stay"
	line "s dedkom a" ; line "home with Grandpa"
	cont "SLOWPOKEom." ; cont "and SLOWPOKE."
	done

KurtsGranddaughterHelpText:
	text "Teraz pomaham" ; text "I get to help"
	line "dedkovi!" ; line "Grandpa now!"

	para "Vyrobime ti" ; para "We'll make good"
	line "BALLS, takze" ; line "BALLS for you, so"
	cont "prosim pockaj!" ; cont "please wait!"
	done

KurtsGranddaughterFunText:
	text "Vyrabat BALLS je" ; text "It's fun to make"
	line "zabavne!" ; line "BALLS!"
	done

KurtsGranddaughterGSBallText:
	text "Dedko prave skuma" ; text "Grandpa's checking"
	line "BALL." ; line "a BALL right now."

	para "Takze cakam, kym" ; para "So I'm waiting"
	line "skonci." ; line "till he's done."
	done

KurtsHouseSlowpokeText:
	text "SLOWPOKE: …" ; text "SLOWPOKE: …"
	line "Uaaaa?" ; line "Yawn?"
	done

KurtsHouseOakPhotoText:
	text "…Mlady PROF." ; text "…A young PROF."
	line "OAK?" ; line "OAK?"
	done

KurtsHouseCelebiStatueText:
	text "Je to soska" ; text "It's a statue of"
	line "ochrancu lesa." ; line "the forest's pro-"
	;cont "tector." ; cont "tector."
	done

KurtsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 4
	warp_event  4,  7, AZALEA_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, KurtsHouseRadio
	bg_event  8,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  9,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  5,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  3,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  4,  1, BGEVENT_READ, KurtsHouseCelebiStatue

	def_object_events
	object_event  3,  2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt1, EVENT_KURTS_HOUSE_KURT_1
	object_event  5,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter1, EVENT_KURTS_HOUSE_GRANDDAUGHTER_1
	object_event  6,  3, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsHouseSlowpoke, EVENT_KURTS_HOUSE_SLOWPOKE
	object_event 14,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt2, EVENT_KURTS_HOUSE_KURT_2
	object_event 11,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter2, EVENT_KURTS_HOUSE_GRANDDAUGHTER_2
