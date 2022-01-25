	object_const_def
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET1
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET2
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET3
	const GOLDENRODUNDERGROUNDWAREHOUSE_GENTLEMAN
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL1
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL2
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL3

GoldenrodUndergroundWarehouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .ResetSwitches

.ResetSwitches:
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_4
	clearevent EVENT_SWITCH_5
	clearevent EVENT_SWITCH_6
	clearevent EVENT_SWITCH_7
	clearevent EVENT_SWITCH_8
	clearevent EVENT_SWITCH_9
	clearevent EVENT_SWITCH_10
	clearevent EVENT_SWITCH_11
	clearevent EVENT_SWITCH_12
	clearevent EVENT_SWITCH_13
	clearevent EVENT_SWITCH_14
	setval 0
	writemem wUndergroundSwitchPositions
	endcallback

TrainerGruntM24:
	trainer GRUNTM, GRUNTM_24, EVENT_BEAT_ROCKET_GRUNTM_24, GruntM24SeenText, GruntM24BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM24AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM14:
	trainer GRUNTM, GRUNTM_14, EVENT_BEAT_ROCKET_GRUNTM_14, GruntM14SeenText, GruntM14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM14AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM15:
	trainer GRUNTM, GRUNTM_15, EVENT_BEAT_ROCKET_GRUNTM_15, GruntM15SeenText, GruntM15BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM15AfterBattleText
	waitbutton
	closetext
	end

GoldenrodUndergroundWarehouseDirectorScript:
	faceplayer
	opentext
	checkevent EVENT_RECEIVED_CARD_KEY
	iftrue .GotCardKey
	writetext DirectorIntroText
	promptbutton
	verbosegiveitem CARD_KEY
	setevent EVENT_RECEIVED_CARD_KEY
	setevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_1
	clearevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_2
	clearevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_3
	writetext DirectorCardKeyText
	promptbutton
.GotCardKey:
	writetext DirectorAfterText
	waitbutton
	closetext
	end

GoldenrodUndergroundWarehouseMaxEther:
	itemball MAX_ETHER

GoldenrodUndergroundWarehouseTMSleepTalk:
	itemball TM_SLEEP_TALK

GoldenrodUndergroundWarehouseUltraBall:
	itemball ULTRA_BALL

GruntM24SeenText:
	text "Ako si sa dostal" ; text "How did you get"
	line "az sem?" ; line "this far?"

	para "No nic." ; para "I guess it can't"
	line "Zbavim sa ta" ; line "be helped. I'll"
	cont "velmi rychlo." ; cont "dispose of you."
	done

GruntM24BeatenText:
	text "Zbavil si sa ma…" ; text "I got disposed of…"
	done

GruntM24AfterBattleText:
	text "TEAM ROCKET bude" ; text "TEAM ROCKET will"
	line "pokracovat, caka-" ; line "keep going, wait-"
	cont "juc na navrat" ; cont "ing for the return"
	cont "GIOVANNIho." ; cont "of GIOVANNI."

	para "Urobim pre to" ; para "We'll do whatever"
	line "uplne vsetko." ; line "it takes."
	done

GruntM14SeenText:
	text "Dalej uz" ; text "You're not going"
	line "nepojdes!" ; line "any farther!"

	para "Nezlutujem sa nad" ; para "I don't show mercy"
	line "ziadnym" ; line "to my enemies, not"
	cont "nepriatelom!" ; cont "even brats!"
	done

GruntM14BeatenText:
	text "Dokelu!" ; text "Blast it!"
	done

GruntM14AfterBattleText:
	text "Prehra…" ; text "I lost…"

	para "Odpust mi," ; para "Please forgive me,"
	line "GIOVANNI!" ; line "GIOVANNI!"
	done

GruntM15SeenText:
	text "Hik-hik-hik!" ; text "Hyuck-hyuck-hyuck!"
	line "Pamatam si ta!" ; line "I remember you!"

	para "Dostal si ma v" ; para "You got me good"
	line "nasom ukryte!" ; line "at our hideout!"
	done

GruntM15BeatenText:
	text "Hik-hik-hik!" ; text "Hyuck-hyuck-hyuck!"
	line "So, that's how?" ; line "So, that's how?"
	done

GruntM15AfterBattleText:
	text "Hik-hik-hik!" ; text "Hyuck-hyuck-hyuck!"
	line "To bola jazda!" ; line "That was a blast!"
	cont "Zapamatam si ta!" ; cont "I'll remember you!"
	done

DirectorIntroText:
	text "RIADITEL: Kto?" ; text "DIRECTOR: Who?"
	line "Coze? Prisiel si" ; line "What? You came to"
	cont "ma zachranit?" ; cont "rescue me?"

	para "Dakujem!" ; para "Thank you!"

	para "RADIO VEZA!" ; para "The RADIO TOWER!"

	para "Co sa tam vlastne" ; para "What's happening"
	line "deje?" ; line "there?"

	para "Obsadena TEAMOM" ; para "Taken over by TEAM"
	line "ROCKET?" ; line "ROCKET?"

	para "Prosim. Vezmi si" ; para "Here. Take this"
	line "kluc CARD KEY." ; line "CARD KEY."
	done

DirectorCardKeyText:
	text "RIADITEL: Pouzi ho" ; text "DIRECTOR: Use that"
	line "na tretom pos-" ; line "to open the shut-"
	cont "chodi." ; cont "ters on 3F."
	done

DirectorAfterText:
	text "Prosim ta o" ; text "I'm begging you to"
	line "pomoc." ; line "help."

	para "Nevieme, coho su" ; para "There's no telling"
	line "schopni, keby sa" ; line "what they'll do if"

	para "zmocnili" ; para "they control the"
	line "vysielaca." ; line "transmitter."

	para "Mozno sa im podari" ; para "They may even be"
	line "ovladnut aj" ; line "able to control"

	para "#MONov pomo-" ; para "#MON using a"
	line "cou signalu!" ; line "special signal!"

	para "Si jediny, s kym" ; para "You're the only"
	line "mozem pocitat." ; line "one I can call on."

	para "Zachran, prosim," ; para "Please save the"
	line "RADIO VEZU…" ; line "RADIO TOWER…"

	para "A #MONov" ; para "And all the #-"
	line "celosvetovo!" ; line "MON nationwide!"
	done

GoldenrodUndergroundWarehouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 12, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 2
	warp_event  3, 12, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 3
	warp_event 17,  2, GOLDENROD_DEPT_STORE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM24, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM14, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  3, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntM15, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundWarehouseDirectorScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 18, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundWarehouseMaxEther, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_MAX_ETHER
	object_event 13,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundWarehouseTMSleepTalk, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_TM_SLEEP_TALK
	object_event  2,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundWarehouseUltraBall, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_ULTRA_BALL
