	object_const_def
	const DRAGONSDENB1F_POKE_BALL1
	const DRAGONSDENB1F_CLAIR
	const DRAGONSDENB1F_SILVER
	const DRAGONSDENB1F_COOLTRAINER_M
	const DRAGONSDENB1F_COOLTRAINER_F
	const DRAGONSDENB1F_TWIN1
	const DRAGONSDENB1F_TWIN2
	const DRAGONSDENB1F_POKE_BALL2
	const DRAGONSDENB1F_POKE_BALL3

DragonsDenB1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DRAGONSDENB1F_NOTHING
	scene_script .DummyScene1 ; SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .CheckSilver

.DummyScene0:
	end

.DummyScene1:
	end

.CheckSilver:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .CheckDay
	disappear DRAGONSDENB1F_SILVER
	endcallback

.CheckDay:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .AppearSilver
	ifequal THURSDAY, .AppearSilver
	disappear DRAGONSDENB1F_SILVER
	endcallback

.AppearSilver:
	appear DRAGONSDENB1F_SILVER
	endcallback

DragonsDenB1F_ClairScene:
; BUG: Clair can give TM24 Dragonbreath twice (see docs/bugs_and_glitches.md)
	appear DRAGONSDENB1F_CLAIR
	opentext
	writetext ClairText_Wait
	pause 30
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, LEFT
	playmusic MUSIC_CLAIR
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksToYou
	opentext
	writetext ClairText_GiveDragonbreathDragonDen
	promptbutton
	giveitem TM_DRAGONBREATH
	iffalse .BagFull
	getitemname STRING_BUFFER_3, TM_DRAGONBREATH
	writetext Text_ReceivedTM24
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext ClairText_DescribeDragonbreathDragonDen
	promptbutton
	writetext ClairText_WhatsTheMatterDragonDen
	waitbutton
	closetext
	sjump .FinishClair

.BagFull:
	writetext ClairText_NoRoom
	waitbutton
	closetext
.FinishClair:
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksAway
	special FadeOutMusic
	pause 30
	special RestartMapMusic
	disappear DRAGONSDENB1F_CLAIR
	setscene SCENE_DRAGONSDENB1F_NOTHING
	end

TrainerCooltrainermDarin:
	trainer COOLTRAINERM, DARIN, EVENT_BEAT_COOLTRAINERM_DARIN, CooltrainermDarinSeenText, CooltrainermDarinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermDarinAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfCara:
	trainer COOLTRAINERF, CARA, EVENT_BEAT_COOLTRAINERF_CARA, CooltrainerfCaraSeenText, CooltrainerfCaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfCaraAfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsLeaandpia1:
	trainer TWINS, LEAANDPIA1, EVENT_BEAT_TWINS_LEA_AND_PIA, TwinsLeaandpia1SeenText, TwinsLeaandpia1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsLeaandpia1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsLeaandpia2:
	trainer TWINS, LEAANDPIA1, EVENT_BEAT_TWINS_LEA_AND_PIA, TwinsLeaandpia2SeenText, TwinsLeaandpia2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsLeaandpia2AfterBattleText
	waitbutton
	closetext
	end

DragonsDenB1FDragonFangScript:
; This whole script is written out rather than as an itemball
; because it's left over from the GS event.
	giveitem DRAGON_FANG
	iffalse .BagFull
	disappear DRAGONSDENB1F_POKE_BALL1
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	end

.BagFull:
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	promptbutton
	writetext Text_NoRoomForDragonFang
	waitbutton
	closetext
	end

DragonsDenB1FSilverScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .SilverTalkAgain
	writetext SilverText_Training1
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special RestartMapMusic
	end

.SilverTalkAgain:
	writetext SilverText_Training2
	waitbutton
	closetext
	special RestartMapMusic
	end

DragonShrineSignpost:
	jumptext DragonShrineSignpostText

DragonsDenB1FCalcium:
	itemball CALCIUM

DragonsDenB1FMaxElixer:
	itemball MAX_ELIXER

DragonsDenB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_REVIVE

DragonsDenB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION

DragonsDenB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXER

