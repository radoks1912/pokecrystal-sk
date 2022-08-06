	object_const_def
	const LAKEOFRAGE_LANCE
	const LAKEOFRAGE_GRAMPS
	const LAKEOFRAGE_SUPER_NERD1
	const LAKEOFRAGE_COOLTRAINER_F1
	const LAKEOFRAGE_FISHER1
	const LAKEOFRAGE_FISHER2
	const LAKEOFRAGE_COOLTRAINER_M
	const LAKEOFRAGE_COOLTRAINER_F2
	const LAKEOFRAGE_GYARADOS
	const LAKEOFRAGE_WESLEY
	const LAKEOFRAGE_POKE_BALL1
	const LAKEOFRAGE_POKE_BALL2

LakeOfRage_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; unusable
	scene_script .DummyScene1 ; unusable

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	callback MAPCALLBACK_OBJECTS, .Wesley

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	endcallback

.Wesley:
	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, .WesleyAppears
	disappear LAKEOFRAGE_WESLEY
	endcallback

.WesleyAppears:
	appear LAKEOFRAGE_WESLEY
	endcallback

LakeOfRageLanceScript:
	checkevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	iftrue .AskAgainForHelp
	opentext
	writetext LakeOfRageLanceForcedToEvolveText
	promptbutton
	faceplayer
	writetext LakeOfRageLanceIntroText
	yesorno
	iffalse .RefusedToHelp
.AgreedToHelp:
	writetext LakeOfRageLanceRadioSignalText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement LAKEOFRAGE_LANCE, LakeOfRageLanceTeleportIntoSkyMovement
	disappear LAKEOFRAGE_LANCE
	clearevent EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
	setevent EVENT_DECIDED_TO_HELP_LANCE
	setmapscene MAHOGANY_MART_1F, SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS
	end

.RefusedToHelp:
	writetext LakeOfRageLanceRefusedText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	end

.AskAgainForHelp:
	faceplayer
	opentext
	writetext LakeOfRageLanceAskHelpText
	yesorno
	iffalse .RefusedToHelp
	sjump .AgreedToHelp

RedGyarados:
	opentext
	writetext LakeOfRageGyaradosCryText
	pause 15
	cry GYARADOS
	closetext
	loadwildmon GYARADOS, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	ifequal LOSE, .NotBeaten
	disappear LAKEOFRAGE_GYARADOS
.NotBeaten:
	reloadmapafterbattle
	opentext
	giveitem RED_SCALE
	waitsfx
	writetext LakeOfRageGotRedScaleText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setscene 0 ; Lake of Rage does not have a scene variable
	appear LAKEOFRAGE_LANCE
	end

LakeOfRageGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	writetext LakeOfRageGrampsText
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext LakeOfRageGrampsText_ClearedRocketHideout
	waitbutton
	closetext
	end

LakeOfRageSuperNerdScript:
	jumptextfaceplayer LakeOfRageSuperNerdText

LakeOfRageCooltrainerFScript:
	jumptextfaceplayer LakeOfRageCooltrainerFText

LakeOfRageSign:
	jumptext LakeOfRageSignText

MagikarpHouseSignScript:
	opentext
	writetext FishingGurusHouseSignText
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .MagikarpLengthRecord
	waitbutton
	closetext
	end

.MagikarpLengthRecord:
	promptbutton
	special MagikarpHouseSign
	closetext
	end

TrainerFisherAndre:
	trainer FISHER, ANDRE, EVENT_BEAT_FISHER_ANDRE, FisherAndreSeenText, FisherAndreBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherAndreAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherRaymond:
	trainer FISHER, RAYMOND, EVENT_BEAT_FISHER_RAYMOND, FisherRaymondSeenText, FisherRaymondBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherRaymondAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermAaron:
	trainer COOLTRAINERM, AARON, EVENT_BEAT_COOLTRAINERM_AARON, CooltrainermAaronSeenText, CooltrainermAaronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAaronAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLois:
	trainer COOLTRAINERF, LOIS, EVENT_BEAT_COOLTRAINERF_LOIS, CooltrainerfLoisSeenText, CooltrainerfLoisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLoisAfterBattleText
	waitbutton
	closetext
	end

WesleyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	iftrue WesleyWednesdayScript
	readvar VAR_WEEKDAY
	ifnotequal WEDNESDAY, WesleyNotWednesdayScript
	checkevent EVENT_MET_WESLEY_OF_WEDNESDAY
	iftrue .MetWesley
	writetext MeetWesleyText
	promptbutton
	setevent EVENT_MET_WESLEY_OF_WEDNESDAY
.MetWesley:
	writetext WesleyGivesGiftText
	promptbutton
	verbosegiveitem BLACKBELT_I
	iffalse WesleyDoneScript
	setevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	writetext WesleyGaveGiftText
	waitbutton
	closetext
	end

WesleyWednesdayScript:
	writetext WesleyWednesdayText
	waitbutton
WesleyDoneScript:
	closetext
	end

WesleyNotWednesdayScript:
	writetext WesleyNotWednesdayText
	waitbutton
	closetext
	end

LakeOfRageElixer:
	itemball ELIXER

LakeOfRageTMDetect:
	itemball TM_DETECT

LakeOfRageHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_LAKE_OF_RAGE_HIDDEN_FULL_RESTORE

LakeOfRageHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_LAKE_OF_RAGE_HIDDEN_RARE_CANDY

LakeOfRageHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_LAKE_OF_RAGE_HIDDEN_MAX_POTION

LakeOfRageLanceTeleportIntoSkyMovement:
	teleport_from
	step_end

LakeOfRageLanceForcedToEvolveText:
	text "Toto jazero je" ; text "This lake is full"
	line "plne GYARADOSov a" ; line "of GYARADOS but"
	cont "nicoho ineho…" ; cont "nothing else…"

	para "MAGIKARPovia su" ; para "So the MAGIKARP"
	line "nuteni sa" ; line "are being forced"
	cont "vyvinut…" ; cont "to evolve…"
	done

LakeOfRageLanceIntroText:
	text "Prisiel si sem" ; text "Did you come here"
	line "prave kvoli tym" ; line "because of the"
	cont "chyrom?" ; cont "rumors?"

	para "Ty si <PLAYER>?" ; para "You're <PLAYER>?"
	line "Som LANCE," ; line "I'm LANCE, a"
	cont "trener ako ty." ; cont "trainer like you."

	para "Pocul som chyry," ; para "I heard some ru-"
	line "tak som to pri-" ; line "mors, so I came to"
	cont "siel preskumat…" ; cont "investigate…"

	para "Videl som, ako si" ; para "I saw the way you"
	line "zapasil," ; line "battled earlier,"
	cont "<PLAY_G>." ; cont "<PLAY_G>."

	para "Mozem povedat, ze" ; para "I can tell that"
	line "si trener s vel-" ; line "you're a trainer"

	para "kymi skusenostami." ; para "with considerable"
	;line "skill." ; line "skill."

	para "Ak ti to nevadi," ; para "If you don't mind,"
	line "pomozes mi to tu" ; line "could you help me"
	cont "preskumat?" ; cont "investigate?"
	done

LakeOfRageLanceRadioSignalText:
	text "LANCE: Vyborne!" ; text "LANCE: Excellent!"

	para "Vypada to, ze" ; para "It seems that the"
	line "MAGIKARPovia su" ; line "LAKE's MAGIKARP"

	para "nuteni sa vyvi-" ; para "are being forced"
	line "nut." ; line "to evolve."

	para "Zvlastny signal z" ; para "A mysterious radio"
	line "radia v MAHOGANY" ; line "broadcast coming"

	para "je prave ta" ; para "from MAHOGANY is"
	line "pricina." ; line "the cause."

	para "Pockam tam na" ; para "I'll be waiting"
	line "teba, <PLAY_G>." ; line "for you, <PLAY_G>."
	done

LakeOfRageLanceRefusedText:
	text "Oh… Ak teda zmenis" ; text "Oh… Well, if you"
	line "tak mi prosim ta" ; line "change your mind,"
	cont "pomoz." ; cont "please help me."
	done

