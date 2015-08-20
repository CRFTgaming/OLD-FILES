//Large Ammo Cache script

_wait = [2000,650] call fnc_hTime;
sleep _wait;

[player,nil,rSIDECHAT,STR_MISSION_TEXT_1] call RE;
[nil,nil,rHINT,STR_MISSION_TEXT_1] call RE;
private ["_rad","_cnps","_hills","_hillcount","_hillnum","_hill","_marker","_boxes","_numb","_boxnum","_box"];

_rad=20000;
_cnps = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
_hills = nearestLocations [_cnps, ["Hill"], _rad];
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
SM_Mission_Vars = [true, STR_MISSION_MARKER_1, _hillpos];
publicVariable "SM_Mission_Vars";

_dummymarker = createMarker["AmmoBox1", _hillpos];
_dummymarker setMarkerColor "ColorGreen";
_dummymarker setMarkerShape "ELLIPSE";
_dummymarker setMarkerBrush "Grid";
_dummymarker setMarkerSize [150,150];

_marker = createMarker [STR_MISSION_MARKER_1,_hillpos];
_marker setMarkerType "mil_destroy";
_marker setMarkerColor "ColorRed";
_marker setMarkerText STR_MISSION_MARKER_1;
_marker setMarkerSize [1,1];

_ranpos = ["Ammobox1"] call SHK_pos;

while {(typeName _ranPos) != "ARRAY"} do
{
	_ranpos = ["Ammobox1"] call SHK_pos;
};

box = createVehicle ["USVehicleBox",_ranpos,[], 0, "NONE"];

[BOX] execVM "core\misc\fillBoxes.sqf";

_checking = 1;
while {_checking == 1} do {
_people =  nearestObjects [getPos box,["Man"],20];
if ({isPlayer _x} count _people > 0) then {_checking = 0};
sleep 1;
};

[player,nil,rSIDECHAT,"The Gear Cache has been found, nice work, enjoy the spoils."] call RE;
[nil,nil,rHINT,"The Gear Cache has been found, nice work, enjoy the spoils."] call RE;

SM_Mission_Vars = [false,ObjNull,ObjNull];
publicVariable "SM_Mission_Vars";

deleteMarker _marker;
deleteMarker _dummymarker;
SM1 = 1;
[0] execVM "server\core\missions\SMfinder.sqf";
