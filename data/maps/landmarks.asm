landmark: MACRO
; x, y, name
	db \1, \2
	dw \3
ENDM

Landmarks: ; 0x1ca8c3
; entries correspond to constants/landmark_constants.asm
	landmark   0,   0, SpecialMapName
	landmark 148, 116, NewBarkTownName
	landmark 136, 116, Route29Name
	landmark 108, 116, CherrygroveCityName
	landmark 108,  96, Route30Name
	landmark 104,  76, Route31Name
	landmark  92,  76, VioletCityName
	landmark  93,  74, SproutTowerName
	landmark  92, 108, Route32Name
	landmark  84,  92, RuinsOfAlphName
	landmark  92, 140, UnionCaveName
	landmark  90, 140, Route33Name
	landmark  76, 140, AzaleaTownName
	landmark  78, 138, SlowpokeWellName
	landmark  60, 136, IlexForestName
	landmark  60, 128, Route34Name
	landmark  60, 108, GoldenrodCityName
	landmark  58, 108, RadioTowerName
	landmark  60,  92, Route35Name
	landmark  60,  76, NationalParkName
	landmark  72,  76, Route36Name
	landmark  76,  68, Route37Name
	landmark  76,  60, EcruteakCityName
	landmark  78,  58, TinTowerName
	landmark  74,  58, BurnedTowerName
	landmark  60,  60, Route38Name
	landmark  44,  64, Route39Name
	landmark  44,  76, OlivineCityName
	landmark  46,  78, LighthouseName
	landmark  36,  72, BattleTowerName
	landmark  36,  80, Route40Name
	landmark  36, 108, WhirlIslandsName
	landmark  36, 116, Route41Name
	landmark  28, 116, CianwoodCityName
	landmark 100,  60, Route42Name
	landmark  92,  60, MtMortarName
	landmark 116,  60, MahoganyTownName
	landmark 116,  52, Route43Name
	landmark 116,  44, LakeOfRageName
	landmark 128,  60, Route44Name
	landmark 138,  54, IcePathName
	landmark 140,  60, BlackthornCityName
	landmark 140,  52, DragonsDenName
	landmark 140,  80, Route45Name
	landmark 120,  88, DarkCaveName
	landmark 132, 104, Route46Name
	landmark 156,  84, SilverCaveName
	landmark  60, 124, PalletTownName
	landmark  60, 108, Route1Name
	landmark  60,  92, ViridianCityName
	landmark  60,  80, Route2Name
	landmark  60,  68, PewterCityName
	landmark  72,  68, Route3Name
	landmark  84,  68, MtMoonName
	landmark  96,  68, Route4Name
	landmark 108,  68, CeruleanCityName
	landmark 108,  60, Route24Name
	landmark 116,  52, Route25Name
	landmark 108,  76, Route5Name
	landmark 116,  92, UndergroundName
	landmark 108,  92, Route6Name
	landmark 108, 100, VermilionCityName
	landmark  96,  76, DiglettsCaveName
	landmark  96,  84, Route7Name
	landmark 124,  84, Route8Name
	landmark 124,  68, Route9Name
	landmark 140,  68, RockTunnelName
	landmark 140,  72, Route10Name
	landmark 140,  76, PowerPlantName
	landmark 140,  84, LavenderTownName
	landmark 148,  84, LavRadioTowerName
	landmark  84,  84, CeladonCityName
	landmark 108,  84, SaffronCityName
	landmark 124, 100, Route11Name
	landmark 140,  96, Route12Name
	landmark 132, 116, Route13Name
	landmark 124, 128, Route14Name
	landmark 112, 132, Route15Name
	landmark  76,  84, Route16Name
	landmark  76, 108, Route17Name
	landmark  88, 132, Route18Name
	landmark 100, 132, FuchsiaCityName
	landmark 100, 144, Route19Name
	landmark  84, 148, Route20Name
	landmark  76, 148, SeafoamIslandsName
	landmark  60, 148, CinnabarIslandName
	landmark  60, 136, Route21Name
	landmark  44,  84, Route22Name
	landmark  36,  68, VictoryRoadName
	landmark  36,  60, Route23Name
	landmark  36,  52, IndigoPlateauName
	landmark  36, 108, Route26Name
	landmark  28, 116, Route27Name
	landmark  20, 116, TohjoFallsName
	landmark  28,  84, Route28Name
	landmark 148, 132, FastShipName
; 0x1caa43

