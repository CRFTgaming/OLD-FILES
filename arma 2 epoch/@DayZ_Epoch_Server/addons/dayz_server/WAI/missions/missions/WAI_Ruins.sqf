//Castle Ruins
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra Large Gun Box
 _box = createVehicle ["GraveDZE",[(_position select 0) + 1,(_position select 1) - 2,0], [], 0, "CAN_COLLIDE"];
[_box] call Grave_Box;

 _box2 = createVehicle ["GraveDZE",[(_position select 0) + 2,(_position select 1) + 4,0], [], 0, "CAN_COLLIDE"];
[_box2] call Grave2_Box;

 _box3 = createVehicle ["GraveDZE",[(_position select 0) + 10,(_position select 1) - 2,0], [], 0, "CAN_COLLIDE"];
[_box3] call Grave3_Box;

 _box4 = createVehicle ["GraveDZE",[(_position select 0) - 4,(_position select 1) - 2,0], [], 0, "CAN_COLLIDE"];
[_box4] call Grave4_Box;
 
diag_log format["WAI: Mission Castle Ruins Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["Mass_grave",[(_position select 0) + 7, (_position select 1) + 4,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover setDir 0;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["Land_Campfire_burning",[(_position select 0) - 0.01, (_position select 1) - 0.01,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["MAP_A_Castle_Donjon_ruins",[(_position select 0) + 2, (_position select 1) - 2,-2.44],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 0;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["MAP_t_quercus3s", [(_position select 0) + 14, (_position select 1) - 8,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir 0;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["MAP_t_salix2s", [(_position select 0) - 3, (_position select 1) + 12,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir 0;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;
_baserunover5 = createVehicle ["MAP_t_fraxinus2W", [(_position select 0) - 6.5, (_position select 1) - 10,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover5 setDir 0;
_baserunover5 setVectorUp surfaceNormal position _baserunover5;
_baserunover6 = createVehicle ["MAP_t_carpinus2s",[(_position select 0) - 11, (_position select 1) - 3,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover6 setDir 59.784;
_baserunover6 setVectorUp surfaceNormal position _baserunover6;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 2, (_position select 1) + 4.5, 0],_rndnum,1,"Random",4,"","GUE_Soldier_CO_DZ","Random",true] call spawn_group;
[[(_position select 0) + 13, (_position select 1) + 15, 0],4,1,"Random",4,"","Ins_Soldier_GL_DZ","Random",true] call spawn_group;
[[(_position select 0) - 23, (_position select 1) - 25, 0],4,1,"Random",4,"","GUE_Soldier_CO_DZ","Random",true] call spawn_group;

//Humvee Patrol

[[(_position select 0) - 55, (_position select 1) -35, 0],50,2,"BTR40_MG_TK_INS_EP1",1] spawn vehicle_patrol;
 
//Turrets
[[[(_position select 0) - 38, (_position select 1) + 0.1, 0]],"KORD_high_TK_EP1",0.8,"GUE_Soldier_CO_DZ",1,2,"","Random",true] call spawn_static;
[[[(_position select 0) + 2, (_position select 1) +38, 0]],"KORD_high_TK_EP1",0.8,"GUE_Soldier_CO_DZ",1,2,"","Random",true] call spawn_static;

[_position,"Castle Ruins"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"A GPS location beacon was activated by a squad of missing commandos...Check your map", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Castle Ruins Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors found dead commandos", "PLAIN",10] call RE;
} else {
	clean_running_mission = True;
	deleteVehicle _box;
	deleteVehicle _box2;
	deleteVehicle _box3;
	deleteVehicle _box4;	
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
 
	diag_log format["WAI: Mission Castle Ruins At %1",_position];
	[nil,nil,rTitleText,"The survivors were unable to locate the commandos", "PLAIN",10] call RE;
};
 
missionrunning = false;