	object_const_def
	const LAVENDERMART_CLERK
	const LAVENDERMART_POKEFAN_M
	const LAVENDERMART_ROCKER

LavenderMart_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LAVENDER
	closetext
	end

LavenderMartPokefanMScript:
	jumptextfaceplayer LavenderMartPokefanMText

LavenderMartRockerScript:
	jumptextfaceplayer LavenderMartRockerText

LavenderMartPokefanMText:
	text "REPEL je nevy-" ; text "REPEL is a neces-"
	line "hnutnost, ak sa" ; line "sity if you are"

	para "chystas skumat" ; para "going to explore a"
	line "jaskyne." ; line "cave."

	para "Aj ked mam rad" ; para "Even though I like"
	line "skumanie, stale" ; line "exploring, I still"

	para "som nebol vo vset-" ; para "haven't made it to"
	line "kych jaskyniach." ; line "all the caves."
	done

LavenderMartRockerText:
	text "Pocul som o maj-" ; text "I heard about a"
	line "strovi, ktory" ; line "craftsman who"

	para "vyraba BALLS" ; para "makes custom BALLS"
	line "na mieru v" ; line "in the JOHTO town"

	para "AZALEA. Kiezby som" ; para "of AZALEA. I wish"
	line "nejake mal." ; line "I had some."
	done

LavenderMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 5
	warp_event  3,  7, LAVENDER_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartClerkScript, -1
	object_event  6,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderMartPokefanMScript, -1
	object_event  9,  2, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartRockerScript, -1
