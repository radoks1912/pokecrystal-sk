	object_const_def
	const CELADONMANSIONROOFHOUSE_PHARMACIST

CeladonMansionRoofHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofHousePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM03_CURSE
	iftrue .GotCurse
	writetext CeladonMansionRoofHousePharmacistIntroText
	promptbutton
	checktime NITE
	iftrue .Night
	writetext CeladonMansionRoofHousePharmacistNotNightText
	waitbutton
	closetext
	end

.Night:
	writetext CeladonMansionRoofHousePharmacistStoryText
	promptbutton
	verbosegiveitem TM_CURSE
	iffalse .NoRoom
	setevent EVENT_GOT_TM03_CURSE
.GotCurse:
	writetext CeladonMansionRoofHousePharmacistCurseText
	waitbutton
.NoRoom:
	closetext
	end

CeladonMansionRoofHousePharmacistIntroText:
	text "Dovol mi porozpra-" ; text "Let me recount a"
	line "vat desivy pribeh…" ; line "terrifying tale…"
	done

CeladonMansionRoofHousePharmacistNotNightText:
	text "Aj ked nie je tak" ; text "Then again, it's"
	line "strasidelny, dokym" ; line "not as scary while"

	para "je vonku stale" ; para "it's still light"
	line "svetlo." ; line "outside."

	para "Vrat sa spat po" ; para "Come back after"
	line "zapade slnka, OK?" ; line "sunset, OK?"
	done

CeladonMansionRoofHousePharmacistStoryText:
	text "Bol raz jeden maly" ; text "Once upon a time,"
	line "chlapcek, ktory" ; line "there was a little"

	para "dostal celkom" ; para "boy who was given"
	line "novy BICYKEL…" ; line "a new BICYCLE…"

	para "Chcel ho hned a" ; para "He wanted to try"
	line "zaraz vyskusat…" ; line "it right away…"

	para "Tak velmi sa" ; para "He was having so"
	line "zabaval, ze si" ; line "much fun that he"

	para "nevsimol ani zapad" ; para "didn't notice the"
	line "slnka…" ; line "sun had set…"

	para "Pri jazde domov" ; para "While riding home"
	line "za tmy BICYKEL" ; line "in the pitch-black"

	para "nahle" ; para "night, the bike"
	line "spomalil!" ; line "suddenly slowed!"

	para "Pedale velmi" ; para "The pedals became"
	line "otazeli!" ; line "heavy!"

	para "Ked prestal peda-" ; para "When he stopped"
	line "lovat, BICYKEL" ; line "pedaling, the bike"

	para "zacal jazdit" ; para "began slipping"
	line "pospiatky!" ; line "backwards!"

	para "Bolo to ako keby" ; para "It was as if the"
	line "bol prekliaty a" ; line "bike were cursed"

	para "snazil sa ho dos-" ; para "and trying to drag"
	line "tat do zabudnutia!" ; line "him into oblivion!"

	para "…"

	para "…"

	para "SHRIEEEEK!" ; para "SHRIEEEEK!"

	para "Chlapec jazdil" ;  para "The boy had been"
	line "do kopca po" ; line "riding uphill on"
	cont "CYCLING ROAD!" ; cont "CYCLING ROAD!"

	para "…"
	line "Ba-dum ba-dum!" ; line "Ba-dum ba-dum!"

	para "Za trpezlive" ; para "For listening so"
	line "vypocutie si vezmi" ; line "patiently, you may"
	cont "toto--TM03!" ; cont "take this--TM03!"
	done

CeladonMansionRoofHousePharmacistCurseText:
	text "TM03 je CURSE." ; text "TM03 is CURSE."

	para "Je to desivy utok," ; para "It's a terrifying"
	line "ktory pomaly" ; line "move that slowly"

	para "vysava HP svojej" ; para "whittles down the"
	line "obeti." ; line "victim's HP."
	done

CeladonMansionRoofHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHousePharmacistScript, -1
