	object_const_def
	const CIANWOODCITY_STANDING_YOUNGSTER
	const CIANWOODCITY_POKEFAN_M
	const CIANWOODCITY_LASS
	const CIANWOODCITY_ROCK1
	const CIANWOODCITY_ROCK2
	const CIANWOODCITY_ROCK3
	const CIANWOODCITY_ROCK4
	const CIANWOODCITY_ROCK5
	const CIANWOODCITY_ROCK6
	const CIANWOODCITY_POKEFAN_F
	const CIANWOODCITY_EUSINE
	const CIANWOODCITY_SUICUNE

CianwoodCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_CIANWOODCITY_NOTHING
	scene_script .DummyScene1 ; SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPointAndSuicune

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPointAndSuicune:
	setflag ENGINE_FLYPOINT_CIANWOOD
	setevent EVENT_EUSINE_IN_BURNED_TOWER
	checkevent EVENT_FOUGHT_EUSINE
	iffalse .Done
	disappear CIANWOODCITY_EUSINE
.Done:
	endcallback

CianwoodCitySuicuneAndEusine:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	playsound SFX_WARP_FROM
	applymovement CIANWOODCITY_SUICUNE, CianwoodCitySuicuneApproachMovement
	turnobject PLAYER, DOWN
	pause 15
	playsound SFX_WARP_FROM
	applymovement CIANWOODCITY_SUICUNE, CianwoodCitySuicuneDepartMovement
	disappear CIANWOODCITY_SUICUNE
	pause 10
	setscene SCENE_CIANWOODCITY_NOTHING
	clearevent EVENT_SAW_SUICUNE_ON_ROUTE_42
	setmapscene ROUTE_42, SCENE_ROUTE42_SUICUNE
	checkevent EVENT_FOUGHT_EUSINE
	iftrue .Done
	setevent EVENT_FOUGHT_EUSINE
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	appear CIANWOODCITY_EUSINE
	applymovement CIANWOODCITY_EUSINE, CianwoodCityEusineApproachMovement
	opentext
	writetext EusineSuicuneText
	waitbutton
	closetext
	winlosstext EusineBeatenText, 0
	setlasttalked CIANWOODCITY_EUSINE
	loadtrainer MYSTICALMAN, EUSINE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	opentext
	writetext EusineAfterText
	waitbutton
	closetext
	applymovement CIANWOODCITY_EUSINE, CianwoodCityEusineDepartMovement
	disappear CIANWOODCITY_EUSINE
	pause 20
	special FadeOutMusic
	playmapmusic
	pause 10
.Done:
	end

CianwoodCityChucksWife:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM02_FLY
	iftrue .GotFly
	writetext ChucksWifeEasierToFlyText
	promptbutton
	checkevent EVENT_BEAT_CHUCK
	iftrue .BeatChuck
	writetext ChucksWifeBeatChuckText
	waitbutton
	closetext
	end

.BeatChuck:
	writetext ChucksWifeGiveHMText
	promptbutton
	verbosegiveitem HM_FLY
	iffalse .Done
	setevent EVENT_GOT_HM02_FLY
	writetext ChucksWifeFlySpeechText
	promptbutton
.GotFly:
	writetext ChucksWifeChubbyText
	waitbutton
.Done:
	closetext
	end

CianwoodCityYoungster:
	jumptextfaceplayer CianwoodCityYoungsterText

CianwoodCityPokefanM:
	jumptextfaceplayer CianwoodCityPokefanMText

CianwoodCityLass:
	jumptextfaceplayer CianwoodCityLassText

CianwoodCityUnusedScript: ; unreferenced
	jumptextfaceplayer CianwoodCityUnusedText

CianwoodCitySign:
	jumptext CianwoodCitySignText

CianwoodGymSign:
	jumptext CianwoodGymSignText

CianwoodPharmacySign:
	jumptext CianwoodPharmacySignText

CianwoodPhotoStudioSign:
	jumptext CianwoodPhotoStudioSignText

CianwoodPokeSeerSign:
	jumptext CianwoodPokeSeerSignText

CianwoodPokecenterSign:
	jumpstd PokecenterSignScript

CianwoodCityRock:
	jumpstd SmashRockScript

CianwoodCityHiddenRevive:
	hiddenitem REVIVE, EVENT_CIANWOOD_CITY_HIDDEN_REVIVE

CianwoodCityHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_CIANWOOD_CITY_HIDDEN_MAX_ETHER

CianwoodCitySuicuneApproachMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step RIGHT
	remove_sliding
	step_end

CianwoodCitySuicuneDepartMovement:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step UP
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	remove_sliding
	step_end

CianwoodCityEusineApproachMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

CianwoodCityEusineDepartMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

ChucksWifeEasierToFlyText:
	text "Prisiel si sem" ; text "You crossed the"
	line "po mori?" ; line "sea to get here?"

	para "To muselo byt" ; para "That must have"
	line "narocne."  ;line "been hard."

	para "Bolo by ovela je-" ; para "It would be much"
	line "dnoduchsie, ak by" ; line "easier if your"

	para "tvoj #MON" ; para "#MON knew how"
	line "vedel LIETAT…" ; line "to FLY…"
	done

ChucksWifeBeatChuckText:
	text "Ale LIETAT nemozes" ; text "But you can't use"
	line "bed odznaku z" ; line "FLY without this"
	cont "tohto mesta." ; cont "city's GYM BADGE."

	para "Ak porazis nasho" ; para "If you beat the"
	line "GYM LEADERa," ; line "GYM LEADER here,"
	cont "prid za mnou." ; cont "come see me."

	para "Dam ti jeden" ; para "I'll have a nice"
	line "darcek." ; line "gift for you."
	done

ChucksWifeGiveHMText:
	text "To je CIANWOODSKY" ; text "That's CIANWOOD's"
	line "ODZNAK!" ; line "GYM BADGE!"

	para "Vezmi si teda" ; para "Then you should"
	line "tento HM." ; line "take this HM."
	done

ChucksWifeFlySpeechText:
	text "Nauc svojho" ; text "Teach FLY to your"
	line "#MON FLY." ; line "#MON."

	para "Budes moct okamzi-" ; para "You will be able"
	line "te LETIET kamkol-" ; line "to FLY instantly"

	para "vek, kde si uz" ; para "to anywhere you "
	line "raz bol." ; line "have visited."
	done

ChucksWifeChubbyText:
	text "Moj manzel s tebou" ; text "My husband lost to"
	line "prehral, takze mu-" ; line "you, so he needs"
	cont "si viac trenovat." ; cont "to train harder."

	para "To je fajn, preto-" ; para "That's good, since"
	line "ze teraz troska" ; line "he was getting a"
	cont "pribral." ; cont "little chubby."
	done

CianwoodCityYoungsterText:
	text "Ak pouzijes FLY,"  ; text "If you use FLY,"
	line "mozes sa hned" ; line "you can get back"

	para "vratit do" ; para "to OLIVINE in-"
	line "OLIVINE." ; line "stantly."
	done

CianwoodCityPokefanMText:
	text "Skaly na severe" ; text "Boulders to the"
	line "mesta sa daju" ; line "north of town can"
	cont "rozdrvit." ; cont "be crushed."

	para "Mozno sa tam cosi" ; para "They may be hiding"
	line "skryva." ; line "something."

	para "#MON moze" ; para "Your #MON could"
	line "pouzit ROCK SMASH" ; line "use ROCK SMASH to"
	cont "na rozdrvenie." ; cont "break them."
	done

CianwoodCityLassText:
	text "CHUCK, GYM" ; text "CHUCK, the GYM"
	line "LEADER, cvici s" ; line "LEADER, spars with"

	para "bojovymi #-" ; para "his fighting #-"
	line "MON." ; line "MON."
	done

CianwoodCityUnusedText:
	text "Je niekolko ostro-" ; text "There are several"
	line "vov medzi tymto" ; line "islands between"
	cont "mestom a OLIVINE." ; cont "here and OLIVINE."

	para "Zije tam udajne" ; para "A mythical sea"
	line "myticky" ; line "creature supposed-"
	cont "#MON." ; cont "ly lives there."
	done

EusineSuicuneText:
	text "EUSINE: Jou," ; text "EUSINE: Yo,"
	line "<PLAYER>." ; line "<PLAYER>."

	para "Nebol to nahodou" ; para "Wasn't that"
	line "SUICUNE?" ; line "SUICUNE just now?"

	para "Zbadal som ho iba" ; para "I only caught a"
	line "nachvilku, ale" ; line "quick glimpse, but"

	para "vypadalo to, akoby" ; para "I thought I saw"
	line "SUICUNE bezal na" ; line "SUICUNE running on"
	cont "vlnach." ; cont "the waves."

	para "SUICUNE je krasny" ; para "SUICUNE is beau-"
	line "a grandiozny." ; line "tiful and grand."

	para "Brazdni mestami" ; para "And it races"
	line "a cestami obrov-" ; line "through towns and"

	para "skymi rychlostami." ; para "roads at simply"
	;line "awesome speeds." ; line "awesome speeds."

	para "Je uzasny…" ; para "It's wonderful…"

	para "Chcem vidiet" ; para "I want to see"
	line "SUICUNE zblizka…" ; line "SUICUNE up close…"

	para "Rozhodol som sa." ; para "I've decided."

	para "Budem s tebou bo-" ; para "I'll battle you as"
	line "jovat, ziskam tak" ; line "a trainer to earn"
	cont "respekt SUICUNEa!" ; cont "SUICUNE's respect!"

	para "Podme, <PLAYER>." ; para "Come on, <PLAYER>."
	line "zapasme!" ; line "Let's battle now!"
	done

