CeladonMansion2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansion2FComputer:
	jumptext CeladonMansion2FComputerText

CeladonMansion2FMeetingRoomSign:
	jumptext CeladonMansion2FMeetingRoomSignText

CeladonMansion2FBookshelf:
	jumpstd DifficultBookshelfScript

CeladonMansion2FComputerText:
	text "<PLAYER> zapol" ; text "<PLAYER> turned on"
	line "PC." ; line "the PC."

	para "…"

	para "Niekto bol prave" ; para "Someone was in the"
	line "uprostred pisania" ; line "middle of compos-"
	cont "e-mailu." ; cont "ing an e-mail."

	para "…Dufam, ze prides" ; para "…I hope you'll"
	line "navstivit KANTO." ; line "come visit KANTO."

	para "Budes prekvapeny," ; para "I think you'll be"
	line "kolko sa tu toho" ; line "surprised at how"

	para "zmenilo. Takisto" ; para "much things have"
	line "uvidis mnoho" ; line "changed here."

	para "#MONov, ktori " ; para "You'll also see"
	line "sa bezne nevysky-" ; line "many #MON that"

	para "tuju v JOHTO." ; para "aren't native to"
	line "" ; line "JOHTO."

	para "Pre PRODUCENTA" ; para "To the PRODUCER"

	para "…"
	done

CeladonMansion2FMeetingRoomSignText:
	text "GAME FREAK" ; text "GAME FREAK"
	line "MEETINGOVKA" ; line "MEETING ROOM"
	done

CeladonMansion2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, CELADON_MANSION_1F, 4
	warp_event  1,  0, CELADON_MANSION_3F, 2
	warp_event  6,  0, CELADON_MANSION_3F, 3
	warp_event  7,  0, CELADON_MANSION_1F, 5

	def_coord_events

	def_bg_events
	bg_event  0,  3, BGEVENT_READ, CeladonMansion2FComputer
	bg_event  5,  8, BGEVENT_UP, CeladonMansion2FMeetingRoomSign
	bg_event  2,  3, BGEVENT_READ, CeladonMansion2FBookshelf

	def_object_events
