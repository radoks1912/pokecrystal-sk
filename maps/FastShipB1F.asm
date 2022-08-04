	object_const_def
	const FASTSHIPB1F_SAILOR1
	const FASTSHIPB1F_SAILOR2
	const FASTSHIPB1F_SAILOR3
	const FASTSHIPB1F_LASS
	const FASTSHIPB1F_SUPER_NERD
	const FASTSHIPB1F_SAILOR4
	const FASTSHIPB1F_FISHER
	const FASTSHIPB1F_BLACK_BELT
	const FASTSHIPB1F_SAILOR5
	const FASTSHIPB1F_TEACHER
	const FASTSHIPB1F_YOUNGSTER1
	const FASTSHIPB1F_YOUNGSTER2

FastShipB1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_FASTSHIPB1F_SAILOR_BLOCKS
	scene_script .DummyScene1, SCENE_FASTSHIPB1F_NOOP

	def_callbacks

.DummyScene0:
	end

.DummyScene1:
	end

FastShipB1FSailorBlocksLeft:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	iftrue FastShipB1FAlreadyBlocked
	applymovement FASTSHIPB1F_SAILOR2, FastShipB1FSailorBlocksLeftMovement
	moveobject FASTSHIPB1F_SAILOR1, 30, 6
	appear FASTSHIPB1F_SAILOR1
	pause 5
	disappear FASTSHIPB1F_SAILOR2
	end

FastShipB1FSailorBlocksRight:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	iftrue FastShipB1FAlreadyBlocked
	applymovement FASTSHIPB1F_SAILOR1, FastShipB1FSailorBlocksRightMovement
	moveobject FASTSHIPB1F_SAILOR2, 31, 6
	appear FASTSHIPB1F_SAILOR2
	pause 5
	disappear FASTSHIPB1F_SAILOR1
	end

FastShipB1FAlreadyBlocked:
	end

FastShipB1FSailorScript:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .FirstTime
	checkevent EVENT_FAST_SHIP_LAZY_SAILOR
	iftrue .LazySailor
	checkevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	iftrue .AlreadyInformed
	writetext FastShipB1FOnDutySailorText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	clearevent EVENT_FAST_SHIP_CABINS_NNW_NNE_NE_SAILOR
	end

.AlreadyInformed:
	writetext FastShipB1FOnDutySailorRefusedText
	waitbutton
	closetext
	end

.LazySailor:
	writetext FastShipB1FOnDutySailorThanksText
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iffalse .NotFoundGirl
	waitbutton
	closetext
	end

.NotFoundGirl:
	promptbutton
	writetext FastShipB1FOnDutySailorSawLittleGirlText
	waitbutton
	closetext
	end

.FirstTime:
	writetext FastShipB1FOnDutySailorDirectionsText
	waitbutton
	closetext
	end

TrainerSailorJeff:
	trainer SAILOR, JEFF, EVENT_BEAT_SAILOR_JEFF, SailorJeffSeenText, SailorJeffBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorJeffAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerDebra:
	trainer PICNICKER, DEBRA, EVENT_BEAT_PICNICKER_DEBRA, PicnickerDebraSeenText, PicnickerDebraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerDebraAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerFritz:
	trainer JUGGLER, FRITZ, EVENT_BEAT_JUGGLER_FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerFritzAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorGarrett:
	trainer SAILOR, GARRETT, EVENT_BEAT_SAILOR_GARRETT, SailorGarrettSeenText, SailorGarrettBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorGarrettAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherJonah:
	trainer FISHER, JONAH, EVENT_BEAT_FISHER_JONAH, FisherJonahSeenText, FisherJonahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherJonahAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackbeltWai:
	trainer BLACKBELT_T, WAI, EVENT_BEAT_BLACKBELT_WAI, BlackbeltWaiSeenText, BlackbeltWaiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltWaiAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorKenneth:
	trainer SAILOR, KENNETH, EVENT_BEAT_SAILOR_KENNETH, SailorKennethSeenText, SailorKennethBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorKennethAfterBattleText
	waitbutton
	closetext
	end

TrainerTeacherShirley:
	trainer TEACHER, SHIRLEY, EVENT_BEAT_TEACHER_SHIRLEY, TeacherShirleySeenText, TeacherShirleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherShirleyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyNate:
	trainer SCHOOLBOY, NATE, EVENT_BEAT_SCHOOLBOY_NATE, SchoolboyNateSeenText, SchoolboyNateBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyNateAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyRicky:
	trainer SCHOOLBOY, RICKY, EVENT_BEAT_SCHOOLBOY_RICKY, SchoolboyRickySeenText, SchoolboyRickyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyRickyAfterBattleText
	waitbutton
	closetext
	end