EusineBeatenText:
	text "Nerad to priznavam" ; text "I hate to admit"
	line "ale vyhral si." ; line "it, but you win."
	done

EusineAfterText:
	text "Si uzasny," ; text "You're amazing,"
	line "<PLAYER>!" ; line "<PLAYER>!"

	para "Niet divu, ze pri-" ; para "No wonder #MON"
	line "tahujes #MONov." ; line "gravitate to you."

	para "Teraz uz rozumiem." ; para "I get it now."

	para "Budem nadalej" ; para "I'm going to keep"
	line "hladat SUICINEa." ; line "searching for"
	;cont "SUICUNE." ; cont "SUICUNE."

	para "Som si isty, ze sa" ; para "I'm sure we'll see"
	line "este stretneme." ; line "each other again."

	para "Maj sa!" ; para "See you around!"
	done

CianwoodCitySignText:
	text "CIANWOOD CITY" ; text "CIANWOOD CITY"

	para "Pristav obklopeny" ; para "A Port Surrounded"
	line "divokym morom" ; line "by Rough Seas"
	done

CianwoodGymSignText:
	text "CIANWOOD CITY" ; text "CIANWOOD CITY"
	line "#MON GYM" ; line "#MON GYM"

	para "LEADER: CHUCK" ; para "LEADER: CHUCK"

	para "Jeho horuce paste" ; para "His Roaring Fists"
	line "hovoria za vsetko" ; line "Do the Talking"
	done

CianwoodPharmacySignText:
	text "500 rokov" ; text "500 Years of"
	line "tradicie" ; line "Tradition"

	para "CIANWOOD CITY" ; para "CIANWOOD CITY"
	line "LEKAREN" ; line "PHARMACY"

	para "Cakame na vase" ; para "We Await Your"
	line "lekarske otazky" ; line "Medicinal Queries"
	done

CianwoodPhotoStudioSignText:
	text "CIANWOOD CITY" ; text "CIANWOOD CITY"
	line "FOTOSTUDIO" ; line "PHOTO STUDIO"

	para "Urob si snimku" ; para "Take a Snapshot as"
	line "na pamiatku!" ; line "a Keepsake!"
	done

CianwoodPokeSeerSignText:
	text "VESTEC" ; text "THE # SEER"
	;line "AHEAD" ; line "AHEAD"
	done

CianwoodCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 41, MANIAS_HOUSE, 1
	warp_event  8, 43, CIANWOOD_GYM, 1
	warp_event 23, 43, CIANWOOD_POKECENTER_1F, 1
	warp_event 15, 47, CIANWOOD_PHARMACY, 1
	warp_event  9, 31, CIANWOOD_PHOTO_STUDIO, 1
	warp_event 15, 37, CIANWOOD_LUGIA_SPEECH_HOUSE, 1
	warp_event  5, 17, POKE_SEERS_HOUSE, 1

	def_coord_events
	coord_event 11, 16, SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE, CianwoodCitySuicuneAndEusine

	def_bg_events
	bg_event 20, 34, BGEVENT_READ, CianwoodCitySign
	bg_event  7, 45, BGEVENT_READ, CianwoodGymSign
	bg_event 24, 43, BGEVENT_READ, CianwoodPokecenterSign
	bg_event 19, 47, BGEVENT_READ, CianwoodPharmacySign
	bg_event  8, 32, BGEVENT_READ, CianwoodPhotoStudioSign
	bg_event  8, 24, BGEVENT_READ, CianwoodPokeSeerSign
	bg_event  4, 19, BGEVENT_ITEM, CianwoodCityHiddenRevive
	bg_event  5, 29, BGEVENT_ITEM, CianwoodCityHiddenMaxEther

	def_object_events
	object_event 21, 37, SPRITE_STANDING_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodCityYoungster, -1
	object_event 17, 33, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityPokefanM, -1
	object_event 14, 42, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityLass, -1
	object_event  8, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  9, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  4, 25, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  5, 29, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 10, 27, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  4, 19, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 10, 46, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityChucksWife, -1
	object_event 11, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CIANWOOD_CITY_EUSINE
	object_event 10, 14, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
