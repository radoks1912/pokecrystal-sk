	object_const_def
	const LAVRADIOTOWER1F_RECEPTIONIST
	const LAVRADIOTOWER1F_OFFICER
	const LAVRADIOTOWER1F_SUPER_NERD1
	const LAVRADIOTOWER1F_GENTLEMAN
	const LAVRADIOTOWER1F_SUPER_NERD2

LavRadioTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavRadioTower1FReceptionistScript:
	jumptextfaceplayer LavRadioTower1FReceptionistText

LavRadioTower1FOfficerScript:
	jumptextfaceplayer LavRadioTower1FOfficerText

LavRadioTower1FSuperNerd1Script:
	jumptextfaceplayer LavRadioTower1FSuperNerd1Text

LavRadioTower1FGentlemanScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext LavRadioTower1FGentlemanText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext LavRadioTower1FGentlemanText_ReturnedMachinePart
	promptbutton
	getstring STRING_BUFFER_4, .expncardname
	scall .receiveitem
	setflag ENGINE_EXPN_CARD
.GotExpnCard:
	writetext LavRadioTower1FGentlemanText_GotExpnCard
	waitbutton
	closetext
	end

.receiveitem:
	jumpstd ReceiveItemScript
	end

.expncardname
	db "EXPN CARD@"

LavRadioTower1FSuperNerd2Script:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	writetext LavRadioTower1FSuperNerd2Text
	waitbutton
	closetext
	end

.GotExpnCard:
	writetext LavRadioTower1FSuperNerd2Text_GotExpnCard
	waitbutton
	closetext
	end

LavRadioTower1FDirectory:
	jumptext LavRadioTower1FDirectoryText

LavRadioTower1FPokeFluteSign:
	jumptext LavRadioTower1FPokeFluteSignText

LavRadioTower1FReferenceLibrary: ; unreferenced
	jumptext LavRadioTower1FReferenceLibraryText

LavRadioTower1FReceptionistText:
	text "Vitaj!" ; text "Welcome!"
	line "Pokojne sa poroz-" ; line "Feel free to look"

	para "hliadni po celom" ; para "around anywhere on"
	line "tomto poschodi." ; line "this floor."
	done

LavRadioTower1FOfficerText:
	text "Pardon, ale dos-" ; text "Sorry, but you can"
	line "tupne je iba" ; line "only tour the"
	cont "prizemie." ; cont "ground floor."

	para "Odkedy JOHTO RADIO" ; para "Ever since JOHTO's"
	line "VEZA bola obsadena" ; line "RADIO TOWER was"

	para "kriminalnym gangom" ; para "taken over by a"
	line "museli sme zvysit" ; line "criminal gang, we"

	para "nase bezpecnostne" ; para "have had to step"
	line "standardy." ; line "up our security."
	done

LavRadioTower1FSuperNerd1Text:
	text "V RADIO VEZI je" ; text "Many people are"
	line "mnoho tazko" ; line "hard at work here"

	para "pracujucich ludi." ; para "in the RADIO"
	;line "TOWER." ; line "TOWER."

	para "Snazia sa, ako" ; para "They must be doing"
	line "najviac vedia, aby" ; line "their best to put"
	cont "bola skvela show." ; cont "on good shows."
	done

LavRadioTower1FGentlemanText:
	text "Oh, nie, nie, nie!" ; text "Oh, no, no, no!"

	para "Vobec nevysielame" ; para "We've been off the"
	line "od vypnutia" ; line "air ever since the"

	para "ELEKTRARNE!" ; para "POWER PLANT shut"
	;line "down." ; line "down."

	para "Vsetko moje usilie" ; para "All my efforts to"
	line "udrzat tuto stani-" ; line "start this station"

	para "cu nad vodou vyjdu" ; para "would be wasted if"
	line "navnivoc." ; line "I can't broadcast."

	para "Budem zniceny!" ; para "I'll be ruined!"
	done

