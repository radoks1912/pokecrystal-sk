	object_const_def
	const CIANWOODPHARMACY_PHARMACIST

CianwoodPharmacy_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

CianwoodPharmacist:
	faceplayer
	opentext
	checkevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	iftrue .Mart
	checkevent EVENT_JASMINE_EXPLAINED_AMPHYS_SICKNESS
	iffalse .Mart
	writetext PharmacistGiveSecretpotionText
	promptbutton
	giveitem SECRETPOTION
	writetext ReceivedSecretpotionText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	writetext PharmacistDescribeSecretpotionText
	waitbutton
	closetext
	end

.Mart:
	pokemart MARTTYPE_PHARMACY, MART_CIANWOOD
	closetext
	end

CianwoodPharmacyBookshelf:
	jumpstd DifficultBookshelfScript

PharmacistGiveSecretpotionText:
	text "Tvoji #MONi" ; text "Your #MON ap-"
	line "su v poriadku." ; line "pear to be fine."

	para "Trapi ta nieco?" ; para "Is something wor- "
	;line "rying you?" ; line "rying you?"

	para "…"

	para "#MON z MAJAKU" ; para "The LIGHTHOUSE"
	line "ma zdravotne" ; line "#MON is in"
	cont "tazkosti?" ; cont "trouble?"

	para "Mam to!" ; para "I got it!"

	para "Toto by mu malo" ; para "This ought to do"
	line "pomoct." ; line "the trick."
	done

ReceivedSecretpotionText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "SECRETPOTION."
	done

PharmacistDescribeSecretpotionText:
	text "Moja SECRETPOTION" ; text "My SECRETPOTION is"
	line "je trosku silna." ; line "a tad too strong."

	para "Poskytujem ju iba" ; para "I only offer it in"
	line "v nudzi." ; line "an emergency."
	done

CianwoodPharmacy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 4
	warp_event  3,  7, CIANWOOD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodPharmacyBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodPharmacyBookshelf

	def_object_events
	object_event  2,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodPharmacist, -1
