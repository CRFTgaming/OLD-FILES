//Drug Bust
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra weed box
 _box = createVehicle ["BAF_BasicAmmunitionBox",[(_position select 0) - 2.5,(_position select 1) - 12.9,0], [], 0, "CAN_COLLIDE"];
[_box] call Weed_Box;

diag_log format["WAI: Mission Drug Bust Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["Land_HouseV2_04_interier",[(_position select 0) + 0.01, (_position select 1) + 0.01,-0.1],[], 0, "CAN_COLLIDE"];
_baserunover setDir 0;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["Land_bags_stack_EP1",[(_position select 0) - 2, (_position select 1) - 11,-0.02],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["Land_Water_pipe_EP1",[(_position select 0) + 1, (_position select 1) - 12,-0.015],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 0;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["Land_Bag_EP1",[(_position select 0) + 1, (_position select 1) - 11,-0.015],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir 0;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["fiberplant",[(_position select 0) + 0.01, (_position select 1) + 6,0],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir 0;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 17, (_position select 1) - 8, 0],_rndnum,1,"Random",4,"","RU_Policeman_DZ","Random",true] call spawn_group;
[[(_position select 0) - 11, (_position select 1) + 4, 0],3,1,"Random",4,"","RU_Policeman_DZ","Random",true] call spawn_group;
[[(_position select 0) - 1, (_position select 1) - 15, 0],3,1,"Random",2,"","Haris_Press_EP1_DZ","Random",true] call spawn_group;
[[(_position select 0) + 2, (_position select 1) + 18, 0],3,1,"Random",4,"","RU_Policeman_DZ","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",3,"","RU_Policeman_DZ","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 33, _position select 1, 0],[(_position select 0) - 33, _position select 1, 0],50,2,"BTR40_MG_TK_INS_EP1",1] spawn vehicle_patrol;

//Turrets
[[[(_position select 0) + 17, (_position select 1) - 4, 0]],"KORD_high_TK_EP1",0.8,"RU_Policeman_DZ",1,2,"","Random",true] call spawn_static;

[_position,"DRUG BUST"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"DRUG BUST: Cops are raiding a drug dealers stash house.", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Drug Bust Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors secured the drug dealers stash", "PLAIN",10] call RE;
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
 
	diag_log format["WAI: Mission Drug Bust At %1",_position];
	[nil,nil,rTitleText,"The cops secured the Dealers stash...time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;