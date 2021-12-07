	object_const_def
	const CERULEANPOKECENTER1F_NURSE
	const CERULEANPOKECENTER1F_SUPER_NERD
	const CERULEANPOKECENTER1F_GYM_GUIDE

CeruleanPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CeruleanPokecenter1FSuperNerdScript:
	special Mobile_DummyReturnFalse
	iftrue .mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText

.mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText_Mobile

CeruleanPokecenter1FGymGuideScript:
	jumptextfaceplayer CeruleanPokecenter1FGymGuideText

CeruleanPokecenter1FSuperNerdText:
	text "Na zapasy najrad-" ; text "For battles, I'd"
	line "sej pouzivam" ; line "much rather use"

	para "#MON ktorych" ; para "#MON I've been"
	line "som sa vychoval," ; line "raising, even if"

	para "aj ked su niekedy" ; para "they're weaker"
	line "slabsi ako cerstvo" ; line "than some newly"
	cont "chyteni #MON." ; cont "caught #MON."
	done

CeruleanPokecenter1FSuperNerdText_Mobile:
	text "Zapasis niekedy" ; text "Do you battle by"
	line "na telefone?" ; line "mobile phone?"

	para "Ak vyprsi cas" ; para "If time runs out"
	line "pocas zapasu," ; line "during a battle,"

	para "cakanie na vitaza" ; para "waiting to see who"
	line "je niekedy" ; line "won is really"
	cont "na nervy." ; cont "nerve wracking."
	done

CeruleanPokecenter1FGymGuideText:
	text "MAGNET VLAK" ; text "The MAGNET TRAIN"
	line "jazdi rychlostou" ; line "travels at over"

	para "550 km/h. Jazdi" ; para "340 mph. It goes"
	line "medzi KANTO a" ; line "between KANTO and"

	para "JOHTO v kratkom" ; para "JOHTO in almost no"
	line "case." ; line "time at all."

	para "To robi JOHTO" ; para "It really makes"
	line "pristupnejsie." ; line "JOHTO accessible."
	done

CeruleanPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 4
	warp_event  4,  7, CERULEAN_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FSuperNerdScript, -1
	object_event  1,  5, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FGymGuideScript, -1
