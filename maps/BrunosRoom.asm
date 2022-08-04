	object_const_def
	const BRUNOSROOM_BRUNO

BrunosRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor,   SCENE_BRUNOSROOM_LOCK_DOOR
	scene_script .DummyScene, SCENE_BRUNOSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, .BrunosRoomDoors

.LockDoor:
	sdefer .BrunosDoorLocksBehindYou
	end

.DummyScene:
	end

.BrunosRoomDoors:
	checkevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.BrunosDoorLocksBehindYou:
	applymovement PLAYER, BrunosRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_BRUNOSROOM_NOOP
	setevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

BrunoScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_BRUNO
	iftrue BrunoScript_AfterBattle
	writetext BrunoScript_BrunoBeforeText
	waitbutton
	closetext
	winlosstext BrunoScript_BrunoBeatenText, 0
	loadtrainer BRUNO, BRUNO1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_BRUNO
	opentext
	writetext BrunoScript_BrunoDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	waitsfx
	end

BrunoScript_AfterBattle:
	writetext BrunoScript_BrunoDefeatText
	waitbutton
	closetext
	end

BrunosRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

BrunoScript_BrunoBeforeText:
	text "Som BRUNO z" ; text "I am BRUNO of the"
	line "ELITNEJ STVORKY." ; line "ELITE FOUR."

	para "Vzdy trenujem do" ; para "I always train to"
	line "extremu, pretoze" ; line "the extreme be-"
	cont "verim v nas" ; cont "cause I believe in"
	cont "potencial." ; cont "our potential."

	para "Takto sa staneme" ; para "That is how we"
	line "silnejsimi." ; line "became strong."

	para "Dokazes odolat" ; para "Can you withstand"
	line "nasej sile?" ; line "our power?"

	para "Hm? Nevidim v tebe" ; para "Hm? I see no fear"
	line "ziaden strach." ; line "in you. You look"

	para "Si odhodlany," ; para "determined. Per-"
	line "skvele na zapas!" ; line "fect for battle!"

	para "Si pripraveny," ; para "Ready, <PLAYER>?"
	line "<PLAYER> ?" ; line "You will bow down"

	para "Z nasej sily sa ti" ; para "to our overwhelm-"
	line "podlomia kolena!" ; line "ing power!"

	para "Hu-ah!" ; para "Hoo hah!"
	done

BrunoScript_BrunoBeatenText:
	text "Co? Ako sme mohli" ; text "Why? How could we"
	line "prehrat?" ; line "lose?"
	done

BrunoScript_BrunoDefeatText:
	text "Prehrajuc tento" ; text "Having lost, I"
	line "zapas nehovorim" ; line "have no right to"
	cont "nic…" ; cont "say anything…"

	para "Chod za svojou" ; para "Go face your next"
	line "dalsou vyzvou!" ; line "challenge!"
	done

BrunosRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, KOGAS_ROOM, 3
	warp_event  5, 17, KOGAS_ROOM, 4
	warp_event  4,  2, KARENS_ROOM, 1
	warp_event  5,  2, KARENS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BrunoScript_Battle, -1
