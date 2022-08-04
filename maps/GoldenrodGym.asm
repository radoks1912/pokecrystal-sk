	object_const_def
	const GOLDENRODGYM_WHITNEY
	const GOLDENRODGYM_LASS1
	const GOLDENRODGYM_LASS2
	const GOLDENRODGYM_BEAUTY1
	const GOLDENRODGYM_BEAUTY2
	const GOLDENRODGYM_GYM_GUIDE

GoldenrodGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_GOLDENRODGYM_NOOP
	scene_script .DummyScene1, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

GoldenrodGymWhitneyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext WhitneyBeforeText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	setscene SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
.FightDone:
	opentext
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse .StoppedCrying
	writetext WhitneyYouMeanieText
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext WhitneyWhatDoYouWantText
	promptbutton
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	readvar VAR_BADGES
	scall GoldenrodGymActivateRockets
.GotPlainBadge:
	writetext WhitneyPlainBadgeText
	promptbutton
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoomForAttract
	setevent EVENT_GOT_TM45_ATTRACT
	writetext WhitneyAttractText
	waitbutton
	closetext
	end

.GotAttract:
	writetext WhitneyGoodCryText
	waitbutton
.NoRoomForAttract:
	closetext
	end

GoldenrodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
	waitbutton
	closetext
	end

WhitneyCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS2, 15
	applymovement GOLDENRODGYM_LASS2, BridgetWalksUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext BridgetWhitneyCriesText
	waitbutton
	closetext
	applymovement GOLDENRODGYM_LASS2, BridgetWalksAwayMovement
	setscene SCENE_GOLDENRODGYM_NOOP
	clearevent EVENT_MADE_WHITNEY_CRY
	end

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyVictoria:
	trainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVictoriaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautySamantha:
	trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautySamanthaAfterBattleText
	waitbutton
	closetext
	end

GoldenrodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuideWinScript
	opentext
	writetext GoldenrodGymGuideText
	waitbutton
	closetext
	end

.GoldenrodGymGuideWinScript:
	opentext
	writetext GoldenrodGymGuideWinText
	waitbutton
	closetext
	end

GoldenrodGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, WHITNEY, WHITNEY1
	jumpstd GymStatue2Script

BridgetWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

BridgetWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end

WhitneyBeforeText:
	text "Ahoj! Som WHITNEY!" ; text "Hi! I'm WHITNEY!"

	para "Vsetci zacali s" ; para "Everyone was into"
	line "#MONmi, tak" ; line "#MON, so I got"
	cont "som zacala aj ja!" ; cont "into it too!"

	para "#MONi su" ; para "#MON are"
	line "roztomili!" ; line "super-cute!"

	para "Chces zapasit?" ; para "You want to bat-"
	line "Varujem ta--som" ; line "tle? I'm warning"
	cont "dost dobra!" ; cont "you--I'm good!"
	done

WhitneyShouldntBeSoSeriousText:
	text "Fnuk…" ; text "Sob…"

	para "…Waaaaaaah!" ; para "…Waaaaaaah!"
	line "Si zly!" ; line "You're mean!"

	para "Nemal by si to" ; para "You shouldn't be"
	line "brat tak vazne! " ; line "so serious! You…"
	cont "Ty… Ty dieta!" ; cont "you child, you!"
	done

WhitneyYouMeanieText:
	text "Waaaaah!" ; text "Waaaaah!"

	para "Waaaaah!" ; para "Waaaaah!"

	para "…Smrk…" ; para "…Snivel, hic…"
	line "…Ty zloduch!" ; line "…You meanie!"
	done

WhitneyWhatDoYouWantText:
	text "…Smrk…" ; text "…Sniff…"

	para "Coze? Co chces?" ; para "What? What do you"
	line "Odnzak?" ; line "want? A BADGE?"

	para "Oh, jasne." ; para "Oh, right."
	line "Zabudla som. Tu je" ; line "I forgot. Here's"
	cont "PLAINBADGE." ; cont "PLAINBADGE."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "PLAINBADGE." ; line "PLAINBADGE."
	done

WhitneyPlainBadgeText:
	text "PLAINBADGE umozni" ; text "PLAINBADGE lets"
	line "#MONom pouzit" ; line "your #MON use"

	para "STRENGTH mimo" ; para "STRENGTH outside"
	line "zapasu." ; line "of battle."

	para "Takisto zvysuje" ; para "It also boosts"
	line "RYCHLOST tvojich" ; line "your #MON's"
	cont "#MONov." ; cont "SPEED."

	para "Och, vezmi si" ; para "Oh, you can have"
	line "aj toto!" ; line "this too!"
	done

WhitneyAttractText:
	text "Je to ATTRACT!" ; text "It's ATTRACT!"
	line "Vydzvihne sarm" ; line "It makes full use"

	para "tvojho #MONa." ; para "of a #MON's"
	;line "charm." ; line "charm."

	para "No nie je to" ; para "Isn't it just per-"
	line "uzasny utok pre" ; line "fect for a cutie"
	cont "niekoho ako ja?" ; cont "like me?"
	done

