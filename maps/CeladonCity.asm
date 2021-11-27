	object_const_def
	const CELADONCITY_FISHER
	const CELADONCITY_POLIWAG
	const CELADONCITY_TEACHER1
	const CELADONCITY_GRAMPS1
	const CELADONCITY_GRAMPS2
	const CELADONCITY_YOUNGSTER1
	const CELADONCITY_YOUNGSTER2
	const CELADONCITY_TEACHER2
	const CELADONCITY_LASS

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCityFisherScript:
	jumptextfaceplayer CeladonCityFisherText

CeladonCityPoliwrath:
	opentext
	writetext CeladonCityPoliwrathText
	cry POLIWRATH
	waitbutton
	closetext
	end

CeladonCityTeacher1Script:
	jumptextfaceplayer CeladonCityTeacher1Text

CeladonCityGramps1Script:
	jumptextfaceplayer CeladonCityGramps1Text

CeladonCityGramps2Script:
	jumptextfaceplayer CeladonCityGramps2Text

CeladonCityYoungster1Script:
	jumptextfaceplayer CeladonCityYoungster1Text

CeladonCityYoungster2Script:
	jumptextfaceplayer CeladonCityYoungster2Text

CeladonCityTeacher2Script:
	jumptextfaceplayer CeladonCityTeacher2Text

CeladonCityLassScript:
	jumptextfaceplayer CeladonCityLassText

CeladonCitySign:
	jumptext CeladonCitySignText

CeladonGymSign:
	jumptext CeladonGymSignText

CeladonCityDeptStoreSign:
	jumptext CeladonCityDeptStoreSignText

CeladonCityMansionSign:
	jumptext CeladonCityMansionSignText

CeladonCityGameCornerSign:
	jumptext CeladonCityGameCornerSignText

CeladonCityTrainerTips:
	jumptext CeladonCityTrainerTipsText

CeladonCityPokecenterSign:
	jumpstd PokecenterSignScript

CeladonCityHiddenPpUp:
	hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP

CeladonCityFisherText:
	text "POLIWRATH je" ; text "This POLIWRATH is"
	line "moj partner." ; line "my partner."

	para "Som zvedavy, ci sa" ; para "I wonder if it'll"
	line "niekedy vyvinie na" ; line "ever evolve into a"
	cont "zabieho #MONa." ; cont "frog #MON."
	done

CeladonCityPoliwrathText:
	text "POLIWRATH: Kvak!" ; text "POLIWRATH: Croak!"
	done

CeladonCityTeacher1Text:
if DEF(_CRYSTAL_AU)
	text "Prehral som na" ; text "I lost at the"
	line "automatoch." ; line "machines."
	done
else
	text "Znovu som prehral" ; text "I lost at the slot"
	line "na automatoch…" ; line "machines again…"

	para "Aj my dievcata" ; para "We girls also play"
	line "hrame automaty." ; line "the slots now."

	para "Pozri sa na ne" ; para "You should check"
	line "tiez." ; line "them out too."
	done
endc

CeladonCityGramps1Text:
	text "Zacal sa tu obja-" ; text "GRIMER have been"
	line "vovat GRIMER." ; line "appearing lately."

	para "Vidis ten rybnik" ; para "See that pond out"
	line "pred budovou?" ; line "in front of the"

	para "Teraz tam ziju" ; para "house? GRIMER live"
	line "GRIMERi." ; line "there now."

	para "Kde sa tu vzali?" ; para "Where did they"
	line "Toto je vazny" ; line "come from? This is"
	cont "problem…" ; cont "a serious problem…"
	done

CeladonCityGramps2Text:
	text "Hihihi! Tento GYM" ; text "Nihihi! This GYM"
	line "je skvely! Vstup" ; line "is great! Only"

	para "povoleny iba" ; para "girls are allowed"
	line "dievcatam!" ; line "here!"
	done

CeladonCityYoungster1Text:
	text "Chces vediet" ; text "Want to know a"
	line "tajomstvo?" ; line "secret?"

	para "CELADON MANSION" ; para "CELADON MANSION"
	line "ma tajne dvere." ; line "has a hidden back"
	;cont "door." ; cont "door."
	done

CeladonCityYoungster2Text:
	text "Prave prebieha" ; text "They're holding an"
	line "sutaz v jedeni" ; line "eating contest at"
	cont "v restaracii." ; cont "the restaurant."

	para "Uz len ked ich" ; para "Just watching them"
	line "vidim, citim sa" ; line "go at it makes me"
	cont "plny…" ; cont "feel bloated…"
	done

