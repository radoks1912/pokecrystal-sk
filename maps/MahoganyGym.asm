	object_const_def
	const MAHOGANYGYM_PRYCE
	const MAHOGANYGYM_BEAUTY1
	const MAHOGANYGYM_ROCKER1
	const MAHOGANYGYM_BEAUTY2
	const MAHOGANYGYM_ROCKER2
	const MAHOGANYGYM_ROCKER3
	const MAHOGANYGYM_GYM_GUIDE

MahoganyGym_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyGymPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .FightDone
	writetext PryceText_Intro
	waitbutton
	closetext
	winlosstext PryceText_Impressed, 0
	loadtrainer PRYCE, PRYCE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	writetext Text_ReceivedGlacierBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
	readvar VAR_BADGES
	scall MahoganyGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM16_ICY_WIND
	iftrue PryceScript_Defeat
	setevent EVENT_BEAT_SKIER_ROXANNE
	setevent EVENT_BEAT_SKIER_CLARISSA
	setevent EVENT_BEAT_BOARDER_RONALD
	setevent EVENT_BEAT_BOARDER_BRAD
	setevent EVENT_BEAT_BOARDER_DOUGLAS
	writetext PryceText_GlacierBadgeSpeech
	promptbutton
	verbosegiveitem TM_ICY_WIND
	iffalse MahoganyGym_NoRoomForIcyWind
	setevent EVENT_GOT_TM16_ICY_WIND
	writetext PryceText_IcyWindSpeech
	waitbutton
	closetext
	end

PryceScript_Defeat:
	writetext PryceText_CherishYourPokemon
	waitbutton
MahoganyGym_NoRoomForIcyWind:
	closetext
	end

MahoganyGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerSkierRoxanne:
	trainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, SkierRoxanneSeenText, SkierRoxanneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierRoxanneAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierClarissa:
	trainer SKIER, CLARISSA, EVENT_BEAT_SKIER_CLARISSA, SkierClarissaSeenText, SkierClarissaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierClarissaAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderRonald:
	trainer BOARDER, RONALD, EVENT_BEAT_BOARDER_RONALD, BoarderRonaldSeenText, BoarderRonaldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderRonaldAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderBrad:
	trainer BOARDER, BRAD, EVENT_BEAT_BOARDER_BRAD, BoarderBradSeenText, BoarderBradBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderBradAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderDouglas:
	trainer BOARDER, DOUGLAS, EVENT_BEAT_BOARDER_DOUGLAS, BoarderDouglasSeenText, BoarderDouglasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderDouglasAfterBattleText
	waitbutton
	closetext
	end

MahoganyGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .MahoganyGymGuideWinScript
	writetext MahoganyGymGuideText
	waitbutton
	closetext
	end

.MahoganyGymGuideWinScript:
	writetext MahoganyGymGuideWinText
	waitbutton
	closetext
	end

MahoganyGymStatue:
	checkflag ENGINE_GLACIERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, PRYCE, PRYCE1
	jumpstd GymStatue2Script

PryceText_Intro:
	text "#MON maju vela" ; text "#MON have many"
	line "zazitkov v ich" ; line "experiences in"

	para "zivotoch, presne " ; para "their lives, just "
	line "ako my. " ; line "like we do. "

	para "Ja som tiez videl" ; para "I, too, have seen"
	line "mnoho a trpel v" ; line "and suffered much"
	cont "mojom zivote." ; cont "in my life."

	para "Kedze som starsi," ; para "Since I am your"
	line "ukazem ti, co tym" ; line "elder, let me show"
	cont "myslim." ; cont "you what I mean."

	para "Bol som s" ; para "I have been with"
	line "#MON este" ; line "#MON since"

	para "pred tvojim naro-" ; para "before you were"
	line "denim." ; line "born."

	para "Lahko neprehram." ; para "I do not lose"
	;line "easily." ; line "easily."

	para "Ja, PRYCE--" ; para "I, PRYCE--the"
	line "zimny trener--" ; line "winter trainer--"

	para "ti ukazem moje" ; para "shall demonstrate"
	line "sily!" ; line "my power!"
	done

