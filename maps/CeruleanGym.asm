	object_const_def
	const CERULEANGYM_ROCKET
	const CERULEANGYM_MISTY
	const CERULEANGYM_SWIMMER_GIRL1
	const CERULEANGYM_SWIMMER_GIRL2
	const CERULEANGYM_SWIMMER_GUY
	const CERULEANGYM_GYM_GUIDE

CeruleanGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0,  SCENE_CERULEANGYM_NOOP
	scene_script .GruntRunsOut, SCENE_CERULEANGYM_GRUNT_RUNS_OUT

	def_callbacks

.DummyScene0:
	end

.GruntRunsOut:
	sdefer .GruntRunsOutScript
	end

.GruntRunsOutScript:
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntRunsDownMovement
	playsound SFX_TACKLE
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntRunsIntoYouMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext CeruleanGymGruntIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, CERULEANGYM_ROCKET, 15
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntBacksAwayMovement
	opentext
	writetext CeruleanGymGruntBigMistakeText
	waitbutton
	closetext
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntMovesCloseMovement
	opentext
	writetext CeruleanGymGruntByeText
	waitbutton
	closetext
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntRunsOutMovement
	playsound SFX_EXIT_BUILDING
	disappear CERULEANGYM_ROCKET
	setevent EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	clearevent EVENT_ROUTE_24_ROCKET
	clearevent EVENT_ROUTE_25_MISTY_BOYFRIEND
	setscene SCENE_CERULEANGYM_NOOP
	setmapscene ROUTE_25, SCENE_ROUTE25_MISTYS_DATE
	setmapscene POWER_PLANT, SCENE_POWERPLANT_NOOP
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, DOWN
	pause 15
	end

CeruleanGymMistyScript:
	faceplayer
	opentext
	checkflag ENGINE_CASCADEBADGE
	iftrue .FightDone
	writetext MistyIntroText
	waitbutton
	closetext
	winlosstext MistyWinLossText, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_SWIMMERF_DIANA
	setevent EVENT_BEAT_SWIMMERF_BRIANA
	setevent EVENT_BEAT_SWIMMERM_PARKER
	opentext
	writetext ReceivedCascadeBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.FightDone:
	writetext MistyFightDoneText
	waitbutton
	closetext
	end

TrainerSwimmerfDiana:
	trainer SWIMMERF, DIANA, EVENT_BEAT_SWIMMERF_DIANA, SwimmerfDianaSeenText, SwimmerfDianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfBriana:
	trainer SWIMMERF, BRIANA, EVENT_BEAT_SWIMMERF_BRIANA, SwimmerfBrianaSeenText, SwimmerfBrianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfBrianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermParker:
	trainer SWIMMERM, PARKER, EVENT_BEAT_SWIMMERM_PARKER, SwimmermParkerSeenText, SwimmermParkerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermParkerAfterBattleText
	waitbutton
	closetext
	end

CeruleanGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuideWinScript
	writetext CeruleanGymGuideText
	waitbutton
	closetext
	end

.CeruleanGymGuideWinScript:
	writetext CeruleanGymGuideWinText
	waitbutton
	closetext
	end

CeruleanGymHiddenMachinePart:
	hiddenitem MACHINE_PART, EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM

CeruleanGymStatue1:
	checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	iffalse CeruleanGymStatue
	opentext
	writetext CeruleanGymNote1Text
	waitbutton
	closetext
	end

CeruleanGymStatue2:
	checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	iffalse CeruleanGymStatue
	opentext
	writetext CeruleanGymNote2Text
	waitbutton
	closetext
	end

CeruleanGymStatue:
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, MISTY, MISTY1
	jumpstd GymStatue2Script

CeruleanGymGruntRunsDownMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

CeruleanGymGruntRunsOutMovement:
	big_step RIGHT
	big_step DOWN
	step_end

CeruleanGymGruntRunsIntoYouMovement:
	fix_facing
	set_sliding
	jump_step UP
	remove_sliding
	remove_fixed_facing
	step_sleep 8
	step_sleep 8
	step DOWN
	step DOWN
	step_end

CeruleanGymGruntMovesCloseMovement:
	big_step DOWN
	step_end

CeruleanGymGruntBacksAwayMovement:
	fix_facing
	slow_step UP
	remove_fixed_facing
	step_end

CeruleanGymGruntIntroText:
	text "Ups! Prepac!" ; text "Oops! I so sorry!"
	line "Nezraneny," ; line "You not hurt,"
	cont "dobre?" ; cont "okay?"

	para "Vela prace." ; para "I very busy."
	line "Ziadny cas na" ; line "No time for talk-"
	cont "rozpravanie. Ne-" ; cont "ing with you. Not"
	cont "dobre byt" ; cont "good for me if"
	cont "uvideny." ; cont "seen by somebody."
	done

CeruleanGymGruntBigMistakeText:
	text "Achjo! Ty ma" ; text "Oh no! You seen"
	line "uvidiet! Robil" ; line "me already! I make"
	cont "som chybu!" ; cont "big mistake!"
	done

CeruleanGymGruntByeText:
	text "Hej ty! Zabudnut" ; text "Hey, you! Forget"
	line "ze ma vidiet." ; line "you see me, okay?"

	para "Nevidiet, nepocut," ; para "You see, hear,"
	line "nevediet nic," ; line "know nothing,"

	para "okej?" ; para "okay?"
	line "Ahoj! Nic!" ; line "Bye, kid! Nothing!"

	para "Cau-cau a pa-pa!" ; para "Bye-bye a go-go!"
	done

