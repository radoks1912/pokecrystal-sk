	object_const_def
	const CELADONPOKECENTER1F_NURSE
	const CELADONPOKECENTER1F_GENTLEMAN
	const CELADONPOKECENTER1F_PHARMACIST
	const CELADONPOKECENTER1F_COOLTRAINER_F
	const CELADONPOKECENTER1F_EUSINE

CeladonPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CeladonPokecenter1FGentlemanScript:
	jumpstd HappinessCheckScript

CeladonPokecenter1FCooltrainerFScript:
	jumptextfaceplayer CeladonPokecenter1FCooltrainerFText

CeladonPokecenter1FPharmacistScript:
	jumptextfaceplayer CeladonPokecenter1FPharmacistText

CeladonEusine:
	faceplayer
	opentext
	writetext CeladonEusineText1
	promptbutton
	setval SUICUNE
	special MonCheck
	iffalse .NoSuicune
	special BeastsCheck
	iftrue .HoOh
	writetext NoBeastsText
	waitbutton
.NoSuicune:
	closetext
	end

.HoOh:
	writetext EusineLeavesCeladonText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .Location1
	applymovement CELADONPOKECENTER1F_EUSINE, .Movement1
	sjump .Continue

.Location1:
	applymovement CELADONPOKECENTER1F_EUSINE, .Movement2
.Continue:
	disappear CELADONPOKECENTER1F_EUSINE
	playsound SFX_EXIT_BUILDING
	waitsfx
	end

.Movement2:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

.Movement1:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

CeladonPokecenter1FCooltrainerFText:
	text "ERIKA je majster" ; text "ERIKA is a master"
	line "travnatych #MON." ; line "of grass #MON."

	para "Doplatis na to," ; para "She'll make you"
	line "ak si nebudes" ; line "pay if you don't"
	cont "davat pozor." ; cont "watch yourself."
	done

CeladonPokecenter1FPharmacistText:
	text "TEAM ROCKET" ; text "TEAM ROCKET's"
	line "ukryt je v" ; line "hideout is in the"

	para "podzemi" ; para "basement of the"
	line "GAME CORNERu." ; line "GAME CORNER."

	para "Ach pockaj. To" ; para "Oh, wait. That was"
	line "bolo pred 3 rokmi." ; line "three years ago."
	done

CeladonEusineText1:
	text "EUSINE: Ahoj!" ; text "EUSINE: Hi!"

	para "Som na navsteve" ; para "I'm back visiting"
	line "rodneho mesta." ;  line "my hometown."

	para "Uz je to nejaky" ; para "It's been quite a"
	line "ten piatok." ; line "while."
	done

EusineLeavesCeladonText:
	text "<PLAYER>, pocul" ; text "<PLAYER>, have you"
	line "si o tom?" ; line "heard?"

	para "Objavili sa" ; para "There have been"
	line "cerstve spravy o" ; line "fresh rumors of a"

	para "duhovo sfarbenom" ; para "rainbow-colored"
	line "#MONovi" ; line "#MON appearing"
	cont "v TIN TOWER." ; cont "at TIN TOWER."

	para "Akurat idem z" ; para "I've just had my"
	line "POKEMON CENTRA a" ; line "party healed, so"

	para "mierim do" ; para "now I'm headed to"
	line "ECRUTEAK." ; line "ECRUTEAK."

	para "Vidime sa tam," ; para "I'll be seeing"
	line "<PLAYER>!" ; line "you, <PLAYER>!"
	done

NoBeastsText:
	text "A mimochodom," ; text "Oh, by the way,"
	line "<PLAYER>." ; line "<PLAYER>."

	para "Chytil si" ; para "Have you caught"
	line "legendarneho" ; line "the legendary"

	para "#MON RAIKOU a" ; para "#MON RAIKOU and"
	line "ENTEI?" ; line "ENTEI?"

	para "<……><……><……>"

	para "Okej…" ; para "Okay…"

	para "Ked dostanes aspon" ; para "If you catch even"
	line "jedneho, dufam," ; line "one, I hope that"
	cont "ze mi to zdelis." ; cont "you'll inform me."

	para "Spolieham sa na" ; para "I'm counting on"
	line "teba, <PLAYER>!" ; line "you, <PLAYER>!"
	done

CeladonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 5
	warp_event  4,  7, CELADON_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FGentlemanScript, -1
	object_event  0,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FPharmacistScript, -1
	object_event  8,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FCooltrainerFScript, -1
	object_event  4,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonEusine, EVENT_SET_WHEN_FOUGHT_HO_OH
