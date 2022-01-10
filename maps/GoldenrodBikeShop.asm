	object_const_def
	const GOLDENRODBIKESHOP_CLERK

GoldenrodBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

GoldenrodBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext GoldenrodBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext GoldenrodBikeShopClerkAgreedText
	promptbutton
	waitsfx
	giveitem BICYCLE
	writetext BorrowedABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext GoldenrodBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext GoldenrodBikeShopClerkRefusedText
	waitbutton
	closetext
	end

GoldenrodBikeShopJustReleasedCompactBike: ; unreferenced
	jumptext GoldenrodBikeShopJustReleasedCompactBikeText

GoldenrodBikeShopBicycle:
	jumptext GoldenrodBikeShopBicycleText

GoldenrodBikeShopClerkIntroText:
	text "…aach… Prestahoval" ; text "…sigh… I moved"
	line "som sa sem, ale" ; line "here, but I can't"

	para "nedari sa mi pre-." ; para "sell my BICYCLES."
	line "davat BICYKLE." ; line "Why is that?"

	para "Mohol by si jazdit" ; para "Could you ride a"
	line "na BICYKLI a robit" ; line "BICYCLE and adver-"
	cont "mi reklamu?" ; cont "tise for me?"
	done

GoldenrodBikeShopClerkAgreedText:
	text "Fakt? Skvele!" ; text "Really? Great!"

	para "Daj mi tvoje meno" ; para "Give me your name"
	line "a telefon a ja ti" ; line "and phone number,"

	para "poziciam jeden z" ; para "and I'll loan you"
	line "mojich BICYKLOV." ; line "a BICYCLE."
	done

BorrowedABicycleText:
	text "<PLAYER> si" ; text "<PLAYER> borrowed a"
	line "pozical BICYKEL." ; line "BICYCLE."
	done

GoldenrodBikeShopClerkFirstRateBikesText:
	text "Moje BICYKLE su" ; text "My BICYCLES are"
	line "spicka! Mozes na" ; line "first-rate! You"

	para "nich jazdit uplne" ; para "can ride them"
	line "kdekolvek." ; line "anywhere."
	done

GoldenrodBikeShopClerkRefusedText:
	text "…ach… Za dobrotu," ; text "…sigh… Oh, for"
	line "na zobrotu…" ; line "the kindness of"
	;cont "people…" ; cont "people…"
	done

GoldenrodBikeShopJustReleasedCompactBikeText:
	text "Prave v predaji!" ; text "Just released!"

	para "Prvotriedne" ; para "First-rate compact"
	line "kompaktne BICYKLE!" ; line "BICYCLES!"
	done

GoldenrodBikeShopBicycleText:
	text "Je to novucicky" ; text "It's a shiny new"
	line "BICYKEL!" ; line "BICYCLE!"
	done

GoldenrodBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 2
	warp_event  3,  7, GOLDENROD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, GoldenrodBikeShopBicycle

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodBikeShopClerkScript, -1