CeruleanGymNote1Text:
	text "Prepac, budem" ; text "Sorry, I'll be out"
	line "chvilu mimo GYMu." ; line "for a while."
	cont "MISTY, GYM LEADER" ; cont "MISTY, GYM LEADER"
	done

CeruleanGymNote2Text:
	text "Dokym sa MISTY," ; text "Since MISTY's out,"
	line "vrati, budeme prec" ; line "we'll be away too."
	cont "-- GYM TRENERI" ; cont "GYM TRAINERS"
	done

MistyIntroText:
	text "MISTY: Ocakavala" ; text "MISTY: I was ex-"
	line "som ta, ty" ; line "pecting you, you"
	cont "skodca!" ; cont "pest!"

	para "Mozno mas odznaky" ; para "You may have a"
	line "z JOHTO, ale" ; line "lot of JOHTO GYM"

	para "vobec ma neber na" ; para "BADGES, but you'd"
	line "lahku vahu." ; line "better not take me"
	;cont "too lightly." ; cont "too lightly."

	para "Moji vodni" ; para "My water-type"
	line "#MON su tuhi!" ; line "#MON are tough!"
	done

MistyWinLossText:
	text "MISTY: si fakt" ; text "MISTY: You really"
	line "dobry…" ; line "are good…"

	para "Priznavam, ze si" ; para "I'll admit that"
	line "skuseny…" ; line "you are skilled…"

	para "Tu mas. To je" ; para "Here you go. It's"
	line "CASCADEBADGE." ; line "CASCADEBADGE."
	done

ReceivedCascadeBadgeText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "CASCADEBADGE." ; line "CASCADEBADGE."
	done

MistyFightDoneText:
	text "MISTY: Je silnych" ; text "MISTY: Are there"
	line "trenerov ako ty v" ; line "many strong train-"
	cont "JOHTE vela? Ako" ; cont "ers in JOHTO? Like"
	cont "ty, myslim." ; cont "you, I mean."

	para "Jedneho dna budem" ; para "I'm going to"
	line "cestovat, aby som" ; line "travel one day, so"

	para "mohla zapasit so" ; para "I can battle some"
	line "skusenymi supermi." ; line "skilled trainers."
	done

SwimmerfDianaSeenText:
	text "Prepac, ze sme" ; text "Sorry about being"
	line "prec. Podme" ; line "away. Let's get on"
	cont "na to!" ; cont "with it!"
	done

SwimmerfDianaBeatenText:
	text "Vzdavam sa!" ; text "I give up! You're"
	line "Si vitaz!" ; line "the winner!"
	done

SwimmerfDianaAfterBattleText:
	text "Budem si plavat v" ; text "I'll be swimming"
	line "tichosti." ; line "quietly."
	done

SwimmerfBrianaSeenText:
	text "Nic si nerob z" ; text "Don't let my ele-"
	line "mojho elegantneho" ; line "gant swimming un-"
	cont "plavania." ; cont "nerve you."
	done

SwimmerfBrianaBeatenText:
	text "Och, uplne si ma" ; text "Ooh, you calmly"
	line "rozlozil…" ; line "disposed of me…"
	done

SwimmerfBrianaAfterBattleText:
	text "Velmi nemachruj," ; text "Don't be too smug"
	line "ze si ma porazil." ; line "about beating me."

	para "MISTY ta znici," ; para "MISTY will destroy"
	line "o to sa vobec" ; line "you if you get"
	cont "neboj." ; cont "complacent."
	done

SwimmermParkerSeenText:
	text "Glub…" ; text "Glub…"

	para "Som prva! Skus" ; para "I'm first! Come"
	line "ma dostat!" ; line "and get me!"
	done

SwimmermParkerBeatenText:
	text "Nemozne…" ; text "This can't be…"
	done

SwimmermParkerAfterBattleText:
	text "MISTY sa velmi" ; text "MISTY has gotten"
	line "zlepsila v posled-" ; line "much better in the"
	cont "nych rokoch." ; cont "past few years."

	para "Nespusti z nej" ; para "Don't let your"
	line "oci, lebo ta" ; line "guard down, or"
	cont "znici!" ; cont "you'll be crushed!"
	done

CeruleanGymGuideText:
	text "Jou! Buduci" ; text "Yo! CHAMP in"
	line "SAMPION!" ; line "making!"

	para "Kym bola MISTY" ; para "Since MISTY was"
	line "prec, odbehol som" ; line "away, I went out"

	para "si za zabavou i" ; para "for some fun too."
	line "ja. He-he-he." ; line "He-he-he."
	done

CeruleanGymGuideWinText:
	text "Och, ukazal si" ; text "Hoo, you showed me"
	line "svoju silu." ; line "how tough you are."

	para "Ako vzdy, bol to" ; para "As always, that"
	line "jeden naozaj" ; line "was one heck of a"
	cont "skvely zapas!" ; cont "great battle!"
	done

CeruleanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, CERULEAN_CITY, 5
	warp_event  5, 15, CERULEAN_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  3,  8, BGEVENT_ITEM, CeruleanGymHiddenMachinePart
	bg_event  2, 13, BGEVENT_READ, CeruleanGymStatue1
	bg_event  6, 13, BGEVENT_READ, CeruleanGymStatue2

	def_object_events
	object_event  4, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_GYM_ROCKET
	object_event  5,  3, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanGymMistyScript, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  4,  6, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfDiana, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  1,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSwimmerfBriana, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  8,  9, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermParker, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanGymGuideScript, EVENT_TRAINERS_IN_CERULEAN_GYM
