	object_const_def
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd DifficultBookshelfScript

ElmsWifeText:
	text "Ahoj, <PLAY_G>!" ; text "Hi, <PLAY_G>! My"
	line "Moj manzel je sta-" ; line "husband's always"

	para "le zaneprazdneny." ; para "so busy--I hope"
	line "Dufam, ze je OK." ; line "he's OK."

	para "Ak je ponoreny do" ; para "When he's caught"
	line "svojho #MON" ; line "up in his #MON"

	para "vyskumu, niekedy" ; para "research, he even"
	line "zabudne aj jest." ; line "forgets to eat."
	done

ElmsSonText:
	text "Ked vyrastiem," ; text "When I grow up,"
	line "budem pomahat moj-" ; line "I'm going to help"
	cont "mu tatkovi!" ; cont "my dad!"

	para "Bude zo mna" ; para "I'm going to be a"
	line "skvely #MON" ; line "great #MON"
	cont "profesor!" ; cont "professor!"
	done

ElmsHouseLabFoodText: ; unreferenced
	text "There's some food"
	line "here. It must be"
	cont "for the LAB."
	done

ElmsHousePokemonFoodText: ; unreferenced
	text "There's some food"
	line "here. This must be"
	cont "for #MON."
	done

ElmsHousePCText:
	text "#MON. Odkial" ; text "#MON. Where do"
	line "asi pochadzaju? " ; line "they come from? "

	para "Kam asi idu?" ; para "Where are they"
	;line "going?" ; line "going?"

	para "Preco nikto nikdy" ; para "Why has no one"
	line "nevidel narodenie" ; line "ever witnessed a"
	cont "#MONa?" ; cont "#MON's birth?"

	para "Chcem to vediet!" ; para "I want to know! I"
	line "Venujem svoj zivot" ; line "will dedicate my"

	para "studovaniu" ; para "life to the study"
	line "#MONov!" ; line "of #MON!"

	para "…"

	para "Je to sucast" ; para "It's a part of"
	line "PROF.ELMovho" ; line "PROF.ELM's re-"
	cont "vyskumu." ; cont "search papers."
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
