	object_const_def
	const GOLDENRODDEPTSTOREROOF_CLERK
	const GOLDENRODDEPTSTOREROOF_POKEFAN_F
	const GOLDENRODDEPTSTOREROOF_FISHER
	const GOLDENRODDEPTSTOREROOF_TWIN
	const GOLDENRODDEPTSTOREROOF_SUPER_NERD
	const GOLDENRODDEPTSTOREROOF_POKEFAN_M
	const GOLDENRODDEPTSTOREROOF_TEACHER
	const GOLDENRODDEPTSTOREROOF_BUG_CATCHER

GoldenrodDeptStoreRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .CheckSaleChangeBlock
	callback MAPCALLBACK_OBJECTS, .CheckSaleChangeClerk

.CheckSaleChangeBlock:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleIsOn
	endcallback

.SaleIsOn:
	changeblock 0, 2, $3f ; cardboard boxes
	changeblock 0, 4, $0f ; vendor booth
	endcallback

.CheckSaleChangeClerk:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .ChangeClerk
	setevent EVENT_GOLDENROD_SALE_OFF
	clearevent EVENT_GOLDENROD_SALE_ON
	endcallback

.ChangeClerk:
	clearevent EVENT_GOLDENROD_SALE_OFF
	setevent EVENT_GOLDENROD_SALE_ON
	endcallback

GoldenrodDeptStoreRoofClerkScript:
	opentext
	pokemart MARTTYPE_ROOFTOP, 0
	closetext
	end

GoldenrodDeptStoreRoofPokefanFScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanFText

GoldenrodDeptStoreRoofFisherScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStoreRoofFisherText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_FISHER, UP
	end

GoldenrodDeptStoreRoofTwinScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTwinText

GoldenrodDeptStoreRoofSuperNerdScript:
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdOhWowText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, UP
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, RIGHT
	end

GoldenrodDeptStoreRoofPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanMText

GoldenrodDeptStoreRoofTeacherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTeacherText

GoldenrodDeptStoreRoofBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofBugCatcherText

Binoculars1:
	jumptext Binoculars1Text

Binoculars2:
	jumptext Binoculars2Text

Binoculars3:
	jumptext Binoculars3Text

PokeDollVendingMachine:
	jumptext PokeDollVendingMachineText

GoldenrodDeptStoreRoofPokefanFText:
	text "Fuh, som unaveny." ; text "Whew, I'm tired."

	para "Sem-tam vybehnem" ; para "I sometimes come"
	line "hore na strechu" ; line "up to the rooftop"

	para "a spravim si pre-" ; para "to take a break"
	line "stavku od naku-" ; line "from shopping."
	cont "povania."
	done

GoldenrodDeptStoreRoofFisherText:
	text "Pardon? Kto pove-" ; text "Pardon? Who says"
	line "dal, ze dospeli sa" ; line "an adult can't get"
	cont "tomuto nevenuju?" ; cont "into this?"

	para "Budem sa vracat" ; para "I'm going to be"
	line "kazdy den, aby som" ; line "back every day to"

	para "pozbieral vsetky" ; para "collect all the"
	line "babiky!" ; line "dolls!"
	done

GoldenrodDeptStoreRoofTwinText:
	text "Casto tu maju" ; text "They have bargain"
	line "velmi velke" ; line "sales here every"
	cont "vypredaje." ; cont "so often."
	done

GoldenrodDeptStoreRoofSuperNerdOhWowText:
	text "Oh, wau!" ; text "Oh, wow!"
	done

GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText:
	text "Prestanes ma" ; text "Will you quit"
	line "konecne otravovat?" ; line "bothering me?"
	done

GoldenrodDeptStoreRoofPokefanMText:
	text "Je nieco, co si" ; text "There's something"
	line "chcem velmi kupit," ; line "I really want, but"

	para "ale nemam dost" ; para "I don't have the"
	line "penazi…" ; line "necessary cash…"

	para "Mozno popredavam" ; para "Maybe I'll sell"
	line "zopar BERRIES," ; line "off the BERRIES"
	cont "co mam…" ; cont "I've collected…"
	done

GoldenrodDeptStoreRoofTeacherText:
	text "Och, vsetko je tak" ; text "Oh, everything is"
	line "lacne!" ; line "so cheap!"

	para "Mam preplneny cely" ; para "I bought so much,"
	line "BATOH!" ; line "my PACK's crammed!"
	done

GoldenrodDeptStoreRoofBugCatcherText:
	text "Moji #MONi su" ; text "My #MON always"
	line "vzdy paralyzovani" ; line "get paralyzed or"

	para "alebo otraveni," ; para "poisoned when the"
	line "vskutku…" ; line "chips are down…"

	para "Tak som si prisiel" ; para "So I came to buy"
	line "kupit FULL HEAL." ; line "some FULL HEAL."

	para "Dufam, ze ho este" ; para "I wonder if"
	line "maju skladom?" ; line "there's any left?"
	done

Binoculars1Text:
	text "Tento dalekohlad" ; text "These binoculars"
	line "mi umoznuje vidiet" ; line "let me see far"

	para "daleko. Mozno uvi-" ; para "away. Maybe I can"
	line "dim aj svoj dom." ; line "see my own house."

	para "Je to tamten so" ; para "Is it the one with"
	line "zelenou strechou?" ; line "the green roof?"
	done

Binoculars2Text:
	text "Hej! Treneri tam" ; text "Hey! Some trainers"
	line "na ceste prave" ; line "are battling on"
	cont "zapasia!" ; cont "the road!"

	para "#MON odpalil vir" ; para "A #MON fired a"
	line "listov!" ; line "flurry of leaves!"

	para "Vidiac toto sa mi" ; para "That makes me feel"
	line "chce zapasit!" ; line "like battling"
	;cont "right now!" ; cont "right now!"
	done

Binoculars3Text:
	text "FISHER chytil" ; text "A FISHER caught a"
	line "vela MAGIKARPov…" ; line "lot of MAGIKARP…"

	para "Spliechaju presne" ; para "They're SPLASHing"
	line "v ten isty cas!" ; line "at the same time!"

	para "Pozri na tu vodu," ; para "Look at the water"
	line "co sa vsade vali!" ; line "going everywhere!"
	done

PokeDollVendingMachineText:
	text "Automat na" ; text "A vending machine"
	line "#MON babiky?" ; line "for #MON dolls?"

	para "Vloz peniaze," ; para "Insert money, then"
	line "potom zatoc paku…" ; line "turn the crank…"

	para "Ale je takmer" ; para "But it's almost"
	line "prazdny…" ; line "empty…"
	done

GoldenrodDeptStoreRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  1, GOLDENROD_DEPT_STORE_6F, 3

	def_coord_events

	def_bg_events
	bg_event 15,  3, BGEVENT_RIGHT, Binoculars1
	bg_event 15,  5, BGEVENT_RIGHT, Binoculars2
	bg_event 15,  6, BGEVENT_RIGHT, Binoculars3
	bg_event  3,  0, BGEVENT_UP, PokeDollVendingMachine

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofClerkScript, EVENT_GOLDENROD_SALE_OFF
	object_event 10,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanFScript, -1
	object_event  2,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofFisherScript, -1
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTwinScript, EVENT_GOLDENROD_SALE_ON
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofSuperNerdScript, EVENT_GOLDENROD_SALE_ON
	object_event  7,  0, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanMScript, EVENT_GOLDENROD_SALE_OFF
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTeacherScript, EVENT_GOLDENROD_SALE_OFF
	object_event  1,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofBugCatcherScript, EVENT_GOLDENROD_SALE_OFF
