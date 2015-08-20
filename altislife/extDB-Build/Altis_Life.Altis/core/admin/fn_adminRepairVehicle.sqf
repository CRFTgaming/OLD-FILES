#include <macro.h>
/*
	File: fn_adminRepairVehicle.sqf
	Author: San Mehat
	
	Description: Repairs vehicles.
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};
_close_vehicles = nearestobjects [player, ["Car", "Truck", "Tank"], 10];
{
	_x setDamage 0;
} forEach _close_vehicles;
