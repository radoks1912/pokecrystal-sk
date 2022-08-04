	object_const_def
	const GOLDENRODMAGNETTRAINSTATION_OFFICER
	const GOLDENRODMAGNETTRAINSTATION_GENTLEMAN

GoldenrodMagnetTrainStation_MapScripts:
	def_scene_scripts
	scene_script .DummyScene, SCENE_GOLDENRODMAGNETTRAINSTATION_ARRIVE_FROM_SAFFRON

	def_callbacks

.DummyScene:
	end

GoldenrodMagnetTrainStationOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .MagnetTrainToSaffron
	writetext GoldenrodMagnetTrainStationOfficerTheTrainHasntComeInText
	waitbutton
	closetext
	end

.MagnetTrainToSaffron:
	writetext GoldenrodMagnetTrainStationOfficerAreYouComingAboardText
	yesorno
	iffalse .DecidedNotToRide
	checkitem PASS
	iffalse .PassNotInBag
	writetext GoldenrodMagnetTrainStationOfficerRightThisWayText
	waitbutton
	closetext
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, GoldenrodMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, GoldenrodMagnetTrainStationPlayerApproachAndEnterTrainMovement
	setval FALSE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.MovementBoardTheTrain:
	turn_head DOWN
	step_end

.PassNotInBag:
	writetext GoldenrodMagnetTrainStationOfficerYouDontHaveARailPassText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext GoldenrodMagnetTrainStationOfficerHopeToSeeYouAgainText
	waitbutton
	closetext
	end

Script_ArriveFromSaffron:
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, GoldenrodMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, GoldenrodMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, GoldenrodMagnetTrainStationOfficerReturnToBoardingGateMovement
	opentext
	writetext GoldenrodMagnetTrainStationOfficerArrivedInGoldenrodText
	waitbutton
	closetext
	end

GoldenrodMagnetTrainStationGentlemanScript:
	jumptextfaceplayer GoldenrodMagnetTrainStationGentlemanText

GoldenrodMagnetTrainStationOfficerApproachTrainDoorMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

GoldenrodMagnetTrainStationOfficerReturnToBoardingGateMovement:
	step LEFT
	step DOWN
	step DOWN
	step_end

GoldenrodMagnetTrainStationPlayerApproachAndEnterTrainMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

GoldenrodMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

GoldenrodMagnetTrainStationOfficerTheTrainHasntComeInText:
	text "Vlak este nepri-" ; text "The train hasn't"
	line "siel…" ; line "come in…"

	para "Uz viem! Odnesiem" ; para "I know! I'll carry"
	line "cestujucich na" ; line "the passengers on"
	cont "na chrbte!" ; cont "my back!"

	para "To nebude fungovat" ; para "That won't work."
	done

GoldenrodMagnetTrainStationOfficerAreYouComingAboardText:
	text "Zanedlho vyrazime" ; text "We'll soon depart"
	line "do SAFFRON." ; line "for SAFFRON."

	para "Nastupujete?" ; para "Are you coming"
	;line "aboard?" ; line "aboard?"
	done

GoldenrodMagnetTrainStationOfficerRightThisWayText:
	text "Mozem vidiet vas" ; text "May I see your"
	line "LISTOK, prosim?" ; line "rail PASS, please?"

	para "OK. Pokracujte" ; para "OK. Right this"
	line "za mnou, prosim." ; line "way, please."
	done

GoldenrodMagnetTrainStationOfficerYouDontHaveARailPassText:
	text "Pardon. Nemate" ; text "Sorry. You don't"
	line "LISTOK." ; line "have a rail PASS."
	done

GoldenrodMagnetTrainStationOfficerHopeToSeeYouAgainText:
	text "Do skoreho" ; text "We hope to see you"
	line "videnia!" ; line "again!"
	done

GoldenrodMagnetTrainStationOfficerArrivedInGoldenrodText:
	text "Dorazili sme do" ; text "We have arrived in"
	line "GOLDENROD." ; line "GOLDENROD."

	para "Do skoreho" ; para "We hope to see you"
	line "videnia!" ; line "again."
	done

GoldenrodMagnetTrainStationGentlemanText:
	text "Som PREZIDENT." ; text "I'm the PRESIDENT."

	para "Moj sen je posta-" ; para "My dream was to"
	line "vit vlak, ktory je" ; line "build a train that"

	para "rychlejsi ako kto-" ; para "is faster than any"
	line "rykolvek #MON." ; line "#MON."

	para "Pomoze to spojit" ; para "It really brings"
	line "JOHTO a KANTO." ; line "JOHTO much closer"
	;cont "to KANTO." ; cont "to KANTO."
	done

GoldenrodMagnetTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, GOLDENROD_CITY, 5
	warp_event  9, 17, GOLDENROD_CITY, 5
	warp_event  6,  5, SAFFRON_MAGNET_TRAIN_STATION, 4
	warp_event 11,  5, SAFFRON_MAGNET_TRAIN_STATION, 3

	def_coord_events
	coord_event 11,  6, SCENE_GOLDENRODMAGNETTRAINSTATION_ARRIVE_FROM_SAFFRON, Script_ArriveFromSaffron

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationOfficerScript, -1
	object_event 11, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationGentlemanScript, EVENT_GOLDENROD_TRAIN_STATION_GENTLEMAN