LakeOfRageLanceAskHelpText:
	text "LANCE: Hm? Tak" ; text "LANCE: Hm? Are you"
	line "teda mi pomozes?" ; line "going to help me?"
	done

LakeOfRageGyaradosCryText:
	text "GYARADOS: Gyashaa!" ; text "GYARADOS: Gyashaa!"
	done

LakeOfRageGotRedScaleText:
	text "<PLAYER> ziskal" ; text "<PLAYER> obtained a"
	line "CERVENU SUPINU." ; line "RED SCALE."
	done

LakeOfRageGrampsText:
	text "GYARADOSovia su" ; text "The GYARADOS are"
	line "nahnevani!" ; line "angry!"

	para "Je to zle zname-" ; para "It's a bad omen!"
	line "nie!"
	done

LakeOfRageGrampsText_ClearedRocketHideout:
	text "Haha! MAGIKAR-" ; text "Hahah! The MAGI-"
	line "POVIA zaberaju!" ; line "KARP are biting!"
	done

LakeOfRageSuperNerdText:
	text "Pocul som, ze toto" ; text "I heard this lake"
	line "jazero vzniklo" ; line "was made by ram-"
	cont "rozzurenym GYARA-" ; cont "paging GYARADOS."
	cont "DOSOM."

	para "Ktovie, ci to " ; para "I wonder if there"
	line "s tym ma nieco" ; line "is any connection"

	para "spolocne?" ; para "to their mass out-"
	;line "break now?" ; line "break now?"
	done

LakeOfRageCooltrainerFText:
	text "Klamu ma moje" ; text "Did my eyes de-"
	line "oci? videl som" ; line "ceive me? I saw a"

	para "cerveneho GYARADO-" ; para "red GYARADOS in"
	line "SA v jazere…" ; line "the LAKE…"

	para "Nie su" ; para "But I thought"
	line "GYARADOSovia" ; line "GYARADOS were"
	cont "zvycajne modri?" ; cont "usually blue?"
	done

FisherAndreSeenText:
	text "Dajme si zapas s" ; text "Let me battle with"
	line "cerstvo chytenymi" ; line "the #MON I just"
	cont "#MONmi!" ; cont "caught!"
	done

FisherAndreBeatenText:
	text "I might be an ex-" ; text "I might be an ex-"
	line "pert angler, but" ; line "pert angler, but"

	para "I stink as a #-" ; para "I stink as a #-"
	line "MON trainer…" ; line "MON trainer…"
	done

FisherAndreAfterBattleText:
	text "Ako rybar urcite" ; text "I won't lose as an"
	line "neprehram! Chytam" ; line "angler! I catch"
	cont "tu cele dni." ; cont "#MON all day."
	done

FisherRaymondSeenText:
	text "Akokolvek sa sna-" ; text "No matter what I"
	line "zim, vzdy chytim" ; line "do, all I catch"

	para "toho isteho #-" ; para "are the same #-"
	line "MONa…" ; line "MON…"
	done

FisherRaymondBeatenText:
	text "Mam zamotany" ; text "My line's all"
	line "cely silon…" ; line "tangled up…"
	done

FisherRaymondAfterBattleText:
	text "Preco nechytim do-" ; text "Why can't I catch"
	line "breho #MONa?" ; line "any good #MON?"
	done

CooltrainermAaronSeenText:
	text "Ak trener zoci" ; text "If a trainer spots"
	line "ineho trenera," ; line "another trainer,"

	para "musi navrhnut" ; para "he has to make a"
	line "zapas." ; line "challenge."

	para "To je nasim" ; para "That is our"
	line "osudom." ; line "destiny."
	done

CooltrainermAaronBeatenText:
	text "Fuh…" ; text "Whew…"
	line "Dobry zapas." ; line "Good battle."
	done

CooltrainermAaronAfterBattleText:
	text "#MON a jeho" ; text "#MON and their"
	line "trener sa zlepsuju" ; line "trainer become"

	para "pravidelnym" ; para "powerful through"
	line "zapasenim." ; line "constant battling."
	done