CeladonCityTeacher2Text:
	text "CELADON DEPT.STORE" ; text "CELADON DEPT.STORE"
	line "ma najvacsi a" ; line "has the biggest"

	para "najlepsi vyber" ; para "and best selection"
	line "tovaru." ; line "of merchandise."

	para "Ak to nekupis tam," ; para "If you can't get"
	line "tak to celkom" ; line "it there, you"

	para "iste nekupis nikde" ; para "can't get it any-"
	line "inde." ; line "where."

	para "Ach… Zniem ako" ; para "Gee… I sound like"
	line "podomovy predavac." ; line "a sales clerk."
	done

CeladonCityLassText_Mobile: ; unreferenced
	text "I love being"
	line "surrounded by tall"
	cont "buildings!"

	para "Isn't it true that"
	line "GOLDENROD #MON"

	para "CENTER was made"
	line "much, much bigger?"

	para "That is so neat!"
	line "I wish we had a"

	para "place like that in"
	line "KANTO…"
	done

CeladonCityLassText:
	text "Ak pozeram na" ; text "Looking at the"
	line "podlahu pocas kra-" ; line "ground while I was"

	para "cania, toci sa mi" ; para "walking made me"
	line "hlava." ; line "dizzy."
	done

CeladonCitySignText:
	text "CELADON CITY" ; text "CELADON CITY"

	para "Mesto duhovych" ; para "The City of"
	line "snov" ; line "Rainbow Dreams"
	done

CeladonGymSignText:
	text "CELADON CITY" ; text "CELADON CITY"
	line "#MON GYM" ; line "#MON GYM"
	cont "LEADER: ERIKA" ; cont "LEADER: ERIKA"

	para "Princezna milujuca" ; para "The Nature-Loving"
	line "prirodu" ; line "Princess"
	done

CeladonCityDeptStoreSignText:
	text "Zisti, co potre-" ; text "Find What You"
	line "vujes v CELADON" ; line "Need at CELADON"
	cont "DEPT.STORE!" ; cont "DEPT.STORE!"
	done

CeladonCityMansionSignText:
	text "CELADON MANSION"
	done

CeladonCityGameCornerSignText:
if DEF(_CRYSTAL_AU)
	text "Herny kutik pre" ; text "The Game Area for"
	line "dospelych--CELADON" ; line "Grown-ups--CELADON"
	cont "GAME CORNER" ; cont "GAME CORNER"
	done
else
	text "Herny kutik pre" ; text "The Playground for"
	line "vsetkych--CELADON" ; line "Everybody--CELADON"
	cont "GAME CORNER" ; cont "GAME CORNER"
	done
endc

CeladonCityTrainerTipsText:
	text "TRENERSKE TIPY" ; text "TRAINER TIPS"

	para "GUARD SPEC." ; para "GUARD SPEC."
	line "chrani #MONa" ; line "protects #MON"

	para "pred SPECIAL" ; para "against SPECIAL"
	line "utokmi ako" ; line "attacks such as"
	cont "ohen a voda." ; cont "fire and water."

	para "Kup si ho v" ; para "Get your items at"
	line "CELADON DEPT." ; line "CELADON DEPT."
	cont "STORE!" ; cont "STORE!"
	done

CeladonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, CELADON_DEPT_STORE_1F, 1
	warp_event 16,  9, CELADON_MANSION_1F, 1
	warp_event 16,  3, CELADON_MANSION_1F, 3
	warp_event 17,  3, CELADON_MANSION_1F, 3
	warp_event 29,  9, CELADON_POKECENTER_1F, 1
	warp_event 18, 19, CELADON_GAME_CORNER, 1
	warp_event 23, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	warp_event 10, 29, CELADON_GYM, 1
	warp_event 25, 29, CELADON_CAFE, 1

	def_coord_events

	def_bg_events
	bg_event 23, 21, BGEVENT_READ, CeladonCitySign
	bg_event 11, 31, BGEVENT_READ, CeladonGymSign
	bg_event  6,  9, BGEVENT_READ, CeladonCityDeptStoreSign
	bg_event 13,  9, BGEVENT_READ, CeladonCityMansionSign
	bg_event 19, 21, BGEVENT_READ, CeladonCityGameCornerSign
	bg_event 29, 21, BGEVENT_READ, CeladonCityTrainerTips
	bg_event 30,  9, BGEVENT_READ, CeladonCityPokecenterSign
	bg_event 37, 21, BGEVENT_ITEM, CeladonCityHiddenPpUp

	def_object_events
	object_event 26, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityFisherScript, -1
	object_event 27, 11, SPRITE_POLIWAG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityPoliwrath, -1
	object_event 20, 24, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher1Script, -1
	object_event 14, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps1Script, -1
	object_event  8, 31, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps2Script, -1
	object_event 18, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster1Script, -1
	object_event 24, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster2Script, -1
	object_event  6, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher2Script, -1
	object_event  7, 22, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityLassScript, -1