FastShipB1FTrashcan:
	jumpstd TrashCanScript

FastShipB1FSailorBlocksRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	turn_head DOWN
	step_end

FastShipB1FSailorBlocksLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	turn_head DOWN
	step_end

FastShipB1FOnDutySailorText:
	text "Hej, synak. Mohol" ; text "Hey, kid. Could I"
	line "by si sa pozriet" ; line "get you to look"
	cont "po mojom kamosovi?" ; cont "for my buddy?"

	para "Niekde sa flaka," ; para "He's goofing off"
	line "lenivec jeden!" ; line "somewhere, that"
	;cont "lazy bum!" ; cont "lazy bum!"

	para "Isiel by som ho" ; para "I want to go find"
	line "hladat, ale zrovna" ; line "him, but I'm on"
	cont "mam sluzbu." ; cont "duty right now."
	done

FastShipB1FOnDutySailorRefusedText:
	text "Och, kelu…" ; text "Oh, gee…"

	para "KAPITAN bude" ; para "The CAPTAIN will"
	line "zurit…" ; line "be furious…"
	done

FastShipB1FOnDutySailorThanksText:
	text "Dakujem, synak!" ; text "Thanks, kid!"
	line "Zgustol som si na" ; line "I chewed him out"

	para "nom, urcite sa" ; para "good so he'll quit"
	line "prestane flakat!" ; line "slacking off!"
	done

FastShipB1FOnDutySailorSawLittleGirlText:
	text "Male dievcatko?" ; text "A little girl?"

	para "Tusim som ho videl" ; para "I may have seen"
	line "tadialto prejst." ; line "her go by here."
	done

FastShipB1FOnDutySailorDirectionsText:
	text "Jedalen je smerom" ; text "The dining room is"
	line "rovno." ; line "up ahead."

	para "Schody na konci" ; para "The stairs at the"
	line "chodby vedu do" ; line "end lead to the"
	cont "kajuty KAPITANA." ; cont "CAPTAIN's cabin."
	done

SailorJeffSeenText:
	text "Nie je nic lepsie" ; text "Nothing beats a" 
	line "ako zapasit pocas" ; line "battle when I'm"
	cont "prestavky." ; cont "on my break."
	done

SailorJeffBeatenText:
	text "Vyhra ci prehra," ; text "Win or lose, my"
	line "prestavka konci!" ; line "break's over!"
	done

SailorJeffAfterBattleText:
	text "Nepodari sa mi" ; text "I guess I can't"
	line "vyhrat, ked to ne-" ; line "win if I don't get"
	cont "budem brat vazne." ; cont "serious."
	done

PicnickerDebraSeenText:
	text "Nudim sa." ; text "I'm so bored."
	line "Dame zapas?" ; line "Want to battle?"
	done

PicnickerDebraBeatenText:
	text "Jou! Si strasne" ; text "Yow! You're too"
	line "silny!" ; line "strong!"
	done

PicnickerDebraAfterBattleText:
	text "SAFFRON, CELADON…" ; text "SAFFRON, CELADON…"
	line "Pocul som, ze v" ; line "I hear there are"

	para "KANTO je mnoho" ; para "many big cities"
	line "velkych miest." ; line "in KANTO."
	done

JugglerFritzSeenText:
	text "Urrf… Mam morsku" ; text "Urrf…"
	line "chorobu!" ; line "I'm seasick!"
	done

JugglerFritzBeatenText:
	text "Nemozem sa uz" ; text "I can't move any-"
	line "pohnut…" ; line "more…"
	done

JugglerFritzAfterBattleText:
	text "Uz ziadne lode" ; text "No more ships for"
	line "pre mna. Nabuduce" ; line "me. Next time,"

	para "pojdem radsej" ; para "I'm taking the"
	line "MAGNET VLAKOM." ; line "MAGNET TRAIN."
	done

SailorGarrettSeenText:
	text "My namornici pra-" ; text "This is where we"
	line "cujeme tu!" ; line "sailors work!"
	done

SailorGarrettBeatenText:
	text "Prehral som na" ; text "I lost on my home"
	line "vlastnom poli…" ; line "field…"
	done

SailorGarrettAfterBattleText:
	text "Prepravujeme" ; text "We get different"
	line "roznych cestuju-" ; line "passengers from"

	para "cich z VERMILION" ; para "VERMILION CITY to"
	line "do OLIVINE." ; line "OLIVINE CITY."
	done

FisherJonahSeenText:
	text "Aj ked sme na mori" ; text "Even though we're"
	line "nemozem rybarcit!" ; line "out on the sea, I"
	;cont "can't fish!" ; cont "can't fish!"

	para "To je nuda!" ; para "This is boring!"
	line "Podme zapasit!" ; line "Let's battle!"
	done

