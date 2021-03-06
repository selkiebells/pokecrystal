	const_def 2 ; object constants
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	const GOLDENRODPOKECENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECENTER1F_LASS
	const GOLDENRODPOKECENTER1F_POKEFAN_F

GoldenrodPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GoldenrodPokecenter1FNurseScript:
	jumpstd pokecenternurse

GoldenrodPokecenter1F_GSBallSceneLeft:
	writebyte BATTLETOWERACTION_CHECKMOBILEEVENT
	special BattleTowerAction
	ifequal MOBILE_EVENT_OBJECT_GS_BALL, .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, 0, 7
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, MovementData_0x6105a
	turnobject PLAYER, UP
	opentext
	writetext UnknownText_0x622f0
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext UnknownText_0x62359
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, MovementData_0x61060
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1F_GSBallSceneRight:
	writebyte BATTLETOWERACTION_CHECKMOBILEEVENT
	special BattleTowerAction
	ifequal MOBILE_EVENT_OBJECT_GS_BALL, .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, 0, 7
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, MovementData_0x61065
	turnobject PLAYER, UP
	opentext
	writetext UnknownText_0x622f0
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext UnknownText_0x62359
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, MovementData_0x6106c
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1FGameboyKidScript:
	jumptextfaceplayer GoldenrodPokecenter1FGameboyKidText

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FPokefanF:
	faceplayer
	opentext
	writetext UnknownText_0x623fb
	waitbutton
	writetext UnknownText_0x6248c
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext UnknownText_0x62549
	waitbutton
	writetext UnknownText_0x624a4
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext UnknownText_0x624e9
	waitbutton
	closetext
	end

.NoEonMail:
	writetext UnknownText_0x62509
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext UnknownText_0x6252a
	waitbutton
	closetext
	end

MovementData_0x6105a:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

MovementData_0x61060:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

MovementData_0x61065:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

MovementData_0x6106c:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

; unused
UnknownText_0x61072:
	text "Hello! Welcome to"
	line "#com Center"
	cont "Trade Corner."

	para "You can trade"
	line "#mon with other"
	cont "people far away."
	done

UnknownText_0x610ce:
	text "To make a trade,"
	line "we must hold your"
	cont "#mon."

	para "Would you like to"
	line "trade?"
	done

UnknownText_0x61111:
	text "What kind of"
	line "#mon do you"
	cont "want in return?"
	done

UnknownText_0x6113b:
	text "Fine. We will try"
	line "to trade your"

	para "@"
	text_from_ram wStringBuffer3
	text " for"
	line "@"
	text_from_ram wStringBuffer4
	text "."

	para "We'll have to hold"
	line "your #mon"
	cont "during the trade."

	para "Please wait while"
	line "we prepare the"
	cont "room for it."
	done

UnknownText_0x611c9:
	text "Fine. We will try"
	line "to trade your"

	para "@"
	text_from_ram wStringBuffer3
	text " for a"
	line "#mon that you"
	cont "have never seen."

	para "We'll have to hold"
	line "your #mon"
	cont "during the trade."

	para "Please wait while"
	line "we prepare the"
	cont "room for it."
	done

UnknownText_0x61271:
	text "Your trade #mon"
	line "has been received."

	para "It will take time"
	line "to find a trade"

	para "partner. Please"
	line "come back later."
	done

UnknownText_0x612d8:
	text "Oh? You have only"
	line "one #mon in"
	cont "your party. "

	para "Please come back"
	line "once you've in-"
	cont "creased the size"
	cont "of your party."
	done

UnknownText_0x61344:
	text "We hope to see you"
	line "again."
	done

UnknownText_0x6135f:
	text "Communication"
	line "error…"
	done

UnknownText_0x61375:
	text "If we accept that"
	line "#mon, what will"
	cont "you battle with?"
	done

UnknownText_0x613a9:
	text "Sorry. We can't"
	line "accept an Egg."
	done

UnknownText_0x613c8:
	text "Sorry, but your"
	line "#mon appears to"

	para "be abnormal. We"
	line "can't accept it."
	done

UnknownText_0x61409:
	text "Oh? Aren't we"
	line "already holding a"
	cont "#mon of yours?"
	done

UnknownText_0x61438:
	text "We'll check the"
	line "rooms."

	para "Please wait."
	done

UnknownText_0x6145c:
	text "Thank you for your"
	line "patience."

	para "A trade partner"
	line "has been found."
	done

UnknownText_0x6149a:
	text "It's your new"
	line "partner."

	para "Please take care"
	line "of it with love."

	para "We hope to see you"
	line "again."
	done