WhitneyGoodCryText:
	text "Ah, slzy" ; text "Ah, that was a"
	line "stastia!" ; line "good cry!"

	para "Zastav sa niekedy" ; para "Come for a visit"
	line "znova! Ahoj!" ; line "again! Bye-bye!"
	done

LassCarrieSeenText:
	text "Nedaj sa zmiast" ; text "Don't let my"
	line "roztomilostou mo-" ; line "#MON's cute"

	para "jich #MONov." ; para "looks fool you."
	line "Zaskocia ta!" ; line "They can whip you!"
	done

LassCarrieBeatenText:
	text "Kelu… Myslel som," ; text "Darn… I thought"
	line "ze si slaby…" ; line "you were weak…"
	done

LassCarrieAfterBattleText:
	text "Myslia si moji" ; text "Do my #MON"
	line "#MONi, ze som" ; line "think I'm cute?"
	cont "roztomila?"
	done

LassBridgetSeenText:
	text "Roztomili" ; text "I like cute #-"
	line "#MONi su lep-" ; line "MON better than"
	cont "si ako ti silni." ; cont "strong #MON."

	para "Ale ja mam oboje!" ; para "But I have strong"
	;line "and cute #MON!" ; line "and cute #MON!"
	done

LassBridgetBeatenText:
	text "Och, nie nie nie!" ; text "Oh, no, no, no!"
	done

LassBridgetAfterBattleText:
	text "Snazim sa porazit" ; text "I'm trying to beat"
	line "WHITNEY, ale…" ; line "WHITNEY, but…"
	cont "Je to deprimujuce." ; cont "It's depressing."

	para "Som v poriadku! Ak" ; para "I'm okay! If I"
	line "prehram, budem sa" ; line "lose, I'll just"

	para "nabuduce jednodu-" ; para "try harder next"
	line "cho viac snazit!" ; line "time!"
	done

BridgetWhitneyCriesText:
	text "Oh, nie. Kvoli te-" ; text "Oh, no. You made"
	line "be WHITNEY place." ; line "WHITNEY cry."

	para "V poriadku. Zane-" ; para "It's OK. She'll"
	line "dlho prestane." ; line "stop soon. She"

	para "Vzdy place po" ; para "always cries when"
	line "prehre." ; line "she loses."
	done

BeautyVictoriaSeenText:
	text "Och, vypadas ako" ; text "Oh, you are a cute"
	line "roztomily trener! " ; line "little trainer! "

	para "Pacis sa mi, ale" ; para "I like you, but I"
	line "nebudem ta setrit!" ; line "won't hold back!"
	done

BeautyVictoriaBeatenText:
	text "Pozrime sa… Ups," ; text "Let's see… Oops,"
	line "je koniec?" ; line "it's over?"
	done

BeautyVictoriaAfterBattleText:
	text "Wau, musis byt do-" ; text "Wow, you must be"
	line "bry, ked si vy-" ; line "good to beat me!"
	cont "hral! Len tak" ; cont "Keep it up!"
	cont "dalej!"
	done

BeautySamanthaSeenText:
	text "Daj do toho vset-" ; text "Give it your best"
	line "ko, lebo ta roz-" ; line "shot, or I'll take"
	cont "drtim!" ; cont "you down!"
	done

BeautySamanthaBeatenText:
	text "Nie! Och, MEOWTH," ; text "No! Oh, MEOWTH,"
	line "je mi to luto!" ; line "I'm so sorry!"
	done

BeautySamanthaAfterBattleText:
	text "MEOWTH ovlada" ; text "I taught MEOWTH"
	line "utoky kazdeho" ; line "moves for taking"
	cont "druhu…" ; cont "on any type…"
	done

GoldenrodGymGuideText:
	text "Jou! Buduci" ; text "Yo! CHAMP in"
	line "SAMPION!" ; line "making!"

	para "Tento GYM je domov" ; para "This GYM is home"
	line "pre normal-typ" ; line "to normal-type"
	cont "#MON trenerov." ; cont "#MON trainers."

	para "Doporucujem pouzit" ; para "I recommend you"
	line "fighting-typ" ; line "use fighting-type"
	cont "#MONov." ; cont "#MON."
	done

GoldenrodGymGuideWinText:
	text "Vyhra? Skvele! Ja" ; text "You won? Great! I"
	line "som obdivoval" ; line "was busy admiring"
	cont "tunajsie damy." ; cont "the ladies here."
	done

GoldenrodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 1
	warp_event  3, 17, GOLDENROD_CITY, 1

	def_coord_events
	coord_event  8,  5, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING, WhitneyCriesScript

	def_bg_events
	bg_event  1, 15, BGEVENT_READ, GoldenrodGymStatue
	bg_event  4, 15, BGEVENT_READ, GoldenrodGymStatue

	def_object_events
	object_event  8,  3, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymWhitneyScript, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarrie, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassBridget, -1
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyVictoria, -1
	object_event 19,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautySamantha, -1
	object_event  5, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymGuideScript, -1
