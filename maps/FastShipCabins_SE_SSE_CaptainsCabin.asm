	object_const_def
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_CAPTAIN
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_POKEFAN_M1
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN3
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN4
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_SUPER_NERD1
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_POKEFAN_M2
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_POKEFAN_F
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_SUPER_NERD2

FastShipCabins_SE_SSE_CaptainsCabin_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

SSAquaCaptain:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .LaterTrip
	writetext SSAquaCaptainExhaustingText
	waitbutton
	closetext
	end

.LaterTrip:
	writetext SSAquaCaptainHowDoYouLikeText
	waitbutton
	closetext
	end

SSAquaGranddaughterBefore:
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2, RIGHT
	opentext
	writetext SSAquaGranddaughterCaptainPlayWithMeText
	waitbutton
	closetext
	faceplayer
	opentext
	writetext SSAquaGranddaughterHasToFindGrandpaText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2
	applymovement PLAYER, SSAquaCaptainsCabinWarpsToGrandpasCabinMovement
	moveobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1, 3, 19
	appear FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1
	turnobject PLAYER, UP
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1, UP
	special FadeInQuickly
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, DOWN
	showemote EMOTE_SHOCK, FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, 15
	applymovement FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1, SSAquaGranddaughterEntersCabinMovement
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, RIGHT
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	opentext
	writetext SSAquaGranddaughterWasPlayingMText
	waitbutton
	closetext
	sjump .cont

.PlayerIsFemale:
	opentext
	writetext SSAquaGranddaughterWasPlayingFText
	waitbutton
	closetext
.cont:
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2, DOWN
	applymovement FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, SSAquaGrandpaApproachesPlayerMovement
	opentext
	writetext SSAquaEntertainedGranddaughterText
	promptbutton
	setevent EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_NOOP
	sjump SSAquaMetalCoatAndDocking

SSAquaGrandpa:
	faceplayer
	opentext
	checkevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
	iftrue SSAquaGotMetalCoat
	checkevent EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_2
	iftrue SSAquaFoundGranddaughter
	writetext SSAquaCantFindGranddaughterText
	waitbutton
	closetext
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_NOOP
	end

SSAquaMetalCoatAndDocking:
	writetext SSAquaGrandpaHaveThisText
	promptbutton
	verbosegiveitem METAL_COAT
	iffalse .NoRoom
	setevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
.NoRoom:
	closetext
	waitsfx
	playsound SFX_ELEVATOR_END
	pause 30
	opentext
	writetext SSAquaHasArrivedVermilionText
	waitbutton
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	setevent EVENT_FAST_SHIP_FOUND_GIRL
	closetext
	end

SSAquaFoundGranddaughter:
	writetext SSAquaGrandpaHaveThisText
	promptbutton
	verbosegiveitem METAL_COAT
	iffalse .NoRoom
	setevent EVENT_GOT_METAL_COAT_FROM_GRANDPA_ON_SS_AQUA
.NoRoom:
	closetext
	end

SSAquaGotMetalCoat:
	writetext SSAquaGrandpaTravellingText
	waitbutton
	closetext
	end

SSAquaGranddaughterAfter:
	faceplayer
	opentext
	writetext SSAquaGranddaughterHadFunText
	waitbutton
	closetext
	end

TrainerPokefanmColin:
	trainer POKEFANM, COLIN, EVENT_BEAT_POKEFANM_COLIN, PokefanmColinSeenText, PokefanmColinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmColinAfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsMegandpeg1:
	trainer TWINS, MEGANDPEG1, EVENT_BEAT_TWINS_MEG_AND_PEG, TwinsMegandpeg1SeenText, TwinsMegandpeg1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsMegandpeg1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsMegandpeg2:
	trainer TWINS, MEGANDPEG2, EVENT_BEAT_TWINS_MEG_AND_PEG, TwinsMegandpeg2SeenText, TwinsMegandpeg2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsMegandpeg2AfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicRodney:
	trainer PSYCHIC_T, RODNEY, EVENT_BEAT_PSYCHIC_RODNEY, PsychicRodneySeenText, PsychicRodneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicRodneyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmJeremy:
	trainer POKEFANM, JEREMY, EVENT_BEAT_POKEFANM_JEREMY, PokefanmJeremySeenText, PokefanmJeremyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmJeremyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanfGeorgia:
	trainer POKEFANF, GEORGIA, EVENT_BEAT_POKEFANF_GEORGIA, PokefanfGeorgiaSeenText, PokefanfGeorgiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanfGeorgiaAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdShawn:
	trainer SUPER_NERD, SHAWN, EVENT_BEAT_SUPER_NERD_SHAWN, SupernerdShawnSeenText, SupernerdShawnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdShawnAfterBattleText
	waitbutton
	closetext
	end

FastShipCaptainsCabinTrashcan:
	jumpstd TrashCanScript

