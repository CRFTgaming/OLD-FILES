//House Crash
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra weed box
 _box = createVehicle ["BAF_BasicWeapons",[(_position select 0) + 16,(_position select 1) + 6,0], [], 0, "CAN_COLLIDE"];
[_box] call Medical_Supply_Box;

 _box2 = createVehicle ["BAF_Launchers",[(_position select 0) + 9,(_position select 1) - 12.9,0], [], 0, "CAN_COLLIDE"];
[_box2] call Extra_Large_Gun_Box;

diag_log format["WAI: Mission House Crash Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["Land_R_HouseV2_02",[(_position select 0) + 0.01, (_position select 1) + 0.01,-0.1],[], 0, "CAN_COLLIDE"];
_baserunover setDir -210;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["UH60_ARMY_Wreck_DZ",[(_position select 0) + 6, (_position select 1) + 0.5,0.16],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir -243.529;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["Land_Campfire_burning",[(_position select 0) + 5, (_position select 1) + 0.8,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 0;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["Land_Campfire_burning",[(_position select 0) + 7, (_position select 1) + 0.5,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir 0;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 17, (_position select 1) - 18, 0],_rndnum,1,"Random",4,"","US_Soldier_Officer_EP1","Random",true] call spawn_group;
[[(_position select 0) - 11, (_position select 1) + 4, 0],3,1,"Random",4,"","US_Soldier_SL_EP1","Random",true] call spawn_group;
[[(_position select 0) + 15, (_position select 1) - 15, 0],3,1,"Random",4,"","US_Soldier_Marksman_EP1","Random",true] call spawn_group;
[[(_position select 0) + 2, (_position select 1) + 18, 0],3,1,"Random",4,"","US_Soldier_Light_EP1","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",3,"","US_Soldier_Light_EP1","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 43, _position select 1, 0],[(_position select 0) - 33, _position select 1, 0],50,2,"BTR40_MG_TK_INS_EP1",1] spawn vehicle_patrol;

[_position,"Heli Crash"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"A UH60 carrying weapons and supplies crash landed...check your map", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission House Crash Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors secured the crash site", "PLAIN",10] call RE;
} else {
	clean_running_mission = True;
	deleteVehicle _box;
	deleteVehicle _box2;
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
 
	diag_log format["WAI: Mission House Crash At %1",_position];
	[nil,nil,rTitleText,"Survivors did not secure the crash site...time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;