LavRadioTower1FGentlemanText_ReturnedMachinePart:
	text "Ah! Ty si ten" ; text "Ah! So you're the"
	line "<PLAY_G> co" ; line "<PLAY_G> who solved"

	para "vyriesil problem" ; para "the POWER PLANT's"
	line "v ELEKTRARNI?" ; line "problem?"

	para "Vdaka tebe som ne-" ; para "Thanks to you, I"
	line "stratil pracu." ; line "never lost my job."

	para "Poviem ti, si moj" ; para "I tell you, you're"
	line "zachranca!" ; line "a real lifesaver!"

	para "Vezmi si prosim" ; para "Please take this"
	line "toto." ; line "as my thanks."
	done

LavRadioTower1FGentlemanText_GotExpnCard:
	text "S tou vecou budes" ; text "With that thing,"
	line "moct naladit na" ; line "you can tune into"

	para "radiu aj stanice" ; para "the radio programs"
	line "z KANTO." ; line "here in KANTO."

	para "Hahahahaha!" ; para "Gahahahaha!"
	done

LavRadioTower1FSuperNerd2Text:
	text "Ahoj!" ; text "Hey there!"

	para "Som super" ; para "I am the super"
	line "MUSIC RIADITEL!" ; line "MUSIC DIRECTOR!"

	para "Hm? Tvoj #GEAR" ; para "Huh? Your #GEAR"
	line "nedokaze naladit" ; line "can't tune into my"

	para "moje stanice." ; para "music programs."
	line "Ake nestastie!" ; line "How unfortunate!"

	para "Ak ziskas EXPN" ; para "If you get an EXPN"
	line "KARTU, budes to" ; line "CARD upgrade, you"

	para "moct naladit." ; para "can tune in. You'd"
	line "Zozen si ju!" ; line "better get one!"
	done

LavRadioTower1FSuperNerd2Text_GotExpnCard:
	text "Ahoj!" ; text "Hey there!"

	para "Som super" ; para "I am the super"
	line "MUSIC RIADITEL!" ; line "MUSIC DIRECTOR!"

	para "Som zodpovedny za" ; para "I'm responsible"
	line "uzasne melodie," ; line "for the gorgeous"

	para "ktore vysielame" ; para "melodies that go"
	line "na vlnach." ; line "out over the air."

	para "Nebud labut." ; para "Don't be square."
	line "Uchop svoju hudbu" ; line "Grab your music"
	cont "zo vzduchu!" ; cont "off the air!"
	done

LavRadioTower1FDirectoryText:
	text "1P RECEPCIA" ; text "1F RECEPTION"
	line "2P PREDAJ" ; line "2F SALES"

	para "3P OSOBNE" ; para "3F PERSONNEL"
	line "4P PRODUKCIA" ; line "4F PRODUCTION"

	para "5P RIADITELOVA" ; para "5F DIRECTOR'S"
	line "KANCELARIA" ; line "   OFFICE"
	done

LavRadioTower1FPokeFluteSignText:
	text "Upokoj #MON" ; text "Perk Up #MON"
	line "jemnymi zvukmi" ; line "with Mellow Sounds"

	para "POKEFLAUTY na" ; para "of the # FLUTE"
	line "kanali 20" ; line "on CHANNEL 20"
	done

LavRadioTower1FReferenceLibraryText:
	text "Wau! Plny stojan" ; text "Wow! A full rack"
	line "#MON CDciek a" ; line "of #MON CDs and"
	cont "videi." ; cont "videos."

	para "Musi to byt refe-" ; para "This must be the"
	line "rencna kniznica." ; line "reference library."
	done

LavRadioTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 7
	warp_event  3,  7, LAVENDER_TOWN, 7

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, LavRadioTower1FDirectory
	bg_event  5,  0, BGEVENT_READ, LavRadioTower1FPokeFluteSign

	def_object_events
	object_event  6,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FReceptionistScript, -1
	object_event 15,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FOfficerScript, -1
	object_event  1,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FSuperNerd1Script, -1
	object_event  9,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FGentlemanScript, -1
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FSuperNerd2Script, -1
