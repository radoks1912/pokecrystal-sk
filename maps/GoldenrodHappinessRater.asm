	object_const_def
	const GOLDENRODHAPPINESSRATER_TEACHER
	const GOLDENRODHAPPINESSRATER_POKEFAN_M
	const GOLDENRODHAPPINESSRATER_TWIN

GoldenrodHappinessRater_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodHappinessRaterTeacherScript:
	faceplayer
	opentext
	special GetFirstPokemonHappiness
	writetext GoldenrodHappinessRaterTeacherText
	promptbutton
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
	sjump .LooksMean

.LovesYouALot:
	writetext GoldenrodHappinessRatingText_LovesYouALot
	waitbutton
	closetext
	end

.ReallyTrustsYou:
	writetext GoldenrodHappinessRatingText_ReallyTrustsYou
	waitbutton
	closetext
	end

.SortOfHappy:
	writetext GoldenrodHappinessRatingText_SortOfHappy
	waitbutton
	closetext
	end

.QuiteCute:
	writetext GoldenrodHappinessRatingText_QuiteCute
	waitbutton
	closetext
	end

.NotUsedToYou:
	writetext GoldenrodHappinessRatingText_NotUsedToYou
	waitbutton
	closetext
	end

.LooksMean:
	writetext GoldenrodHappinessRatingText_LooksMean
	waitbutton
	closetext
	end

GoldenrodHappinessRaterPokefanMScript:
	jumptextfaceplayer GoldenrodHappinessRaterPokefanMText

GoldenrodHappinessRaterTwinScript:
	jumptextfaceplayer GoldenrodHappinessRaterTwinText

HappinessRatersHouseBookshelf:
	jumpstd DifficultBookshelfScript

HappinessRatersHouseRadio:
	jumpstd Radio2Script

GoldenrodHappinessRaterTeacherText:
	text "Ak sa budes k svo-" ; text "If you treat your"
	line "jim #MONom" ; line "#MON nicely,"
	cont "chovat milo,"

	para "budu ti lasku" ; para "they will love you"
	line "opatovat." ; line "in return."

	para "Hm? Ukaz mi" ; para "Oh? Let me see"
	line "svojho @" ; line "your @"
	text_ram wStringBuffer3
	text "…"
	done

GoldenrodHappinessRatingText_LovesYouALot:
	text "Vypada velmi" ; text "It looks really"
	line "stastne! Musi ta" ; line "happy! It must"
	cont "mat velmi rad." ; cont "love you a lot."
	done

GoldenrodHappinessRatingText_ReallyTrustsYou:
	text "Mam pocit, ze ti" ; text "I get the feeling"
	line "naozaj velmi" ; line "that it really"
	cont "veri." ; cont "trusts you."
	done

GoldenrodHappinessRatingText_SortOfHappy:
	text "Je k tebe pria-" ; text "It's friendly to-"
	line "telsky. Vypada" ; line "ward you. It looks"
	cont "stastny." ; cont "sort of happy."
	done

GoldenrodHappinessRatingText_QuiteCute:
	text "Je celkom zlaty." ; text "It's quite cute."
	done

GoldenrodHappinessRatingText_NotUsedToYou:
	text "Mal by si sa onho" ; text "You should treat"
	line "lepsie starat." ; line "it better. It's"
	cont "Nie je na teba" ; cont "not used to you."
	cont "zvyknuty."
	done

GoldenrodHappinessRatingText_LooksMean:
	text "Nema ta vobec rad." ; text "It doesn't seem to"
	line "Vypada nedover-" ; line "like you at all."
	cont "civo." ; cont "It looks mean."
	done

GoldenrodHappinessRaterPokefanMText:
	text "Stale prehravam v" ; text "I keep losing in"
	line "zapasoch a moji" ; line "battles, and my"

	para "#MONi" ; para "#MON end up"
	line "odpadnu…" ; line "fainting…"

	para "Mozno prave preto" ; para "Maybe that's why"
	line "ma nemaju az tak" ; line "my #MON don't"
	cont "radi…" ; cont "like me much…"
	done

GoldenrodHappinessRaterTwinText:
	text "Ked pouzijem pred-" ; text "When I use an item"
	line "met na mojho" ; line "on my #MON, it"
	cont "#MONa, vypada" ; cont "acts really glad!"
	cont "stastny!"
	done

GoldenrodHappinessRater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 3
	warp_event  3,  7, GOLDENROD_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, HappinessRatersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, HappinessRatersHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, HappinessRatersHouseRadio

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterTeacherScript, -1
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterPokefanMScript, -1
	object_event  5,  6, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterTwinScript, -1
