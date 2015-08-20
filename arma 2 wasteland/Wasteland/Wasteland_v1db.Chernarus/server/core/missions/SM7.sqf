if(!isServer) exitwith {};
_wait = [2000,650] call fnc_hTime;
sleep _wait;
[player,nil,rSIDECHAT,STR_MISSION_TEXT_7] call RE;
[nil,nil,rHINT,STR_MISSION_TEXT_7] call RE;
private ["_rad","_cnps","_hills","_hillcount","_hillnum","_hill","_marker","_boxes","_numb","_boxnum","_box"];

_rad=20000;
_cnps = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
_hills = nearestLocations [_cnps, ["FlatArea"], _rad];
_hillcount = count _hills;
_hillnum = floor (random _hillcount);
_hill = _hills select _hillnum;
if(_hill in SMCarray) then 
{
	_hills = nearestLocations [_cnps, ["Flatarea"], _rad];
	_hillcount = count _hills;
	_hillnum = floor (random _hillcount);
	_hill = _hills select _hillnum;
};
SMCarray = SMCarray + [_hill];
_hilpos = getpos _hill;
createPos = getpos _hill;

_marker = createMarker [STR_MISSION_MARKER_7,createPos];
_marker setMarkerType "mil_destroy";
_marker setMarkerColor "ColorRed";
_marker setMarkerText STR_MISSION_MARKER_7;
_marker setMarkerSize [1,1];
_base = "MediumTentCamp_napa";
baserunover = [createPos, random 360, _base] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectMapper.sqf"));

SM_Mission_Vars = [true, STR_MISSION_MARKER_7, createPos];
publicVariable "SM_Mission_Vars";


bomb_sm = 0;
_trig = createTrigger ["EmptyDetector", createPos];
_trig setTriggerArea [100,100,0,false];
_trig setTriggerActivation ["ANY", "PRESENT", FALSE];
_trig setTriggerStatements ["this", "bomb_sm = 1", ""];
waitUntil { bomb_sm == 1 };


_logic =  createVehicle ["HeliHEmpty",createPos, [], 0, "NONE"];
_group = createGroup resistance;
man = _group createunit ["GUE_Soldier_1", _logic, [], 0, "Form"];
man2 = _group createunit ["GUE_Soldier_2", _logic, [], 0, "Form"];
man3 = _group createunit ["GUE_Soldier_3", _logic, [], 0, "Form"];
man4 = _group createunit ["GUE_Soldier_MG", _logic, [], 0, "Form"];
man5 = _group createunit ["GUE_Soldier_MG", _logic, [], 0, "Form"];
man6 = _group createunit ["GUE_Soldier_MG", _logic, [], 0, "Form"];
man7 = _group createunit ["GUE_Soldier_AT", _logic, [], 0, "Form"];
man8 = _group createunit ["GUE_Soldier_GL", _logic, [], 0, "Form"];
man9 = _group createunit ["GUE_Soldier_1", _logic, [], 0, "Form"];

_table = "FoldTable" createVehicle createPos;
_table enableSimulation false;
_bomb = "bomb" createVehicle getPos _table;
_bomb enableSimulation false;
_bomb setPos [getPos _table select 0, getPos _table select 1, 0.85];
_bomb setVariable["bArmed", false, true];

{
	[_x] execVM "core\ai_fnc.sqf";
} foreach units _group;


waitUntil{isNull _bomb};

[nil,nil,rHINT,"The bomb has been recovered."] call RE;

SM_Mission_Vars = [false,ObjNull,ObjNull];
publicVariable "SM_Mission_Vars";

deleteMarker _marker;

SM1 = 1;
[0] execVM "server\core\missions\SMfinder.sqf";
