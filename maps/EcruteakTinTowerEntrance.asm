	object_const_def
	const ECRUTEAKTINTOWERENTRANCE_SAGE1
	const ECRUTEAKTINTOWERENTRANCE_SAGE2
	const ECRUTEAKTINTOWERENTRANCE_SAGE3
	const ECRUTEAKTINTOWERENTRANCE_GRAMPS

EcruteakTinTowerEntrance_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
	scene_script .DummyScene1, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .InitializeSages

.DummyScene0:
	end

.DummyScene1:
	end

.InitializeSages:
	checkevent EVENT_FOUGHT_SUICUNE
	iftrue .DontBlockTower
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .DontBlockTower
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .BlockTower
	endcallback

.BlockTower:
	clearevent EVENT_RANG_CLEAR_BELL_1
	setevent EVENT_RANG_CLEAR_BELL_2
	setevent EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_WANDERING_SAGE
	checkitem CLEAR_BELL
	iftrue .NoClearBell
	setscene SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
.NoClearBell:
	endcallback

.DontBlockTower:
	clearevent EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_WANDERING_SAGE
	endcallback

EcruteakTinTowerEntranceSageBlocksLeft:
	checkevent EVENT_RANG_CLEAR_BELL_2
	iftrue EcruteakTinTowerEntranceAlreadyBlocked
	applymovement ECRUTEAKTINTOWERENTRANCE_SAGE2, EcruteakTinTowerEntranceSageBlocksLeftMovement
	moveobject ECRUTEAKTINTOWERENTRANCE_SAGE1, 4, 6
	appear ECRUTEAKTINTOWERENTRANCE_SAGE1
	pause 5
	disappear ECRUTEAKTINTOWERENTRANCE_SAGE2
	end

EcruteakTinTowerEntranceSageBlocksRight:
	checkevent EVENT_RANG_CLEAR_BELL_1
	iftrue EcruteakTinTowerEntranceAlreadyBlocked
	applymovement ECRUTEAKTINTOWERENTRANCE_SAGE1, EcruteakTinTowerEntranceSageBlocksRightMovement
	moveobject ECRUTEAKTINTOWERENTRANCE_SAGE2, 5, 6
	appear ECRUTEAKTINTOWERENTRANCE_SAGE2
	pause 5
	disappear ECRUTEAKTINTOWERENTRANCE_SAGE1
	end

EcruteakTinTowerEntranceAlreadyBlocked:
	end

EcruteakTinTowerEntranceSageScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .CheckForClearBell
	checkflag ENGINE_FOGBADGE
	iftrue .BlockPassage_GotFogBadge
	writetext EcruteakTinTowerEntranceSageText
	waitbutton
	closetext
	end

.BlockPassage_GotFogBadge:
	writetext EcruteakTinTowerEntranceSageText_GotFogBadge
	waitbutton
	closetext
	end

.CheckForClearBell:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .AllowedThrough
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RangClearBell
	checkitem CLEAR_BELL
	iftrue .GotClearBell
	writetext EcruteakTinTowerEntranceSageText_NoClearBell
	waitbutton
	closetext
	end

.GotClearBell:
	writetext EcruteakTinTowerEntranceSageText_HearsClearBell
	waitbutton
	closetext
	setscene SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
	setevent EVENT_RANG_CLEAR_BELL_2
	clearevent EVENT_RANG_CLEAR_BELL_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

.AllowedThrough:
	writetext EcruteakTinTowerEntranceSageText_PleaseDoGoOn
	waitbutton
	closetext
	end

.RangClearBell:
	writetext EcruteakTinTowerEntranceSageText_HeardClearBell
	waitbutton
	closetext
	end

EcruteakTinTowerEntranceWanderingSageScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CLEAR_BELL
	iftrue .GotClearBell
	writetext EcruteakTinTowerEntranceWanderingSageText
	waitbutton
	closetext
	end

.GotClearBell:
	writetext EcruteakTinTowerEntranceWanderingSageText_GotClearBell
	waitbutton
	closetext
	end

EcruteakTinTowerEntranceGrampsScript:
	jumptextfaceplayer EcruteakTinTowerEntranceGrampsText

EcruteakTinTowerEntranceSageBlocksLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	turn_head DOWN
	step_end

EcruteakTinTowerEntranceSageBlocksRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	turn_head DOWN
	step_end

EcruteakTinTowerEntranceSageText:
	text "TIN TOWER je nedo-" ; text "TIN TOWER is off"
	line "stupna pre ludi" ; line "limits to anyone"

	para "bez ECRUTEAK" ; para "without ECRUTEAK"
	line "GYM ODZNAKU." ; line "GYM's BADGE."

	para "Prepac, ale musis" ; para "Sorry, but you'll"
	line "odist." ; line "have to leave."
	done

EcruteakTinTowerEntranceSageText_GotFogBadge:
	text "TIN TOWER je nedo-" ; text "TIN TOWER is off"
	line "stupna pre ludi" ; line "limits to anyone"

	para "bez ECRUTEAK" ; para "without ECRUTEAK"
	line "GYM ODZNAKU." ; line "GYM's BADGE."

	para "Ah!" ; para "Ah!"

	para "ECRUTEAK GYM" ; para "ECRUTEAK's GYM"
	line "ODZNAK! Prosim," ; line "BADGE! Please, go"
	cont "prejdi dalej." ; cont "right through."
	done

