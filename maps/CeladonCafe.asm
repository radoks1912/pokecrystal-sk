	object_const_def
	const CELADONCAFE_SUPER_NERD
	const CELADONCAFE_FISHER1
	const CELADONCAFE_FISHER2
	const CELADONCAFE_FISHER3
	const CELADONCAFE_TEACHER

CeladonCafe_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonCafeChef:
	faceplayer
	opentext
	writetext ChefText_Eatathon
	waitbutton
	closetext
	end

CeladonCafeFisher1:
	opentext
	writetext Fisher1Text_Snarfle
	waitbutton
	closetext
	faceplayer
	opentext
	writetext Fisher1Text_Concentration
	waitbutton
	closetext
	turnobject CELADONCAFE_FISHER1, LEFT
	end

CeladonCafeFisher2:
	opentext
	writetext Fisher2Text_GulpChew
	waitbutton
	closetext
	faceplayer
	opentext
	writetext Fisher2Text_Quantity
	waitbutton
	closetext
	turnobject CELADONCAFE_FISHER2, RIGHT
	end

CeladonCafeFisher3:
	opentext
	writetext Fisher3Text_MunchMunch
	waitbutton
	closetext
	faceplayer
	opentext
	writetext Fisher3Text_GoldenrodIsBest
	waitbutton
	closetext
	turnobject CELADONCAFE_FISHER3, RIGHT
	end

CeladonCafeTeacher:
	checkitem COIN_CASE
	iftrue .HasCoinCase
	opentext
	writetext TeacherText_CrunchCrunch
	waitbutton
	closetext
	faceplayer
	opentext
	writetext TeacherText_NoCoinCase
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

.HasCoinCase:
	opentext
	writetext TeacherText_KeepEating
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, RIGHT
	opentext
	writetext TeacherText_MoreChef
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

EatathonContestPoster:
	jumptext EatathonContestPosterText

CeladonCafeTrashcan:
	checkevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	iftrue .TrashEmpty
	giveitem LEFTOVERS
	iffalse .PackFull
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	end

.PackFull:
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	promptbutton
	writetext NoRoomForLeftoversText
	waitbutton
	closetext
	end

.TrashEmpty:
	jumpstd TrashCanScript

ChefText_Eatathon:
	text "Ahoj!" ; text "Hi!"

	para "Prave prebihea" ; para "We're holding an"
	line "maraton v jedeni." ; line "eatathon contest."

	para "Nemozeme ta prave" ; para "We can't serve you"
	line "obsluzit, prepac." ; line "right now. Sorry."
	done

Fisher1Text_Snarfle:
	text "…Snarfle, chew…" ; text "…Snarfle, chew…"
	done

Fisher1Text_Concentration:
	text "Nehovor so mnou!" ; text "Don't talk to me!"

	para "Rusis moju" ; para "You'll break my"
	line "koncentraciu!" ; line "concentration!"
	done

Fisher2Text_GulpChew:
	text "…Gulp… Chew…" ; text "…Gulp… Chew…"
	done

Fisher2Text_Quantity:
	text "Kvantita nad" ; text "I take quantity"
	line "kvalitou!" ; line "over quality!"

	para "Som rad, ked som" ; para "I'm happy when I'm"
	line "plny!" ; line "full!"
	done

Fisher3Text_MunchMunch:
	text "Chrum, Chrum…" ; text "Munch, munch…"
	done

Fisher3Text_GoldenrodIsBest:
	text "The food is good" ; text "The food is good"
	line "here, but GOLDEN-" ; line "here, but GOLDEN-"
	cont "ROD has the best" ; cont "ROD has the best"
	cont "food anywhere." ; cont "food anywhere."
	done

TeacherText_CrunchCrunch:
	text "Crunch… Crunch…" ; text "Crunch… Crunch…"
	done

TeacherText_NoCoinCase:
	text "Nikto ti tu" ; text "Nobody here will"
	line "neda COIN" ; line "give you a COIN"

	para "CASE. Skus" ; para "CASE. You should"
	line "hladat v JOHTO." ; line "look in JOHTO."
	done

TeacherText_KeepEating:
	text "Chrum… Chrum…" ; text "Crunch… Crunch…"

	para "Len jem a jem!" ; para "I can keep eating!"
	done

TeacherText_MoreChef:
	text "Viac, pan vrchny!" ; text "More, CHEF!"
	done

EatathonContestPosterText:
	text "Maraton jedenia!" ; text "Eatathon Contest!"
	line "Bez limitu." ; line "No time limit!"

	para "Vyzva bez konca!" ; para "A battle without"
	line "Najvacsi jedak" ; line "end! The biggest"

	para "dostane ma vsetko" ; para "muncher gets it"
	line "jedlo zdarma!" ; line "all for free!"
	done

FoundLeftoversText:
	text "<PLAYER> nasiel" ; text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

NoRoomForLeftoversText:
	text "Ale <PLAYER> nema" ; text "But <PLAYER> can't"
	line "miesto v batohu…" ; line "hold another item…"
	done

CeladonCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, CELADON_CITY, 9
	warp_event  7,  7, CELADON_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, EatathonContestPoster
	bg_event  7,  1, BGEVENT_READ, CeladonCafeTrashcan

	def_object_events
	object_event  9,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCafeChef, -1
	object_event  4,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher1, -1
	object_event  1,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher2, -1
	object_event  1,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher3, -1
	object_event  4,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeTeacher, -1