MovementDragonsDen_ClairWalksToYou:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

MovementDragonsDen_ClairWalksAway:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

ClairText_Wait:
	text "Pockaj!" ; text "Wait!"
	done

ClairText_GiveDragonbreathDragonDen:
	text "CLAIR: Je mi to" ; text "CLAIR: I'm sorry"
	line "luto." ; line "about this."

	para "Prosim, vezmi si" ; para "Here, take this as"
	line "to ako ospravedl-." ; line "my apology."
	cont "nenie."
	done

Text_ReceivedTM24:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "TM24."
	done

ClairText_DescribeDragonbreathDragonDen:
	text "Obsahuje to" ; text "That contains"
	line "DRAGONBREATH." ; line "DRAGONBREATH."

	para "Nie, nema to nic" ; para "No, it doesn't"
	line "docinenia s mojim" ; line "have anything to"
	cont "dychom." ; cont "do with my breath."

	para "Ak to nechces," ; para "If you don't want"
	line "nemusis si to zo-" ; line "it, you don't have"
	cont "brat." ; cont "to take it."
	done

ClairText_NoRoom:
	text "Oh? Nemas na to" ; text "Oh? You don't have"
	line "ziadne miesto." ; line "any room for this."

	para "Idem spat do GYMu," ; para "I'm going back to"
	line "takze si sprav" ; line "the GYM, so make"

	para "miesto, a prid tam" ; para "room, then come"
	line "potom za mnou." ; line "see me there."
	done

ClairText_WhatsTheMatterDragonDen:
	text "CLAIR: Co sa deje?" ; text "CLAIR: What's the"
	line "Chystas sa do" ; line "matter? Aren't you"

	para "#MON LEAGUE?" ; para "going on to the"
	;line "?" ; line "#MON LEAGUE?"

	para "Vies ako sa tam" ; para "Do you know how to"
	line "mas dostat?" ; line "get there?"

	para "Odtialto chod do" ; para "From here, go to"
	line "NEW BARK TOWN." ; line "NEW BARK TOWN."

	para "Potom SURFuj na" ; para "Then SURF east to"
	line "vychod do" ; line "#MON LEAGUE."
	cont "#MON LEAGUE."

	para "Cesta tam je velmi" ; para "The route there is"
	line "narocna." ; line "very tough."

	para "Neopovaz sa pre-" ; para "Don't you dare"
	line "hrat v #-" ; line "lose at the #-"
	cont "MON LEAGUE!" ; cont "MON LEAGUE!"

	para "Ak prehras, budem" ; para "If you do, I'll"
	line "sa citit este" ; line "feel even worse"

	para "horsie, ze som s" ; para "about having lost"
	line "tebou prehrala!" ; line "to you!"

	para "Daj zo seba maxi-" ; para "Give it everything"
	line "mum." ; line "you've got."
	done

DragonShrineSignpostText:
	text "DRAGON SHRINE" ; text "DRAGON SHRINE"

	para "Svatyna na pocest" ; para "A shrine honoring"
	line "dracich #MONov" ; line "the dragon #MON"

	para "ktori ziju v" ; para "said to have lived"
	line "DRAGON'S DEN." ; line "in DRAGON'S DEN."
	done

SilverText_Training1:
	text "…"
	line "Coze? <PLAYER>?" ; line "What? <PLAYER>?"

	para "…Nie, nebudeme" ; para "…No, I won't"
	line "teraz zapasit…" ; line "battle you now…"

	para "Moji #MONi nie" ; para "My #MON aren't"
	line "su pripraveni." ; line "ready to beat you."

	para "Nemozem na nich" ; para "I can't push them"
	line "teraz tlacit." ; line "too hard now."

	para "Musim byt discip-" ; para "I have to be dis-"
	line "linovany a stanem" ; line "ciplined to become"

	para "sa najvacsim #-" ; para "the greatest #-"
	line "MON trenerom…" ; line "MON trainer…"
	done

SilverText_Training2:
	text "…"

	para "Fuh…" ; para "Whew…"

	para "Nauc sa nestat" ; para "Learn to stay out"
	line "mi v ceste…" ; line "of my way…"
	done

