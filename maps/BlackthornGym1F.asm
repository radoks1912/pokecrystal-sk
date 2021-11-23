	object_const_def
	const BLACKTHORNGYM1F_CLAIR
	const BLACKTHORNGYM1F_COOLTRAINER_M1
	const BLACKTHORNGYM1F_COOLTRAINER_M2
	const BLACKTHORNGYM1F_COOLTRAINER_F
	const BLACKTHORNGYM1F_GYM_GUIDE

BlackthornGym1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Boulders

.Boulders:
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	iffalse .skip1
	changeblock 8, 2, $3b ; fallen boulder 2
.skip1
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	iffalse .skip2
	changeblock 2, 4, $3a ; fallen boulder 1
.skip2
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	iffalse .skip3
	changeblock 8, 6, $3b ; fallen boulder 2
.skip3
	endcallback

BlackthornGymClairScript:
	faceplayer
	opentext
	checkflag ENGINE_RISINGBADGE
	iftrue .AlreadyGotBadge
	checkevent EVENT_BEAT_CLAIR
	iftrue .FightDone
	writetext ClairIntroText
	waitbutton
	closetext
	winlosstext ClairWinText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CLAIR
	opentext
	writetext ClairText_GoToDragonsDen
	waitbutton
	closetext
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_CODY
	setevent EVENT_BEAT_COOLTRAINERM_MIKE
	setevent EVENT_BEAT_COOLTRAINERF_FRAN
	setevent EVENT_BEAT_COOLTRAINERF_LOLA
	clearevent EVENT_MAHOGANY_MART_OWNERS
	setevent EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	clearevent EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	end

.FightDone:
	writetext ClairText_TooMuchToExpect
	waitbutton
	closetext
	end

.AlreadyGotBadge:
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue .GotTM24
	writetext BlackthornGymClairText_YouKeptMeWaiting
	promptbutton
	giveitem TM_DRAGONBREATH
	iffalse .BagFull
	getitemname STRING_BUFFER_3, TM_DRAGONBREATH
	writetext BlackthornGymText_ReceivedTM24
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext BlackthornGymClairText_DescribeTM24
	promptbutton
	sjump .GotTM24

.BagFull:
	writetext BlackthornGymClairText_BagFull
	waitbutton
	closetext
	end

.GotTM24:
	writetext BlackthornGymClairText_League
	waitbutton
	closetext
	end

TrainerCooltrainermPaul:
	trainer COOLTRAINERM, PAUL, EVENT_BEAT_COOLTRAINERM_PAUL, CooltrainermPaulSeenText, CooltrainermPaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermPaulAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermMike:
	trainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainermMikeSeenText, CooltrainermMikeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermMikeAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLola:
	trainer COOLTRAINERF, LOLA, EVENT_BEAT_COOLTRAINERF_LOLA, CooltrainerfLolaSeenText, CooltrainerfLolaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLolaAfterBattleText
	waitbutton
	closetext
	end

BlackthornGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuideWinScript
	writetext BlackthornGymGuideText
	waitbutton
	closetext
	end

.BlackthornGymGuideWinScript:
	writetext BlackthornGymGuideWinText
	waitbutton
	closetext
	end

BlackthornGymStatue:
	checkflag ENGINE_RISINGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, CLAIR, CLAIR1
	jumpstd GymStatue2Script

ClairIntroText:
	text "Som CLAIR." ; text "I am CLAIR."

	para "Najlepsi trener" ; para "The world's best"
	line "drakov na svete." ; line "dragon master."

	para "Nezlakla som sa" ; para "I can hold my own"
	line "ani superom z" ; line "against even the"

	para "#MON LEAGUE" ; para "#MON LEAGUE's"
	line "ELITNEJ STVORKY." ; line "ELITE FOUR."

	para "Este stale chces" ; para "Do you still want"
	line "proti mne zapasit?" ; line "to take me on?"

	para "…Fajn." ; para "…Fine."
	line "Podme na to!" ; line "Let's do it!"

	para "Ako GYM LEADER" ; para "As a GYM LEADER,"
	line "pouzijem moju plnu" ; line "I will use my full"

	para "silu proti kazdemu" ; para "power against any"
	line "superovi!" ; line "opponent!"
	done