EcruteakTinTowerEntranceSageText_NoClearBell:
	text "Stala sa velka" ; text "A momentous event"
	line "udalost." ; line "has occurred."

	para "Je mi to luto," ; para "I beg your pardon,"
	line "ale musim ta po-" ; line "but I must ask you"
	cont "ziadat o odchod." ; cont "to leave."

	para "…Co upokoji" ; para "…What soothes the"
	line "dusu…" ; line "soul…"

	para "MUDRE TRIO hovori" ; para "The WISE TRIO say"
	line "veci, ktore su" ; line "things that are so"

	para "velmi narocne na" ; para "very difficult to"
	line "pochopenie…" ; line "understand…"
	done

EcruteakTinTowerEntranceSageText_HearsClearBell:
	text "Stala sa velka" ; text "A momentous event"
	line "udalost." ; line "has occurred."

	para "Je mi luto," ; para "I beg your pardon,"
	line "ale musim ta po-" ; line "but I must ask you"
	cont "ziadat o odchod." ; cont "to leave."

	para "<……><……><……>"

	para "Ah!" ; para "Ah!"

	para "Zvuk toho" ; para "The sound of that"
	line "CLEAR BELL!" ; line "CLEAR BELL!"

	para "Je… je vzneseny!" ; para "It… It's sublime!"

	para "Nikdy som nepocul" ; para "I've never heard"
	line "tak krasny" ; line "so beautiful a"
	cont "zvuk!" ; cont "sound before!"

	para "Ten zvuk zvonu" ; para "That bell's chime"
	line "znazornuje dusu" ; line "is indicative of"
	cont "drzitela." ; cont "the bearer's soul."

	para "Ty…" ; para "You…"

	para "Mozno sa ti podari" ; para "You may be able to"
	line "dostat sa cez" ; line "make it through"
	cont "TIN TOWER." ; cont "TIN TOWER."

	para "Prosim, pokracuj." ; para "Please, do go on."
	done

EcruteakTinTowerEntranceSageText_PleaseDoGoOn:
	text "Prosim, pokracuj." ; text "Please, do go on."
	done

EcruteakTinTowerEntranceSageText_HeardClearBell:
	text "Ten zvuk zvonu" ; text "That bell's chime"
	line "znazornuje dusu" ; line "is indicative of"
	cont "drzitela." ; cont "the bearer's soul."

	para "Ty…" ; para "You…"

	para "Mozno sa ti podari" ; para "You may be able to"
	line "dostat sa cez" ; line "make it through"
	cont "TIN TOWER." ; cont "TIN TOWER."

	para "Prosim, pokracuj." ; para "Please, do go on."
	done

EcruteakTinTowerEntranceWanderingSageText:
	text "TIN TOWER je" ; text "The TIN TOWER"
	line "devat-poschodova" ; line "ahead is a nine-"

	para "veza bozskej" ; para "tier tower of"
	line "krasy." ; line "divine beauty."

	para "Upokojuje dusu" ; para "It soothes the"
	line "vsetkych, co ju" ; line "soul of all who"
	cont "vidia." ; cont "see it."
	done

EcruteakTinTowerEntranceWanderingSageText_GotClearBell:
	text "TIN TOWER sa" ; text "The TIN TOWER"
	line "trasie! #MON" ; line "shook! A #MON"

	para "sa musel vratit" ; para "must have returned"
	line "na jej vrchol!" ; line "to the top!"
	done

EcruteakTinTowerEntranceGrampsText:
	text "Dve veze…" ; text "Two towers…"
	line "Dvaja #MONi…" ; line "Two #MON…"

	para "Ale ked jedna" ; para "But when one"
	line "zhorela, obaja" ; line "burned down, both"

	para "#MONi odleteli" ; para "#MON flew away,"
	line "a nevratili sa." ; line "never to return."
	done

EcruteakTinTowerEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 3
	warp_event  5, 17, ECRUTEAK_CITY, 3
	warp_event  5,  3, ECRUTEAK_TIN_TOWER_ENTRANCE, 4
	warp_event 17, 15, ECRUTEAK_TIN_TOWER_ENTRANCE, 3
	warp_event 17,  3, WISE_TRIOS_ROOM, 3

	def_coord_events
	coord_event  4,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS, EcruteakTinTowerEntranceSageBlocksLeft
	coord_event  5,  7, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS, EcruteakTinTowerEntranceSageBlocksRight

	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceSageScript, EVENT_RANG_CLEAR_BELL_1
	object_event  5,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceSageScript, EVENT_RANG_CLEAR_BELL_2
	object_event  6,  9, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceWanderingSageScript, EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_WANDERING_SAGE
	object_event  3, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakTinTowerEntranceGrampsScript, EVENT_ECRUTEAK_TIN_TOWER_ENTRANCE_WANDERING_SAGE
