	object_const_def
	const FASTSHIPCABINS_NNW_NNE_NE_COOLTRAINER_M
	const FASTSHIPCABINS_NNW_NNE_NE_COOLTRAINER_F
	const FASTSHIPCABINS_NNW_NNE_NE_SUPER_NERD
	const FASTSHIPCABINS_NNW_NNE_NE_POKEFAN_M
	const FASTSHIPCABINS_NNW_NNE_NE_SAILOR
	const FASTSHIPCABINS_NNW_NNE_NE_GENTLEMAN
	const FASTSHIPCABINS_NNW_NNE_NE_PHARMACIST

FastShipCabins_NNW_NNE_NE_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCooltrainermSean:
	trainer COOLTRAINERM, SEAN, EVENT_BEAT_COOLTRAINERM_SEAN, CooltrainermSeanSeenText, CooltrainermSeanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermSeanAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfCarol:
	trainer COOLTRAINERF, CAROL, EVENT_BEAT_COOLTRAINERF_CAROL, CooltrainerfCarolSeenText, CooltrainerfCarolBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfCarolAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacEthan:
	trainer POKEMANIAC, ETHAN, EVENT_BEAT_POKEMANIAC_ETHAN, PokemaniacEthanSeenText, PokemaniacEthanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacEthanAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerNoland:
	trainer HIKER, NOLAND, EVENT_BEAT_HIKER_NOLAND, HikerNolandSeenText, HikerNolandBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerNolandAfterBattleText
	waitbutton
	closetext
	end

TrainerGentlemanEdward:
	trainer GENTLEMAN, EDWARD, EVENT_BEAT_GENTLEMAN_EDWARD, GentlemanEdwardSeenText, GentlemanEdwardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanEdwardAfterBattleText
	waitbutton
	closetext
	end

TrainerBurglarCorey:
	trainer BURGLAR, COREY, EVENT_BEAT_BURGLAR_COREY, BurglarCoreySeenText, BurglarCoreyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarCoreyAfterBattleText
	waitbutton
	closetext
	end

FastShipLazySailorScript:
	playmusic MUSIC_HIKER_ENCOUNTER
	faceplayer
	opentext
	writetext SailorStanlySeenText
	waitbutton
	closetext
	winlosstext SailorStanlyBeatenText, 0
	loadtrainer SAILOR, STANLY
	startbattle
	reloadmap
	special HealParty
	setevent EVENT_BEAT_SAILOR_STANLY
	opentext
	writetext SailorStanlyAfterBattleText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_LAZY_SAILOR
	setmapscene FAST_SHIP_B1F, SCENE_FASTSHIPB1F_NOOP
	readvar VAR_FACING
	ifequal RIGHT, .Movement2
	applymovement FASTSHIPCABINS_NNW_NNE_NE_SAILOR, FastShipLazySailorLeavesMovement1
	playsound SFX_EXIT_BUILDING
	disappear FASTSHIPCABINS_NNW_NNE_NE_SAILOR
	waitsfx
	end

.Movement2:
	applymovement FASTSHIPCABINS_NNW_NNE_NE_SAILOR, FastShipLazySailorLeavesMovement2
	playsound SFX_EXIT_BUILDING
	disappear FASTSHIPCABINS_NNW_NNE_NE_SAILOR
	waitsfx
	end

FastShipCabins_NNW_NNE_NETrashcan:
	jumpstd TrashCanScript

FastShipLazySailorLeavesMovement1:
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

FastShipLazySailorLeavesMovement2:
	step DOWN
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step_end

CooltrainermSeanSeenText:
	text "Idem do KANTO" ; text "I'm going to KANTO"
	line "otestovat moje" ; line "to test my skills."
	cont "schopnosti."
	done

CooltrainermSeanBeatenText:
	text "Chcel som vyhrat!" ; text "I wanted to win!"
	done

CooltrainermSeanAfterBattleText:
	text "Treneri z" ; text "Trainers from"
	line "JOHTO mozu zapa-" ; line "JOHTO can battle"

	para "sit s KANTO GYM" ; para "with KANTO GYM"
	line "LEADERmi." ; line "LEADERS."
	done

CooltrainerfCarolSeenText:
	text "Trenujem, aby som" ; text "I'm training to"
	line "sa stal sampionom!" ; line "become the CHAMP!"
	done

CooltrainerfCarolBeatenText:
	text "Aky je medzi nami" ; text "What's so differ-"
	line "rozdiel?" ; line "ent between us?"
	done

CooltrainerfCarolAfterBattleText:
	text "Jedneho dna ta" ; text "I'm going to beat"
	line "raz porazim!" ; line "you someday!"
	done

