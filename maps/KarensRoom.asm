	object_const_def
	const KARENSROOM_KAREN

KarensRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor,   SCENE_KARENSROOM_LOCK_DOOR
	scene_script .DummyScene, SCENE_KARENSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, .KarensRoomDoors

.LockDoor:
	sdefer .KarensDoorLocksBehindYou
	end

.DummyScene:
	end

.KarensRoomDoors:
	checkevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_KARENS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.KarensDoorLocksBehindYou:
	applymovement PLAYER, KarensRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_KARENSROOM_NOOP
	setevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

KarenScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_KAREN
	iftrue KarenScript_AfterBattle
	writetext KarenScript_KarenBeforeText
	waitbutton
	closetext
	winlosstext KarenScript_KarenBeatenText, 0
	loadtrainer KAREN, KAREN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KAREN
	opentext
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_KARENS_ROOM_EXIT_OPEN
	waitsfx
	end

KarenScript_AfterBattle:
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	end

KarensRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

KarenScript_KarenBeforeText:
	text "Som KAREN z" ; text "I am KAREN of the"
	line "ELITNEJ STVORKY." ; line "ELITE FOUR."

	para "Ty si <PLAYER>?" ; para "You're <PLAYER>?"
	line "Zaujimave." ; line "How amusing."

	para "Milujem temny typ" ; para "I love dark-type"
	line "#MONov." ; line "#MON."

	para "Paci sa mi ich di-" ; para "I find their wild,"
	line "voky imidz. A su" ; line "tough image to be"

	para "tak neskutocne" ; para "so appealing. And"
	line "silni." ; line "they're so strong."

	para "Myslis, ze sa ti" ; para "Think you can take"
	line "podari ich pora-" ; line "them? Just try to"
	cont "zit?." ; cont "entertain me."

	para "Podme na to." ; para "Let's go."
	done

KarenScript_KarenBeatenText:
	text "Ale, ale, si" ; text "Well, aren't you"
	line "dobry. Takto sa mi" ; line "good. I like that"
	cont "to paci." ; cont "in a trainer."
	done

KarenScript_KarenDefeatText:
	text "Silny #MON." ; text "Strong #MON."

	para "Slaby #MON." ; para "Weak #MON."

	para "Je to iba sebecka" ; para "That is only the"
	line "predstava ludi." ; line "selfish perception"
	;cont "of people." ; cont "of people."

	para "Skuseni treneri" ; para "Truly skilled"
	line "by sa mali poku-" ; line "trainers should"

	para "sat vyhrat s ich" ; para "try to win with"
	line "favoritmi." ; line "their favorites."

	para "Mas skvely styl." ; para "I like your style."
	line "Rozumies, co je" ; line "You understand"
	cont "dolezite." ; cont "what's important."

	para "Chod-- SAMPION" ; para "Go on--the CHAM-"
	line "ta ocakava." ;  line "PION is waiting."
	done

KarensRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BRUNOS_ROOM, 3
	warp_event  5, 17, BRUNOS_ROOM, 4
	warp_event  4,  2, LANCES_ROOM, 1
	warp_event  5,  2, LANCES_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KarenScript_Battle, -1
