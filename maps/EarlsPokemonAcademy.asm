	object_const_def
	const EARLSPOKEMONACADEMY_EARL
	const EARLSPOKEMONACADEMY_YOUNGSTER1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID2
	const EARLSPOKEMONACADEMY_YOUNGSTER2
	const EARLSPOKEMONACADEMY_POKEDEX

EarlsPokemonAcademy_MapScripts:
	def_scene_scripts

	def_callbacks

AcademyEarl:
	applymovement EARLSPOKEMONACADEMY_EARL, AcademyEarlSpinMovement
	faceplayer
	opentext
	writetext AcademyEarlIntroText
	yesorno
	iffalse .Part1
	writetext AcademyEarlTeachHowToWinText
	yesorno
	iffalse .Done
.Part1:
	writetext AcademyEarlTeachMoreText
	yesorno
	iffalse .Done
	writetext AcademyEarlTeachHowToRaiseWellText
	waitbutton
	closetext
	end

.Done:
	writetext AcademyEarlNoMoreToTeachText
	waitbutton
	closetext
	end

EarlsPokemonAcademyYoungster1Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster1Text

EarlsPokemonAcademyGameboyKid1Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid1Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID1, DOWN
	end

EarlsPokemonAcademyGameboyKid2Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid2Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID2, DOWN
	end

EarlsPokemonAcademyYoungster2Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster2Text

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "PSN@"
	db "PAR@"
	db "SLP@"
	db "BRN@"
	db "FRZ@"
	db "QUIT@"

AcademyNotebook:
	opentext
	writetext AcademyNotebookText
	yesorno
	iffalse .Done
	writetext AcademyNotebookText1
	yesorno
	iffalse .Done
	writetext AcademyNotebookText2
	yesorno
	iffalse .Done
	writetext AcademyNotebookText3
	waitbutton
.Done:
	closetext
	end

AcademyStickerMachine: ; unreferenced
	jumptext AcademyStickerMachineText

AcademyBookshelf:
	jumpstd DifficultBookshelfScript

AcademyEarlSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

AcademyEarlIntroText:
	text "EARL, som!" ; text "EARL, I am!"

	para "Uzasni su" ; para "Wonderful are"
	line "#MONi, ano!" ; line "#MON, yes!"

	para "Naucit vas ako" ; para "Teach you I will"
	line "byt lepsi" ; line "to be a better"
	cont "trener!" ; cont "trainer!"

	para "Co chces vediet?" ; para "What you want to"
	line "Vitazom chces" ; line "know? Want to be"
	cont "byt ty?" ; cont "a winner is you?"
	done

AcademyEarlTeachHowToWinText:
	text "Dobre! Naucit ta," ; text "Good! Teach you,"
	line "ja ano!" ; line "I will!"

	para "V zapase, #MON" ; para "In battle, #MON"
	line "navrchu zoznamu" ; line "top on list jump"
	cont "ide prvy!" ; cont "out first!"

	para "Zmenit poradie" ; para "Change order in"
	line "listu, mozno byt" ; line "list, make battle"
	cont "zapas jednoduchy!" ; cont "easy, maybe!"

	para "Viac pocut odo" ; para "More from me you"
	line "mna chcet?" ; line "want to hear?"
	done

AcademyEarlTeachMoreText:
	text "Chciet vediet ako" ; text "So, want to know"
	line "vychovat spravne" ; line "how to raise"
	cont "#MON?" ; cont "#MON well?"
	done

AcademyEarlTeachHowToRaiseWellText:
	text "Fajn! Naucit ta," ; text "Fine! Teach you,"
	line "ja ano!" ; line "I will!"

	para "Ak #MON byt" ; para "If #MON come"
	line "na bojisku," ; line "out in battle even"

	para "EXP. body" ; para "briefly, some EXP."
	line "ziska." ; line "Points it gets."

	para "Navrch dat slabeho" ; para "At top of list put"
	line "#MONa." ; line "weak #MON."

	para "Vymena v zapase," ; para "Switch in battle"
	line "rychlo !" ; line "quick!"

	para "Takto slaby" ; para "This way, weak"
	line "#MON stat sa" ; line "#MON strong"
	cont "silny!" ; cont "become!"
	done

AcademyEarlNoMoreToTeachText:
	text "Oh! Mudry student" ; text "Oh! Smart student"
	line "ty byt! Nic viac" ; line "you are! Nothing"
	cont "naucit nemozno!" ; cont "more do I teach!"

	para "Dobry na #MON" ; para "Good to #MON"
	line "musiet byt!" ; line "you must be!"
	done

EarlsPokemonAcademyYoungster1Text:
	text "Robim si poznamky" ; text "I'm taking notes"
	line "z tejto hodiny." ; line "of the teacher's"
	;cont "lecture." ; cont "lecture."

	para "Radsej si prepisem" ; para "I'd better copy"
	line "vsetko z tabule." ; line "the stuff on the"
	;cont "blackboard too." ; cont "blackboard too."
	done

EarlsPokemonAcademyGameboyKid1Text:
	text "Vymenil som naj" ; text "I traded my best"
	line "#MONa chlapovi" ; line "#MON to the"
	cont "vedla mna." ; cont "guy beside me."
	done

EarlsPokemonAcademyGameboyKid2Text:
	text "Huh? The #MON I" ; text "Huh? The #MON I"
	line "just got is hold-" ; line "just got is hold-"
	cont "ing something!" ; cont "ing something!"
	done

EarlsPokemonAcademyYoungster2Text:
	text "#MON drziaci" ; text "A #MON holding"
	line "BERRY sa vylieci" ; line "a BERRY will heal"
	cont "pocas zapasu." ; cont "itself in battle."

	para "#MONi mozu" ; para "Many other items"
	line "drzat mnoho roz-" ; line "can be held by"
	cont "nych predmetov…" ; cont "#MON…"

	para "Je narocne robit" ; para "It sure is tough"
	line "si poznamky…" ; line "taking notes…"
	done

