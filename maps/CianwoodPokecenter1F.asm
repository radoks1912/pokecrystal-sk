	object_const_def
	const CIANWOODPOKECENTER1F_NURSE
	const CIANWOODPOKECENTER1F_LASS
	const CIANWOODPOKECENTER1F_GYM_GUIDE
	const CIANWOODPOKECENTER1F_SUPER_NERD

CianwoodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CianwoodPokecenter1FLassScript:
	jumptextfaceplayer CianwoodPokecenter1FLassText

CianwoodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue .CianwoodGymGuideWinScript
	opentext
	writetext CianwoodGymGuideText
	waitbutton
	closetext
	end

.CianwoodGymGuideWinScript:
	opentext
	writetext CianwoodGymGuideWinText
	waitbutton
	closetext
	end

CianwoodPokecenter1FSuperNerdScript:
	jumptextfaceplayer CianwoodPokecenter1FSuperNerdText

CianwoodPokecenter1FLassText:
	text "Stretol si uz" ; text "Did you meet the"
	line "#MANIACa?" ; line "#MANIAC?"

	para "Neustale sa vy-" ; para "He's always brag-"
	line "chvaluje vzacnymi" ; line "ging about his"
	cont "#MONmi." ; cont "rare #MON."
	done

CianwoodGymGuideText:
	text "Treneri z #MON" ; text "The #MON GYM"
	line "GYMu su extremni" ; line "trainers here are"
	cont "sikanisti." ; cont "macho bullies."

	para "Ak tu zostanem," ; para "If I stick around,"
	line "urcite pojdu aj" ; line "they might come"
	cont "po mne." ; cont "after me."

	para "Tu mas radu:" ; para "Here's some ad-"
	line "GYM LEADER pouziva" ; line "vice: the GYM"

	para "fighting-typ" ; para "LEADER uses the"
	line "#MONov." ; line "fighting-type."

	para "Takze ho skus" ; para "So you should"
	line "zmiast s psychic-" ; line "confound him with"
	cont "kymi #MONmi." ; cont "psychic #MON."

	para "Poraz jeho #-" ; para "Wipe out his #-"
	line "MON, predtym" ; line "MON before they"

	para "nez stihnu pouzit" ; para "can use their"
	line "fyzicku silu." ; line "physical strength."

	para "A tie skaly upro-" ; para "And those boulders"
	line "stred GYMu?" ; line "in the middle of"
	;cont "the GYM?" ; cont "the GYM?"

	para "Ak ich nepohnes" ; para "If you don't move"
	line "spravne, nedosta-" ; line "them correctly,"

	para "nes sa k GYM" ; para "you won't reach"
	line "LEADERovi." ; line "the GYM LEADER."

	para "Ak sa zaseknes," ; para "If you get stuck,"
	line "chod von." ; line "go outside."
	done

CianwoodGymGuideWinText:
	text "<PLAYER>! Vyhral" ; text "<PLAYER>! You won!"
	line "si! Vidim to po-" ; line "I could tell by"
	cont "hladom na teba!" ; cont "looking at you!"
	done

CianwoodPokecenter1FUnusedText1: ; unreferenced
	text "Don't you get the"
	line "urge to show off"

	para "your #MON to"
	line "friends?"

	para "I wish I could"
	line "show the #MON I"

	para "raised to my pal"
	line "in VIOLET."
	done

CianwoodPokecenter1FUnusedText2: ; unreferenced
	text "I've been battling"
	line "my pal in VIOLET"

	para "using a MOBILE"
	line "ADAPTER link."

	para "I'm down 5-7"
	line "against him. I've"
	cont "gotta crank it up!"
	done

CianwoodPokecenter1FSuperNerdText:
	text "Rad ukazujem" ; text "I love showing off"
	line "#MONov, ktorych" ; line "the #MON that"

	para "som vychoval." ; para "I've raised."
	line "Ty nie?" ; line "Don't you?"

	para "Budem teraz zapa-" ; para "I'm going to get"
	line "sit v mnoho za-" ; line "into a bunch of"

	para "pasoch a ukazem" ; para "battles, and show"
	line "svojich #MONov!" ; line "off my #MON!"
	done

CianwoodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CIANWOOD_CITY, 3
	warp_event  4,  7, CIANWOOD_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FLassScript, -1
	object_event  5,  3, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymGuideScript, -1
	object_event  8,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FSuperNerdScript, -1