CooltrainermDarinSeenText:
	text "Ty! Ako sa opova-" ; text "You! How dare you"
	line "zujes vstupit" ; line "enter uninvited!"
	cont "nepozvany!"
	done

CooltrainermDarinBeatenText:
	text "S-silny!" ; text "S-strong!"
	done

CooltrainermDarinAfterBattleText:
	text "SVATYNA je domov" ; text "The SHRINE ahead"
	line "pre nasho" ; line "is home to the"

	para "MASTERa nasho" ; para "MASTER of our"
	line "dracieho klanu." ; line "dragon-user clan."

	para "Nemozes vstupit" ; para "You're not allowed"
	line "dnu!" ; line "to just go in!"
	done

CooltrainerfCaraSeenText:
	text "Nemal by si tu" ; text "You shouldn't be"
	line "byt!" ; line "in here!"
	done

CooltrainerfCaraBeatenText:
	text "Och, kelu, prehra!" ; text "Oh yikes, I lost!"
	done

CooltrainerfCaraAfterBattleText:
	text "Zanedlho dostanem" ; text "Soon I'm going to"
	line "povolenie od nasho" ; line "get permission"

	para "MASTERa na pouzi-" ; para "from our MASTER to"
	line "vanie drakov." ; line "use dragons."

	para "Ked ho budem mat," ; para "When I do, I'm"
	line "stanem sa uznava-" ; line "going to become an"

	para "nym dracim trene-" ; para "admirable dragon"
	line "rom a ziskam" ; line "trainer and gain"

	para "MASTERovo" ; para "our MASTER's"
	line "uznanie." ; line "approval."
	done

TwinsLeaandpia1SeenText:
	text "Je to cudak, kto-" ; text "It's a stranger we"
	line "reho nepozname." ; line "don't know."
	done

TwinsLeaandpia1BeatenText:
	text "Auauau." ; text "Ouchies."
	done

TwinsLeaandpia1AfterBattleText:
	text "Bolo to ako zapa-" ; text "It was like having"
	line "sit s LANCEom." ; line "to battle LANCE."
	done

TwinsLeaandpia2SeenText:
	text "Kto si?" ; text "Who are you?"
	done

TwinsLeaandpia2BeatenText:
	text "Si kruty." ; text "Meanie."
	done

TwinsLeaandpia2AfterBattleText:
	text "Nabonzujeme ta." ; text "We'll tell on you."

	para "MASTER sa na teba" ; para "MASTER will be"
	line "bude hnevat." ; line "angry with you."
	done

Text_FoundDragonFang:
	text "<PLAYER> nasiel" ; text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Text_NoRoomForDragonFang:
	text "Ale <PLAYER> ne-" ; text "But <PLAYER> can't"
	line "moze niest viacej" ; line "carry any more"
	cont "veci." ; cont "items."
	done

DragonsDenB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3
	warp_event 19, 29, DRAGON_SHRINE, 1

	def_coord_events
	coord_event 19, 30, SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM, DragonsDenB1F_ClairScene

	def_bg_events
	bg_event 18, 24, BGEVENT_READ, DragonShrineSignpost
	bg_event 33, 29, BGEVENT_ITEM, DragonsDenB1FHiddenRevive
	bg_event 21, 17, BGEVENT_ITEM, DragonsDenB1FHiddenMaxPotion
	bg_event 31, 15, BGEVENT_ITEM, DragonsDenB1FHiddenMaxElixer

	def_object_events
	object_event 35, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FDragonFangScript, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG
	object_event 14, 30, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGONS_DEN_CLAIR
	object_event 20, 23, SPRITE_SILVER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FSilverScript, EVENT_RIVAL_DRAGONS_DEN
	object_event 20,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermDarin, -1
	object_event  8,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfCara, -1
	object_event  4, 17, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsLeaandpia1, -1
	object_event  4, 18, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsLeaandpia2, -1
	object_event 30,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FCalcium, EVENT_DRAGONS_DEN_B1F_CALCIUM
	object_event  5, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FMaxElixer, EVENT_DRAGONS_DEN_B1F_MAX_ELIXER
