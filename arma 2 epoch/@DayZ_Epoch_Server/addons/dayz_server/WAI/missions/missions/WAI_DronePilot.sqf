//Drone Pilot
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra Sniper box
 _box = createVehicle ["BAF_BasicWeapons",[(_position select 0) + 0.01,(_position select 1) + 0.01,0], [], 0, "CAN_COLLIDE"];
[_box] call Sniper_Gun_Box;

diag_log format["WAI: Mission Drone Pilot Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["RU_WarfareBUAVterminal",[(_position select 0) - 6, (_position select 1) - 15,-0.1],[], 0, "CAN_COLLIDE"];
_baserunover setDir -153.81;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["Land_budova4_in",[(_position select 0) - 13, (_position select 1) + 3.5,-1.16],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["Land_Vysilac_FM",[(_position select 0) - 10, (_position select 1) - 7,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 0;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["MAP_runway_poj_draha",[(_position select 0) + 10, (_position select 1) + 5,0],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir 0;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["MQ9PredatorB",[(_position select 0) + 11, (_position select 1) - 28,0],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir 0;
_baserunover4 setVehicleLock "LOCKED";
_baserunover4 setVectorUp surfaceNormal position _baserunover4;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 17, (_position select 1) - 18, 0],_rndnum,1,"Random",4,"","US_Soldier_Pilot_EP1","Random",true] call spawn_group;
[[(_position select 0) - 11, (_position select 1) + 9, 0],3,1,"Random",4,"","US_Soldier_Officer_EP1","Random",true] call spawn_group;
[[(_position select 0) + 15, (_position select 1) - 15, 0],3,1,"Random",4,"","US_Soldier_SL_EP1","Random",true] call spawn_group;
[[(_position select 0) + 2, (_position select 1) + 18, 0],3,1,"Random",4,"","US_Soldier_SL_EP1","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",3,"","US_Soldier_Medic_EP1","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 55, _position select 1, 0],[(_position select 0) + 17, _position select 1, 0],50,2,"HMMWV_Armored",1] spawn vehicle_patrol;

//Turrets
[[[(_position select 0) - 7, (_position select 1) + 19, 0]],"KORD_high_TK_EP1",0.8,"US_Soldier_Medic_EP1",1,2,"","Random",true] call spawn_static;

[_position,"Drone Pilot"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"Bandits are training drone pilots at a secret airfield...check your map", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Drone Pilot Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors secured the drones", "PLAIN",10] call RE;
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
 
	diag_log format["WAI: Mission Drone Pilot At %1",_position];
	[nil,nil,rTitleText,"Survivors did not secure the drones...time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;