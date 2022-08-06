	object_const_def
	const LAKEOFRAGEHIDDENPOWERHOUSE_FISHER

LakeOfRageHiddenPowerHouse_MapScripts:
	def_scene_scripts

	def_callbacks

HiddenPowerGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftrue .AlreadyGotItem
	writetext HiddenPowerGuyText1
	promptbutton
	verbosegiveitem TM_HIDDEN_POWER
	iffalse .Done
	setevent EVENT_GOT_TM10_HIDDEN_POWER
	writetext HiddenPowerGuyText2
	waitbutton
	closetext
	end
.AlreadyGotItem:
	writetext HiddenPowerGuyText3
	waitbutton
.Done:
	closetext
	end

HiddenPowerHouseBookshelf:
	jumpstd DifficultBookshelfScript

HiddenPowerGuyText1:
	text "…Zabludil si" ; text "…You have strayed"
	line "daleko…" ; line "far…"

	para "Tu meditujem." ; para "Here I have medi-"
	line "Vo mne sa zobudila" ; line "tated. Inside me,"

	para "nova sila." ; para "a new power has"
	line "Dovol mi zdielat" ; line "been awakened."

	para "tuto silu s" ; para "Let me share my"
	line "tvojim" ; line "power with your"

	para "#MONom." ; para "#MON."
	line "Vezmi si to." ; line "Take this, child."
	done

HiddenPowerGuyText2:
	text "Vidis to? Je to" ; text "Do you see it? It"
	line "HIDDEN POWER!" ; line "is HIDDEN POWER!"

	para "Vytiahne silu z" ; para "It draws out the"
	line "utociaceho" ; line "power of #MON"
	cont "#MONa." ; cont "for attacking."

	para "Pamataj: jeho typ" ; para "Remember this: its"
	line "a sila zavisi na" ; line "type and power de-"
	cont "#MONovi, ktory ho" ; cont "pend on the #-"
	cont "pouziva." ; cont "MON using it."
	done

HiddenPowerGuyText3:
	text "Meditujem…" ; text "I am meditating…"
	done

LakeOfRageHiddenPowerHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, HiddenPowerHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, HiddenPowerHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HiddenPowerGuy, -1
