//Helicopter Mission
_wait = [2000,650] call fnc_hTime;
sleep _wait;
[player,nil,rSIDECHAT,STR_MISSION_TEXT_5] call RE;
[nil,nil,rHINT,STR_MISSION_TEXT_5] call RE;
private ["_rad","_cnps","_hills","_hillcount","_hillnum","_hill","_marker","_boxes","_numb","_boxnum","_box"];

_rad=20000;
_cnps = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
_hills = nearestLocations [_cnps, ["FlatArea"], _rad];
_hillcount = count _hills;
_hillnum = floor (random _hillcount);
_hill = _hills select _hillnum;
if(_hill in SMCarray) then 
{
	_hills = nearestLocations [_cnps, ["FlatAreas"], _rad];
	_hillcount = count _hills;
	_hillnum = floor (random _hillcount);
	_hill = _hills select _hillnum;
};
SMCarray = SMCarray + [_hill];
_hillpos = getpos _hill;

_marker = createMarker [STR_MISSION_MARKER_5,_hillpos];
_marker setMarkerType "mil_destroy";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Recover Fuel Truck";
_marker setMarkerSize [1,1];

SM_Mission_Vars = [true, STR_MISSION_MARKER_5, _hillpos];
publicVariable "SM_Mission_Vars";

mtvrfuel = createVehicle ["MtvrRefuel_DES_EP1",[(getpos _hill select 0) + 30, getpos _hill select 1,0],[], 0, "NONE"];

_group = createGroup resistance;
man = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];
man2 = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];
man3 = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];

{
	[_x] execVM "core\ai_fnc.sqf";
} foreach units _group;

waitUntil{{ isPlayer _x && _x distance mtvrfuel < 20  } count playableunits > 0 OR (count units _group) <=0}; 
deleteMarker _marker;

[player,nil,rSIDECHAT,"Good work you've secured the fuel truck!"] call RE;
[nil,nil,rHINT,"Good work you've secured the fuel truck!"] call RE;

SM_Mission_Vars = [false,ObjNull,ObjNull];
publicVariable "SM_Mission_Vars";

SM1 = 5;
[0] execVM "server\core\missions\SMfinder.sqf";