PokemaniacEthanSeenText:
	text "Poznas LILY?" ; text "Do you know LILY?"
	line "Krasna DJ v" ; line "She's a hot DJ in"
	cont "KANTO." ; cont "KANTO."
	done

PokemaniacEthanBeatenText:
	text "Gyaaaah!" ; text "Gyaaaah!"
	done

PokemaniacEthanAfterBattleText:
	text "LILY je pekna, ale" ; text "LILY's nice, but"
	line "MARY je najlepsia!" ; line "MARY's the best!"

	para "Chcem pocuvat" ; para "I want to check"
	line "programy z JOHTO" ; line "out JOHTO's radio"
	cont "radia!" ; cont "programs!"
	done

HikerNolandSeenText:
	text "Si sam?" ; text "Are you alone?"
	line "Zapasme!" ; line "Then let's battle!"
	done

HikerNolandBeatenText:
	text "Je toho na mna" ; text "That's too much to"
	line "prilis vela!" ; line "handle!"
	done

HikerNolandAfterBattleText:
	text "Som zvedavy, ci v" ; text "I wonder if there"
	line "KANTO maju nejake" ; line "are any mountains"

	para "hory, ktore by" ; para "worth climbing in"
	line "stali za zmienku." ; line "KANTO?"
	done

SailorStanlySeenText:
	text "Som namornik," ; text "Yeah, I'm a sail-"
	line "predsa." ; line "or, all right."

	para "Neflakal som sa!" ; para "I wasn't goofing"
	;line "off!" ; line "off!"

	para "Tato kajuta bola" ; para "This cabin was"
	line "prazdna, tak som" ; line "vacant, so I just"
	cont "si zdriemol!" ; cont "took a quick nap!"

	para "Ach, zabudni na" ; para "Ah, forget it!"
	line "to! Zapasme!" ; line "Let's battle!"
	done

SailorStanlyBeatenText:
	text "Prepac! Je to" ; text "Sorry! It's all my"
	line "vsetko moja chyba!" ; line "fault!"
	done

SailorStanlyAfterBattleText:
	text "Byt namornikom" ; text "Being a sailor, I"
	line "znamena robit" ; line "have to do phys-"
	cont "fyzicku pracu." ; cont "ical labor. It's"
	cont "Namahave!" ; cont "exhausting!"
	done

GentlemanEdwardSeenText:
	text "Och, nie. Prehral" ; text "Oh, no. I've lost"
	line "som nieco velmi" ; line "something that's"
	cont "dolezite." ; cont "very important."
	done

GentlemanEdwardBeatenText:
	text "Ja… Neviem to" ; text "I… I can't find"
	line "najst…" ; line "it…"
	done

GentlemanEdwardAfterBattleText:
	text "Vzdavam sa." ; text "I give up."
	line "Nemusis to hladat." ; line "You don't have to"

	para "Zabudni na to!" ; para "look. Just forget"
	;line "about it!" ; line "about it!"
	done

BurglarCoreySeenText:
	text "Jihaaa!" ; text "Yeehaw!"
	line "Stastie!" ; line "Lucky!"
	done

BurglarCoreyBeatenText:
	text "Ake nestastie!" ; text "How unlucky!"
	line "Prehral som!" ; line "I lost!"
	done

BurglarCoreyAfterBattleText:
	text "Nasiel som tu" ; text "I found a pretty"
	line "peknu mincu." ; line "coin here."

	para "Niekto ju tu musel" ; para "Someone must have"
	line "stratit…" ; line "lost it…"
	done

FastShipCabins_NNW_NNE_NE_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, FAST_SHIP_1F, 2
	warp_event  2, 12, FAST_SHIP_1F, 3
	warp_event  2, 24, FAST_SHIP_1F, 4

	def_coord_events

	def_bg_events
	bg_event  6, 13, BGEVENT_READ, FastShipCabins_NNW_NNE_NETrashcan
	bg_event  7, 19, BGEVENT_READ, FastShipCabins_NNW_NNE_NETrashcan
	bg_event  7, 31, BGEVENT_READ, FastShipCabins_NNW_NNE_NETrashcan

	def_object_events
	object_event  4,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermSean, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  1,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfCarol, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  1,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacEthan, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  4, 17, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerNoland, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  4, 26, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipLazySailorScript, EVENT_FAST_SHIP_CABINS_NNW_NNE_NE_SAILOR
	object_event  7, 30, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerGentlemanEdward, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  2, 30, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBurglarCorey, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
