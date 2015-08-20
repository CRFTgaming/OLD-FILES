//Genocide
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra Large Gun Box
 _box = createVehicle ["RUVehicleBox",[(_position select 0) + 8,(_position select 1),0], [], 0, "CAN_COLLIDE"];
[_box] call Large_Gun_Box;
 
diag_log format["WAI: Mission Genocide Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["Land_komin",[(_position select 0) + 0.01, (_position select 1) + 9.01,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover setDir 0;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["Bunker_PMC",[(_position select 0) - 0.03, (_position select 1) + 0.05,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["Mass_grave",[(_position select 0) - 10.05, (_position select 1) - 10.05,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 60;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["Mass_grave",[(_position select 0) - 10.05, (_position select 1) - 16.05,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir -193.56;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["Land_Dirthump01",[(_position select 0) - 15, (_position select 1) - 11,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir -93.56;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;
_baserunover5 = createVehicle ["UralWreck",[(_position select 0) - 1.2, (_position select 1) - 16.5,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover5 setDir -34.394;
_baserunover5 setVectorUp surfaceNormal position _baserunover5;
_baserunover6 = createVehicle ["Land_House_C_5_V3_EP1",[(_position select 0) +19, (_position select 1) - 15,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover6 setDir 0;
_baserunover6 setVectorUp surfaceNormal position _baserunover6;
_baserunover7 = createVehicle ["Land_Misc_Cargo1Ao",[(_position select 0) + 15, (_position select 1) - 34,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover7 setDir 0;
_baserunover7 setVectorUp surfaceNormal position _baserunover7;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 2, (_position select 1) - 1, 0],_rndnum,1,"Random",4,"","TK_Special_Forces_TL_EP1","Random",true] call spawn_group;
[[(_position select 0) + 13, (_position select 1) + 15, 0],3,1,"Random",4,"","TK_Special_Forces_TL_EP1","Random",true] call spawn_group;
[[(_position select 0) - 23, (_position select 1) - 25, 0],3,1,"Random",4,"","TK_Special_Forces_TL_EP1","Random",true] call spawn_group;
[[(_position select 0) - 13, (_position select 1) + 15, 0],3,1,"Random",4,"","TK_INS_Bonesetter_EP1","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",3,"","TK_INS_Soldier_AAT_EP1","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 55, _position select 1, 0],[(_position select 0) - 55, _position select 1, 0],50,2,"Offroad_DSHKM_Gue",1] spawn vehicle_patrol;

//Turrets
[[[(_position select 0) - 48, (_position select 1) + 0.1, 0]],"KORD_high_TK_EP1",0.8,"TK_INS_Soldier_AAT_EP1",1,2,"","Random",true] call spawn_static;
[[[(_position select 0) + 2, (_position select 1) +48, 0]],"KORD_high_TK_EP1",0.8,"TK_INS_Soldier_AA_EP1",1,2,"","Random",true] call spawn_static;

//Heli Paradrop
[[(_position select 0), (_position select 1), 0],[7743.41, 7040.93, 0],6,"UH1H_DZ",8,1,"Random",4,"","UN_CDF_Soldier_AT_EP1","Random",False] spawn heli_para;
 
[_position,"Genocide"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"Terrorists are committing genocide...go stop them", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Genocide Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors destroyed the oven", "PLAIN",10] call RE;
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
 
	diag_log format["WAI: Mission Genocide At %1",_position];
	[nil,nil,rTitleText,"The U.N came to the rescue and destroy the oven...time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;