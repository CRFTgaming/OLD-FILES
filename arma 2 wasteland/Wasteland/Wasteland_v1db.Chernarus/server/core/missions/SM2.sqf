//Aircraft crash sidemission
_wait = [2000,650] call fnc_hTime;
sleep _wait;
[player,nil,rSIDECHAT,STR_MISSION_TEXT_2] call RE;
[nil,nil,rHINT,STR_MISSION_TEXT_2] call RE;
private ["_rad","_cnps","_hills","_hillcount","_hillnum","_hill","_marker","_boxes","_numb","_boxnum","_box"];

_rad=20000;
_cnps = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
_hills = nearestLocations [_cnps, ["FlatArea"], _rad];
_hillcount = count _hills;
_hillnum = floor (random _hillcount);
_hill = _hills select _hillnum;
if(_hill in SMCarray) then 
{
	_hills = nearestLocations [_cnps, ["Hill"], _rad];
	_hillcount = count _hills;
	_hillnum = floor (random _hillcount);
	_hill = _hills select _hillnum;
};
SMCarray = SMCarray + [_hill];
_hillpos = getpos _hill;

SM_Mission_Vars = [true, STR_MISSION_MARKER_2, _hillpos];
publicVariable "SM_Mission_Vars";

_marker = createMarker [STR_MISSION_MARKER_2,_hillpos];
_marker setMarkerType "mil_destroy";
_marker setMarkerColor "ColorRed";
_marker setMarkerText STR_MISSION_MARKER_2;
_marker setMarkerSize [1,1];

c130wreck = createVehicle ["C130J_wreck_EP1",[(getpos _hill select 0) + 30, getpos _hill select 1,0],[], 0, "NONE"];
box = createVehicle ["USOrdnanceBox",[(getpos _hill select 0) - 10, getpos _hill select 1,0],[], 0, "NONE"];
box2 = createVehicle ["USBasicWeaponsBox",[(getpos _hill select 0) - 10, (getpos _hill select 1) - 10,0],[], 0, "NONE"];

_group = createGroup resistance;
man = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];
man2 = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];
man3 = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];

{
	[_x] execVM "core\ai_fnc.sqf";
} foreach units _group;


waitUntil{{isPlayer _x && _x distance c130wreck < 60  } count playableunits > 0 OR (count units _group) <=0}; 

SM_Mission_Vars = [false,ObjNull,ObjNull];
publicVariable "SM_Mission_Vars";

deleteMarker _marker;

[player,nil,rSIDECHAT,"You've secured the crash site! Good work."] call RE;
[nil,nil,rHINT,"You've secured the crash site! Good work."] call RE;

SM1 = 1;
[0] execVM "server\core\missions\SMfinder.sqf";