SSAquaCaptainsCabinWarpsToGrandpasCabinMovement:
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

SSAquaGranddaughterEntersCabinMovement:
	step UP
	step UP
	turn_head LEFT
	step_end

SSAquaGrandpaApproachesPlayerMovement:
	step DOWN
	step_end

SSAquaCaptainExhaustingText:
	text "Fuh! Dakujem ti," ; text "Whew! Thanks for"
	line "ze si prisiel." ; line "coming along."

	para "Zabavit to male" ; para "Keeping that lit-"
	line "dievcatko bolo" ; line "tle girl amused"
	cont "vycerpavajuce." ; cont "was exhausting."
	done

SSAquaCaptainHowDoYouLikeText:
	text "Ako sa ti paci" ; text "How do you like"
	line "S.S.AQUA plavba?" ; line "S.S.AQUA's ride?"

	para "Prakticky sa" ; para "She practically"
	line "vznasa na vlnach." ; line "skates across the"
	;cont "waves." ; cont "waves."
	done

SSAquaCantFindGranddaughterText:
	text "Och, ahoj…" ; text "Oh, hello…"

	para "Stale nemozem" ; para "I still can't find"
	line "najst vnucku." ; line "my granddaughter."

	para "Ak je na lodi," ; para "If she's on the"
	line "vsetko je OK." ; line "ship, that's OK."

	para "Je to energicke" ; para "She's an energetic"
	line "dieta, takze prav-" ; line "child, so she may"

	para "depodobne prave" ; para "be bugging some-"
	line "niekoho otravuje." ; line "one. I'm worried…"
	cont "Mam strach…"
	done

SSAquaEntertainedGranddaughterText:
	text "<PLAY_G>, vsak?" ; text "<PLAY_G>, was it?"
	line "Vraj si zabaval" ; line "I heard you enter-"
	cont "moju vnucku." ; cont "tained my grand-"
	;cont "daughter." ; cont "daughter."

	para "Chcem ti za to" ; para "I want to thank"
	line "podakovat." ; line "you for that."
	done

SSAquaGrandpaHaveThisText:
	text "Viem! Vezmi si" ; text "I know! I'd like"
	line "toto!" ; line "you to have this!"
	done

SSAquaGrandpaTravellingText:
	text "Cestujem okolo" ; text "We're traveling"
	line "sveta." ; line "around the world."
	done

SSAquaGranddaughterCaptainPlayWithMeText:
	text "KAPITAN, hraj sa" ; text "CAPTAIN, play with"
	line "so mnou, prosim?" ; line "me, please?"

	para "Nudim sa! Chcem sa" ; para "I'm bored! I want"
	line "este hrat!" ; line "to play more!"
	done

SSAquaGranddaughterHasToFindGrandpaText:
	text "Ahoj! Zahras sa" ; text "Hi! Will you play"
	line "so mnou?" ; line "with me?"

	para "…Och!" ; para "…Oh!"

	para "Dedko sa o mna" ; para "Grandpa's worried"
	line "boji?" ; line "about me?"

	para "Musim ist!" ; para "I have to go!"

	para "Musim ist najst" ; para "I have to go find"
	line "dedka!" ; line "Grandpa!"
	done

SSAquaGranddaughterWasPlayingMText:
	text "Dedko, tu som!" ; text "Grandpa, here I"
	line "Hrala som sa s" ; line "am! I was playing"

	para "KAPITANOM a tymto" ; para "with the CAPTAIN"
	line "chlapcom!" ; line "and this guy!"
	done

SSAquaGranddaughterWasPlayingFText:
	text "Dedko, tu som!" ; text "Grandpa, here I"
	line "Hrala som sa s" ; line "am! I was playing"

	para "KAPITANOM a tymto" ; para "with the CAPTAIN"
	line "dievcatom!" ; line "and this big girl!"
	done

SSAquaGranddaughterHadFunText:
	text "Bola to velka" ; text "I had lots of fun"
	line "zabava!" ; line "playing!"
	done

PokefanmColinSeenText:
	text "Hej, synak! Chces" ; text "Hey, kid! Want to"
	line "zapasit?" ; line "battle with me?"
	done

PokefanmColinBeatenText:
	text "Si silny!" ; text "You're strong!"
	done

PokefanmColinAfterBattleText:
	text "Cestujes sam?" ; text "You're traveling"
	;line "all alone?" ; line "all alone?"

	para "Nestrachuje sa" ; para "Isn't your mom"
	line "tvoja mama?" ; line "worried?"
	done

TwinsMegandpeg1SeenText:
	text "Myslis si, ze som" ; text "You think I'm a"
	line "dieta?" ; line "baby?"
	cont "To nie je fer!" ; cont "That's not fair!"
	done

TwinsMegandpeg1BeatenText:
	text "Och! Prehra!" ; text "Oh! We lost!"
	done

