#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_list = _display displayCtrl 2902;

#define CtrlCompensate 2904
#define CtrlSpectate 2905
#define CtrlTeleportMap 2906
#define CtrlTeleportTargetHere 2907
#define CtrlGodMode 2908
#define CtrlFreezeTarget 2909
#define CtrlShowMarkers 2910
#define CtrlRepairBuilding 2911
#define CtrlImpoundAll 2912
#define CtrlRepairVehicle 2913
#define CtrlTeleportToTarget 2914
#define CtrlExileTarget 2915

// Set some safe defaults
ctrlShow [CtrlCompensate, false];
ctrlShow [CtrlSpectate, false];
ctrlShow [CtrlTeleportMap, false];
ctrlShow [CtrlTeleportTargetHere, false];
ctrlShow [CtrlGodMode, false];
ctrlShow [CtrlFreezeTarget, false];
ctrlShow [CtrlShowMarkers, false];
ctrlShow [CtrlRepairBuilding, false];
ctrlShow [CtrlImpoundAll, false];
ctrlShow [CtrlRepairVehicle, false];
ctrlShow [CtrlTeleportToTarget, false];
ctrlShow [CtrlExileTarget, false];

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

// Quick lookup chart for admin levels:
// Admin level 1 = Moderators
// Admin level 2 = Lower admin
// Admin level 3 = owners

switch(__GETC__(life_adminlevel)) do {
	case 1: {
		ctrlShow [CtrlCompensate, true];
		ctrlShow [CtrlExileTarget, true];
		ctrlShow [CtrlTeleportToTarget, true];
		ctrlShow [CtrlTeleportMap, true];
		ctrlShow [CtrlTeleportTargetHere, true];
	};

	case 2: {
		ctrlShow [CtrlCompensate, true];
		ctrlShow [CtrlSpectate, true];
		ctrlShow [CtrlTeleportMap, true];
		ctrlShow [CtrlTeleportTargetHere, true];
		ctrlShow [CtrlFreezeTarget, true];
		ctrlShow [CtrlShowMarkers, true];
		ctrlShow [CtrlRepairBuilding, true];
		ctrlShow [CtrlImpoundAll, true];
		ctrlShow [CtrlRepairVehicle, true];
		ctrlShow [CtrlTeleportToTarget, true];
		ctrlShow [CtrlExileTarget, true];
	};

	case 3: {
		ctrlShow [CtrlCompensate, true];
		ctrlShow [CtrlSpectate, true];
		ctrlShow [CtrlTeleportMap, true];
		ctrlShow [CtrlTeleportTargetHere, true];
		ctrlShow [CtrlGodMode, true];
		ctrlShow [CtrlFreezeTarget, true];
		ctrlShow [CtrlShowMarkers, true];
		ctrlShow [CtrlRepairBuilding, true];
		ctrlShow [CtrlImpoundAll, true];
		ctrlShow [CtrlRepairVehicle, true];
		ctrlShow [CtrlTeleportToTarget, true];
		ctrlShow [CtrlExileTarget, true];
	};
};

//Purge List
lbClear _list;

{
	_side = switch(side _x) do {case west: {"Cop"}; case civilian: {"Civ"}; case independent: {"Medic"}; default {"Unknown"};};
	_list lbAdd format["%1 - %2", _x getVariable["realname",name _x],_side];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
