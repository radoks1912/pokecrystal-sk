	object_const_def
	const CHARCOALKILN_BLACK_BELT
	const CHARCOALKILN_YOUNGSTER
	const CHARCOALKILN_MOLTRES

CharcoalKiln_MapScripts:
	def_scene_scripts

	def_callbacks

CharcoalKilnBoss:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .GotCut
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .SavedSlowpoke
	writetext CharcoalKilnBossText1
	waitbutton
	closetext
	end

.SavedSlowpoke:
	writetext CharcoalKilnBossText2
	waitbutton
	closetext
	end

.GotCut:
	writetext CharcoalKilnBossText3
	waitbutton
	closetext
	end

CharcoalKilnApprentice:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue .YoureTheCoolest
	checkevent EVENT_GOT_HM01_CUT
	iftrue .Thanks
	writetext CharcoalKilnApprenticeText1
	waitbutton
	closetext
	end

.Thanks:
	writetext CharcoalKilnApprenticeText2
	promptbutton
	verbosegiveitem CHARCOAL
	iffalse .Done
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	closetext
	end

.YoureTheCoolest:
	writetext CharcoalKilnApprenticeText3
	waitbutton
.Done:
	closetext
	end

CharcoalKilnFarfetchd:
	faceplayer
	opentext
	writetext FarfetchdText
	cry FARFETCH_D
	waitbutton
	closetext
	end

CharcoalKilnBookshelf:
	jumpstd MagazineBookshelfScript

CharcoalKilnRadio:
	jumpstd Radio2Script

CharcoalKilnBossText1:
	text "Vsetci SLOWPOKEci" ; text "All the SLOWPOKE"
	line "zmizli z mesta." ; line "have disappeared"
	;cont "from the town." ; cont "from the town."

	para "Ochranca lesa sa" ; para "The forest's pro-"
	line "na nas pravepodo-" ; line "tector may be"
	cont "bne hneva…" ; cont "angry with us…"

	para "Moze to byt zle" ; para "It may be a bad"
	line "znamenie. Zostanme" ; line "omen. We should"
	cont "radsej tu." ; cont "stay in."
	done

CharcoalKilnBossText2:
	text "SLOWPOKEci sa" ; text "The SLOWPOKE have"
	line "vratili…" ; line "returned…"

	para "Ale moj ucen sa" ; para "But my APPRENTICE"
	line "este nevratil z" ; line "hasn't come back"
	cont "ILEX LESA." ; cont "from ILEX FOREST."

	para "Kde je pre pana" ; para "Where in the world"
	line "ten lenivy chlap?" ; line "is that lazy guy?"
	done

CharcoalKilnBossText3:
	text "Nahanal si" ; text "You chased off"
	line "TEAM ROCKET a" ; line "TEAM ROCKET and"

	para "siel si do ILEX" ; para "went to ILEX"
	line "LESA sam?" ; line "FOREST alone?"

	para "To chce odvahu!" ; para "That takes guts!"
	line "To sa mi paci. Pod" ; line "I like that. Come"
	cont "trenovat s nami." ; cont "train with us."
	done

CharcoalKilnApprenticeText1:
	text "Kam odisli vsetci" ; text "Where have all the"
	line "SLOWPOKEci?" ; line "SLOWPOKE gone?"

	para "Isli sa niekam" ; para "Are they out play-"
	line "hrat?" ; line "ing somewhere?"
	done

CharcoalKilnApprenticeText2:
	text "Prepac--Nepodako-" ; text "I'm sorry--I for-"
	line "val som ti." ; line "got to thank you."

	para "Toto je UHLIE," ; para "This is CHARCOAL"
	line "ktore som vyrobil." ; line "that I made."

	para "Ohnivi #MONi" ; para "Fire-type #MON"
	line "to radi drzia." ; line "would be happy to"
	;cont "hold that." ; cont "hold that."
	done

CharcoalKilnApprenticeText3:
	text "SLOWPOKEci sa" ; text "The SLOWPOKE came"
	line "vratili a nasiel" ; line "back, and you even"
	cont "si i FARFETCH'Da." ; cont "found FARFETCH'D."

	para "Si najlepsi!" ; para "You're the cool-"
	;line "est, man!" ; line "est, man!"
	done

FarfetchdText:
	text "FARFETCH'D: Kwaa!" ; text "FARFETCH'D: Kwaa!"
	done

CharcoalKiln_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, AZALEA_TOWN, 2
	warp_event  3,  7, AZALEA_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  1,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  7,  1, BGEVENT_READ, CharcoalKilnRadio

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_CHARCOAL_KILN_BOSS
	object_event  5,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_CHARCOAL_KILN_APPRENTICE
	object_event  5,  6, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchd, EVENT_CHARCOAL_KILN_FARFETCH_D
