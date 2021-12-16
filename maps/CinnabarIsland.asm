	object_const_def
	const CINNABARISLAND_BLUE

CinnabarIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CINNABAR
	endcallback

CinnabarIslandBlue:
	faceplayer
	opentext
	writetext CinnabarIslandBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement CINNABARISLAND_BLUE, CinnabarIslandBlueTeleport
	disappear CINNABARISLAND_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandPokecenterSign:
	jumpstd PokecenterSignScript

CinnabarIslandHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

CinnabarIslandBlueText:
	text "Kto si?" ; text "Who are you?"

	para "No, je jasne," ; para "Well, it's plain"
	line "ze si trener…" ; line "to see that you're"
	;cont "a trainer…" ; cont "a trainer…"

	para "Volam sa BLUE." ; para "My name's BLUE."

	para "Bol som raz" ; para "I was once the"
	line "SAMPION, aj ked" ; line "CHAMPION, although"

	para "len na kratky" ; para "it was for only a"
	line "cas…" ; line "short time…"

	para "Keby nebolo toho" ; para "That meddling RED"
	line "REDa…" ; line "did me in…"

	para "Kazdopadne, co" ; para "Anyway, what do"
	line "potrebujes? Chces" ; line "you want? You want"

	para "ma vyzvat na zapas" ; para "to challenge me or"
	line "alebo nieco take?" ; line "something?"

	para "…Nerad to hovorim," ; para "…I hate to say"
	line "ale prave nemam" ; line "it, but I'm not in"

	para "velmi naladu na" ; para "the mood for a"
	line "zapasenie." ; line "battle now."

	para "Dobre sa pozri" ; para "Take a good look"
	line "okolo seba…" ; line "around you…"

	para "Vybuchne sopka a" ; para "A volcano erupts,"
	line "z nicoho nic" ; line "and just like"

	para "zmizne cele mesto." ; para "that, a whole town"
	;line "disappears." ; line "disappears."

	para "Je to nieco ine" ; para "We can go on win-"
	line "ako zapasenie s" ; line "ning and losing in"

	para "#MONmi. Ale" ; para "#MON. But if"
	line "ked priroda zaveli" ; line "nature so much as"

	para "mozme v sekunde" ; para "twitches, we can"
	line "vsetko stratit." ; line "lose in a second."

	para "…"

	para "A takto to fun-" ; para "That's the way it"
	line "guje…" ; line "is…"

	para "Ale kazdopadne," ; para "But, anyway, I'm"
	line "stale som trener." ; line "still a trainer."

	para "Ak uvidim silneho" ; para "If I see a strong"
	line "supera, dostanem" ; line "opponent, it makes"
	cont "chut zapasit." ; cont "me want to battle."

	para "Ak chces zapasit," ; para "If you want to"
	line "prid ma pozriet" ; line "battle me, come to"
	cont "do VIRIDIAN GYMu." ; cont "the VIRIDIAN GYM."

	para "Tam si zmerame" ; para "I'll take you on"
	line "sily." ; line "then."
	done

CinnabarIslandGymSignText:
	text "Je tu nejaky" ; text "There's a notice"
	line "oznam…" ; line "here…"

	para "CINNABAR GYM sa" ; para "CINNABAR GYM has"
	line "presunul do SEA-" ; line "relocated to SEA-"
	cont "FOAM ISLANDS." ; cont "FOAM ISLANDS."

	para "BLAINE" ; para "BLAINE"
	done

CinnabarIslandSignText:
	text "CINNABAR ISLAND" ; text "CINNABAR ISLAND"

	para "Ohnive mesto" ; para "The Fiery Town of"
	line "tuzobnych plamenov" ; line "Burning Desire"
	done

CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 11, CINNABAR_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 12, 11, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event  9, 11, BGEVENT_READ, CinnabarIslandGymSign
	bg_event  7,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event  9,  1, BGEVENT_ITEM, CinnabarIslandHiddenRareCandy

	def_object_events
	object_event  9,  6, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