CooltrainerfLoisSeenText:
	text "Kde je cerveny" ; text "What happened to"
	line "GYARADOS?" ; line "the red GYARADOS?"

	para "Je prec?" ; para "It's gone?"

	para "Och, kelu. Prisiel" ; para "Oh, darn. I came"
	line "som sem zbytocne?" ; line "here for nothing?"

	para "Uz viem--podme" ; para "I know--let's"
	line "zapasit!" ; line "battle!"
	done

CooltrainerfLoisBeatenText:
	text "Slo to dobre!" ; text "Good going!"
	done

CooltrainerfLoisAfterBattleText:
	text "Prave ma napadlo," ; text "Come to think of"
	line "ze som videla i" ; line "it, I've seen a"
	cont "ruzoveho" ; cont "pink BUTTERFREE."
	cont "BUTTERFREE."
	done

MeetWesleyText:
	text "WESLEY: No ako" ; text "WESLEY: Well, how"
	line "sa mas?" ; line "do you do?"

	para "Kedze dnes je" ; para "Seeing as how it's"
	line "zase streda," ; line "Wednesday today,"

	para "som stredajsi" ; para "I'm WESLEY of"
	line "WESLEY." ; line "Wednesday."
	done

WesleyGivesGiftText:
	text "Tesi ma. Vezmi si" ; text "Pleased to meet"
	line "prosim ta tento" ; line "you. Please take a"
	cont "suvenir." ; cont "souvenir."
	done

WesleyGaveGiftText:
	text "WESLEY: CIERNY PAS" ; text "WESLEY: BLACKBELT"
	line "zvysi si bojovych" ; line "beefs up the power"
	cont "utokov." ; cont "of fighting moves."
	done

WesleyWednesdayText:
	text "WESLEY: Kedze si" ; text "WESLEY: Since you"
	line "ma nasiel, musel" ; line "found me, you must"

	para "si strenut aj" ; para "have met my broth-"
	line "mojich surodencov." ; line "ers and sisters."

	para "Alebo si tu len" ; para "Or did you just"
	line "nahodou?" ; line "get lucky?"
	done

WesleyNotWednesdayText:
	text "WESLEY: Dnes nie" ; text "WESLEY: Today's"
	line "je streda." ; line "not Wednesday."
	cont "To je skoda." ; cont "That's too bad."
	done

LakeOfRageSignText:
	text "JAZERO HNEVU," ; text "LAKE OF RAGE,"
	line "zname aj ako" ; line "also known as"
	cont "JAZERO GYARADOSov." ; cont "GYARADOS LAKE."
	done

FishingGurusHouseSignText:
	text "DOM RYBARSKEHO" ; text "FISHING GURU'S"
	line "GURU" ; line "HOUSE"
	done

LakeOfRage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, LakeOfRageSign
	bg_event 25, 31, BGEVENT_READ, MagikarpHouseSignScript
	bg_event 11, 28, BGEVENT_ITEM, LakeOfRageHiddenFullRestore
	bg_event  4,  4, BGEVENT_ITEM, LakeOfRageHiddenRareCandy
	bg_event 35,  5, BGEVENT_ITEM, LakeOfRageHiddenMaxPotion

	def_object_events
	object_event 21, 28, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageLanceScript, EVENT_LAKE_OF_RAGE_LANCE
	object_event 20, 26, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageGrampsScript, -1
	object_event 36, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageSuperNerdScript, -1
	object_event 25, 29, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageCooltrainerFScript, -1
	object_event 30, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherAndre, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 24, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherRaymond, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event  4, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermAaron, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 36,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCooltrainerfLois, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 18, 22, SPRITE_GYARADOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RedGyarados, EVENT_LAKE_OF_RAGE_RED_GYARADOS
	object_event  4,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WesleyScript, EVENT_LAKE_OF_RAGE_WESLEY_OF_WEDNESDAY
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageElixer, EVENT_LAKE_OF_RAGE_ELIXER
	object_event 35,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageTMDetect, EVENT_LAKE_OF_RAGE_TM_DETECT