PryceText_Impressed:
	text "Ah, som ohromeny" ; text "Ah, I am impressed"
	line "tvojou udatnostou." ; line "by your prowess."

	para "S tvojou silnou" ; para "With your strong"
	line "volou verim, ze" ; line "will, I know you"

	para "urcite prekonas" ; para "will overcome all" 
	line "vsetky prekazky." ; line "life's obstacles."

	para "Si hodny tohto" ; para "You are worthy of"
	line "ODZNAKU!" ; line "this BADGE!"
	done

Text_ReceivedGlacierBadge:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "GLACIERBADGE." ; line "GLACIERBADGE."
	done

PryceText_GlacierBadgeSpeech:
	text "Ten ODZNAK ti" ; text "That BADGE will"
	line "zvysi SPECIAL" ; line "raise the SPECIAL"
	cont "staty #MONov." ; cont "stats of #MON."

	para "Takisto umozni" ; para "It also lets your"
	line "#MON pouzit" ; line "#MON use WHIRL-"
	cont "WHIRLPOOL, aby si" ; cont "POOL to get across"
	cont "sa dostal cez" ; cont "real whirlpools."
	cont "vodne viry."

	para "A toto… Toto je" ; para "And this… This is"
	line "darcek odo mna!" ; line "a gift from me!"
	done

PryceText_IcyWindSpeech:
	text "To TM obsahuje" ; text "That TM contains"
	line "ICY WIND." ; line "ICY WIND."

	para "Sposobuje posko-" ; para "It inflicts damage"
	line "denie a znizuje" ; line "and lowers speed."
	cont "rychlost."

	para "Znazornuje prave" ; para "It demonstrates"
	line "drsnost zimy." ; line "the harshness of"
	;cont "winter." ; cont "winter."
	done

PryceText_CherishYourPokemon:
	text "Ked sa lad a sneh" ; text "When the ice and"
	line "roztopia, pride" ; line "snow melt, spring"
	cont "jar." ; cont "arrives."

	para "Ty a tvoji #-" ; para "You and your #-"
	line "MON budete" ; line "MON will be to-"

	para "spolu mnoho" ; para "gether for many"
	line "rokov." ; line "years to come."

	para "Vazte si ten cas" ; para "Cherish your time"
	line "spolu!" ; line "together!"
	done

BoarderRonaldSeenText:
	text "Zamrazim tvojich" ; text "I'll freeze your"
	line "#MONov, a nic" ; line "#MON, so you"
	cont "nezmozes!" ; cont "can't do a thing!"
	done

BoarderRonaldBeatenText:
	text "Kelu. Na nic som" ; text "Darn. I couldn't"
	line "sa nezmohol." ; line "do a thing."
	done

BoarderRonaldAfterBattleText:
	text "Myslim, ze existu-" ; text "I think there's a"
	line "je utok #MON" ; line "move a #MON"

	para "moze pouzit pocas" ; para "can use while it's"
	line "zmrazenia." ; line "frozen."
	done

BoarderBradSeenText:
	text "Tato TELOCVICNA ma" ; text "This GYM has a"
	line "smyklavu podlahu." ; line "slippery floor."

	para "Je to zabava," ; para "It's fun, isn't"
	line "vsak?" ; line "it?"

	para "Ale ale--tu sa" ; para "But hey--we're"
	line "nehrame ziadne" ; line "not playing games"
	cont "hry!" ; cont "here!"
	done

BoarderBradBeatenText:
	text "Vidis, ako vazne" ; text "Do you see how"
	line "to berieme?" ; line "serious we are?"
	done

