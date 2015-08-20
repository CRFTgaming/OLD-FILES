//Large Ammo Cache script
_wait = [2000,650] call fnc_hTime;
sleep _wait;

[player,nil,rSIDECHAT,STR_MISSION_TEXT_6] call RE;
[nil,nil,rHINT,STR_MISSION_TEXT_6] call RE;
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

SM_Mission_Vars = [true, STR_MISSION_MARKER_6, _hillpos];
publicVariable "SM_Mission_Vars";

_dummymarker = createMarker["Money1", _hillpos];
_dummymarker setMarkerColor "ColorGreen";
_dummymarker setMarkerShape "ELLIPSE";
_dummymarker setMarkerBrush "Grid";
_dummymarker setMarkerSize [150,150];

_marker = createMarker [STR_MISSION_MARKER_6,_hillpos];
_marker setMarkerType "mil_destroy";
_marker setMarkerColor "ColorRed";
_marker setMarkerText STR_MISSION_MARKER_6;
_marker setMarkerSize [1,1];

_ranpos = ["Money1"] call SHK_pos;

while {(typeName _ranPos) != "ARRAY"} do
{
	_ranpos = ["Money1"] call SHK_pos;
};


moneycrate = "Misc_cargo_cont_tiny" createVehicle _ranpos;
moneycrate setVariable["money",3500,true];
moneycrate setVariable["isMoney",true,true];

_checking = 1;
while {_checking == 1} do {
_people =  nearestObjects [[getpos moneycrate select 0, getpos moneycrate select 1,0],["Man"],20];
if ({isPlayer _x} count _people > 0) then {_checking = 0; _winner = _x;};
sleep 1;
};

[player,_winner,rSIDECHAT,"You found the stash of money, good work."] call RE;
[nil,nil,rHINT,"The stash of money has been located."] call RE;

SM_Mission_Vars = [false,ObjNull,ObjNull];
publicVariable "SM_Mission_Vars";

deleteMarker _marker;
deleteMarker _dummymarker;
SM1 = 1;
[0] execVM "server\core\missions\SMfinder.sqf";
