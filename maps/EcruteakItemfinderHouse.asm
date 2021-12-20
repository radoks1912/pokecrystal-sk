	object_const_def
	const ECRUTEAKITEMFINDERHOUSE_COOLTRAINER_M
	const ECRUTEAKITEMFINDERHOUSE_POKEDEX

EcruteakItemfinderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakItemfinderGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .itemfinder
	writetext EcruteakItemfinderAdventureText
	yesorno
	iffalse .no
	writetext EcruteakItemfinderTrueSpiritText
	promptbutton
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.itemfinder:
	writetext ItemfinderExplanationText
	waitbutton
	closetext
	end

.no:
	writetext EcruteakItemfinderToEachHisOwnText
	waitbutton
	closetext
	end

EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	writetext EcruteakTwoTowersText
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMonText
	waitbutton
	closetext
	end

ItemFinderHouseRadio:
	jumpstd Radio2Script

EcruteakItemfinderAdventureText:
	text "Ah. si na dobro-" ; text "Ah. You're on an"
	line "druzstve s tvojimi" ; line "adventure with"
	cont "#MONmi?" ; cont "your #MON?"

	para "A co to je dobro-" ; para "Well, what's an"
	line "druzstvo bez" ; line "adventure without"
	cont "hladania pokladu?" ; cont "treasure hunting?"

	para "Mam pravdu, alebo" ; para "Am I right, or am"
	line "mam pravdu?" ; line "I right?"
	done

EcruteakItemfinderTrueSpiritText:
	text "Dobre! Rozumies" ; text "Good! You under-"
	line "pravej podstate" ; line "stand the true"

	para "dobrodruzstva." ; para "spirit of adven-"
	;line "ture." ; line "ture."

	para "Paci sa mi to!" ; para "I like that! Take"
	line "Vezmi si toto." ; line "this with you."
	done

ItemfinderExplanationText:
	text "Existuje mnoho" ; text "There are many"
	line "predmetov, ktore" ; line "items lying about"

	para "nie su na prvy" ; para "that aren't ob-"
	line "pohlad viditelne." ; line "vious."

	para "Pouzi ITEMFINDER" ; para "Use ITEMFINDER to"
	line "aby si zistil, ci" ; line "check if there is"

	para "je pri tebe nejaky" ; para "an item on the"
	line "predmet." ; line "ground near you."

	para "Neukazuje presne" ; para "It doesn't show"
	line "miesto, takze" ; line "the exact spot,"

	para "budes musiet tros-" ; para "so you'll have to"
	line "ku hladat." ; line "look yourself."

	para "Oo--Pocul som, ze" ; para "Oh yeah--I heard"
	line "dobre miesto" ; line "there are items"

	para "je v ECRUTEAK" ; para "in ECRUTEAK's"
	line "BURNED TOWER." ; line "BURNED TOWER."
	done

EcruteakItemfinderToEachHisOwnText:
	text "Oh… Tak to uz" ; text "Oh… To each his"
	line "dnes chodi…" ; line "own, I suppose…"
	done

EcruteakHistoryBookText:
	text "HISTORIA" ; text "HISTORY OF"
	line "ECRUTEAKU" ; line "ECRUTEAK"

	para "Citat dalej?" ; para "Want to read it?"
	done

EcruteakTwoTowersText:
	text "V ECRUTEAK boli" ; text "In ECRUTEAK, there"
	line "dve veze." ; line "were two towers."

	para "Kazda veza bola" ; para "Each tower was the"
	line "hniezdom silneho" ; line "roost of powerful"
	cont "#MONa." ; cont "flying #MON."

	para "Ale jedna veza" ; para "But one of the"
	line "zhorela uplne" ; line "towers burned to"
	cont "do tla." ; cont "the ground."

	para "Dvoch #MONov" ; para "The two #MON"
	line "uz potom" ; line "haven't been seen"
	cont "nebolo…" ; cont "since…"

	para "Citat dalej?" ; para "Keep reading?"
	done

EcruteakThreeMonText:
	text "ECRUTEAK bol" ; text "ECRUTEAK was also"
	line "domov troch" ; line "home to three"

	para "#MON ktori sa" ; para "#MON that raced"
	line "pretekali mestami." ; line "around the town."

	para "Udajne sa zrodili" ; para "They were said to"
	line "z vody, blesku a" ; line "have been born of"

	para "ohna." ; para "water, lightning"
	;line "and fire." ; line "and fire."

	para "Ale nedokazali" ; para "But they could not"
	line "ovladat svoju" ; line "contain their"
	cont "nadmernu silu." ; cont "excessive power."

	para "Udajne tak dodnes" ; para "So they say the"
	line "behaju v travach" ; line "three ran like the"

	para "ako rychle vichre." ; para "wind off into the"
	;line "grassland." ; line "grassland."
	done

EcruteakItemfinderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ItemFinderHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakItemfinderGuy, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1
