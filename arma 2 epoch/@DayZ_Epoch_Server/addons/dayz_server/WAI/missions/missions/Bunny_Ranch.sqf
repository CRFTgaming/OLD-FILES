//****************Bunny Ranch*****************
//*********Created by HollowAddiction*********
//**********http://www.craftdoge.com**********
//Credit to Creator of WAI http://epochmod.com/forum/index.php?/topic/4427-wicked-aimission-system/
//Credit to MattL for Support http://opendayz.net/members/matt-l.7134/

private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Large Gun Box
_box = createVehicle ["BAF_VehicleBox",[(_position select 0),(_position select 1), .5], [], 0, "CAN_COLLIDE"];
[_box] call Bunny_Safe;
 
diag_log format["WAI: Mission Bunny Ranch Started At %1",_position];

//Ranch & Girls
_baserunover = createVehicle ["Land_A_Villa_EP1",[(_position select 0), (_position select 1),0],[], 0, "CAN_COLLIDE"];

_rndnum = round (random 3) + 4;
[[_position select 0, _position select 1, 0],2,1,6,0,"","RU_Hooker2","6",true] call spawn_group;
[[_position select 0, _position select 1, 0],2,1,6,0,"","RU_Hooker3","6",true] call spawn_group;
[[_position select 0, _position select 1, 0],2,1,6,0,"","RU_Hooker4","6",true] call spawn_group;
[[_position select 0, _position select 1, 0],2,1,6,0,"","RU_Hooker5","6",true] call spawn_group;

//Bunny Ranch Owner
[[_position select 0, _position select 1, 0],3,1,5,3,"","Ins_Lopotev","5",true] call spawn_group;
 
 
[_position,"Bunny Ranch"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers2.sqf";
[nil,nil,rTitleText,"The Owner of the Bunny Ranch has been beating his girls again, Go give him a taste of his own medicine", "PLAIN",10] call RE;
_missiontimeout = true;
_cleanmission = false;
_playerPresent = false;
_starttime = floor(time);
while {_missiontimeout} do {
	sleep 5;
	_currenttime = floor(time);
	{if((isPlayer _x) AND (_x distance _position <= 150)) then {_playerPresent = true};}forEach playableUnits;
	if (_currenttime - _starttime >= wai_mission_timeout) then {_cleanmission = true;};
	if ((_playerPresent) OR (_cleanmission)) then {_missiontimeout = false;};
};
if (_playerPresent) then {
	waitUntil
	{
		sleep 5;
		_playerPresent = false;
		{if((isPlayer _x) AND (_x distance _position <= 30)) then {_playerPresent = true};}forEach playableUnits;
		(_playerPresent)
	};
	diag_log format["WAI: Mission Bunny Ranch Ended At %1",_position];
	[nil,nil,rTitleText,"The Bunny Ranch is YOURS! The Girls want to show their gratitude", "PLAIN",10] call RE;
} else {
	clean_running_mission = True;
	deleteVehicle _box;
	{_cleanunits = _x getVariable "missionclean";
	if (!isNil "_cleanunits") then {
		switch (_cleanunits) do {
			case "ground" :  {ai_ground_units = (ai_ground_units -1);};
			case "air" :     {ai_air_units = (ai_air_units -1);};
			case "vehicle" : {ai_vehicle_units = (ai_vehicle_units -1);};
			case "static" :  {ai_emplacement_units = (ai_emplacement_units -1);};
		};
		deleteVehicle _x;
		sleep 0.05;
	};
	} forEach allUnits;
 
	diag_log format["WAI: Mission Bunny Ranch At %1",_position];
	[nil,nil,rTitleText,"News reports of several women found beaten to death!", "PLAIN",10] call RE;
};
 
missionrunning = false;