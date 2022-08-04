	object_const_def
	const KOGASROOM_KOGA

KogasRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor,   SCENE_KOGASROOM_LOCK_DOOR
	scene_script .DummyScene, SCENE_KOGASROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, .KogasRoomDoors

.LockDoor:
	sdefer .KogasDoorLocksBehindYou
	end

.DummyScene:
	end

.KogasRoomDoors:
	checkevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_KOGAS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.KogasDoorLocksBehindYou:
	applymovement PLAYER, KogasRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_KOGASROOM_NOOP
	setevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

KogaScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_KOGA
	iftrue KogaScript_AfterBattle
	writetext KogaScript_KogaBeforeText
	waitbutton
	closetext
	winlosstext KogaScript_KogaBeatenText, 0
	loadtrainer KOGA, KOGA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KOGA
	opentext
	writetext KogaScript_KogaDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_KOGAS_ROOM_EXIT_OPEN
	waitsfx
	end

KogaScript_AfterBattle:
	writetext KogaScript_KogaDefeatText
	waitbutton
	closetext
	end

KogasRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

KogaScript_KogaBeforeText:
	text "Fahahahaha!" ; text "Fwahahahaha!"

	para "Som KOGA z" ; para "I am KOGA of the"
	line "ELITNEJ STVORKY." ; line "ELITE FOUR."

	para "Schovavam sa v" ; para "I live in shadows,"
	line "tienoch, ninja!" ; line "a ninja!"

	para "Moj zlozity styl" ; para "My intricate style"
	line "ta zmatie a" ; line "will confound and"
	cont "znici!" ; cont "destroy you!"

	para "Zmatenie, spanok," ; para "Confusion, sleep,"
	line "otravenie…" ; line "poison…"

	para "Stanes sa obetou" ; para "Prepare to be the"
	line "mojich zlovestnych" ; line "victim of my sin-"
	cont "technik!" ; cont "ister technique!"

	para "Fahahahaha!" ; para "Fwahahahaha!"

	para "#MON nie je iba" ; para "#MON is not"
	line "o tvrdej sile--" ; line "merely about brute"

	para "to zanedlho uvidis" ; para "force--you shall"
	line "sam!" ; line "see soon enough!"
	done

KogaScript_KogaBeatenText:
	text "Ach!" ; text "Ah!"
	line "Dokazal si, ze si" ; line "You have proven"
	cont "toho hodny!" ; cont "your worth!"
	done

KogaScript_KogaDefeatText:
	text "Podrobil som ta" ; text "I subjected you to"
	line "vsetkemu, co som" ; line "everything I could"
	cont "mal k dispozicii." ; cont "muster."

	para "Ale moje usilie" ; para "But my efforts"
	line "bolo zbytocne. Mu-" ; line "failed. I must"
	cont "sim sa zdokonalit." ; cont "hone my skills."

	para "Chod do dalsej" ; para "Go on to the next"
	line "miestnosti, a" ; line "room, and put your"
	cont "otestuj sa!" ; cont "abilities to test!"
	done

KogasRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, WILLS_ROOM, 2
	warp_event  5, 17, WILLS_ROOM, 3
	warp_event  4,  2, BRUNOS_ROOM, 1
	warp_event  5,  2, BRUNOS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KogaScript_Battle, -1
