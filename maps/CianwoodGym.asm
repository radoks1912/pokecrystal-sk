	object_const_def
	const CIANWOODGYM_CHUCK
	const CIANWOODGYM_BLACK_BELT1
	const CIANWOODGYM_BLACK_BELT2
	const CIANWOODGYM_BLACK_BELT3
	const CIANWOODGYM_BLACK_BELT4
	const CIANWOODGYM_BOULDER1
	const CIANWOODGYM_BOULDER2
	const CIANWOODGYM_BOULDER3
	const CIANWOODGYM_BOULDER4

CianwoodGym_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodGymChuckScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CHUCK
	iftrue .FightDone
	writetext ChuckIntroText1
	waitbutton
	closetext
	turnobject CIANWOODGYM_CHUCK, RIGHT
	opentext
	writetext ChuckIntroText2
	waitbutton
	closetext
	applymovement CIANWOODGYM_BOULDER1, CianwoodGymMovement_ChuckChucksBoulder
	playsound SFX_STRENGTH
	earthquake 80
	disappear CIANWOODGYM_BOULDER1
	pause 30
	faceplayer
	opentext
	writetext ChuckIntroText3
	waitbutton
	closetext
	winlosstext ChuckLossText, 0
	loadtrainer CHUCK, CHUCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CHUCK
	opentext
	writetext GetStormBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
	readvar VAR_BADGES
	scall CianwoodGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM01_DYNAMICPUNCH
	iftrue .AlreadyGotTM
	setevent EVENT_BEAT_BLACKBELT_YOSHI
	setevent EVENT_BEAT_BLACKBELT_LAO
	setevent EVENT_BEAT_BLACKBELT_NOB
	setevent EVENT_BEAT_BLACKBELT_LUNG
	writetext ChuckExplainBadgeText
	promptbutton
	verbosegiveitem TM_DYNAMICPUNCH
	iffalse .BagFull
	setevent EVENT_GOT_TM01_DYNAMICPUNCH
	writetext ChuckExplainTMText
	waitbutton
	closetext
	end

.AlreadyGotTM:
	writetext ChuckAfterText
	waitbutton
.BagFull:
	closetext
	end

CianwoodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerBlackbeltYoshi:
	trainer BLACKBELT_T, YOSHI, EVENT_BEAT_BLACKBELT_YOSHI, BlackbeltYoshiSeenText, BlackbeltYoshiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltYoshiAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltLao:
	trainer BLACKBELT_T, LAO, EVENT_BEAT_BLACKBELT_LAO, BlackbeltLaoSeenText, BlackbeltLaoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltLaoAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltNob:
	trainer BLACKBELT_T, NOB, EVENT_BEAT_BLACKBELT_NOB, BlackbeltNobSeenText, BlackbeltNobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltNobAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltLung:
	trainer BLACKBELT_T, LUNG, EVENT_BEAT_BLACKBELT_LUNG, BlackbeltLungSeenText, BlackbeltLungBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltLungAfterText
	waitbutton
	closetext
	end

CianwoodGymBoulder:
	jumpstd StrengthBoulderScript

CianwoodGymStatue:
	checkflag ENGINE_STORMBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, CHUCK, CHUCK1
	jumpstd GymStatue2Script

CianwoodGymMovement_ChuckChucksBoulder:
	set_sliding
	big_step LEFT
	big_step UP
	fast_jump_step RIGHT
	remove_sliding
	step_end

ChuckIntroText1:
	text "HAHAHAHA!" ; text "WAHAHAH!"

	para "Takze dostal si sa" ; para "So you've come"
	line "az sem!" ; line "this far!"

	para "Poviem ti jednu" ; para "Let me tell you,"
	line "vec. Som tvrdy!" ; line "I'm tough!"

	para "Moji #MONi" ; para "My #MON will"
	line "rozdrvia kamene a" ; line "crush stones and"
	cont "zlamu kosti!" ; cont "shatter bones!"

	para "Sleduj!" ; para "Watch this!"
	done

ChuckIntroText2:
	text "CHUCK: Urggh!" ; text "CHUCK: Urggh!"
	line "…" ; line "…"

	para "Oooarrgh!" ; para "Oooarrgh!"
	done

ChuckIntroText3:
	text "Tak! Teraz sa uz" ; text "There! Scared now,"
	line "bojis, ze?" ; line "are you?"

	para "Coze?" ; para "What?"
	line "Nema to nic s" ; line "It has nothing to"

	para "#MONmi?" ; para "do with #MON?"
	line "Pravda!" ; line "That's true!"

	para "Tak pod. Podme" ; para "Come on. We shall"
	line "zapasit!" ; line "do battle!"
	done

