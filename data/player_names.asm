ChrisNameMenuHeader: ; 882b5
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; ????
	db 0 ; default option

.MaleNames: ; 882be
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "New Name@"
MalePlayerNameArray: ; 882c9
	db "Gold@"
	db "Ethan@"
	db "Jimmy@"
	db "Chris@"
	db 2 ; displacement
	db " Name @" ; title

KrisNameMenuHeader: ; 882e5
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; ????
	db 0 ; default option

.FemaleNames: ; 882ee
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "New Name@"
FemalePlayerNameArray: ; 882f9
	db "Crystal@"
	db "Kris@"
	db "Lyra@"
	db "Marina@"
	db 2 ; displacement
	db " Name @" ; title
