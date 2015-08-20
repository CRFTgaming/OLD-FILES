//ARMY FOB
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra weed box
 _box = createVehicle ["BAF_BasicWeapons",[(_position select 0) - 5,(_position select 1) - 3,0], [], 0, "CAN_COLLIDE"];
[_box] call Large_Gun_Box;

 _box2 = createVehicle ["BAF_Launchers",[(_position select 0) + 1,(_position select 1) - 4,0], [], 0, "CAN_COLLIDE"];
[_box2] call Extra_Large_Gun_Box;

diag_log format["WAI: Mission ARMY FOB Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["MAP_Fortress_02",[(_position select 0) - 10, (_position select 1) - 11,-0.1],[], 0, "CAN_COLLIDE"];
_baserunover setDir 0;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["MAP_Fortress_02",[(_position select 0) - 2, (_position select 1) - 11,-0.16],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["MAP_Fortress_02",[(_position select 0) + 5, (_position select 1) - 11,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 0;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["MAP_Fortress_02",[(_position select 0) + 12, (_position select 1) - 8.3,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir -89.9547;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["MAP_Fortress_02",[(_position select 0) + 11, (_position select 1) + 2,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir 0;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;
_baserunover5 = createVehicle ["MAP_Fortress_02", [(_position select 0) - 12, (_position select 1) - 5,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover5 setDir 0;
_baserunover5 setVectorUp surfaceNormal position _baserunover5;
_baserunover6 = createVehicle ["MAP_fort_rampart",[(_position select 0) +1, (_position select 1) + 9,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover6 setDir -181.1216;
_baserunover6 setVectorUp surfaceNormal position _baserunover6;
_baserunover7 = createVehicle ["MAP_fort_rampart",[(_position select 0) - 8, (_position select 1) + 9,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover7 setDir -181.1216;
_baserunover7 setVectorUp surfaceNormal position _baserunover7;
_baserunover8 = createVehicle ["MAP_fort_watchtower",[(_position select 0) - 18, (_position select 1) + 7,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover8 setDir 91.926;
_baserunover8 setVectorUp surfaceNormal position _baserunover8;
_baserunover9 = createVehicle ["MAP_Barbedwire", [(_position select 0) + 2.7, (_position select 1) + 12,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover9 setDir 0;
_baserunover9 setVectorUp surfaceNormal position _baserunover9;
_baserunover10 = createVehicle ["MAP_Barbedwire", [(_position select 0) - 6, (_position select 1) + 12,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover10 setDir -0.65;
_baserunover10 setVectorUp surfaceNormal position _baserunover10;
_baserunover11 = createVehicle ["Land_CamoNetVar_EAST", [(_position select 0) - 1.2, (_position select 1) - 2.2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover11 setDir 0;
_baserunover11 setVectorUp surfaceNormal position _baserunover11;
_baserunover12 = createVehicle ["FoldTable",[(_position select 0) - 0.01, (_position select 1) - 0.03,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover12 setDir 0;
_baserunover12 setVectorUp surfaceNormal position _baserunover12;
_baserunover13 = createVehicle ["FoldChair",[(_position select 0) + 0.5, (_position select 1) - 1,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover13 setDir 33;
_baserunover13 setVectorUp surfaceNormal position _baserunover13;
_baserunover14 = createVehicle ["FoldChair",[(_position select 0) - 1.3, (_position select 1) - 2,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover14 setDir -149.23;
_baserunover14 setVectorUp surfaceNormal position _baserunover14;
_baserunover15 = createVehicle ["Land_Bowl_EP1",[(_position select 0) + 3, (_position select 1) - 0.09,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover15 setDir 0;
_baserunover15 setVectorUp surfaceNormal position _baserunover15;
_baserunover16 = createVehicle ["Land_Canister_EP1",[(_position select 0) + 2, (_position select 1) - 0.8,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover16 setDir 0;
_baserunover16 setVectorUp surfaceNormal position _baserunover16;
_baserunover17 = createVehicle ["Land_Wheel_cart_EP1",[(_position select 0) - 6.5, (_position select 1) - 0.01,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover17 setDir 0;
_baserunover17 setVectorUp surfaceNormal position _baserunover17;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 1, (_position select 1) - 3, 0],_rndnum,1,"Random",4,"","US_Soldier_Light_EP1","Random",true] call spawn_group;
[[(_position select 0) - 3, (_position select 1) + 2, 0],3,1,"Random",4,"","US_Soldier_MG_EP1","Random",true] call spawn_group;
[[(_position select 0) + 25, (_position select 1) + 8, 0],3,1,"Random",4,"","US_Soldier_Light_EP1","Random",true] call spawn_group;
[[(_position select 0) - 42, (_position select 1) - 18, 0],3,1,"Random",4,"","US_Soldier_MG_EP1","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",3,"","US_Soldier_MG_EP1","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 25, _position select 1, 0],[(_position select 0) + 37, _position select 1, 0],50,2,"GAZ_Vodnik_DZ",1] spawn vehicle_patrol;

//Turrets
[[[(_position select 0) + 24, (_position select 1) + 29, 0]],"KORD_high_TK_EP1",0.8,"US_Soldier_MG_EP1",1,2,"","Random",true] call spawn_static;

[_position,"F.O.B"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"The ARMY set up an FOB...check your map", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission ARMY FOB Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors secured the FOB", "PLAIN",10] call RE;
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
 
	diag_log format["WAI: Mission ARMY FOB At %1",_position];
	[nil,nil,rTitleText,"Survivors did not secure the FOB..time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;