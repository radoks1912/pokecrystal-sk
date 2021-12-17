	object_const_def
	const DANCETHEATRE_KIMONO_GIRL1
	const DANCETHEATRE_KIMONO_GIRL2
	const DANCETHEATRE_KIMONO_GIRL3
	const DANCETHEATRE_KIMONO_GIRL4
	const DANCETHEATRE_KIMONO_GIRL5
	const DANCETHEATRE_GENTLEMAN
	const DANCETHEATRE_RHYDON
	const DANCETHEATRE_COOLTRAINER_M
	const DANCETHEATRE_GRANNY

DanceTheatre_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoGirlNaoko:
	trainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, KimonoGirlNaokoSeenText, KimonoGirlNaokoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlSayo:
	trainer KIMONO_GIRL, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, KimonoGirlSayoSeenText, KimonoGirlSayoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, KimonoGirlZukiSeenText, KimonoGirlZukiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, KimonoGirlKuniSeenText, KimonoGirlKuniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, KimonoGirlMikiSeenText, KimonoGirlMikiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetext
	end

DanceTheaterSurfGuy:
	faceplayer
	opentext
	writetext SurfGuyNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_HM03_SURF
	iftrue SurfGuyAlreadyGaveSurf
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse .KimonoGirlsUndefeated
	sjump .GetSurf

.KimonoGirlsUndefeated:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	writetext SurfGuyLadGiftText
	waitbutton
	closetext
	end

.PlayerIsFemale:
	writetext SurfGuyLassieGiftText
	waitbutton
	closetext
	end

.GetSurf:
	writetext SurfGuyLikeADanceText
	promptbutton
	verbosegiveitem HM_SURF
	setevent EVENT_GOT_HM03_SURF
	writetext SurfGuySurfExplanationText
	waitbutton
	closetext
	end

SurfGuyAlreadyGaveSurf:
	writetext SurfGuyElegantKimonoGirlsText
	waitbutton
	closetext
	end

DanceTheaterRhydon:
	opentext
	writetext RhydonText
	cry RHYDON
	waitbutton
	closetext
	end

DanceTheatreCooltrainerMScript:
	jumptextfaceplayer DanceTheatreCooltrainerMText

DanceTheatreGrannyScript:
	jumptextfaceplayer DanceTheatreGrannyText

DanceTheatreFancyPanel:
	jumptext DanceTheatreFancyPanelText

KimonoGirlNaokoSeenText:
	text "Mas uzasnych" ; text "You have lovely"
	line "#MONov. Ukazes" ; line "#MON. May I see"
	cont "mi ich v zapase?" ; cont "them in battle?"
	done

KimonoGirlNaokoBeatenText:
	text "Och, si velmi" ; text "Oh, you are very"
	line "silny." ; line "strong."
	done

KimonoGirlNaokoAfterBattleText:
	text "Vyborny zapas!" ; text "I enjoyed that"
	line "Chcela by som ta" ; line "bout. I would like"
	cont "vidiet znova."  ;cont "to see you again."
	done

KimonoGirlSayoSeenText:
	text "Vzdy s mojimi" ; text "I always dance"
	line "#MONmi tancujem." ; line "with my #MON."

	para "Ale samozrejme aj" ; para "Of course, I also"
	line "trenujeme." ; line "train them."
	done

KimonoGirlSayoBeatenText:
	text "Och, tak tesne!" ; text "Oh, so close!"
	line "Skoro som ta mala." ; line "I almost had you."
	done

KimonoGirlSayoAfterBattleText:
	text "Rytmus je dolezity" ; text "Rhythm is impor-"
	line "pre tanec i samo-" ; line "tant for both"

	para "tnych #MONov." ; para "dancing and #-"
	;line "MON." ; line "MON."
	done

KimonoGirlZukiSeenText:
	text "Mam krasnu baretku" ; text "Isn't my barrette"
	line "vsak?" ; line "pretty?"

	para "Oh. #MON" ; para "Oh. A #MON"
	line "zapas?" ; line "battle?"
	done

KimonoGirlZukiBeatenText:
	text "Uz nemam dalsich" ; text "I don't have any"
	line "#MONov…" ; line "#MON left…"
	done

KimonoGirlZukiAfterBattleText:
	text "Davam si do bare-" ; text "I put a different"
	line "tky kazdy mesiac" ; line "flower in my bar-"
	cont "inu kvetinu." ; cont "rette every month."
	done

KimonoGirlKuniSeenText:
	text "Oh, si tak zlaty" ; text "Oh, you're a cute"
	line "trener. Chces" ; line "trainer. Would you"
	cont "zapasit?" ; cont "like to battle?"
	done

KimonoGirlKuniBeatenText:
	text "Si silnejsi ako" ; text "You're stronger"
	line "vypadas." ; line "than you look."
	done

KimonoGirlKuniAfterBattleText:
	text "Vela som trenoval," ; text "I trained a lot,"
	line "tak som si myslel," ; line "so I thought I was"

	para "ze som dobry tre-" ; para "a capable trainer."
	line "ner. Bohuzial nie." ; line "I guess I'm not."
	done

