	object_const_def
	const CELADONMANSION3F_COOLTRAINER_M
	const CELADONMANSION3F_GYM_GUIDE
	const CELADONMANSION3F_SUPER_NERD
	const CELADONMANSION3F_FISHER

CeladonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

GameFreakGameDesignerScript:
	faceplayer
	opentext
	writetext GameFreakGameDesignerText
	readvar VAR_DEXCAUGHT
	ifgreater NUM_POKEMON - 2 - 1, .CompletedPokedex ; ignore Mew and Celebi
	waitbutton
	closetext
	end

.CompletedPokedex:
	promptbutton
	writetext GameFreakGameDesignerCompletedPokedexText
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext GameFreakGameDesignerPauseForDiplomaText
	promptbutton
	special Diploma
	writetext GameFreakGameDesignerAfterDiplomaText
	waitbutton
	closetext
	setevent EVENT_ENABLE_DIPLOMA_PRINTING
	end

GameFreakGraphicArtistScript:
	faceplayer
	opentext
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iftrue .CanPrintDiploma
	writetext GameFreakGraphicArtistText
	waitbutton
	closetext
	end

.CanPrintDiploma:
	writetext GameFreakGraphicArtistPrintDiplomaText
	yesorno
	iffalse .Refused
	special PrintDiploma
	closetext
	end

.Refused:
	writetext GameFreakGraphicArtistRefusedText
	waitbutton
	closetext
	end

.CancelPrinting: ; unreferenced
	writetext GameFreakGraphicArtistErrorText
	waitbutton
	closetext
	end

GameFreakProgrammerScript:
	jumptextfaceplayer GameFreakProgrammerText

GameFreakCharacterDesignerScript:
	jumptextfaceplayer GameFreakCharacterDesignerText

CeladonMansion3FDevRoomSign:
	jumptext CeladonMansion3FDevRoomSignText

CeladonMansion3FDrawing:
	jumptext CeladonMansion3FDrawingText

CeladonMansion3FGameProgram:
	jumptext CeladonMansion3FGameProgramText

CeladonMansion3FReferenceMaterial:
	jumptext CeladonMansion3FReferenceMaterialText

GameFreakGameDesignerText:
	text "Je to tak?" ; text "Is that right?"

	para "Som herny" ; para "I'm the GAME"
	line "dizajner!" ; line "DESIGNER!"

	para "Plnenie tvojho" ; para "Filling up your"
	line "#DEX je tazke," ; line "#DEX is tough,"
	cont "ale nevzdavaj sa!" ; cont "but don't give up!"
	done

GameFreakGameDesignerCompletedPokedexText:
	text "Wau! Vyborne!" ; text "Wow! Excellent!"
	line "Dokoncil si cely" ; line "You completed your"
	cont "#DEX!" ; cont "#DEX!"

	para "Gratulujem!" ; para "Congratulations!"
	done

GameFreakGameDesignerPauseForDiplomaText:
	text "…"
	done

GameFreakGameDesignerAfterDiplomaText:
	text "Graficky umelec ti" ; text "The GRAPHIC ARTIST"
	line "teraz vytlaci" ; line "will print out a"
	cont "DIPLOM pre teba." ; cont "DIPLOMA for you."

	para "Nezabudni ho" ; para "You should go show"
	line "vsetkym ukazat." ; line "it off."
	done

GameFreakGraphicArtistText:
	text "Som graficky" ; text "I'm the GRAPHIC"
	line "umelec." ; line "ARTIST."

	para "Nakreslil som ta!" ; para "I drew you!"
	done

GameFreakGraphicArtistPrintDiplomaText:
	text "Som graficky" ; text "I'm the GRAPHIC"
	line "umelec." ; line "ARTIST."

	para "Oh, dokoncil si" ; para "Oh, you completed"
	line "#DEX?" ; line "your #DEX?"

	para "Chces vytlacit" ; para "Want me to print"
	line "tvoj DIPLOM?" ; line "out your DIPLOMA?"
	done

GameFreakGraphicArtistRefusedText:
	text "Zakric, ked" ; text "Give me a shout if"
	line "budes chciet" ; line "you want your"
	cont "vytlacit DIPLOM." ; cont "DIPLOMA printed."
	done

GameFreakGraphicArtistErrorText:
	text "Nieco sa pokazilo." ; text "Something's wrong."
	line "Musim zrusit tlac." ; line "I'll have to can-"
	;cont "cel printing." ; cont "cel printing."
	done

GameFreakProgrammerText:
	text "Kto, ja? Som" ; text "Who, me? I'm the"
	line "programator." ; line "PROGRAMMER."

	para "Zahraj si" ; para "Play the slot"
	line "automaty!" ; line "machines!"
	done

GameFreakCharacterDesignerText:
	text "No nie su dvojicky" ; text "Aren't the TWINS"
	line "rozkosne?" ; line "adorable?"

	para "JASMINE je tiez" ; para "JASMINE's pretty"
	line "krasna." ; line "too."

	para "Som zalubeny!" ; para "Oh, I love them!"
	done

CeladonMansion3FDevRoomSignText:
	text "GAME FREAK" ; text "GAME FREAK"
	line "VYVOJARSKA IZBA" ; line "DEVELOPMENT ROOM"
	done

CeladonMansion3FDrawingText:
	text "Je to detailna" ; text "It's a detailed"
	line "kresba pekneho" ; line "drawing of a"
	cont "dievcata." ; cont "pretty girl."
	done

CeladonMansion3FGameProgramText:
	text "Je to zdrojovy" ; text "It's the game"
	line "kod programu." ; line "program. Messing"

	para "Pozor, aby si" ; para "with it could put"
	line "nevytvoril bug!" ; line "a bug in the game!"
	done

CeladonMansion3FReferenceMaterialText:
	text "Je plny roznych" ; text "It's crammed with"
	line "materialov. Je tam " ; line "reference materi-"
	cont "aj jedna" ; cont "als. There's even"
	cont "# DOLL." ; cont "a # DOLL."
	done

CeladonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, CELADON_MANSION_ROOF, 1
	warp_event  1,  0, CELADON_MANSION_2F, 2
	warp_event  6,  0, CELADON_MANSION_2F, 3
	warp_event  7,  0, CELADON_MANSION_ROOF, 2

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_UP, CeladonMansion3FDevRoomSign
	bg_event  4,  3, BGEVENT_UP, CeladonMansion3FDrawing
	bg_event  1,  6, BGEVENT_UP, CeladonMansion3FGameProgram
	bg_event  1,  3, BGEVENT_UP, CeladonMansion3FReferenceMaterial

	def_object_events
	object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameFreakGameDesignerScript, -1
	object_event  3,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameFreakGraphicArtistScript, -1
	object_event  0,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameFreakProgrammerScript, -1
	object_event  0,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameFreakCharacterDesignerScript, -1
