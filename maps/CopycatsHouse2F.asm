	object_const_def
	const COPYCATSHOUSE2F_COPYCAT1 ; if player is male
	const COPYCATSHOUSE2F_DODRIO
	const COPYCATSHOUSE2F_FAIRYDOLL ; lost item
	const COPYCATSHOUSE2F_MONSTERDOLL
	const COPYCATSHOUSE2F_BIRDDOLL
	const COPYCATSHOUSE2F_COPYCAT2 ; if player is female

CopycatsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Callback

.Callback:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	disappear COPYCATSHOUSE2F_COPYCAT2
	appear COPYCATSHOUSE2F_COPYCAT1
	sjump .Done
.Female:
	disappear COPYCATSHOUSE2F_COPYCAT1
	appear COPYCATSHOUSE2F_COPYCAT2
.Done:
	endcallback

Copycat:
	faceplayer
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftrue .GotPass
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue .TryGivePassAgain
	checkitem LOST_ITEM
	iftrue .ReturnLostItem
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_1
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	sjump .Default_Merge_1

.Default_Female_1:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_KRIS
.Default_Merge_1:
	special LoadUsedSpritesGFX
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .TalkAboutLostItem
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_2a
	writetext CopycatText_Male_1
	sjump .Default_Merge_2a

.Default_Female_2a:
	writetext CopycatText_Female_1
.Default_Merge_2a:
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_3a
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	sjump .Default_Merge_3a

.Default_Female_3a:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
.Default_Merge_3a:
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_QuickMimicking
	waitbutton
	closetext
	end

.TalkAboutLostItem:
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_2b
	writetext CopycatText_Male_2
	sjump .Default_Merge_2b

.Default_Female_2b:
	writetext CopycatText_Female_2
.Default_Merge_2b:
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_3b
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	sjump .Default_Merge_3b

.Default_Female_3b:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
.Default_Merge_3b:
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_Worried
	waitbutton
	closetext
	setevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	end

.ReturnLostItem:
	opentext
	writetext CopycatText_GiveDoll
	promptbutton
	takeitem LOST_ITEM
	setevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	clearevent EVENT_COPYCATS_HOUSE_2F_DOLL
	sjump .GivePass

.TryGivePassAgain:
	opentext
.GivePass:
	writetext CopycatText_GivePass
	promptbutton
	verbosegiveitem PASS
	iffalse .Cancel
	setevent EVENT_GOT_PASS_FROM_COPYCAT
	writetext CopycatText_ExplainPass
	waitbutton
	closetext
	end

.GotPass:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .GotPass_Female_1
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	sjump .GotPass_Merge_1

.GotPass_Female_1:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_KRIS
.GotPass_Merge_1:
	special LoadUsedSpritesGFX
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .GotPass_Female_2
	writetext CopycatText_Male_3
	sjump .GotPass_Merge_2

.GotPass_Female_2:
	writetext CopycatText_Female_3
.GotPass_Merge_2:
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .GotPass_Female_3
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	sjump .GotPass_Merge_3

.GotPass_Female_3:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
.GotPass_Merge_3:
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_ItsAScream
	waitbutton
.Cancel:
	closetext
	end

CopycatsDodrio:
	opentext
	writetext CopycatsDodrioText1
	cry DODRIO
	promptbutton
	writetext CopycatsDodrioText2
	waitbutton
	closetext
	end

CopycatsHouse2FDoll:
	jumptext CopycatsHouse2FDollText

CopycatsHouse2FBookshelf:
	jumpstd PictureBookshelfScript

CopycatSpinAroundMovementData:
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

CopycatText_Male_1:
	text "<PLAYER>: Cau! Mas" ; text "<PLAYER>: Hi! Do"
	line "rad #MONov?" ; line "you like #MON?"

	para "<PLAYER>: Hm, nie," ; para "<PLAYER>: Uh, no, I"
	line "ja sa ta pytam." ; line "just asked you."

	para "<PLAYER>: Hm?" ; para "<PLAYER>: Huh?"
	line "Si divna!" ; line "You're strange!"
	done

CopycatText_QuickMimicking:
	text "COPYCAT: Hm?" ; text "COPYCAT: Hmm?"
	line "Nenapodobnovat?" ; line "Quit mimicking?"

	para "Ale to je moje" ; para "But that's my"
	line "oblubene hobby!" ; line "favorite hobby!"
	done

CopycatText_Male_2:
	text "<PLAYER>: Ahoj!" ; text "<PLAYER>: Hi!"
	line "Vraj si stratila" ; line "I heard that you"

	para "svoju babiku" ; para "lost your favorite"
	line "# DOLL." ; line "# DOLL."

	para "<PLAYER>: Ak ju" ; para "<PLAYER>: If I find"
	line "najdem, das mi" ; line "it, you'll give me"
	cont "vlakovy LISTOK?" ; cont "a rail PASS?"

	para "<PLAYER>: Najdem" ; para "<PLAYER>: I'll go"
	line "ju pre teba." ; line "find it for you."

	para "Stratila si ju," ; para "You think you lost"
	line "ked si bola vo" ; line "it when you went"
	cont "VERMILION CITY?" ; cont "to VERMILION CITY?"
	done

