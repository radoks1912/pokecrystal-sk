	object_const_def
	const MAHOGANYMART1F_PHARMACIST
	const MAHOGANYMART1F_BLACK_BELT
	const MAHOGANYMART1F_LANCE
	const MAHOGANYMART1F_DRAGONITE
	const MAHOGANYMART1F_GRANNY

MahoganyMart1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0,            SCENE_MAHOGANYMART1F_NOOP
	scene_script .LanceUncoversStaircase, SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS

	def_callbacks
	callback MAPCALLBACK_TILES, .MahoganyMart1FStaircase

.DummyScene0:
	end

.LanceUncoversStaircase:
	sdefer MahoganyMart1FLanceUncoversStaircaseScript
	end

.MahoganyMart1FStaircase:
	checkevent EVENT_UNCOVERED_STAIRCASE_IN_MAHOGANY_MART
	iftrue .ShowStairs
	endcallback

.ShowStairs:
	changeblock 6, 2, $1e ; stairs
	endcallback

MahoganyMart1FPharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_DECIDED_TO_HELP_LANCE
	iftrue .LanceEntered
	pokemart MARTTYPE_STANDARD, MART_MAHOGANY_1
	closetext
	end

.LanceEntered:
	writetext MahoganyMart1FPharmacistText_LanceEntered
	waitbutton
	closetext
	end

MahoganyMart1FBlackBeltScript:
	faceplayer
	opentext
	checkevent EVENT_DECIDED_TO_HELP_LANCE
	iftrue .LanceEntered
	writetext MahoganyMart1FBlackBeltText
	waitbutton
	closetext
	end

.LanceEntered:
	writetext MahoganyMart1FBlackBeltText_LanceEntered
	waitbutton
	closetext
	end

MahoganyMart1FLanceUncoversStaircaseScript:
	pause 15
	opentext
	writetext MahoganyMart1FLanceDragoniteHyperBeamText
	pause 15
	closetext
	playsound SFX_TACKLE
	applymovement MAHOGANYMART1F_DRAGONITE, MahoganyMart1FDragoniteTackleMovement
	applymovement MAHOGANYMART1F_BLACK_BELT, MahoganyMart1FBlackBeltKnockedBackMovement
	pause 15
	disappear MAHOGANYMART1F_DRAGONITE
	pause 15
	applymovement MAHOGANYMART1F_LANCE, MahoganyMart1FLanceApproachPlayerMovement
	opentext
	writetext MahoganyMart1FLanceRadioText
	waitbutton
	closetext
	follow MAHOGANYMART1F_LANCE, PLAYER
	applymovement MAHOGANYMART1F_LANCE, MahoganyMart1FLanceApproachPharmacistMovement
	applymovement MAHOGANYMART1F_PHARMACIST, MahoganyMart1FPharmacistShovedAsideMovement
	applymovement MAHOGANYMART1F_LANCE, MahoganyMart1FLanceApproachHiddenStairsMovement
	stopfollow
	opentext
	writetext MahoganyMart1FLanceStairsText
	waitbutton
	showemote EMOTE_SHOCK, MAHOGANYMART1F_PHARMACIST, 10
	playsound SFX_FAINT
	changeblock 6, 2, $1e ; stairs
	reloadmappart
	closetext
	setevent EVENT_UNCOVERED_STAIRCASE_IN_MAHOGANY_MART
	turnobject MAHOGANYMART1F_LANCE, LEFT
	opentext
	writetext MahoganyMart1FLanceSplitUpText
	waitbutton
	closetext
	applymovement MAHOGANYMART1F_LANCE, MahoganyMart1FLanceGoDownStairsMovement
	playsound SFX_EXIT_BUILDING
	disappear MAHOGANYMART1F_LANCE
	setscene SCENE_MAHOGANYMART1F_NOOP
	waitsfx
	end

MahoganyMart1FGrannyScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MAHOGANY_2
	closetext
	end

MahoganyMart1FDragoniteTackleMovement:
	fix_facing
	big_step LEFT
	big_step RIGHT
	remove_fixed_facing
	step_end

MahoganyMart1FBlackBeltKnockedBackMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	step_end

MahoganyMart1FPharmacistShovedAsideMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

MahoganyMart1FLanceApproachPlayerMovement:
	slow_step LEFT
	turn_head DOWN
	step_end

MahoganyMart1FLanceApproachPharmacistMovement:
	slow_step RIGHT
	slow_step UP
	slow_step UP
	step_end

MahoganyMart1FLanceApproachHiddenStairsMovement:
	slow_step UP
	slow_step RIGHT
	slow_step RIGHT
	step_end

MahoganyMart1FLanceGoDownStairsMovement:
	slow_step RIGHT
	step_end

MahoganyMart1FRageCandyBarText: ; unreferenced
	text "Hello, kiddo!"

	para "How would you like"
	line "some RAGECANDYBAR?"

	para "It's the thing to"
	line "eat in MAHOGANY!"
	done

MahoganyMart1FPharmacistText_LanceEntered:
	text "Aaach… Nasli ste" ; text "Arrgh… You found"
	line "tajne schodisko…" ; line "the secret stair-"
	;cont "way…" ; cont "way…"
	done

MahoganyMart1FBlackBeltText:
	text "Hehe! Experiment" ; text "Heheh! The experi-"
	line "fungoval uplne" ; line "ment worked like a"
	cont "dokonale." ; cont "charm."

	para "MAGIKARP je" ; para "MAGIKARP are just"
	line "zbytocny, ale" ; line "worthless, but"

	para "GYARADOS je" ; para "GYARADOS are big"
	line "jackpot." ; line "moneymakers."
	done

MahoganyMart1FBlackBeltText_LanceEntered:
	text "Aaaah…" ; text "Urrgh…"

	para "Draci #MONi" ; para "That guy's dragon"
	line "su huzevnati…" ; line "#MON are tough…"
	done

MahoganyMart1FLanceDragoniteHyperBeamText:
	text "LANCE: DRAGONITE," ; text "LANCE: DRAGONITE,"
	line "HYPER BEAM." ; line "HYPER BEAM."
	done

MahoganyMart1FLanceRadioText:
	text "Kde si bol," ; text "What took you,"
	line "<PLAY_G>?" ; line "<PLAY_G>?"

	para "Presne ako som si" ; para "Just as I thought,"
	line "myslel, signal" ; line "that strange radio"

	para "vychadza priamo" ; para "signal is coming"
	line "odtialto." ; line "from here."
	done

MahoganyMart1FLanceStairsText:
	text "Schodisko je" ; text "The stairs are"
	line "tu." ; line "right here."
	done

MahoganyMart1FLanceSplitUpText:
	text "LANCE: <PLAY_G>," ; text "LANCE: <PLAY_G>, we"
	line "rozdelme sa a" ; line "should split up to"

	para "preskumajme to tu." ; para "check this place."
	line "Idem prvy." ; line "I'll go first."
	done

MahoganyMart1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MAHOGANY_TOWN, 1
	warp_event  4,  7, MAHOGANY_TOWN, 1
	warp_event  7,  3, TEAM_ROCKET_BASE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyMart1FPharmacistScript, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  1,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyMart1FBlackBeltScript, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  4,  6, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
	object_event  3,  6, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyMart1FGrannyScript, EVENT_MAHOGANY_MART_OWNERS