ClairWinText:
	text "Prehrala som?" ; text "I lost?"

	para "Tomu neverim." ; para "I don't believe"
	line "To musi byt nejaka" ; line "it. There must be"
	cont "chyba…" ; cont "some mistake…"
	done

ClairText_GoToDragonsDen:
	text "Toto nepriznam." ; text "I won't admit"
	;line "this." ; line "this."

	para "Mozno som prehra-" ; para "I may have lost,"
	line "la, ale stale nie" ; line "but you're still"

	para "si pripraveny na" ; para "not ready for the"
	line "#MON LEAGUE." ; line "#MON LEAGUE."

	para "Viem. Musis dokon-" ; para "I know. You should"
	line "cit draciu vyzvu." ; line "take the dragon"
	;cont "vyzvu." ; cont "user challenge."

	para "Za tymto GYMom je" ; para "Behind this GYM is"
	line "miesto s nazvom"  ; line "a place called"
	cont "DRAGON'S DEN." ; cont "DRAGON'S DEN."

	para "V jeho strede" ; para "There is a small"
	line "je mala svatyna." ; line "shrine at its"

	para "Chod tam." ; para "center."
	;line "Go there." ; line "Go there."

	para "Ak mi dokazes," ; para "If you can prove"
	line "ze nie si namys-" ; line "that you've lost"

	para "leny trener," ; para "your lazy ideals,"
	line "uznam ta ako" ; line "I will recognize"

	para "trenera hodneho" ; para "you as a trainer"
	line "GYM ODZNAKU!" ; line "worthy of a GYM"
	;cont "BADGE!" ; cont "BADGE!"
	done

ClairText_TooMuchToExpect:
	text "Co sa deje?" ; text "What's the matter?"

	para "Ocakava sa od teba" ; para "Is it too much to"
	line "az prilis vela?" ; line "expect of you?"
	done

BlackthornGymClairText_YouKeptMeWaiting:
	text "Nechal si ma" ; text "You've kept me"
	line "cakat!" ; line "waiting!"

	para "Vezmi si toto!" ; para "Here! Take this!"
	done

BlackthornGymText_ReceivedTM24:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "TM24."
	done

BlackthornGymClairText_DescribeTM24:
	text "Obsahuje to" ; text "That contains"
	line "DRAGONBREATH." ; line "DRAGONBREATH."

	para "Nie, nema to nic" ; para "No, it doesn't"
	line "spolocne s mojim" ; line "have anything to"
	cont "dychom." ; cont "do with my breath."

	para "Ak to nechces," ; para "If you don't want"
	line "nemusis si to" ; line "it, you don't have"
	cont "vziat." ; cont "to take it."
	done

BlackthornGymClairText_BagFull:
	text "Prosim? Ty nemas" ; text "What is this? You" 
	line "na to miesto?" ; line "don't have room?"
	done

BlackthornGymClairText_League:
	text "Co sa deje?" ; text "What's the matter?"

	para "Nechystas sa do" ; para "Aren't you headed"
	line "#MON" ; line "to the #MON"
	cont "LEAGUE?" ; cont "LEAGUE?"

	para "Ty nevies," ; para "Don't you know"
	line "kde to je?" ; line "where it is?"

	para "Chod odtialto do" ; para "From here, go to"
	line "NEW BARK TOWN." ; line "NEW BARK TOWN."

	para "Potom SURFuj na" ; para "Then SURF east."
	line "vychod. Tato cesta" ; line "The route there is"
	cont "je velmi drsna." ; cont "very tough."

	para "Neopovaz sa" ; para "Don't you dare"
	line "prehrat v #-" ; line "lose at the #-"
	cont "MON LEAGUE!" ; cont "MON LEAGUE!"

	para "Ak prehras, budem" ; para "If you do, I'll"
	line "sa citit este" ; line "feel even worse"

	para "horsie, ze som s" ; para "about having lost"
	line "tebou prehrala!" ; line "to you!"

	para "Daj tomu vsetko," ; para "Give it every-"
	line "co v tebe je." ; line "thing you've got."
	done

CooltrainermPaulSeenText:
	text "Tvoj prvy zapas" ; text "Your first battle"
	line "proti drakom?" ; line "against dragons?"

	para "Ukazem ti, aki su" ; para "I'll show you how"
	line "silni!" ; line "tough they are!"
	done

