//Cannibals
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra Large Gun Box
 _box = createVehicle ["GraveDZE",[(_position select 0) + 0.01,(_position select 1) + 2,0], [], 0, "CAN_COLLIDE"];
[_box] call Light_Grave_Box;

 _box2 = createVehicle ["GraveDZE",[(_position select 0) + 2,(_position select 1) + 1.2,0], [], 0, "CAN_COLLIDE"];
[_box2] call Light_Grave2_Box;

 _box3 = createVehicle ["GraveDZE",[(_position select 0) - 11,(_position select 1) - 0.02,0], [], 0, "CAN_COLLIDE"];
[_box3] call Light_Grave3_Box;

 _box4 = createVehicle ["GraveDZE",[(_position select 0) + 1.2,(_position select 1) - 1.1,0], [], 0, "CAN_COLLIDE"];
[_box4] call Light_Grave4_Box;

 _box5 = createVehicle ["TKBasicWeapons_EP1",[(_position select 0) + 5,(_position select 1) + 7,0], [], 0, "CAN_COLLIDE"];
[_box5] call Sniper_Gun_Box;
 
diag_log format["WAI: Mission Cannibals Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["MAP_R2_RockWall",[(_position select 0) + 10, (_position select 1) + 28,-4.15],[], 0, "CAN_COLLIDE"];
_baserunover setDir 0;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["MAP_R2_RockWall",[(_position select 0) - 23, (_position select 1) + 9,-6.55],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir -96.315;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["MAP_R2_RockWall",[(_position select 0) + 25, (_position select 1) + 4,-7.74],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir -262.32;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["MAP_R2_RockWall", [(_position select 0) + 1, (_position select 1) + 7,10.81],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir -29.29;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["MAP_R2_RockWall", [(_position select 0) + 18, (_position select 1) - 11,-5.509],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir -222.72;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;
_baserunover5 = createVehicle ["MAP_R2_RockWall", [(_position select 0) - 22, (_position select 1) + 6,-11.55],[], 0, "CAN_COLLIDE"];
_baserunover5 setDir -44.01;
_baserunover5 setVectorUp surfaceNormal position _baserunover5;
_baserunover6 = createVehicle ["MAP_t_picea2s",[(_position select 0) - 13, (_position select 1) - 32,-0.1],[], 0, "CAN_COLLIDE"];
_baserunover6 setDir 0;
_baserunover6 setVectorUp surfaceNormal position _baserunover6;
_baserunover7 = createVehicle ["MAP_t_picea2s",[(_position select 0) - 17, (_position select 1) + 6,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover7 setDir 0;
_baserunover7 setVectorUp surfaceNormal position _baserunover7;
_baserunover8 = createVehicle ["MAP_t_pinusN2s",[(_position select 0) - 24, (_position select 1) - 53,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover8 setDir 0;
_baserunover8 setVectorUp surfaceNormal position _baserunover8;
_baserunover9 = createVehicle ["MAP_t_pinusN1s", [(_position select 0) - 22, (_position select 1) - 42,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover9 setDir 0;
_baserunover9 setVectorUp surfaceNormal position _baserunover9;
_baserunover10 = createVehicle ["MAP_t_picea1s", [(_position select 0) - 22.3, (_position select 1) - 35,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover10 setDir 0;
_baserunover10 setVectorUp surfaceNormal position _baserunover10;
_baserunover11 = createVehicle ["MAP_t_picea2s", [(_position select 0) - 33, (_position select 1) - 53,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover11 setDir 0;
_baserunover11 setVectorUp surfaceNormal position _baserunover11;
_baserunover12 = createVehicle ["MAP_t_picea2s",[(_position select 0) - 3, (_position select 1)- 43,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover12 setDir 0;
_baserunover12 setVectorUp surfaceNormal position _baserunover12;
_baserunover13 = createVehicle ["MAP_t_picea2s",[(_position select 0) + 28, (_position select 1) - 39,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover13 setDir 0;
_baserunover13 setVectorUp surfaceNormal position _baserunover13;
_baserunover14 = createVehicle ["MAP_t_picea2s",[(_position select 0) + 13, (_position select 1) +43,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover14 setDir 0;
_baserunover14 setVectorUp surfaceNormal position _baserunover14;
_baserunover15 = createVehicle ["MAP_t_picea1s", [(_position select 0) + 57, (_position select 1) + 11,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover15 setDir 0;
_baserunover15 setVectorUp surfaceNormal position _baserunover15;
_baserunover16 = createVehicle ["MAP_t_quercus3s", [(_position select 0) + 31, (_position select 1) + 49.3,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover16 setDir 0;
_baserunover16 setVectorUp surfaceNormal position _baserunover16;
_baserunover17 = createVehicle ["MAP_t_quercus3s", [(_position select 0) - 47, (_position select 1) + 20,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover17 setDir 0;
_baserunover17 setVectorUp surfaceNormal position _baserunover17;
_baserunover18 = createVehicle ["MAP_R2_Rock1", [(_position select 0) + - 47, (_position select 1) - 45,-14.29],[], 0, "CAN_COLLIDE"];
_baserunover18 setDir 0;
_baserunover18 setVectorUp surfaceNormal position _baserunover18;
_baserunover19 = createVehicle ["Land_Campfire_burning",[(_position select 0) - 0.01, (_position select 1) - 0.01,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover19 setDir 0;
_baserunover19 setVectorUp surfaceNormal position _baserunover19;
_baserunover20 = createVehicle ["Mass_grave",[(_position select 0) - 6, (_position select 1) - 7,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover20 setDir -50.94;
_baserunover20 setVectorUp surfaceNormal position _baserunover20;
_baserunover21 = createVehicle ["SKODAWreck",[(_position select 0) - 11, (_position select 1) - 44,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover21 setDir 151.15;
_baserunover21 setVectorUp surfaceNormal position _baserunover21;
_baserunover22 = createVehicle ["datsun01Wreck", [(_position select 0) - 2, (_position select 1) - 60,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover22 setDir 34.54;
_baserunover22 setVectorUp surfaceNormal position _baserunover22;
_baserunover23 = createVehicle ["UralWreck", [(_position select 0) - 41.3, (_position select 1) - 26,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover23 setDir 19.154966;
_baserunover23 setVectorUp surfaceNormal position _baserunover23;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 12, (_position select 1) + 42.5, 0],_rndnum,1,"Random",4,"","TK_GUE_Soldier_AR_EP1","Random",true] call spawn_group;
[[(_position select 0) + 11, (_position select 1) + 41, 0],6,1,"Random",4,"","TK_INS_Soldier_AR_EP1","Random",true] call spawn_group;
[[(_position select 0) - 12, (_position select 1) - 43, 0],3,1,"Random",4,"","TK_GUE_Soldier_5_EP1","Random",true] call spawn_group;
[[(_position select 0) - 13, (_position select 1) - 43, 0],5,1,"Random",4,"","TK_INS_Soldier_AR_EP1","Random",true] call spawn_group;

[_position,"Cannibal"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"Cannibals are hiding in a cave...Check your map", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Cannibals Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors secured the Cannibals Cave", "PLAIN",10] call RE;
} else {
	clean_running_mission = True;
	deleteVehicle _box;
	deleteVehicle _box2;
	deleteVehicle _box3;
	deleteVehicle _box4;	
	deleteVehicle _box5;
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
 
	diag_log format["WAI: Mission Cannibals At %1",_position];
	[nil,nil,rTitleText,"The survivors were unable to locate the Cannibals", "PLAIN",10] call RE;
};
 
missionrunning = false;