ChuckLossText:
	text "Coz…? Ha?" ; text "Wha? Huh?"
	line "Prehral som?" ; line "I lost?"

	para "No to ma podrz!" ; para "How about that!"
	line "Si hodny odznaku" ; line "You're worthy of"
	cont "STORMBADGE!" ; cont "STORMBADGE!"
	done

GetStormBadgeText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "STORMBADGE."
	done

ChuckExplainBadgeText:
	text "STORMBADGE sposobi" ; text "STORMBADGE makes"
	line "ze #MONi az" ; line "all #MON up to"

	para "do L70 ta budu" ; para "L70 obey, even"
	line "posluchat." ; line "traded ones."

	para "Takisto mozes pou-" ; para "It also lets your"
	line "zivat FLY" ; line "#MON use FLY"

	para "lietanie, ked" ; para "when you're not in"
	line "prave nezapasis." ; line "a battle."

	para "Prosim, vezmi si" ; para "Here, take this"
	line "toto!" ; line "too!"
	done

ChuckExplainTMText:
	text "Je to DYNAMIC-" ; text "That is DYNAMIC-"
	line "PUNCH."

	para "Nie vzdy trafi," ; para "It doesn't always"
	line "ale ked ano, tak" ; line "hit, but when it"

	para "vzdy sposobi" ; para "does, it causes"
	line "zmatenie supera!" ; line "confusion!"
	done

ChuckAfterText:
	text "HAHAHAHA! Bol to" ; text "WAHAHAH! I enjoyed"
	line "super zapas!" ; line "battling you!"

	para "Ale prehra je" ; para "But a loss is a"
	line "prehra!" ; line "loss!"

	para "Odteraz zacnem" ; para "From now on, I'm"
	line "trenovat 24 hodin" ; line "going to train 24"
	cont "denne!" ; cont "hours a day!"
	done

BlackbeltYoshiSeenText:
	text "Moji #MONi a" ; text "My #MON and I"
	line "ja sme spojeni" ; line "are bound togeth-"
	cont "priatelstvom." ; cont "er by friendship."

	para "Nase puto sa" ; para "Our bond will"
	line "nikdy nezlomi!" ; line "never be broken!"
	done

BlackbeltYoshiBeatenText:
	text "Neskutocne!" ; text "This isn't real!"
	done

BlackbeltYoshiAfterText:
	text "Vypada, ze mas" ; text "You seem to have a"
	line "silne puto so svo-" ; line "strong bond with"
	cont "jimi #MONmi!" ; cont "your #MON too!"
	done

BlackbeltLaoSeenText:
	text "My bojovi umelci" ; text "We martial artists"
	line "nemame strach!" ; line "fear nothing!"
	done

BlackbeltLaoBeatenText:
	text "To je sokujuce!" ; text "That's shocking!"
	done

BlackbeltLaoAfterText:
	text "Bojovi #MONi" ; text "Fighting #MON"
	line "su slabi voci" ; line "are afraid of psy-"
	cont "psychickym…" ; cont "chics…"
	done

BlackbeltNobSeenText:
	text "Slova su zbytocne." ; text "Words are useless."
	line "Nechaj prehovorit" ; line "Let your fists do"
	cont "svoje paste!" ; cont "the talking!"
	done

BlackbeltNobBeatenText:
	text "…" ; text "…"
	done

BlackbeltNobAfterText:
	text "Prehral som! " ; text "I lost! "
	line "Nemam slov!" ; line "I'm speechless!"
	done

BlackbeltLungSeenText:
	text "Moje paste znicia" ; text "My raging fists"
	line "tvojich" ; line "will shatter your"
	cont "#MONov!" ; cont "#MON!"
	done

BlackbeltLungBeatenText:
	text "Rozbil si ma!" ; text "I got shattered!"
	done

BlackbeltLungAfterText:
	text "Moji #MONi" ; text "My #MON lost…"
	line "prehrali… Moja" ; line "My… my pride is"
	cont "pycha…" ; cont "shattered…"
	done

CianwoodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CIANWOOD_CITY, 2
	warp_event  5, 17, CIANWOOD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CianwoodGymStatue
	bg_event  6, 15, BGEVENT_READ, CianwoodGymStatue

	def_object_events
	object_event  4,  1, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodGymChuckScript, -1
	object_event  2, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltYoshi, -1
	object_event  7, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltLao, -1
	object_event  3,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltNob, -1
	object_event  5,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltLung, -1
	object_event  5,  1, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  3,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  4,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  5,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