FisherJonahBeatenText:
	text "Ja… Ja sa uz" ; text "I… I'm not bored"
	line "nenudim…" ; line "anymore…"
	done

FisherJonahAfterBattleText:
	text "Planujem chytat" ; text "I plan to fish off"
	line "ryby z mola vo" ; line "VERMILION's pier."
	cont "VERMILIONe."
	done

BlackbeltWaiSeenText:
	text "Cvicim si nohy" ; text "I'm building up my"
	line "balansovanim" ; line "legs by bracing"

	para "proti kolisaniu" ; para "against the ship's"
	line "lode!" ; line "rocking!"
	done

BlackbeltWaiBeatenText:
	text "Dostal si ma!" ; text "Rocked and rolled"
	;line "over!" ; line "over!"
	done

BlackbeltWaiAfterBattleText:
	text "Nenasiel som" ; text "I couldn't find"
	line "KARATE KINGa v" ; line "the KARATE KING in"
	cont "JOHTO." ; cont "JOHTO."

	para "Udajne trenuje" ; para "He's supposed to"
	line "v nejakej nespeci-" ; line "be training in a"
	cont "fikovanej jaskyni." ; cont "cave somewhere."
	done

SailorKennethSeenText:
	text "Som namornik!" ; text "I'm a sailor man!"

	para "Ale trenujem" ; para "But I'm training"
	line "#MON, aby som" ; line "#MON, so I can"
	cont "sa stal sampionom!" ; cont "become the CHAMP!"
	done

SailorKennethBeatenText:
	text "Zjavny nedostatok" ; text "My lack of train-"
	line "treningu…" ; line "ing is obvious…"
	done

SailorKennethAfterBattleText:
	text "Osem ODZNAKOV!" ; text "Eight BADGES!"
	line "Dokazuju, ze si" ; line "They must prove"

	para "porazil" ; para "that you've beaten"
	line "GYM LEADERov." ; line "GYM LEADERS."

	para "Niet divu, ze si" ; para "No wonder you're"
	line "tak dobry!" ; line "so good!"
	done

TeacherShirleySeenText:
	text "Ani sa nedotkni" ; text "Don't lay a finger"
	line "mojich studentov!" ; line "on my students!"
	done

TeacherShirleyBeatenText:
	text "Aaach!" ; text "Aaack!"
	done

TeacherShirleyAfterBattleText:
	text "Sme na vylete do" ; text "We're on a field"
	line "RUIN nedaleko" ; line "trip to the RUINS"
	cont "mesta VIOLET." ; cont "outside VIOLET."
	done

SchoolboyNateSeenText:
	text "Poznas tieto" ; text "Do you know the"
	line "RUINS OF ALPH?" ; line "RUINS OF ALPH?"
	done

SchoolboyNateBeatenText:
	text "Yaargh!" ; text "Yaargh!"
	done

SchoolboyNateAfterBattleText:
	text "V RUINACH za-" ; text "Radios pick up"
	line "chytavaju radia" ; line "strange signals"
	cont "zvlastne signaly." ; cont "inside the RUINS."
	done

SchoolboyRickySeenText:
	text "V RUINS OF ALPH sa" ; text "There are some odd"
	line "nachadzaju akesi" ; line "stone panels in"
	cont "kamenne panely." ; cont "the RUINS OF ALPH."
	done

SchoolboyRickyBeatenText:
	text "Som hotovy!" ; text "I was done in!"
	done

SchoolboyRickyAfterBattleText:
	text "Pocul som, ze tam" ; text "I read that there"
	line "su styri kamenne" ; line "are four of those"
	cont "panely." ; cont "stone panels."
	done

FastShipB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FAST_SHIP_1F, 11
	warp_event 31, 13, FAST_SHIP_1F, 12

	def_coord_events
	coord_event 30,  7, SCENE_FASTSHIPB1F_SAILOR_BLOCKS, FastShipB1FSailorBlocksLeft
	coord_event 31,  7, SCENE_FASTSHIPB1F_SAILOR_BLOCKS, FastShipB1FSailorBlocksRight

	def_bg_events
	bg_event 27,  9, BGEVENT_READ, FastShipB1FTrashcan

	def_object_events
	object_event 30,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FSailorScript, EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	object_event 31,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FSailorScript, EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	object_event  9, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorJeff, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  6,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerDebra, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event 26,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerJugglerFritz, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event 17,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSailorGarrett, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 25,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherJonah, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 15, 11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltWai, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 23,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSailorKenneth, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  9, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTeacherShirley, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event 14,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyNate, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event 14, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyRicky, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