NewBarkTownName:     db "New Bark¯Town@"
CherrygroveCityName: db "Cherrygrove¯City@"
VioletCityName:      db "Violet City@"
AzaleaTownName:      db "Azalea Town@"
GoldenrodCityName:   db "Goldenrod¯City@"
EcruteakCityName:    db "Ecruteak¯City@"
OlivineCityName:     db "Olivine¯City@"
CianwoodCityName:    db "Cianwood¯City@"
MahoganyTownName:    db "Mahogany¯Town@"
BlackthornCityName:  db "Blackthorn¯City@"
LakeOfRageName:      db "Lake OF¯Rage@"
SilverCaveName:      db "Silver Cave@"
SproutTowerName:     db "Sprout¯Tower@"
RuinsOfAlphName:     db "Ruins¯OF Alph@"
UnionCaveName:       db "Union Cave@"
SlowpokeWellName:    db "Slowpoke¯Well@"
RadioTowerName:      db "Radio Tower@"
PowerPlantName:      db "Power Plant@"
NationalParkName:    db "National¯Park@"
TinTowerName:        db "TIN Tower@"
LighthouseName:      db "Lighthouse@"
WhirlIslandsName:    db "Whirl¯Islands@"
MtMortarName:        db "MT.Mortar@"
DragonsDenName:      db "Dragon'S¯DEN@"
IcePathName:         db "ICE Path@"
NotApplicableName:   db "N/A@" ; "オ�ケや��" ("Haunted House") in Japanese
PalletTownName:      db "Pallet Town@"
ViridianCityName:    db "Viridian¯City@"
PewterCityName:      db "Pewter City@"
CeruleanCityName:    db "Cerulean¯City@"
LavenderTownName:    db "Lavender¯Town@"
VermilionCityName:   db "Vermilion¯City@"
CeladonCityName:     db "Celadon¯City@"
SaffronCityName:     db "Saffron¯City@"
FuchsiaCityName:     db "Fuchsia¯City@"
CinnabarIslandName:  db "Cinnabar¯Island@"
IndigoPlateauName:   db "Indigo¯Plateau@"
VictoryRoadName:     db "Victory¯Road@"
MtMoonName:          db "Mt.Moon@"
RockTunnelName:      db "Rock Tunnel@"
LavRadioTowerName:   db "Lav¯Radio Tower@"
SilphCoName:         db "Silph CO.@"
SafariZoneName:      db "Safari Zone@"
SeafoamIslandsName:  db "Seafoam¯Islands@"
PokemonMansionName:  db "#mon¯Mansion@"
CeruleanCaveName:    db "Cerulean¯Cave@"
Route1Name:          db "Route 1@"
Route2Name:          db "Route 2@"
Route3Name:          db "Route 3@"
Route4Name:          db "Route 4@"
Route5Name:          db "Route 5@"
Route6Name:          db "Route 6@"
Route7Name:          db "Route 7@"
Route8Name:          db "Route 8@"
Route9Name:          db "Route 9@"
Route10Name:         db "Route 10@"
Route11Name:         db "Route 11@"
Route12Name:         db "Route 12@"
Route13Name:         db "Route 13@"
Route14Name:         db "Route 14@"
Route15Name:         db "Route 15@"
Route16Name:         db "Route 16@"
Route17Name:         db "Route 17@"
Route18Name:         db "Route 18@"
Route19Name:         db "Route 19@"
Route20Name:         db "Route 20@"
Route21Name:         db "Route 21@"
Route22Name:         db "Route 22@"
Route23Name:         db "Route 23@"
Route24Name:         db "Route 24@"
Route25Name:         db "Route 25@"
Route26Name:         db "Route 26@"
Route27Name:         db "Route 27@"
Route28Name:         db "Route 28@"
Route29Name:         db "Route 29@"
Route30Name:         db "Route 30@"
Route31Name:         db "Route 31@"
Route32Name:         db "Route 32@"
Route33Name:         db "Route 33@"
Route34Name:         db "Route 34@"
Route35Name:         db "Route 35@"
Route36Name:         db "Route 36@"
Route37Name:         db "Route 37@"
Route38Name:         db "Route 38@"
Route39Name:         db "Route 39@"
Route40Name:         db "Route 40@"
Route41Name:         db "Route 41@"
Route42Name:         db "Route 42@"
Route43Name:         db "Route 43@"
Route44Name:         db "Route 44@"
Route45Name:         db "Route 45@"
Route46Name:         db "Route 46@"
DarkCaveName:        db "Dark Cave@"
IlexForestName:      db "Ilex¯Forest@"
BurnedTowerName:     db "Burned¯Tower@"
FastShipName:        db "Fast Ship@"
ViridianForestName:  db "Viridian¯Forest@"
DiglettsCaveName:    db "Diglett's¯Cave@"
TohjoFallsName:      db "Tohjo Falls@"
UndergroundName:     db "Underground@"
BattleTowerName:     db "Battle¯Tower@"
SpecialMapName:      db "Special@"
