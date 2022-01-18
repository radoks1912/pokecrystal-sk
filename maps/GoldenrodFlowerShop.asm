	object_const_def
	const GOLDENRODFLOWERSHOP_TEACHER
	const GOLDENRODFLOWERSHOP_FLORIA

GoldenrodFlowerShop_MapScripts:
	def_scene_scripts

	def_callbacks

FlowerShopTeacherScript:
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .Lalala
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .GotSquirtbottle
	checkevent EVENT_MET_FLORIA
	iffalse .HaventMetFloria
	checkevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
	iffalse .Lalala
	checkflag ENGINE_PLAINBADGE
	iffalse .NoPlainBadge
	faceplayer
	opentext
	writetext GoldenrodFlowerShopTeacherHeresTheSquirtbottleText
	promptbutton
	verbosegiveitem SQUIRTBOTTLE
	setevent EVENT_GOT_SQUIRTBOTTLE
	closetext
	setevent EVENT_FLORIA_AT_SUDOWOODO
	clearevent EVENT_FLORIA_AT_FLOWER_SHOP
	end

.Lalala:
	turnobject GOLDENRODFLOWERSHOP_TEACHER, LEFT
	opentext
	writetext GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText
	waitbutton
	closetext
	end

.GotSquirtbottle:
	jumptextfaceplayer GoldenrodFlowerShopTeacherDontDoAnythingDangerousText

.NoPlainBadge:
	jumptextfaceplayer GoldenrodFlowerShopTeacherAskWantToBorrowWaterBottleText

.HaventMetFloria:
	jumptextfaceplayer GoldenrodFlowerShopTeacherMySisterWentToSeeWigglyTreeRoute36Text

FlowerShopFloriaScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .GotSquirtbottle
	writetext GoldenrodFlowerShopFloriaWonderIfSisWillLendWaterBottleText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
	setevent EVENT_FLORIA_AT_FLOWER_SHOP
	clearevent EVENT_FLORIA_AT_SUDOWOODO
	end

.GotSquirtbottle:
	writetext GoldenrodFlowerShopFloriaYouBeatWhitneyText
	waitbutton
	closetext
	end

.FoughtSudowoodo:
	writetext GoldenrodFlowerShopFloriaItReallyWasAMonText
	waitbutton
	closetext
	end

FlowerShopShelf1: ; unreferenced
	jumpstd PictureBookshelfScript

FlowerShopShelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

FlowerShopRadio: ; unreferenced
	jumpstd Radio2Script

GoldenrodFlowerShopTeacherMySisterWentToSeeWigglyTreeRoute36Text:
	text "Videl si ten zvla-" ; text "Have you seen that"
	line "tny strom, co" ; line "wiggly tree that's"

	para "rastie na ROUTE" ; para "growing on ROUTE"
	line "36?" ; line "36?"

	para "Moja mala sestra" ; para "My little sister"
	line "ho s nadsenim sla" ; line "got all excited"

	para "pozriet…" ; para "and went to see"
	line "Obavam sa…" ; line "it…"

	para "Nie je predsa len" ; para "I'm worried… Isn't"
	line "nebezpecny?" ; line "it dangerous?"
	done

GoldenrodFlowerShopTeacherAskWantToBorrowWaterBottleText:
	text "Chces si odo mna" ; text "Do you want to"
	line "pozicat moju" ; line "borrow the water"

	para "krhlicku?" ; para "bottle too?"
	line "Nechcem, aby si" ; line "I don't want you"

	para "s nou robil nieco" ; para "doing anything"
	line "nebezpecne." ; line "dangerous with it."
	done

GoldenrodFlowerShopTeacherHeresTheSquirtbottleText:
	text "Och, si lepsi" ; text "Oh, you're better"
	line "ako WHITNEY…" ; line "than WHITNEY…"

	para "Budes OK." ; para "You'll be OK,"
	line "Tu mas moju krhlu" ; line "then. Here's the"
	cont "SQUIRTBOTTLE!" ; cont "SQUIRTBOTTLE!"
	done

GoldenrodFlowerShopTeacherDontDoAnythingDangerousText:
	text "Nerob s nou nic" ; text "Don't do anything"
	line "nebezpecne!" ; line "too dangerous!"
	done

GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText:
	text "Lalala lalalala." ; text "Lalala lalalala."
	line "Tu mate vodu," ; line "Have plenty of"
	cont "kvetiny moje!" ; cont "water, my lovely!"
	done

GoldenrodFlowerShopFloriaWonderIfSisWillLendWaterBottleText:
	text "Ked som spomenul" ; text "When I told my sis"
	line "sestre ten strom," ; line "about the jiggly"

	para "povedala mi, ze je" ; para "tree, she told me"
	line "nebezpecny." ; line "it's dangerous."

	para "Porazim WHITNEY a" ; para "If I beat WHITNEY,"
	line "snad mi pozicia" ; line "I wonder if she'll"

	para "svoju krhlicku…" ; para "lend me her water"
	;line "bottle" ; line "bottle…"
	done

GoldenrodFlowerShopFloriaYouBeatWhitneyText:
	text "Wau, porazil si" ; text "Wow, you beat"
	line "WHITNEY? Skvele!" ; line "WHITNEY? Cool!"
	done

GoldenrodFlowerShopFloriaItReallyWasAMonText:
	text "Takze to vazne bol" ; text "So it really was a"
	line "#MON!" ; line "#MON!"
	done

GoldenrodFlowerShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 6
	warp_event  3,  7, GOLDENROD_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlowerShopTeacherScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FlowerShopFloriaScript, EVENT_FLORIA_AT_FLOWER_SHOP
