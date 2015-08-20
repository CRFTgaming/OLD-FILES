//Helicopter Mission
_wait = [2000,650] call fnc_hTime;
sleep _wait;
[player,nil,rSIDECHAT,STR_MISSION_TEXT_4] call RE;
[nil,nil,rHINT,STR_MISSION_TEXT_4] call RE;
private ["_rad","_cnps","_hills","_hillcount","_hillnum","_hill","_marker","_boxes","_numb","_boxnum","_box"];

_rad=20000;
_cnps = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
_hills = nearestLocations [_cnps, ["FlatArea"], _rad];
_hillcount = count _hills;
_hillnum = floor (random _hillcount);
_hill = _hills select _hillnum;
if(_hill in SMCarray) then 
{
	_hills = nearestLocations [_cnps, ["FlatArea"], _rad];
	_hillcount = count _hills;
	_hillnum = floor (random _hillcount);
	_hill = _hills select _hillnum;
};
SMCarray = SMCarray + [_hill];
_hillpos = getpos _hill;

_marker = createMarker ["Secure Helicopter",_hillpos];
_marker setMarkerType "mil_destroy";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Secure Helicopter";
_marker setMarkerSize [1,1];

SM_Mission_Vars = [true, STR_MISSION_MARKER_4, _hillpos];
publicVariable "SM_Mission_Vars";

_chopper = ["UH60M_MEV_EP1","UH1H_TK_GUE_EP1","Mi17_Ins","CH_47F_EP1","BAF_Merlin_HC3_D","MH6J_EP1","MV22"] call BIS_fnc_selectRandom;

hueychop = createVehicle [_chopper,[(getpos _hill select 0) + 30, getpos _hill select 1,0],[], 0, "NONE"];
hueychop setFuel 0;
hueychop setVehicleAmmo 0.5;

_group = createGroup resistance;
man = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];
man2 = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];
man3 = _group createunit ["Ins_Soldier_1", _hillpos, [], 0, "Form"];

{
	[_x] execVM "core\ai_fnc.sqf";
} foreach units _group;

waitUntil{{ isPlayer _x && _x distance hueychop < 20  } count playableunits > 0 OR (count units _group) <=0}; 
deleteMarker _marker;

[player,nil,rSIDECHAT,"Good work you've secured the helicopter!"] call RE;
[nil,nil,rHINT,"Good work you've secured the helicopter!"] call RE;

SM_Mission_Vars = [false,ObjNull,ObjNull];
publicVariable "SM_Mission_Vars";

SM1 = 5;
[0] execVM "server\core\missions\SMfinder.sqf";