CooltrainermPaulBeatenText:
	text "Moji draci #MONi" ; text "My dragon #MON"
	line "prehrali?" ; line "lost?"
	done

CooltrainermPaulAfterBattleText:
	text "LANCE povedal," ; text "LANCE told you"
	line "ze by ta rad" ; line "that he'd like to"

	para "znova videl?" ; para "see you again?"
	line "Ani nahodou!" ; line "Not a chance!"
	done

CooltrainermMikeSeenText:
	text "Moja sanca na" ; text "My chance of"
	line "prehru? Menej ako" ; line "losing? Not even"
	cont "jedno percento!" ; cont "one percent!"
	done

CooltrainermMikeBeatenText:
	text "To je zvlastne." ; text "That's odd."
	done

CooltrainermMikeAfterBattleText:
	text "Poznam moje" ; text "I know my short-"
	line "slabiny." ; line "comings now."

	para "Vdaka, ze si mi to" ; para "Thanks for showing"
	line "ukazal!" ; line "me!"
	done

CooltrainerfLolaSeenText:
	text "Draci su svati" ; text "Dragons are sacred"
	line "#MONi." ; line "#MON."

	para "Su plni zivotnej" ; para "They are full of"
	line "energie." ; line "life energy."

	para "Ak to nemyslis" ; para "If you're not"
	line "vazne, nebudes" ; line "serious, you won't"

	para "ich vediet pora-" ; para "be able to beat"
	line "zit." ; line "them."
	done

CooltrainerfLolaBeatenText:
	text "Vyborne!" ; text "Way to go!"
	done

CooltrainerfLolaAfterBattleText:
	text "Draci su slabi" ; text "Dragons are weak"
	line "proti inym" ; line "against dragon-"
	cont "drakom." ; cont "type moves."
	done

BlackthornGymGuideText:
	text "Jou! Buduci" ; text "Yo! CHAMP in"
	line "sampion!" ; line "making!"

	para "Bola to dlha" ; para "It's been a long"
	line "cesta, ale sme uz" ; line "journey, but we"

	para "skoro na konci!" ; para "are almost done!"
	line "Pocitaj so mnou!" ; line "Count on me!"

	para "CLAIR pouziva" ; para "CLAIR uses the"
	line "mytickych a sva-" ; line "mythical and sac-"
	cont "tych dracich" ; cont "red dragon-type"
	cont "#MONov." ; cont "#MON."

	para "Nemozes ich jedno-" ; para "You can't damage"
	line "ducho zranit." ; line "them very easily."

	para "Ale vies," ; para "But you know,"
	line "udajne by mali byt" ; line "they're supposed"

	para "slabi proti lado-" ; para "to be weak against"
	line "vym utokom." ; line "ice-type moves."
	done

BlackthornGymGuideWinText:
	text "Porazil si CLAIR," ; text "You were great to"
	line "skvele!" ; line "beat CLAIR!"

	para "Jedine, co ostava," ; para "All that's left is"
	line "je #MON LEAGUE" ; line "the #MON LEAGUE"
	cont "vyzva." ; cont "challenge."

	para "Si na spravnej " ; para "You're on the way"
	line "ceste stat sa" ; line "to becoming the"
	cont "#MON CHAMPION!" ; cont "#MON CHAMPION!"
	done

BlackthornGym1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BLACKTHORN_CITY, 1
	warp_event  5, 17, BLACKTHORN_CITY, 1
	warp_event  1,  7, BLACKTHORN_GYM_2F, 1
	warp_event  7,  9, BLACKTHORN_GYM_2F, 2
	warp_event  2,  6, BLACKTHORN_GYM_2F, 3
	warp_event  7,  7, BLACKTHORN_GYM_2F, 4
	warp_event  7,  6, BLACKTHORN_GYM_2F, 5

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, BlackthornGymStatue
	bg_event  6, 15, BGEVENT_READ, BlackthornGymStatue

	def_object_events
	object_event  5,  3, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornGymClairScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermMike, -1
	object_event  1, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermPaul, -1
	object_event  9,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLola, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymGuideScript, -1
