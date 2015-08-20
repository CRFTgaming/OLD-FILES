/*
	@file Version: 1D
	@file name: core/onChoice.sqf
	@file Author: TAW_Tonic
	@file edit: 9/23/2012
	@file description: This file is called when a player makes his choice when he has a spawn beacon available to him weather or not he wants to still spawn there.
*/
private["_bool","_town","_spawn"];
_bool = _this select 0;

//Hotfix for Debug lands
if(isNil {waste_sBeacon}) then {waste_sBeacon = ObjNull;};

if((!isNull waste_sBeacon) && (alive waste_sBeacon)) then
{
	switch (_bool) do
	{
		case 0:
		{
			_town = towns call BIS_fnc_selectRandom;
			_spawn = [(getPos _town),5,65,1,0,0,0] call BIS_fnc_findSafePos;
			player setpos _spawn;
			player setPosATL [getPos player select 0, getPos player select 1, 0.1];
		};
		
		case 1:
		{
			_pos = getPosATL waste_sBeacon;
			
			if(waste_sBuse >= 3) then 
			{ 
				deleteVehicle waste_sBeacon;
				deleteMarkerLocal "myBeacon";
				waste_sBeacon = ObjNull;
				waste_sBuse = 0;

				_town = towns call BIS_fnc_selectRandom;
				_spawn = [(getPos _town),5,65,1,0,0,0] call BIS_fnc_findSafePos;
				player setpos _spawn;
				player setPosATL [getPos player select 0, getPos player select 1, 0.1];
			} else
			{
				player setPosATL _pos;
				waste_sBuse = waste_sBuse + 1;
			};
		};
	};
};

beacon_wait = false;
titleText["","PLAIN"];
titleFadeOut 1;