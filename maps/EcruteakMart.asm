	object_const_def
	const ECRUTEAKMART_CLERK
	const ECRUTEAKMART_SUPER_NERD
	const ECRUTEAKMART_GRANNY

EcruteakMart_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ECRUTEAK
	closetext
	end

EcruteakMartSuperNerdScript:
	jumptextfaceplayer EcruteakMartSuperNerdText

EcruteakMartGrannyScript:
	jumptextfaceplayer EcruteakMartGrannyText

EcruteakMartSuperNerdText:
	text "Moj EEVEE sa vyvi-" ; text "My EEVEE evolved"
	line "nul na ESPEONa." ; line "into an ESPEON."

	para "Ale kamaratov" ; para "But my friend's"
	line "EEVEE sa zmenil" ; line "EEVEE turned into"
	cont "na UMBREONa." ; cont "an UMBREON."

	para "Ktovie preco?" ; para "I wonder why? We"
	line "Obaja sme ich" ; line "both were raising"

	para "trenovali uplne" ; para "our EEVEE in the"
	line "rovnako…" ; line "same way…"
	done

EcruteakMartGrannyText:
	text "REVIVE sluzi na" ; text "If you use REVIVE,"
	line "ozivenie #MONa" ; line "a #MON that's"

	para "ktory odpadol." ; para "fainted will wake"
	;line "right up." ; line "right up."
	done

EcruteakMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ECRUTEAK_CITY, 9
	warp_event  3,  7, ECRUTEAK_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakMartSuperNerdScript, -1
	object_event  6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakMartGrannyScript, -1
