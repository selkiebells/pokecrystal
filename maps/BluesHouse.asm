	const_def 2 ; object constants
	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DaisyScript:
	faceplayer
	opentext
	checkcode VAR_HOUR
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
	buttonsound
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
	text "Daisy: Hi! My kid"
	line "brother is the Gym"

	para "Leader in Viridian"
	line "City."

	para "But he goes out"
	line "of town so often,"

	para "it causes problems"
	line "for the trainers."
	done

DaisyOfferGroomingText:
	text "Daisy: Hi! Good"
	line "timing. I'm about"
	cont "to have some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your #mon"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done

DaisyWhichMonText:
	text "Daisy: Which one"
	line "should I groom?"
	done

DaisyAlrightText:
	text "Daisy: OK, I'll"
	line "get it looking"
	cont "nice in no time."
	done

GroomedMonLooksContentText:
	text_from_ram wStringBuffer3
	text " looks"
	line "content."
	done

DaisyAllDoneText:
	text "Daisy: There you"
	line "go! All done."

	para "See? Doesn't it"
	line "look nice?"

	para "It's such a cute"
	line "#mon."
	done

DaisyAlreadyGroomedText:
	text "Daisy: I always"
	line "have tea around"

	para "this time. Come"
	line "join me."
	done

DaisyRefusedText:
	text "Daisy: You don't"
	line "want to have one"

	para "groomed? OK, we'll"
	line "just have tea."
	done

DaisyCantGroomEggText:
	text "Daisy: Oh, sorry."
	line "I honestly can't"
	cont "groom an Egg."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
