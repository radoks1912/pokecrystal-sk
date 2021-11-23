	object_const_def
	const BLACKTHORNMART_CLERK
	const BLACKTHORNMART_COOLTRAINER_M
	const BLACKTHORNMART_BLACK_BELT

BlackthornMart_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_BLACKTHORN
	closetext
	end

BlackthornMartCooltrainerMScript:
	jumptextfaceplayer BlackthornMartCooltrainerMText

BlackthornMartBlackBeltScript:
	jumptextfaceplayer BlackthornMartBlackBeltText

BlackthornMartCooltrainerMText:
	text "Nepredavame MAX" ; text "You can't buy MAX"
	line "REVIVE, ale" ; line "REVIVE, but it"

	para "plne obnovi odpa-" ; para "fully restores a"
	line "dnuteho #MONa." ; line "fainted #MON."

	para "Pozor--neobnovi" ; para "Beware--it won't"
	line "PP, POWER POINTS" ; line "restore PP, the"

	para "potrebne na" ; para "POWER POINTS"
	line "utocenie." ; line "needed for moves."
	done

BlackthornMartBlackBeltText:
	text "MAX REPEL odraduje" ; text "MAX REPEL keeps"
	line "slabych #MON od" ; line "weak #MON away"
	cont "teba." ; cont "from you."

	para "Je to najdlhsie" ; para "It's the longest"
	line "trvajuci REPEL" ; line "lasting of the"
	cont "sprej." ; cont "REPEL sprays."
	done

BlackthornMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 4
	warp_event  3,  7, BLACKTHORN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartClerkScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartCooltrainerMScript, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornMartBlackBeltScript, -1
