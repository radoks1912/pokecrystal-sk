	object_const_def
	const ECRUTEAKLUGIASPEECHHOUSE_GRAMPS
	const ECRUTEAKLUGIASPEECHHOUSE_YOUNGSTER

EcruteakLugiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakLugiaSpeechHouseGrampsScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseGrampsText

EcruteakLugiaSpeechHouseYoungsterScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseYoungsterText

LugiaSpeechHouseRadio:
	jumpstd Radio2Script

EcruteakLugiaSpeechHouseGrampsText:
	text "Toto sa stalo, ked" ; text "This happened when"
	line "som bol mlady." ; line "I was young."

	para "Obloha nahle" ; para "The sky suddenly"
	line "zcernela. Obrovsky" ; line "turned black. A"

	para "lietajuci #-" ; para "giant flying #-"
	line "MON zablokoval" ; line "MON was blocking"
	cont "slnko." ; cont "out the sun."

	para "Co to bolo za" ; para "I wonder what that"
	line "#MONa? " ; line "#MON was? "

	para "Bol to ako vtak" ; para "It was like a bird"
	line "a drak zaroven." ; line "and a dragon."
	done

EcruteakLugiaSpeechHouseYoungsterText:
	text "Naozaj existuje" ; text "Is there really a"
	line "#MON tak velky?" ; line "#MON that big?"

	para "Ak ano, musi byt" ; para "If it exists, it"
	line "velmi silny." ; line "must be powerful."
	done

EcruteakLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 7
	warp_event  4,  7, ECRUTEAK_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, LugiaSpeechHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseGrampsScript, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseYoungsterScript, -1
