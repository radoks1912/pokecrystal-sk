	object_const_def
	const BILLSFAMILYSHOUSE_BILL
	const BILLSFAMILYSHOUSE_POKEFAN_F
	const BILLSFAMILYSHOUSE_TWIN

BillsFamilysHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EEVEE
	iftrue .GotEevee
	writetext BillTakeThisEeveeText
	yesorno
	iffalse .Refused
	writetext BillImCountingOnYouText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedEeveeText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke EEVEE, 20
	setevent EVENT_GOT_EEVEE
	writetext BillEeveeMayEvolveText
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillPartyFullText
	waitbutton
	closetext
	end

.Refused:
	writetext BillNoEeveeText
	waitbutton
	closetext
	end

.GotEevee:
	writetext BillPopWontWorkText
	waitbutton
	closetext
	end

BillsMomScript:
	faceplayer
	opentext
	checkevent EVENT_MET_BILL
	iffalse .HaventMetBill
	writetext BillsMomText_BeforeEcruteak
	waitbutton
	closetext
	end

.HaventMetBill:
	writetext BillsMomText_AfterEcruteak
	waitbutton
	closetext
	end

BillsSisterScript:
	faceplayer
	opentext
	checkcellnum PHONE_BILL
	iftrue .GotBillsNumber
	writetext BillsSisterUsefulNumberText
	askforphonenumber PHONE_BILL
	ifequal PHONE_CONTACTS_FULL, .NoRoom
	ifequal PHONE_CONTACT_REFUSED, .Refused
	waitsfx
	addcellnum PHONE_BILL
	writetext RecordedBillsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
.GotBillsNumber:
	writetext BillsSisterStorageSystemText
	waitbutton
	closetext
	end

.Refused:
	writetext BillsSisterRefusedNumberText
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillsSisterPhoneFullText
	promptbutton
	sjump .Refused

BillsHouseBookshelf1:
	jumpstd PictureBookshelfScript

BillsHouseBookshelf2:
	jumpstd MagazineBookshelfScript

BillsHouseRadio:
	jumpstd Radio2Script

BillTakeThisEeveeText:
	text "BILL: Cau, <PLAYER>!" ; text "BILL: Hi, <PLAYER>!"
	line "Urob mi laskavost" ; line "Do us a favor and"
	cont "a vezmi si EEVEE." ; cont "take this EEVEE."

	para "Prisiel, ked som" ; para "It came over when"
	line "nastavoval" ; line "I was adjusting"
	cont "TIME CAPSULE." ; cont "the TIME CAPSULE."

	para "Niekto sa onho" ; para "Someone has to"
	line "musi postarat," ; line "take care of it,"

	para "ale ja nerad" ; para "but I don't like"
	line "chodim von." ; line "being outside."

	para "Mozem sa na teba" ; para "Can I count on you"
	line "spolahnut," ; line "to play with it,"
	cont "<PLAYER>?"
	done

BillImCountingOnYouText:
	text "BILL: Vedel" ; text "BILL: I knew you'd"
	line "som to!" ; line "come through!"

	para "Som rad, ze to" ; para "Way to go! You're"
	line "pre mna spravis!" ; line "the real deal!"

	para "OK, pocitam" ; para "OK, I'm counting"
	line "s tebou." ; line "on you."

	para "Dobre sa onho" ; para "Take good care of"
	line "postaraj!" ; line "it!"
	done

ReceivedEeveeText:
	text "<PLAYER> dostal" ; text "<PLAYER> received"
	line "EEVEE!"
	done

BillEeveeMayEvolveText:
	text "BILL: PROF.ELM"  ; text "BILL: PROF.ELM"
	line "tvrdi, ze EEVEE sa" ; line "claims EEVEE may"

	para "moze vyvinut novym"  ; para "evolve in new and" 
	line "neznamym sposobom." ; line "unknown ways."
	done

BillPartyFullText:
	text "Whoa, pockat." ; text "Whoa, wait. You"
	line "Nemozes niest viac" ; line "can't carry any"
	cont "#MONov." ; cont "more #MON."
	done

BillNoEeveeText:
	text "Och… Co s nim" ; text "Oh… Now what to"
	line "spravim?" ; line "do?"
	done

BillPopWontWorkText:
	text "BILL: Moj dedko" ; text "BILL: My pop, he"
	line "nestaci. Cely den" ; line "won't work. All he"

	para "sa iba potuluje." ; para "does is goof off"
	line "Bude to" ; line "all day long."

	para "velmi tazky" ; para "He's getting to be"
	line "oriesok…" ; line "a real headache…"
	done

BillsMomText_BeforeEcruteak:
	text "Oh, zbieras" ; text "Oh, you collect"
	line "#MON? Moj syn" ; line "#MON? My son"
	cont "BILL je expert." ; cont "BILL is an expert."

	para "Prave ho zavolali" ; para "He just got called"
	line "do #MON" ; line "to the #MON"

	para "CENTER v ECRUTEAK" ; para "CENTER in ECRUTEAK"
	line "CITY." ; line "CITY."

	para "Moj manzel isiel" ; para "My husband went"
	line "do GAME CORNERu" ; line "off to the GAME"

	para "bez toho, aby ho" ; para "CORNER without"
	line "zavolali…" ; line "being called…"
	done

BillsMomText_AfterEcruteak:
	text "Moj manzel bol" ; text "My husband was"
	line "kedysi znamy ako" ; line "once known as a"

	para "#MANIAC." ; para "#MANIAC."
	line "BILL sa musel" ; line "BILL must have"

	para "podat na svojho" ; para "taken after his"
	line "otca." ; line "father."
	done

BillsSisterUsefulNumberText:
	text "Si trener?" ; text "Are you a trainer?"

	para "Mam pre teba" ; para "I've got a useful"
	line "uzitocne telefonne" ; line "phone number for"
	cont "cislo." ; cont "you."
	done

RecordedBillsNumberText:
	text "<PLAYER> opisal" ; text "<PLAYER> recorded"
	line "BILLove cislo." ; line "BILL's number."
	done

BillsSisterRefusedNumberText:
	text "Moj brat navrhol" ; text "My brother made"
	line "PC #MON" ; line "the PC #MON"
	cont "ulozny system." ; cont "storage system."

	para "Chcela som ti" ; para "I was going to"
	line "dat BILLove" ; line "give you BILL's"
	cont "cislo…" ; cont "number…"
	done

BillsSisterPhoneFullText:
	text "Mas plnu pamat" ; text "You can't record"
	line "cisiel v telefone." ; line "any more numbers."
	done

BillsSisterStorageSystemText:
	text "Moj starsi brat" ; text "My big brother"
	line "BILL navrhol PC" ; line "BILL made the PC"

	para "#MON ulozny" ; para "#MON storage"
	line "system." ; line "system."
	done

BillsFamilysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 4
	warp_event  3,  7, GOLDENROD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BillsHouseBookshelf2
	bg_event  1,  1, BGEVENT_READ, BillsHouseBookshelf1
	bg_event  7,  1, BGEVENT_READ, BillsHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillScript, EVENT_MET_BILL
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsMomScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsSisterScript, -1