AcademyBlackboardText:
	text "Tabula popisuje" ; text "The blackboard"
	line "#MON status" ; line "describes #MON"

	para "zmeny v zapase." ; para "status changes in"
	;line "battle." ; line "battle."
	done

AcademyBlackboardText2: ; unreferenced
	text "Read which topic?"
	done

AcademyPoisonText:
	text "Otraveny #MON" ; text "If poisoned, a"
	line "postupne straca" ; line "#MON steadily"
	cont "HP." ; cont "loses HP."

	para "Jed ucinkuje aj" ; para "Poison lingers"
	line "po zapase" ; line "after the battle,"

	para "HP sa znizuje," ; para "and HP is lost as"
	line "ako kracas." ; line "you walk."

	para "Na vyliecenie" ; para "To cure it, use an"
	line "pouzi ANTIDOTE." ; line "ANTIDOTE."
	done

AcademyParalysisText:
	text "Paralyza znizuje" ; text "Paralysis reduces"
	line "rychlost a moze" ; line "speed and may"
	cont "obmedzit utok." ; cont "prevent movement."

	para "Zostane aj po" ; para "It remains after"
	line "zapase, takze po-" ; line "battle, so use"
	cont "uzi PARLYZ HEAL." ; cont "a PARLYZ HEAL."
	done

AcademySleepText:
	text "V spanku tvoj" ; text "If asleep, your"
	line "#MON nemoze" ; line "#MON can't make"
	cont "utocit." ; cont "a move."

	para "Spiaci #MON" ; para "A sleeping #MON"
	line "sa po zapase sam" ; line "doesn't wake up"
	cont "neprebudi." ; cont "after battle."

	para "Zobud ho s" ; para "Wake it up with"
	line "AWAKENINGom." ; line "an AWAKENING."
	done

AcademyBurnText:
	text "Popalenina znizuje" ; text "A burn steadily"
	line "HP." ; line "consumes HP."

	para "Takisto znizuje" ; para "It also reduces"
	line "utocnu silu." ; line "attack power."

	para "Popalenina zostava" ; para "A burn lingers"
	line "i po zapase." ; line "after battle."

	para "Vyliecit sa da s" ; para "Use a BURN HEAL as"
	line "BURN HEAL." ; line "the cure."
	done

AcademyFreezeText:
	text "Ak tvoj #MON" ; text "If your #MON is"
	line "zamrzne, nemoze" ;  line "frozen, it can't"
	cont "nic robit." ; cont "do a thing."

	para "Zostane zamrznuty" ; para "It remains frozen"
	line "aj po zapase." ; line "after battle."

	para "Rozpust ho pomocou" ; para "Thaw it out with"
	line "ICE HEAL." ; line "an ICE HEAL."
	done

AcademyNotebookText:
	text "Je to zapisnik" ; text "It's this kid's"
	line "chlapca…" ; line "notebook…"

	para "Chytaj #MONov" ; para "Catch #MON"
	line "pomocou # BALLS." ; line "using # BALLS."

	para "Mozes mat v parte" ; para "Up to six can be"
	line "az siestich." ; line "in your party."

	para "Citat dalej?" ; para "Keep reading?"
	done

AcademyNotebookText1:
	text "Pred hodenim" ; text "Before throwing a"
	line "# BALL najprv" ; line "# BALL, weaken"
	cont "oslab ciel." ; cont "the target first."

	para "Otraveny alebo" ; para "A poisoned or"
	line "spaleny #MON" ; line "burned #MON is"
	cont "sa lepsie chyti." ; cont "easier to catch."

	para "Citat dalej?" ; para "Keep reading?"
	done

AcademyNotebookText2:
	text "Niektore utoky" ; text "Some moves may"
	line "sposobia zmatenie." ; line "cause confusion."

	para "Zmateny #MON" ; para "Confusion may make"
	line "moze sam seba" ; line "a #MON attack"
	cont "zranit." ; cont "itself."

	para "Koniec zapasu" ; para "Leaving battle"
	line "ukoncit aj toto" ; line "clears up any"
	cont "zmatenie." ; cont "confusion."

	para "Citat dalej?" ; para "Keep reading?"
	done

AcademyNotebookText3:
	text "Ludia, ktori chy-" ; text "People who catch"
	line "taju a pouzivaju" ; line "and use #MON"

	para "#MON v zapase" ; para "in battle are"
	line "su #MON treneri." ; line "#MON trainers."

	para "Navstevuju GYMy" ; para "They are expected"
	line "a snazia sa" ; line "to visit #MON"

	para "porazit inych" ; para "GYMS and defeat"
	line "trenerov." ; line "other trainers."

	para "Dalsia strana" ; para "The next page"
	line "je… Prazdna!" ; line "is… Blank!"

	para "Chlapec: E-he-he…" ; para "Boy: E-he-he…"

	para "Dalej som uz" ; para "I haven't written"
	line "nepisal…" ; line "anymore…"
	done

AcademyStickerMachineText:
	text "Tento pristroj" ; text "This super machine"
	line "tlaci data ako" ; line "prints data out as"

	para "nalepky!" ; para "stickers!"
	done

EarlsPokemonAcademy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, VIOLET_CITY, 3
	warp_event  4, 15, VIOLET_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  1,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard

	def_object_events
	object_event  4,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AcademyEarl, EVENT_EARLS_ACADEMY_EARL
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster1Script, -1
	object_event  3, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster2Script, -1
	object_event  2,  4, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AcademyNotebook, -1