UnknownText_0x614ed:
	text "Uh-oh. Your party"
	line "is already full."

	para "Please come back"
	line "when you have room"
	cont "in your party."
	done

UnknownText_0x61544:
	text "It's unfortunate,"
	line "but no one has"

	para "come forward as a"
	line "trade partner."

	para "Would you like"
	line "your #mon back?"
	done

UnknownText_0x615a5:
	text "We have returned"
	line "your #mon."
	done

UnknownText_0x615c2:
	text "It's unfortunate,"
	line "but no one has"

	para "come forward as a"
	line "trade partner."

	para "We've held your"
	line "#mon for a long"

	para "time. As a result,"
	line "it is very lonely."

	para "Sorry, but we must"
	line "return it to you."
	done

UnknownText_0x6166e:
	text "We hope to see you"
	line "again."
	done

UnknownText_0x61689:
	text "Fine. We will"
	line "continue to hold"
	cont "your #mon."
	done

UnknownText_0x616b4:
	text "Oh? You left your"
	line "#mon with us"
	cont "only recently."

	para "Please come back"
	line "later."
	done

UnknownText_0x616fb:
	text "We'll Save before"
	line "connecting to the"
	cont "Center."
	done

UnknownText_0x61727:
	text "Which #mon do"
	line "you want to trade?"
	done

UnknownText_0x61749:
	text "Sorry, but we must"
	line "cancel the trade."
	done

UnknownText_0x6176f:
	text "Oh!"

	para "I see you have an"
	line "Egg Ticket!"

	para "It's a coupon that"
	line "special people can"

	para "redeem for a"
	line "special #mon!"
	done

UnknownText_0x617d2:
	text "Let me give you a"
	line "quick briefing."

	para "Trades held at the"
	line "Trade Corner are"

	para "between two"
	line "trainers who don't"

	para "know each other's"
	line "identity."

	para "As a result, it"
	line "may take time."

	para "However, an Odd"
	line "Egg is available"
	cont "just for you."

	para "It will be sent to"
	line "you right away."

	para "Please choose one"
	line "of the rooms in"

	para "the Center."
	line "An Odd Egg will be"

	para "sent from the"
	line "chosen room."
	done

UnknownText_0x6191f:
	text "Please wait a"
	line "moment."
	done

UnknownText_0x61936:
	text "Thank you for"
	line "waiting."

	para "We received your"
	line "Odd Egg."

	para "Here it is!"

	para "Please raise it"
	line "with loving care."
	done

UnknownText_0x61996:
	text "I'm awfully sorry."

	para "The Egg Ticket"
	line "exchange service"
	cont "isn't running now."
	done

UnknownText_0x619db:
	text "It's a #mon"
	line "News Machine."
	done

UnknownText_0x619f5:
	text "What would you"
	line "like to do?"
	done

UnknownText_0x61a11:
	text "#mon News is"
	line "news compiled from"

	para "the Save files of"
	line "#mon trainers."

	para "When reading the"
	line "News, your Save"

	para "file may be sent"
	line "out."

	para "The Save file data"
	line "will contain your"

	para "adventure log and"
	line "mobile profile."

	para "Your phone number"
	line "will not be sent."

	para "The contents of"
	line "the News will vary"

	para "depending on the"
	line "Save files sent by"

	para "you and the other"
	line "#mon trainers."

	para "You might even be"
	line "in the News!"
	done

UnknownText_0x61b7c:
	text "Would you like to"
	line "get the News?"
	done

UnknownText_0x61b9d:
	text "Reading the latest"
	line "News… Please wait."
	done

UnknownText_0x61bc4:
	text "There is no old"
	line "News…"
	done

UnknownText_0x61bdb:
	text "The News data is"
	line "corrupted."

	para "Please download"
	line "the News again."
	done

UnknownText_0x61c18:
	text "We're making"
	line "preparations."

	para "Please come back"
	line "later."
	done

UnknownText_0x61c4b:
	text "We will Save your"
	line "progress before"

	para "starting the News"
	line "Machine."
	done

UnknownText_0x61c89:
	text "Whoa, this #mon"
	line "Center is huge."

	para "They just built"
	line "this place. They"

	para "installed lots of"
	line "new machines too."
	done