TwinsMegandpeg1AfterBattleText:
	text "Nazyvat nas detmi" ; text "Baby is a rude"
	line "je od teba" ; line "name to call us"
	cont "drze!" ; cont "girls!"
	done

TwinsMegandpeg2SeenText:
	text "Nie som dieta!" ; text "I'm not a baby!"

	para "To nie je pekne" ; para "That's not nice to"
	line "povedat dame!" ; line "say to a lady!"
	done

TwinsMegandpeg2BeatenText:
	text "Och! Prehra!" ; text "Oh! We lost!"
	done

TwinsMegandpeg2AfterBattleText:
	text "Niekedy su deti" ; text "Sometimes, kids"
	line "mudrejsie ako" ; line "are smarter than"
	cont "dospeli!" ; cont "grown-ups!"
	done

PsychicRodneySeenText:
	text "Ssh! Moj mozog" ; text "Ssh! My brain is"
	line "zachytava radio" ; line "picking up radio"
	cont "signaly!" ; cont "signals!"
	done

PsychicRodneyBeatenText:
	text "…Pocujem" ; text "…I hear some-"
	line "nieco!" ; line "thing!"
	done

PsychicRodneyAfterBattleText:
	text "Rozumiem. Pocujes" ; text "I get it. You can"
	line "JOHTO radio na" ; line "hear JOHTO's radio"
	cont "lodi FAST SHIP." ; cont "on the FAST SHIP."
	done

PokefanmJeremySeenText:
	text "Co myslis?" ; text "What do you think?"
	line "Moji #MON" ; line "My #MON are"
	cont "su krasni, ze?" ; cont "beautiful, yes?"
	done

PokefanmJeremyBeatenText:
	text "Och, nie! Moji" ; text "Oh, no! My beauti-"
	line "#MONi!" ; line "ful #MON!"
	done

PokefanmJeremyAfterBattleText:
	text "Musim is do" ; text "I must go to the"
	line "#MON SALONu a ne-" ; line "#MON SALON and"
	cont "chat ich upravit!" ; cont "fix them up nice!"
	done

PokefanfGeorgiaSeenText:
	text "Pojdem na nakupy" ; text "I'm going to shop"
	line "do DEPT.STORE" ; line "at the DEPT.STORE"
	cont "a potom…" ; cont "and then…"
	done

PokefanfGeorgiaBeatenText:
	text "Co som to chcela?" ; text "What was I going"
	;line "to do?" ; line "to do?"
	done

PokefanfGeorgiaAfterBattleText:
	text "Ano! Musim si vy-" ; text "Oh, yes! I have to" 
	line "zdvihnut mojich" ; line "get my #MON out"
	cont "#MONov z"
	cont "DAY-CARE centra!" ; cont "of DAY-CARE!"
	done

SupernerdShawnSeenText:
	text "Ake #" ; text "What kinds of #"
	line "BALLS mas" ; line "BALLS do you have"
	cont "so sebou?" ; cont "with you?"
	done

SupernerdShawnBeatenText:
	text "Pockaj! Nerob to!" ; text "Wait! Stop! Don't!"
	line "Prosim!" ; line "Please!"
	done

SupernerdShawnAfterBattleText:
	text "Mal by si pouzivat" ; text "You should use the"
	line "spravne BALLS" ; line "right BALLS to fit"
	cont "podla situacie." ; cont "the situation."
	done

SSAquaHasArrivedVermilionText:
	text "FAST SHIP S.S.AQUA" ; text "FAST SHIP S.S.AQUA"
	line "dorazila do" ; line "has arrived in"
	cont "VERMILION CITY." ; cont "VERMILION CITY."
	done

FastShipCabins_SE_SSE_CaptainsCabin_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FAST_SHIP_1F, 8
	warp_event  3,  7, FAST_SHIP_1F, 8
	warp_event  2, 19, FAST_SHIP_1F, 9
	warp_event  3, 19, FAST_SHIP_1F, 9
	warp_event  2, 33, FAST_SHIP_1F, 10
	warp_event  3, 33, FAST_SHIP_1F, 10

	def_coord_events

	def_bg_events
	bg_event  4, 25, BGEVENT_READ, FastShipCaptainsCabinTrashcan

	def_object_events
	object_event  3, 25, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SSAquaCaptain, -1
	object_event  2, 17, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SSAquaGrandpa, EVENT_FAST_SHIP_CABINS_SE_SSE_GENTLEMAN
	object_event  3, 17, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAquaGranddaughterAfter, EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_1
	object_event  2, 25, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAquaGranddaughterBefore, EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_2
	object_event  5,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerPokefanmColin, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsMegandpeg1, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsMegandpeg2, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  5,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerPsychicRodney, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmJeremy, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  5,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPokefanfGeorgia, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  1, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSupernerdShawn, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
