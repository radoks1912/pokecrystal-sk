	object_const_def
	const AZALEAGYM_BUGSY
	const AZALEAGYM_BUG_CATCHER1
	const AZALEAGYM_BUG_CATCHER2
	const AZALEAGYM_BUG_CATCHER3
	const AZALEAGYM_TWIN1
	const AZALEAGYM_TWIN2
	const AZALEAGYM_GYM_GUIDE

AzaleaGym_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaGymBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BUGSY
	iftrue .FightDone
	writetext BugsyText_INeverLose
	waitbutton
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	opentext
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	readvar VAR_BADGES
	scall AzaleaGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_AMY_AND_MAY
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	writetext BugsyText_HiveBadgeSpeech
	promptbutton
	verbosegiveitem TM_FURY_CUTTER
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM49_FURY_CUTTER
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetext
	end

.GotFuryCutter:
	writetext BugsyText_BugMonsAreDeep
	waitbutton
.NoRoomForFuryCutter:
	closetext
	end

AzaleaGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerTwinsAmyandmay1:
	trainer TWINS, AMYANDMAY1, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay1SeenText, TwinsAmyandmay1BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAmyandmay2:
	trainer TWINS, AMYANDMAY2, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay2SeenText, TwinsAmyandmay2BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay2AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherBenny:
	trainer BUG_CATCHER, BUG_CATCHER_BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherBennyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAl:
	trainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherAlAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetext
	end

AzaleaGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuideWinScript
	opentext
	writetext AzaleaGymGuideText
	waitbutton
	closetext
	end

.AzaleaGymGuideWinScript:
	opentext
	writetext AzaleaGymGuideWinText
	waitbutton
	closetext
	end

AzaleaGymStatue:
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd GymStatue2Script

BugsyText_INeverLose:
	text "Som BUGSY!" ; text "I'm BUGSY!"
	line "Nikdy neprehra, ak" ; line "I never lose when"

	para "sa jedna o hmyz" ; para "it comes to bug"
	line "#MONov." ; line "#MON."

	para "Moj vyskum ma" ; para "My research is"
	line "spravi autoritou" ; line "going to make me"

	para "v hmyzovych" ; para "the authority on"
	line "#MONoch!" ; line "bug #MON!"

	para "Dovol mi ukazat" ; para "Let me demonstrate"
	line "ti, co som sa na-" ; line "what I've learned"
	cont "ucil studiom." ; cont "from my studies."
	done

BugsyText_ResearchIncomplete:
	text "Wou, uzasne!" ; text "Whoa, amazing!"
	line "Si expert na" ; line "You're an expert"
	cont "#MONov!" ; cont "on #MON!"

	para "Moj vyskum este" ; para "My research isn't"
	line "nie je dokonceny." ; line "complete yet."

	para "OK, vyhravas." ; para "OK, you win. Take"
	line "Vezmi si ODZNAK." ; line "this BADGE."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "HIVEBADGE." ; line "HIVEBADGE."
	done

BugsyText_HiveBadgeSpeech:
	text "Vies, ake su" ; text "Do you know the"
	line "benefity HIVE-" ; line "benefits of HIVE-"
	cont "BADGE?" ; cont "BADGE?"

	para "Ak ho mas," ; para "If you have it,"
	line "#MON az do L30" ; line "#MON up to L30"

	para "ta budu posluchat," ; para "will obey you,"
	line "aj ti vymeneni."  ; line "even traded ones."

	para "#MON ktory vie" ; para "#MON that know"
	line "CUT, ho moze po-" ; line "CUT will be able"

	para "zit aj mimo" ; para "to use it outside"
	line "zapasu." ; line "of battle too."

	para "Tu mas, vezmi si" ; para "Here, I also want"
	line "tiez toto." ; line "you to have this."
	done

BugsyText_FuryCutterSpeech:
	text "TM49 je" ; text "TM49 contains"
	line "FURY CUTTER." ; line "FURY CUTTER."

	para "Ak neminies," ; para "If you don't miss,"
	line "je silnejsi" ; line "it gets stronger"
	cont "kazdym tahom." ; cont "every turn."

	para "Cim dlhsie zapa-" ; para "The longer your"
	line "sis, tym je" ; line "battle goes, the"
	cont "lepsi." ; cont "better it gets."

	para "Nie je to skvele?" ; para "Isn't that great?
	line "Vymyslel som ho!" ; line "I discovered it!"
	done

BugsyText_BugMonsAreDeep:
	text "Hmyzi #MONi" ; text "Bug #MON are"
	line "su skveli. Exis-" ; line "deep. There are"

	para "tuje mnoho nevy-" ; para "many mysteries to"
	line "riesenych zahad." ; line "be explored."

	para "Studuj pozorne" ; para "Study your favor-"
	line "oblubencov." ; line "ites thoroughly."
	done

BugCatcherBennySeenText:
	text "Hmyzi #MONi" ; text "Bug #MON evolve"
	line "sa rychlo vyvijaju" ; line "young. So they get"

	para "a silneju" ; para "stronger that much"
	line "rychlejsie." ; line "faster."
	done

BugCatcherBennyBeatenText:
	text "Iba vyvijanie" ; text "Just evolving"
	line "nestaci!" ; line "isn't enough!"
	done

BugCatcherBennyAfterBattleText:
	text "#MONi sa" ; text "#MON become"
	line "stanu silnejsimi," ; line "stronger if they"
	cont "s vyvinom. Fakt!" ; cont "evolve. Really!"
	done

BugCatcherAlSeenText:
	text "Hmyzi #MONi" ; text "Bug #MON are"
	line "su cool!" ; line "cool and tough!"

	para "Dokazem ti to!" ; para "I'll prove it to"
	;line "you!" ; line "you!"
	done

BugCatcherAlBeatenText:
	text "Dokazal si mi" ; text "You proved how"
	line "svoju silu…" ; line "tough you are…"
	done

BugCatcherAlAfterBattleText:
	text "Su skveli," ; text "They're so cool,"
	line "ale dievcata" ; line "but most girls"

	para "nemaju rady hmyz" ; para "don't like bug"
	line "#MONov." ; line "#MON."

	para "Netusim preco…" ; para "I don't know why…"
	done

BugCatcherJoshSeenText:
	text "Zachranil si" ; text "You saved all the"
	line "SLOWPOKEov? Fu," ; line "SLOWPOKE? Whew,"
	cont "si mocny!"

	para "Ale moji" ; para "But my grown-up"
	line "#MONi si tiez" ; line "#MON are pretty"
	cont "silni!" ; cont "tough too!"
	done

BugCatcherJoshBeatenText:
	text "Aaaaach!" ; text "Urrgggh!"
	done

BugCatcherJoshAfterBattleText:
	text "Myslim, ze by som" ; text "I guess I should"
	line "ich mal naucit" ; line "teach them better"
	cont "lepsie utoky…" ; cont "moves…"
	done

TwinsAmyandmay1SeenText:
	text "AMY: Ahoj! Chces" ; text "AMY: Hi! Are you"
	line "vyzvat LEADERa?" ; line "challenging the"
	cont "To urcite!" ; cont "LEADER? No way!"
	done

TwinsAmyandmay1BeatenText:
	text "AMY & MAY: Och," ; text "AMY & MAY: Oh,"
	line "dvojity boh!" ; line "double goodness!"
	done

TwinsAmyandmay1AfterBattleText:
	text "AMY: Si tak" ; text "AMY: You're"
	line "silny!" ; line "really strong!"
	done

TwinsAmyandmay2SeenText:
	text "MAY: Chces vyzvat" ; text "MAY: You want to"
	line "LEADERa?" ; line "see the LEADER?"
	cont "Najprv my!" ; cont "We come first!"
	done

TwinsAmyandmay2BeatenText:
	text "AMY & MAY: Och," ; text "AMY & MAY: Oh,"
	line "dvojity boh!" ; line "double goodness!"
	done

TwinsAmyandmay2AfterBattleText:
	text "MAY: Nasi #-" ; text "MAY: Our bug #-"
	line "MON prehrali!" ; line "MON lost! Oh, what"
	cont "Aka skoda." ; cont "a shame."
	done

AzaleaGymGuideText:
	text "Hej, vyzyvatel!" ; text "Yo, challenger!"

	para "BUGSY je mlady," ; para "BUGSY's young, but"
	line "ale jeho vedomosti" ; line "his knowledge of"

	para "o hmyze su" ; para "bug #MON is for"
	line "obrovske." ; line "real."

	para "Bude to tazke" ; para "It's going to be"
	line "bez mojej" ; line "tough without my"
	cont "rady." ; cont "advice."

	para "Pozrime sa na to…" ; para "Let's see… Bug"
	line "Jeho #MONi nemaju" ; line "#MON don't like"
	cont "radi ohen." ; cont "fire."

	para "Lietajuce utoky su" ; para "Flying-type moves"
	line "tiez velmi" ; line "are super-effec-"
	cont "efektivne." ; cont "tive too."
	done

AzaleaGymGuideWinText:
	text "Vyborne! Toto" ; text "Well done! That"
	line "bol skvely zapas" ; line "was a great clash"

	para "talentovanych mla-" ; para "of talented young"
	line "dych trenerov." ; line "trainers."

	para "S ludmi ako ty je" ; para "With people like"
	line "je buducnost" ; line "you, the future of"
	cont "#MONov jasna!" ; cont "#MON is bright!"
	done

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, AZALEA_TOWN, 5
	warp_event  5, 15, AZALEA_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 13, BGEVENT_READ, AzaleaGymStatue

	def_object_events
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, -1
	object_event  5,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherBenny, -1
	object_event  8,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAl, -1
	object_event  0,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJosh, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay2, -1
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaGymGuideScript, -1
