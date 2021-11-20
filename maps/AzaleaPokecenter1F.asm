	object_const_def
	const AZALEAPOKECENTER1F_NURSE
	const AZALEAPOKECENTER1F_GENTLEMAN
	const AZALEAPOKECENTER1F_FISHING_GURU
	const AZALEAPOKECENTER1F_POKEFAN_F

AzaleaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

AzaleaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

AzaleaPokecenter1FGentlemanScript:
	jumptextfaceplayer AzaleaPokecenter1FGentlemanText

AzaleaPokecenter1FFishingGuruScript:
	jumptextfaceplayer AzaleaPokecenter1FFishingGuruText

AzaleaPokecenter1FPokefanFScript:
	jumptextfaceplayer AzaleaPokecenter1FPokefanFText

AzaleaPokecenter1FGentlemanText:
	text "Vedia tvoji" ; text "Do your #MON"
	line "#MON HM utoky?" ; line "know HM moves?"

	para "Tieto utoky mozu" ; para "Those moves can"
	line "pouzit aj vtedy," ; line "be used even if"

	para "ked uz" ; para "your #MON has"
	line "odpadli." ; line "fainted."
	done

AzaleaPokecenter1FUnusedText: ; unreferenced
	text "This BILL guy"
	line "created the system"

	para "for storing"
	line "#MON in a PC."

	para "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

AzaleaPokecenter1FFishingGuruText:
	text "BILLov PC" ; text "BILL's PC can"
	line "ulozi az 20" ; line "store up to 20"
	cont "#MON do 1 BOXu." ; cont "#MON per BOX."
	done

AzaleaPokecenter1FPokefanFText:
	text "Pocul si uz o" ; text "Do you know about"
	line "APRICORNoch?" ; line "APRICORNS?"

	para "Skus jeden otvorit," ; para "Crack one open,"
	line "vyhlb ho a daj" ; line "hollow it out and"

	para "tam specialne" ; para "fit it with a"
	line "zariadenie." ; line "special device."

	para "Potom s nim mozes" ; para "Then you can catch"
	line "chytat #MON." ; line "#MON with it."

	para "Nez sa vynasli" ; para "Before # BALLS"
	line "# BALLS," ; line "were invented,"

	para "kazdy pouzival" ; para "everyone used"
	line "APRICORNy." ; line "APRICORNS."
	done

AzaleaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 1
	warp_event  4,  7, AZALEA_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FNurseScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FGentlemanScript, -1
	object_event  6,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FFishingGuruScript, -1
	object_event  1,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FPokefanFScript, -1
