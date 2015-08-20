//Weed
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra Large Gun Box
 _box = createVehicle ["BAF_BasicAmmunitionBox",[(_position select 0) + 2,(_position select 1),0], [], 0, "CAN_COLLIDE"];
[_box] call Weed_Box;
 
diag_log format["WAI: Mission Weed Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["fiberplant",[(_position select 0) - 10.8, (_position select 1) - 16.3,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover setDir 0;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["fiberplant",[(_position select 0) + 16.2, (_position select 1) - 17.6,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["fiberplant",[(_position select 0) - 17.3, (_position select 1) + 21,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 0;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["fiberplant", [(_position select 0) + 28.6, (_position select 1) + 29,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir 0;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["fiberplant", [(_position select 0) - 29.8, (_position select 1) - 31.1,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir 0;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;
_baserunover5 = createVehicle ["fiberplant", [(_position select 0) + 30.2, (_position select 1) - 33,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover5 setDir 0;
_baserunover5 setVectorUp surfaceNormal position _baserunover5;
_baserunover6 = createVehicle ["fiberplant",[(_position select 0) - 32, (_position select 1) + 28.7,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover6 setDir 0;
_baserunover6 setVectorUp surfaceNormal position _baserunover6;
_baserunover7 = createVehicle ["fiberplant",[(_position select 0) - 32, (_position select 1) - 1.1,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover7 setDir 0;
_baserunover7 setVectorUp surfaceNormal position _baserunover7;
_baserunover8 = createVehicle ["fiberplant",[(_position select 0) + 1.3, (_position select 1) - 28,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover8 setDir 0;
_baserunover8 setVectorUp surfaceNormal position _baserunover8;
_baserunover9 = createVehicle ["fiberplant", [(_position select 0) + 27, (_position select 1) + 2,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover9 setDir 0;
_baserunover9 setVectorUp surfaceNormal position _baserunover9;
_baserunover10 = createVehicle ["fiberplant", [(_position select 0) - 0.3, (_position select 1) + 26,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover10 setDir 0;
_baserunover10 setVectorUp surfaceNormal position _baserunover10;
_baserunover11 = createVehicle ["fiberplant", [(_position select 0) + 35.9, (_position select 1) + 39,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover11 setDir 0;
_baserunover11 setVectorUp surfaceNormal position _baserunover11;
_baserunover12 = createVehicle ["fiberplant",[(_position select 0) - 39, (_position select 1)- 40.3,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover12 setDir 0;
_baserunover12 setVectorUp surfaceNormal position _baserunover12;
_baserunover13 = createVehicle ["fiberplant",[(_position select 0) - 36.9, (_position select 1) - 38.6,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover13 setDir 0;
_baserunover13 setVectorUp surfaceNormal position _baserunover13;
_baserunover14 = createVehicle ["fiberplant",[(_position select 0) + 38, (_position select 1) - 38.9,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover14 setDir 0;
_baserunover14 setVectorUp surfaceNormal position _baserunover14;
_baserunover15 = createVehicle ["fiberplant", [(_position select 0) - 37, (_position select 1) + 39.7,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover15 setDir 0;
_baserunover15 setVectorUp surfaceNormal position _baserunover15;
_baserunover16 = createVehicle ["fiberplant", [(_position select 0) - 0.1, (_position select 1) + 42.3,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover16 setDir 0;
_baserunover16 setVectorUp surfaceNormal position _baserunover16;
_baserunover17 = createVehicle ["fiberplant", [(_position select 0) + 42.1, (_position select 1) - 0.1,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover17 setDir 0;
_baserunover17 setVectorUp surfaceNormal position _baserunover17;
_baserunover18 = createVehicle ["fiberplant", [(_position select 0) + 0.1, (_position select 1) - 40.2,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover18 setDir 0;
_baserunover18 setVectorUp surfaceNormal position _baserunover18;
_baserunover19 = createVehicle ["hruzdum",[(_position select 0) - 0.01, (_position select 1)- 0.01,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover19 setDir 0;
_baserunover19 setVectorUp surfaceNormal position _baserunover19;
_baserunover20 = createVehicle ["fiberplant",[(_position select 0) - 10, (_position select 1) - 11,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover20 setDir 0;
_baserunover20 setVectorUp surfaceNormal position _baserunover20;
_baserunover21 = createVehicle ["fiberplant",[(_position select 0) + 13, (_position select 1) + 12.2,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover21 setDir 0;
_baserunover21 setVectorUp surfaceNormal position _baserunover21;
_baserunover22 = createVehicle ["fiberplant", [(_position select 0) + 12.3, (_position select 1) - 10.6,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover22 setDir 0;
_baserunover22 setVectorUp surfaceNormal position _baserunover22;
_baserunover23 = createVehicle ["fiberplant", [(_position select 0) - 11.3, (_position select 1) + 12.7,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover23 setDir 0;
_baserunover23 setVectorUp surfaceNormal position _baserunover23;
_baserunover24 = createVehicle ["fiberplant", [(_position select 0) + 15, (_position select 1) + 10,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover24 setDir 0;
_baserunover24 setVectorUp surfaceNormal position _baserunover24;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 9, (_position select 1) - 13, 0],_rndnum,1,"Random",4,"","Rocker3_DZ","Random",true] call spawn_group;
[[(_position select 0) + 13, (_position select 1) + 15, 0],4,1,"Random",4,"","Rocker4_DZ","Random",true] call spawn_group;
[[(_position select 0) - 23, (_position select 1) - 25, 0],4,1,"Random",4,"","Rocker2_DZ","Random",true] call spawn_group;
[[(_position select 0) - 13, (_position select 1) + 15, 0],4,1,"Random",4,"","Rocker1_DZ","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",4,"","Rocker2_DZ","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 55, _position select 1, 0],[(_position select 0) - 55, _position select 1, 0],50,2,"SUV_Armored_DZ",1] spawn vehicle_patrol;
 
//Turrets
[[[(_position select 0) - 48, (_position select 1) + 0.1, 0]],"KORD_high_TK_EP1",0.8,"Rocker2_DZ",1,2,"","Random",true] call spawn_static;
[[[(_position select 0) + 2, (_position select 1) +48, 0]],"KORD_high_TK_EP1",0.8,"Rocker1_DZ",1,2,"","Random",true] call spawn_static;

//Heli Paradrop
[[(_position select 0), (_position select 1), 0],[7743.41, 7040.93, 0],6,"UH1H_DZ",8,1,"Random",4,"","RU_Policeman_DZ","Random",True] spawn heli_para;
 
[_position,"Crop Raider"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"Cops are about to raid a hippy commune...check your map", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Weed Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors captured the hippy commune", "PLAIN",10] call RE;
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
 
	diag_log format["WAI: Mission Weed At %1",_position];
	[nil,nil,rTitleText,"The survivors were unable to capture the hippy commune time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;