KimonoGirlMikiSeenText:
	text "Paci sa ti moj" ; text "Do you like my"
	line "tanec? Som dobra" ; line "dancing? I'm good"
	cont "aj v #MONoch." ; cont "at #MON too."
	done

KimonoGirlMikiBeatenText:
	text "Och, si dobry v" ; text "Ooh, you're good"
	line "#MONoch." ; line "at #MON too."
	done

KimonoGirlMikiAfterBattleText:
	text "Mohla by som tan-" ; text "I can keep dancing"
	line "covat stale, pre-" ; line "because there are"

	para "toze to ludi" ; para "people who enjoy"
	line "bavi." ; line "what I do."

	para "Moji #MONi ma" ; para "My #MON keep my"
	line "drzia nad vodou." ; line "spirits up too."
	done

SurfGuyNeverLeftAScratchText:
	text "KIMONO ZENY su" ; text "Not only are the"
	line "nielen skvele ta-" ; line "KIMONO GIRLS great"

	para "necnice, ale aj" ; para "dancers, they're"
	line "schopne trenerky." ; line "also skilled at"
	;cont "#MON." ; cont "#MON."

	para "Vzdy ich vyzvem," ; para "I always challenge"
	line "ale nikdy im" ; line "them, but I've"

	para "neurobim ani len" ; para "never even left a"
	line "skrabanec…" ; line "scratch…"
	done

SurfGuyLadGiftText:
	text "Suhaj! Ak porazis" ; text "Lad! If you can"
	line "vsetky KIMONO ZENY" ; line "defeat all the"

	para "dostanes odo mna" ; para "KIMONO GIRLS, I'll"
	line "darcek." ; line "give you a gift."
	done

SurfGuyLassieGiftText:
	text "Lassie, ak porazis" ; text "Lassie, if you can"
	line "vsetky KIMONO ZENY" ; line "defeat all the"

	para "dostanes odo mna" ; para "KIMONO GIRLS, I'll"
	line "darcek." ; line "give you a gift."
	done

SurfGuyLikeADanceText:
	text "Sposob tvojho za-" ; text "The way you bat-"
	line "pasenia bol ako" ; line "tled, it was like"
	cont "pozeranie tanca." ; cont "watching a dance."

	para "Bola to vzacna" ; para "It was a rare"
	line "chvilka!" ; line "treat to see!"

	para "Chcem aby si si" ; para "I want you to have"
	line "vzal toto --" ; line "this. Don't worry"
	cont "--tu mas!" ; cont "--take it!"
	done

SurfGuySurfExplanationText:
	text "To je SURF." ; text "That's SURF."

	para "Pomocou neho" ; para "It's a move that"
	line "dokazes plavat" ; line "lets #MON swim"
	cont "po vode." ; cont "across water."
	done

SurfGuyElegantKimonoGirlsText:
	text "Kiezby moji" ; text "I wish my #MON"
	line "#MONi boli tak" ; line "were as elegant as"
	cont "elegantni ako" ; cont "the KIMONO GIRLS…"
	cont "KIMONO ZENY"
	done

RhydonText:
	text "RHYDON: Gugooh" ; text "RHYDON: Gugooh"
	line "gugogooh!" ; line "gugogooh!"
	done

DanceTheatreCooltrainerMText:
	text "Ten muz je vzdy so" ; text "That man's always"
	line "svojim RHYDONom." ; line "with his RHYDON."

	para "Tvrdi ze chce" ; para "Says he wants a"
	line "#MON ktory" ; line "#MON that can"
	cont "SURFuje a tancuje." ; cont "SURF and dance."

	para "Snazi sa mat" ; para "Is he trying to"
	line "#MONa na syn-" ; line "make a synchro-"
	cont "chronizovane" ; cont "nized swimming"
	cont "plavanie?" ; cont "#MON?"
	done

DanceTheatreGrannyText:
	text "KIMONO ZENY su" ; text "The KIMONO GIRLS"
	line "prekrasne…" ; line "are so beautiful…"

	para "Ale musia podstu-" ; para "But they have to"
	line "povat narocny" ; line "go through rigor-"
	cont "trening." ; cont "ous training."

	para "A museli sa naucit" ; para "And they have to"
	line "aj zvyky predtym," ; line "learn to follow"

	para "nez vystupovali na" ; para "customs before ap-"
	line "verejnosti." ; line "pearing in public."

	para "Ale ak nieco ro-" ; para "But if you love"
	line "bis rad, vsetko je" ; line "something, any-"
	cont "mozne." ; cont "thing is possible."
	done

DanceTheatreFancyPanelText:
	text "Je to luxusny pa-" ; text "It's a fancy panel"
	line "nel ozdobeny" ; line "that's decorated"
	cont "kvetinami." ; cont "with flowers."
	done

DanceTheatre_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ECRUTEAK_CITY, 8
	warp_event  6, 13, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheatreFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheatreFancyPanel

	def_object_events
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1
	object_event  7, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterSurfGuy, -1
	object_event  6,  8, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhydon, -1
	object_event 10, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheatreCooltrainerMScript, -1
	object_event  3,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheatreGrannyScript, -1
