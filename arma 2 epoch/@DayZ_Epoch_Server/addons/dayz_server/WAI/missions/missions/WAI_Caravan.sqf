//Caravan Ambush
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra Large Gun Box
 _box = createVehicle ["BAF_BasicAmmunitionBox",[(_position select 0) + -18,(_position select 1) + 4,0], [], 0, "CAN_COLLIDE"];
[_box] call Extra_Large_Gun_Box;

diag_log format["WAI: Mission Caravan Ambush Started At %1",_position];

//Buildings 
	_baserunover = createVehicle ["Land_Market_stalls_01_EP1",[(_position select 0) + 0.01, (_position select 1) + 4,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover setDir 0;
	_baserunover setVectorUp surfaceNormal position _baserunover;
	_baserunover1 = createVehicle ["Land_Market_shelter_EP1",[(_position select 0) - 0.01, (_position select 1) - 2,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover1 setDir 0;
	_baserunover1 setVectorUp surfaceNormal position _baserunover1;
	_baserunover2 = createVehicle ["Land_stand_small_EP1",[(_position select 0) - 0.01, (_position select 1) - 2,-0.15],[], 0, "CAN_COLLIDE"];
	_baserunover2 setDir 0;
	_baserunover2 setVectorUp surfaceNormal position _baserunover2;
	_baserunover3 = createVehicle ["Land_transport_kiosk_EP1",[(_position select 0) - 4, (_position select 1) - 2,-0.15],[], 0, "CAN_COLLIDE"];
	_baserunover3 setDir 0;
	_baserunover3 setVectorUp surfaceNormal position _baserunover3;
	_baserunover4 = createVehicle ["UralWreck",[(_position select 0) - 4, (_position select 1) - 12,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover4 setDir 0;
	_baserunover4 setVectorUp surfaceNormal position _baserunover4;
	_baserunover5 = createVehicle ["Land_transport_crates_EP1",[(_position select 0) - 4, (_position select 1) - 6,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover5 setDir 0;
	_baserunover5 setVectorUp surfaceNormal position _baserunover5;
	_baserunover6 = createVehicle ["Land_transport_crates_EP1",[(_position select 0) + 3, (_position select 1) - 7,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover6 setDir 0;
	_baserunover6 setVectorUp surfaceNormal position _baserunover6;
	_baserunover7 = createVehicle ["Fort_Crate_wood",[(_position select 0) - 1, (_position select 1) - 7,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover7 setDir 0;
	_baserunover7 setVectorUp surfaceNormal position _baserunover7;
	_baserunover8 = createVehicle ["Land_bags_EP1",[(_position select 0) + 3.3, (_position select 1) - 2,-0.2],[], 0, "CAN_COLLIDE"];
	_baserunover8 setDir 0;
	_baserunover8 setVectorUp surfaceNormal position _baserunover8;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 2, (_position select 1) - 1, 0],_rndnum,1,"Random",4,"","TK_Soldier_GL_EP1","Random",true] call spawn_group;
[[(_position select 0) + 1, (_position select 1) + 10, 0],3,1,"Random",4,"","TK_Soldier_GL_EP1","Random",true] call spawn_group;
[[(_position select 0) - 13, (_position select 1) - 15, 0],3,1,"Random",4,"","TK_Soldier_Officer_EP1","Random",true] call spawn_group;
[[(_position select 0) - 12, (_position select 1) + 13, 0],3,1,"Random",4,"","TK_Soldier_GL_EP1","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",3,"","TK_Soldier_GL_EP1","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 33, _position select 1, 0],[(_position select 0) - 33, _position select 1, 0],50,2,"Offroad_DSHKM_Gue",1] spawn vehicle_patrol;

//Turrets
[[[(_position select 0) - 1, (_position select 1) + 39, 0]],"KORD_high_TK_EP1",0.8,"TK_Soldier_GL_EP1",1,2,"","Random",true] call spawn_static;
[[[(_position select 0) - 3, (_position select 1) - 21, 0]],"KORD_high_TK_EP1",0.8,"TK_Soldier_GL_EP1",1,2,"","Random",true] call spawn_static;

[_position,"AMBUSH"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"A trader Caravan was ambushed...Go rescue them or take their loot..which ever", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Caravan Ambush Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors secured the caravan", "PLAIN",10] call RE;
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
 
	diag_log format["WAI: Mission Caravan Ambush At %1",_position];
	[nil,nil,rTitleText,"The U.N came to the rescue and saved the caravan...time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;