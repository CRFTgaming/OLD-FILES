#include <macro.h>
/*
	File: fn_adminRepairBuild.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
	No it doesn't, it repairs buildings.
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};
_buildings = nearestobjects [player, ["Building"], 250];
{
	_x setDamage 0;
} forEach _buildings;

_nBuilding = nearestBuilding player;
_nBuilding setDamage 0;