UnknownText_0x61cef:
	text "I thought up a fun"
	line "new thing for the"
	cont "Trade Corner!"

	para "I make a Pidgey"
	line "hold Mail, then"

	para "put it up for"
	line "trade for another"
	cont "one!"

	para "If everyone did"
	line "that, Mail could"

	para "be traded with all"
	line "sorts of people!"

	para "I call it Pidgey"
	line "Mail!"

	para "If it becomes"
	line "popular, I might"

	para "make lots of new"
	line "friends!"
	done

UnknownText_0x61dfd:
	text "They said you can"
	line "trade #mon with"

	para "total strangers up"
	line "here."

	para "But they're still"
	line "adjusting things."
	done

UnknownText_0x61e5c:
	text "Some girl I don't"
	line "know sent me her"

	para "Hoppip."
	line "You should trade"

	para "for a #mon that"
	line "you want."
	done

UnknownText_0x61eb2:
	text "I received a"
	line "female Hoppip, but"
	cont "its named Stanley!"

	para "That's my dad's"
	line "name!"
	done

UnknownText_0x61efa:
	text "What is the News"
	line "Machine?"

	para "Does it get news"
	line "from a wider area"
	cont "than the radio?"
	done

UnknownText_0x61f48:
	text "The #com Center"
	line "will link with all"

	para "#mon Centers in"
	line "a wireless net."

	para "That must mean"
	line "I'll be able to"

	para "link with all"
	line "sorts of people."
	done

UnknownText_0x61fc9:
	text "The machines here"
	line "can't be used yet."

	para "Still, it's nice"
	line "coming to a trendy"

	para "place before other"
	line "people."
	done

UnknownText_0x6202c:
	text "My friend was in"
	line "the News a while"

	para "back. I was really"
	line "surprised!"
	done

UnknownText_0x6206d:
	text "I get anxious if I"
	line "don't check out"
	cont "the latest News!"
	done

UnknownText_0x620a1:
	text "If I get in the"
	line "News and become"

	para "famous, I bet I'll"
	line "be adored."

	para "I wonder how I"
	line "could get in the"
	cont "News?"
	done

GoldenrodPokecenter1FGameboyKidText:
	text "The Colosseum"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

UnknownText_0x62173:
	text "I came over here"
	line "when I got word"

	para "that Goldenrod's"
	line "#mon Center has"

	para "new machines that"
	line "no one's ever seen"
	cont "before."

	para "But it looks like"
	line "they're still busy"

	para "with all their"
	line "preparations…"
	done

UnknownText_0x62222:
	text "Just seeing all"
	line "these new things"

	para "here makes me feel"
	line "younger!"
	done

GoldenrodPokecenter1FLassText:
	text "A higher level"
	line "#mon doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#mon that is"
	line "the toughest."
	done

UnknownText_0x622f0:
	text "<PLAYER>, isn't it?"

	para "Congratulations!"

	para "As a special deal,"
	line "a GS Ball has been"
	cont "sent just for you!"

	para "Please accept it!"
	done

UnknownText_0x62359:
	text "Please do come"
	line "again!"
	done

UnknownText_0x62370:
	text "#com Center"
	line "1F Information"

	para "Left:"
	line "Administration"

	para "Center:"
	line "Trade Corner"

	para "Right:"
	line "#mon News"
	done

UnknownText_0x623c7:
	text "It's a #mon"
	line "News Machine!"

	para "It's not in"
	line "operation yet…"
	done

UnknownText_0x623fb:
	text "Oh my, your pack"
	line "looks so heavy!"

	para "Oh! Do you happen"
	line "to have something"
	cont "named Eon Mail?"

	para "My daughter is"
	line "after one."

	para "You can part with"
	line "one, can't you?"
	done

UnknownText_0x6248c:
	text "Give away an Eon"
	line "Mail?"
	done

UnknownText_0x624a4:
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done

UnknownText_0x624e9:
	text "My daughter will"
	line "be delighted!"
	done

UnknownText_0x62509:
	text "Oh? You don't have"
	line "one? Too bad."
	done

UnknownText_0x6252a:
	text "Oh… Well, another"
	line "time, then."
	done

UnknownText_0x62549:
	text "<PLAYER> gave away"
	line "the Eon Mail."
	done

GoldenrodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  3,  7, GOLDENROD_CITY, 15
	warp_event  4,  7, GOLDENROD_CITY, 15
	warp_event  0,  6, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 2 ; coord events
	coord_event  3,  7, SCENE_DEFAULT, GoldenrodPokecenter1F_GSBallSceneLeft
	coord_event  4,  7, SCENE_DEFAULT, GoldenrodPokecenter1F_GSBallSceneRight

	db 0 ; bg events

	db 5 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
	object_event  7,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPokefanF, -1
