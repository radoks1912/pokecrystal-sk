	object_const_def
	const HALLOFFAME_LANCE

HallOfFame_MapScripts:
	def_scene_scripts
	scene_script .EnterHallOfFame, SCENE_HALLOFFAME_ENTER
	scene_script .DummyScene,      SCENE_HALLOFFAME_NOOP

	def_callbacks

.EnterHallOfFame:
	sdefer .EnterHallOfFameScript
	end

.DummyScene:
	end

.EnterHallOfFameScript:
	follow HALLOFFAME_LANCE, PLAYER
	applymovement HALLOFFAME_LANCE, HallOfFame_WalkUpWithLance
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext HallOfFame_LanceText
	waitbutton
	closetext
	turnobject HALLOFFAME_LANCE, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_HALLOFFAME_NOOP
	pause 15
	setval HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_TELEPORT_GUY
	setevent EVENT_RIVAL_SPROUT_TOWER
	clearevent EVENT_RED_IN_MT_SILVER
	setevent EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	clearevent EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
	setmapscene SPROUT_TOWER_3F, SCENE_SPROUTTOWER3F_NOOP
	special HealParty
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .SkipPhoneCall
	specialphonecall SPECIALCALL_SSTICKET
.SkipPhoneCall:
	halloffame
	end

HallOfFame_WalkUpWithLance:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

HallOfFame_SlowlyApproachMachine:
	slow_step UP
	step_end

HallOfFame_LanceText:
	text "LANCE: Uz je to" ; text "LANCE: It's been a"
	line "nejaka doba, co" ; line "long time since I"
	cont "som tu bol."  ; cont "last came here."

	para "Toto je miesto," ; para "This is where we"
	line "kde si ctime LI-" ; line "honor the LEAGUE"

	para "GOVYCH SAMPIONOV" ; para "CHAMPIONS for all"
	line "na vecnost." ; line "eternity."

	para "Ich odvazni" ; para "Their courageous"
	line "#MONi su tam" ; line "#MON are also"
	cont "tiez uvedeni." ; cont "inducted."

	para "Dnes sme boli" ; para "Here today, we"
	line "svedkami povstania" ; line "witnessed the rise"

	para "noveho LIGOVEHO" ; para "of a new LEAGUE"
	line "SAMPIONA--a" ; line "CHAMPION--a"

	para "trenera sucitiace-" ; para "trainer who feels"
	line "ho a doverujuceho" ; line "compassion for,"

	para "ku vsetkym" ; para "and trust toward,"
	line "#MONom." ; line "all #MON."

	para "Trener, ktory" ; para "A trainer who"
	line "uspel kvoli" ; line "succeeded through"

	para "vytrvalosti a" ; para "perseverance and"
	line "odhodlaniu." ; line "determination."

	para "Novy LIGOVY SAM-" ; para "The new LEAGUE"
	line "PION, ktory ma" ; line "CHAMPION who has"

	para "vsetky predpoklady" ; para "all the makings"
	line "velikana!" ; line "of greatness!"

	para "<PLAY_G>, dovol mi" ; para "<PLAY_G>, allow me"
	line "registrovat teba" ; line "to register you"

	para "a tvojich partne-" ; para "and your partners"
	line "rov ako SAMPIONOV!" ; line "as CHAMPIONS!"
	done

HallOfFame_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, LANCES_ROOM, 3
	warp_event  5, 13, LANCES_ROOM, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 12, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
