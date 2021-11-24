	object_const_def
	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

DaisyScript:
	faceplayer
	opentext
	readvar VAR_HOUR
	ifequal 15, .ThreePM
	writetext DaisyHelloText
	waitbutton
	closetext
	end

.ThreePM:
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	promptbutton
	writetext DaisyAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetext
	end

DaisyHelloText:
	text "DAISY: Cau! Moj" ; text "DAISY: Hi! My kid"
	line "mladsi brat je GYM" ; line "brother is the GYM"

	para "LEADER v VIRIDIAN" ; para "LEADER in VIRIDIAN"
	line "CITY." ; line "CITY."

	para "Ale tak casto je" ; para "But he goes out"
	line "mimo mesta, ze" ; line "of town so often,"

	para "sposobuje problemy" ; para "it causes problems"
	line "ostatnym trenerom." ; line "for the trainers."
	done

DaisyOfferGroomingText:
	text "DAISY: Cau! Dobre" ; text "DAISY: Hi! Good"
	line "nacasovanie." ; line "timing. I'm about"
	cont "Pripravujem caj." ; cont "to have some tea."

	para "Das si so mnou?" ; para "Would you like to"
	;line "join me?" ; line "join me?"

	para "Oh, tvoji #MONi" ; para "Oh, your #MON"
	line "su trocha spinavi." ; line "are a bit dirty."

	para "Dam ti ich do-" ; para "Would you like me"
	line "poriadku?" ; line "to groom one?"
	done

DaisyWhichMonText:
	text "DAISY: Ktoreho" ; text "DAISY: Which one"
	line "ti dam doporiadku?" ; line "should I groom?"
	done

DaisyAlrightText:
	text "DAISY: OK, hned" ; text "DAISY: OK, I'll"
	line "sa na to vrhnem." ; line "get it looking"
	;cont "nice in no time." ; cont "nice in no time."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " vypada" ; text " looks"
	line "spokojne." ; line "content."
	done

DaisyAllDoneText:
	text "DAISY: Tak," ; text "DAISY: There you"
	line "hotovo!" ; line "go! All done."

	para "Vidis? No nevypada" ; para "See? Doesn't it"
	line "to nadherne?" ; line "look nice?"

	para "Je to tak mily" ; para "It's such a cute"
	line "#MON." ; line "#MON."
	done

DaisyAlreadyGroomedText:
	text "DAISY: Vzdy o ta-" ; text "DAISY: I always"
	line "tomto case si" ; line "have tea around"

	para "davam caj. Pridaj" ; para "this time. Come"
	line "sa ku mne." ; line "join me."
	done

DaisyRefusedText:
	text "DAISY: Takze" ; text "DAISY: You don't"
	line "nechces dat zia-" ; line "want to have one"

	para "dneho doporiadku?" ; para "groomed? OK, we'll"
	line "OK, tak si dame" ; line "just have tea."
	cont "aspon caj."
	done

DaisyCantGroomEggText:
	text "DAISY: Oh, prepac." ; text "DAISY: Oh, sorry."
	line "S VAJICKOM neviem" ; line "I honestly can't"
	cont "fakt nic spravit." ; cont "groom an EGG."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
