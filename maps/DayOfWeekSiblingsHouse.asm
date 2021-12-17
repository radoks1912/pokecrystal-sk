	object_const_def
	const DAYOFWEEKSIBLINGSHOUSE_POKEDEX

DayOfWeekSiblingsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

DayOfWeekSiblingsHousePokedexScript:
	opentext
	writetext DayOfWeekSiblingsHousePokedexText1
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText2
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText3
	waitbutton
.End:
	closetext
	end

DayOfWeekSiblingsHousePokedexText1:
	text "Nieco tu je na-" ; text "There's something"
	line "pisane." ; line "written here."

	para "Precitat?" ; para "Read it?"
	done

DayOfWeekSiblingsHousePokedexText2:
	text "Mojim bratom a" ; text "To my brothers and"
	line "sestram:" ; line "sisters:"

	para "Radi pomahame tre-" ; para "We take pride in"
	line "nerom" ; line "serving #MON"
	cont "#MONov." ; cont "trainers."

	para "Ak sa rozpravas s" ; para "When trainers talk"
	line "trenerom, daj mu" ; line "to you, give them"
	cont "nieco uzitocne." ; cont "something useful."

	para "S laskou," ; para "Love,"
	line "MONICA" ; line "MONICA"

	para "Citat dalej?" ; para "Keep reading?"
	done

DayOfWeekSiblingsHousePokedexText3:
	text "Pondelok, MONICA" ; text "Monday, MONICA"
	line "ROUTE 40"

	para "Utorok, TUSCANY" ; para "Tuesday, TUSCANY"
	line "ROUTE 29"

	para "Streda, WESLEY" ; para "Wednesday, WESLEY"
	line "LAKE OF RAGE"

	para "Stvrtok, ARTHUR" ; para "Thursday, ARTHUR"
	line "ROUTE 36"

	para "Piatok, FRIEDA" ; para "Friday, FRIEDA"
	line "ROUTE 32"

	para "Sobota, SANTOS" ; para "Saturday, SANTOS"
	line "BLACKTHORN CITY"

	para "Nedela, SUNNY" ; para "Sunday, SUNNY"
	line "ROUTE 37"
	done

DayOfWeekSiblingsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_26, 3
	warp_event  3,  7, ROUTE_26, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayOfWeekSiblingsHousePokedexScript, -1