CopycatText_Worried:
	text "COPYCAT: Pardon?" ; text "COPYCAT: Pardon?"

	para "Nemala by som ro-" ; para "I shouldn't decide"
	line "hodovat, co mas" ; line "what you should"
	cont "robit." ; cont "do?"

	para "Ale mam naozaj" ; para "But I'm really"
	line "strach… Co ak ju" ; line "worried… What if"
	cont "niekto najde?" ; cont "someone finds it?"
	done

CopycatText_GiveDoll:
	text "COPYCAT: Jej!" ; text "COPYCAT: Yay!"
	line "Moja CLEFAIRY" ; line "That's my CLEFAIRY"
	cont "babika!" ; cont "# DOLL!"

	para "Vidis tu trhlinu" ; para "See the tear where"
	line "kde je prisita?" ; line "the right leg is"

	para "prava noha? To je" ; para "sewn on? That's"
	line "dokaz!" ; line "proof!"
	done

CopycatText_GivePass:
	text "OK. Tu mas" ; text "OK. Here's the"
	line "LISTOK na magnet-" ; line "MAGNET TRAIN PASS"
	cont "vlak!" ; cont "like I promised!"
	done

CopycatText_ExplainPass:
	text "COPYCAT: To je" ; text "COPYCAT: That's"
	line "LISTOK na magnet-" ; line "the PASS for the"
	cont "vlak." ; cont "MAGNET TRAIN."

	para "Riaditel vlakovej" ; para "The rail company"
	line "spolocnosti mi ho" ; line "man gave me that"

	para "dal, ked zburali" ; para "when they tore"
	line "nas dom kvoli" ; line "down our old house"
	cont "STANICI." ; cont "for the STATION."
	done

CopycatText_Male_3:
	text "<PLAYER>: Cau!" ; text "<PLAYER>: Hi!"
	line "Dakujem pekne za" ; line "Thanks a lot for"
	cont "LISTOK!" ; cont "the rail PASS!"

	para "<PLAYER>: Pardon?" ; para "<PLAYER>: Pardon?"

	para "<PLAYER>: Je to" ; para "<PLAYER>: Is it"
	line "zabavne napodobno-" ; line "that fun to mimic"
	cont "vat kazdy moj tah?" ; cont "my every move?"
	done

CopycatText_ItsAScream:
	text "COPYCAT: Stav sa!" ; text "COPYCAT: You bet!"
	line "Je to skvele!" ; line "It's a scream!"
	done

CopycatText_Female_1:
	text "<PLAYER>: Cau." ; text "<PLAYER>: Hi. You"
	line "Mas rad #MON." ; line "must like #MON."

	para "<PLAYER>: Nie, nie" ; para "<PLAYER>: No, not"
	line "ja. Ja sa pytam." ; line "me. I asked you."

	para "<PLAYER>: Pardon?" ; para "<PLAYER>: Pardon?"
	line "Si divna!" ; line "You're weird!"
	done

CopycatText_Female_2:
	text "<PLAYER>: Ahoj." ; text "<PLAYER>: Hi. Did"
	line "Stratila si svoju" ; line "you really lose"
	cont "babiku # DOLL?" ; cont "your # DOLL?"

	para "<PLAYER>: Ak ju" ; para "<PLAYER>: You'll"
	line "najdem, das mi" ; line "really give me a"

	para "vlakovy LISTOK?" ; para "rail PASS if I"
	;line "find it for you?" ; line "find it for you?"

	para "<PLAYER>: Jasne," ; para "<PLAYER>: Sure,"
	line "budem hladat!" ; line "I'll look for it!"

	para "Myslis, ze si ju" ; para "You think you lost"
	line "stratila vo" ; line "it when you were"
	cont "VERMILIONe?" ; cont "in VERMILION?"
	done

CopycatText_Female_3:
	text "<PLAYER>: Dakujem" ; text "<PLAYER>: Thank you"
	line "za vlakovy LISTOK!" ; line "for the rail PASS!"

	para "<PLAYER>: …Pardon?" ; para "<PLAYER>: …Pardon?"

	para "<PLAYER>: Je to" ; para "<PLAYER>: Is it"
	line "naozaj tak vtipne" ; line "really that fun to"

	para "opakovat kazdy moj" ; para "copy what I say"
	line "pohyb?" ; line "and do?"
	done

CopycatsDodrioText1:
	text "DODRIO: Gii giii!"
	done

CopycatsDodrioText2:
	text "Zrkadielko, zrka-" ; text "MIRROR, MIRROR ON"
	line "dielko, ktoze je" ; line "THE WALL, WHO'S"

	para "najkrajsi na tejto" ; para "THE FAIREST ONE OF"
	line "zemi?" ; line "ALL?"
	done

CopycatsHouse2FDollText:
	text "Toto je vzacny" ; text "This is a rare"
	line "#MON! Hm?" ; line "#MON! Huh?"

	para "Je to len babika…" ; para "It's only a doll…"
	done

CopycatsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, COPYCATS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CopycatsHouse2FBookshelf
	bg_event  1,  1, BGEVENT_READ, CopycatsHouse2FBookshelf

	def_object_events
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Copycat, EVENT_COPYCAT_1
	object_event  6,  4, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CopycatsDodrio, -1
	object_event  6,  1, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, EVENT_COPYCATS_HOUSE_2F_DOLL
	object_event  2,  1, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  7,  1, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Copycat, EVENT_COPYCAT_2
