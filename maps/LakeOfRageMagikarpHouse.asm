	object_const_def
	const LAKEOFRAGEMAGIKARPHOUSE_FISHING_GURU

LakeOfRageMagikarpHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagikarpLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	iftrue .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	iftrue .AskedForMagikarp
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	iftrue .ExplainedHistory
	writetext MagikarpLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	end

.ExplainedHistory:
	writetext MagikarpLengthRaterText_MenInBlack
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MagikarpLengthRaterText_WorldsLargestMagikarp
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	end

.AskedForMagikarp:
	setval MAGIKARP
	special FindPartyMonThatSpecies
	iffalse .ClearedRocketHideout
	writetext MagikarpLengthRaterText_YouHaveAMagikarp
	waitbutton
	special CheckMagikarpLength
	ifequal MAGIKARPLENGTH_NOT_MAGIKARP, .NotMagikarp
	ifequal MAGIKARPLENGTH_REFUSED, .Refused
	ifequal MAGIKARPLENGTH_TOO_SHORT, .TooShort
	; MAGIKARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext MagikarpLengthRaterText_Memento
	promptbutton
	verbosegiveitem ELIXER
	iffalse .NoRoom
	writetext MagikarpLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.TooShort:
	writetext MagikarpLengthRaterText_TooShort
	waitbutton
	closetext
	end

.NotMagikarp:
	writetext MagikarpLengthRaterText_NotMagikarp
	waitbutton
	closetext
	end

.Refused:
	writetext MagikarpLengthRaterText_Refused
	waitbutton
	closetext
	end

LakeOfRageMagikarpHouseUnusedRecordSign: ; unreferenced
	jumptext LakeOfRageMagikarpHouseUnusedRecordText

MagikarpHouseBookshelf:
	jumpstd DifficultBookshelfScript

MagikarpLengthRaterText_LakeOfRageHistory:
	text "JAZERO HNEVU je" ; text "LAKE OF RAGE is"
	line "vlastne krater" ; line "actually a crater"

	para "vytvoreny zurivymi" ; para "made by rampaging"
	line "GYARADOSmi." ; line "GYARADOS."

	para "Krater sa naplnil" ; para "The crater filled"
	line "dazdovou vodou a" ; line "up with rainwater"

	para "vzniklo jazero." ; para "and the LAKE was"
	;line "formed." ; line "formed."

	para "To je pribeh od" ; para "That's the story"
	line "mojho pra-pra-pra-" ; line "passed on from my"

	para "dedka." ; para "Grandpa's great-"
	;line "great-grandpa." ; line "great-grandpa."

	para "Zvycajne si tam" ; para "It used to be that"
	line "mohol chytit" ; line "you could catch"

	para "MAGIKARPov, ale" ; para "lively MAGIKARP"
	line "teraz nerozmiem," ; line "there, but…"

	para "co presne sa tam" ; para "I don't understand"
	line "deje." ; line "what's happening."
	done

MagikarpLengthRaterText_MenInBlack:
	text "Jazero nebolo v" ; text "The LAKE hasn't"
	line "normale, odkedy sa" ; line "been normal since"

	para "tu objavili muzi" ; para "those men wearing"
	line "v ciernom." ; line "black arrived."
	done

MagikarpLengthRaterText_WorldsLargestMagikarp:
	text "JAZERO HNEVU je" ; text "LAKE OF RAGE is"
	line "opat v normale." ; line "back to normal."

	para "MAGIKARPovia sa" ; para "The MAGIKARP have"
	line "vratili." ; line "returned."

	para "Mozno sa mi podari" ; para "I may yet realize"
	line "dohnat sen vidiet" ; line "my dream of see-"
	cont "najvacsieho MAGI-" ; cont "ing the world's"
	cont "KARPa na svete." ; cont "largest MAGIKARP."

	para "Mas UDICU?" ; para "Do you have a ROD?"
	line "Ak ano, tak mi" ; line "Please help me if"
	cont "prosim pomoz." ; cont "you do."
	done

MagikarpLengthRaterText_YouHaveAMagikarp:
	text "Ah, mas" ; text "Ah, you have a"
	line "MAGIKARPa! Pozrime" ; line "MAGIKARP! Let's"

	para "sa, aky je velky." ; para "see how big that"
	;line "baby is." ; line "baby is."
	done

MagikarpLengthRaterText_Memento:
	text "Waw! Tento je" ; text "Wow! This one is"
	line "skvely!" ; line "outstanding!"

	para "Klobuk dole," ; para "I tip my hat to"
	line "pane!" ; line "you!"

	para "Vezmi si toto ako" ; para "Take this as a"
	line "pamiatku!" ; line "memento!"
	done

MagikarpLengthRaterText_Bonus:
	text "Rekord je velim" ; text "The record is the"
	line "dolezity." ; line "important thing."

	para "Je to taky" ; para "Think of that as"
	line "bonus!" ; line "a bonus!"
	done

MagikarpLengthRaterText_TooShort:
	text "Waw! Tento je" ; text "Wow! This one is"
	line "skvely!" ; line "outstanding!"

	para "…Kiezby som" ; para "…I wish I could"
	line "to mohol povedat," ; line "say that, but I've"

	para "ale videl som uz" ; para "seen a bigger one"
	line "vacsieho." ; line "before."
	done

MagikarpLengthRaterText_NotMagikarp:
	text "Coze? To nie je" ; text "What? That's not a"
	line "MAGIKARP!" ; line "MAGIKARP!"
	done

MagikarpLengthRaterText_Refused:
	text "Oh… Takze si nena-" ; text "Oh… So you didn't"
	line "siel dostatocne" ; line "get one good"

	para "dobreho, aby si mi" ; para "enough to show me?"
	line "ho ukazal?" ; line "Maybe next time."
	cont "Mozno nabuduce."
	done

LakeOfRageMagikarpHouseUnusedRecordText:
	text "AKTUALNY REKORD" ; text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer3
	text " chyteny" ; text " caught by"
	line "@"
	text_ram wStringBuffer4
	text_end

LakeOfRageMagikarpHouseUnusedDummyText: ; unreferenced
	text_end

LakeOfRageMagikarpHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MagikarpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MagikarpHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagikarpLengthRaterScript, -1