BoarderBradAfterBattleText:
	text "Skvela TELOCVICNA." ; text "This GYM is great."
	line "Milujem snowboar-" ; line "I love boarding"
	cont "dovat s #MON!" ; cont "with my #MON!"
	done

BoarderDouglasSeenText:
	text "Viem PRYCEove" ; text "I know PRYCE's"
	line "tajomstvo." ; line "secret."
	done

BoarderDouglasBeatenText:
	text "OK. Poviem tajom-" ; text "OK. I'll tell you"
	line "stvo PRYCEa." ; line "PRYCE's secret."
	done

BoarderDouglasAfterBattleText:
	text "Tajomstvo sily" ; text "The secret behind"
	line "PRYCEa je…" ; line "PRYCE's power…"

	para "Meditovanie pod" ; para "He meditates under"
	line "vodopadom na zvy-" ; line "a waterfall daily"

	para "senie sily tela" ; para "to strengthen his"
	line "a duse." ; line "mind and body."
	done

SkierRoxanneSeenText:
	text "Aby si sa dostal" ; text "To get to PRYCE,"
	line "k PRYCEovi," ; line "our GYM LEADER,"

	para "musis rozmyslat" ; para "you need to think"
	line "pred korculovanim." ; line "before you skate."
	done

SkierRoxanneBeatenText:
	text "V lyzovani by si" ; text "I wouldn't lose to"
	line "ma neporazil!" ; line "you in skiing!"
	done

SkierRoxanneAfterBattleText:
	text "Ak nekorculujes" ; text "If you don't skate"
	line "presne, daleko sa" ; line "with precision,"

	para "v tejto TELOCVIC-" ; para "you won't get far"
	line "NI nedostanes." ; line "in this GYM."
	done

SkierClarissaSeenText:
	text "Pozri ako vyberiem" ; text "Check out my"
	line "zakrutu!" ; line "parallel turn!"
	done

SkierClarissaBeatenText:
	text "Nie! Uplne si ma" ; text "No! You made me"
	line "rozdrvil!" ; line "wipe out!"
	done

SkierClarissaAfterBattleText:
	text "Nemal som sa" ; text "I shouldn't have"
	line "chvastat mojim" ; line "been bragging"
	cont "lyzovanim…" ; cont "about my skiing…"
	done

MahoganyGymGuideText:
	text "PRYCE je veteran," ; text "PRYCE is a veteran"
	line "ktory trenuje" ; line "who has trained"

	para "#MONov uz" ; para "#MON for some"
	line "50 rokov." ; line "50 years."

	para "Udajne je dobry" ; para "He's said to be"
	line "v zamrazovani" ; line "good at freezing"

	para "oponenta s lado-" ; para "opponents with"
	line "vymi utokmi." ; line "ice-type moves."

	para "Mal by si ho" ; para "That means you"
	line "roztopit svojou" ; line "should melt him"

	para "ohnivou ambiciou!" ; para "with your burning"
	;line "ambition!" ; line "ambition!"
	done

MahoganyGymGuideWinText:
	text "PRYCE je teda" ; text "PRYCE is some-"
	line "niekto, ale ty si" ; line "thing, but you're"
	cont "ina trieda!" ; cont "something else!"

	para "Bol to horuci" ; para "That was a hot"
	line "zapas, ktory" ; line "battle that"

	para "spojil generacny" ; para "bridged the gen-"
	line "rozdiel!" ; line "eration gap!"
	done

MahoganyGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, MAHOGANY_TOWN, 3
	warp_event  5, 17, MAHOGANY_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, MahoganyGymStatue
	bg_event  6, 15, BGEVENT_READ, MahoganyGymStatue

	def_object_events
	object_event  5,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MahoganyGymPryceScript, -1
	object_event  4,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierRoxanne, -1
	object_event  0, 17, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderRonald, -1
	object_event  9, 17, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierClarissa, -1
	object_event  5,  9, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBrad, -1
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderDouglas, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyGymGuideScript, -1
