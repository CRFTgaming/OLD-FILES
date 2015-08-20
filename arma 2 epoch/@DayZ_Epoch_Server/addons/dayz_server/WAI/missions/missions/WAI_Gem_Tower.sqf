//Gem Tower
//Credits to Korbi Dallas for the information on setDir for the placement of nests
 
private ["_position","_box","_missiontimeout","_cleanmission","_playerPresent","_starttime","_currenttime","_cleanunits","_rndnum"];
vehclass = military_unarmed call BIS_fnc_selectRandom;
 
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;

//Extra Large Gun Box
 _box = createVehicle ["BAF_BasicAmmunitionBox",[(_position select 0) -24,(_position select 1) + 11,0], [], 0, "CAN_COLLIDE"];
[_box] call Gem_Box;

diag_log format["WAI: Mission Gem Tower Started At %1",_position];

//Buildings 
_baserunover = createVehicle ["Land_Misc_Coltan_Heap_EP1",[(_position select 0) + 0.01, (_position select 1) + 4,-1],[], 0, "CAN_COLLIDE"];
_baserunover setDir -82.16;
_baserunover setVectorUp surfaceNormal position _baserunover;
_baserunover1 = createVehicle ["MAP_Ind_SiloVelke_01",[(_position select 0) - 0.01, (_position select 1) - 0.01,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover1 setDir 0;
_baserunover1 setVectorUp surfaceNormal position _baserunover1;
_baserunover2 = createVehicle ["MAP_Ind_SiloVelke_01",[(_position select 0) - 24, (_position select 1) - 0.01,-0.15],[], 0, "CAN_COLLIDE"];
_baserunover2 setDir 182.209;
_baserunover2 setVectorUp surfaceNormal position _baserunover2;
_baserunover3 = createVehicle ["Land_Misc_Coltan_Heap_EP1",[(_position select 0) - 31, (_position select 1) - 34,-2],[], 0, "CAN_COLLIDE"];
_baserunover3 setDir 8.27;
_baserunover3 setVectorUp surfaceNormal position _baserunover3;
_baserunover4 = createVehicle ["Land_A_Castle_Bastion",[(_position select 0) - 24, (_position select 1) + 11,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover4 setDir 0;
_baserunover4 setVectorUp surfaceNormal position _baserunover4;
_baserunover5 = createVehicle ["Land_A_Castle_Donjon_dam",[(_position select 0) - 36, (_position select 1) + 0.6,-0.2],[], 0, "CAN_COLLIDE"];
_baserunover5 setDir 0;
_baserunover5 setVectorUp surfaceNormal position _baserunover5;
_baserunover6 = createVehicle ["Land_Misc_Coltan_Heap_EP1",[(_position select 0) - 36, (_position select 1) + 12,-2],[], 0, "CAN_COLLIDE"];
_baserunover6 setDir 0;
_baserunover6 setVectorUp surfaceNormal position _baserunover6;

//Group Spawning
_rndnum = round (random 3) + 4;
[[(_position select 0) + 29, (_position select 1) - 21, 0],_rndnum,1,"Random",4,"","Soldier_Medic_PMC","Random",true] call spawn_group;
[[(_position select 0) + 21, (_position select 1) + 19, 0],3,1,"Random",4,"","Soldier_Medic_PMC","Random",true] call spawn_group;
[[(_position select 0) - 23, (_position select 1) - 19, 0],3,1,"Random",4,"","Soldier_MG_PKM_PMC","Random",true] call spawn_group;
[[(_position select 0) - 12, (_position select 1) + 23, 0],3,1,"Random",4,"","Soldier_GL_PMC","Random",true] call spawn_group;
[[_position select 0, _position select 1, 0],4,1,"Random",3,"","Soldier_Sniper_KSVK_PMC","Random",true] call spawn_group;
 
//Humvee Patrol
[[(_position select 0) + 50, _position select 1, 0],[(_position select 0) - 60, _position select 1, 0],50,2,"Offroad_DSHKM_Gue",1] spawn vehicle_patrol;

//Turrets
[[[(_position select 0) - 1, (_position select 1) + 39, 0]],"KORD_high_TK_EP1",0.8,"Soldier_TL_PMC",1,2,"","Random",true] call spawn_static;
[[[(_position select 0) + 33, (_position select 1) - 21, 0]],"KORD_high_TK_EP1",0.8,"Soldier_TL_PMC",1,2,"","Random",true] call spawn_static;

[_position,"GEM TOWER"] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"GEM TOWER! Climb up the tower and down the other side to get the loot", "PLAIN",10] call RE;
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
	diag_log format["WAI: Mission Gem Tower Ended At %1",_position];
	[nil,nil,rTitleText,"Survivors secured the Gem Tower", "PLAIN",10] call RE;
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
 
	diag_log format["WAI: Mission Gem Tower At %1",_position];
	[nil,nil,rTitleText,"You did not secure the Gem Tower...time is up!", "PLAIN",10] call RE;
};
 
missionrunning = false;