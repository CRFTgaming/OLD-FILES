//****************Bunny Ranch*****************
//*********Created by HollowAddiction*********
//**********http://www.craftdoge.com**********
//Credit to the Creator of WAI http://epochmod.com/forum/index.php?/topic/4427-wicked-aimission-system/
//Credit to MattL for help http://opendayz.net/members/matt-l.7134/

if(!isServer) exitWith {};
private ["_dot","_position","_Marker","_name"];
_position = _this select 0;
_name = _this select 1;

_Marker = "";
_dot = "";
markerready = false;
while {missionrunning} do {
	_Marker = createMarker ["Mission", _position];
	_Marker setMarkerColor "ColorPink";
	_Marker setMarkerShape "ELLIPSE";
	_Marker setMarkerBrush "Grid";
	_Marker setMarkerSize [300,300];
	_Marker setMarkerText _name;
	_dot = createMarker ["dot", _position];
	_dot setMarkerColor "ColorRed";
	_dot setMarkerType "mil_Dot";
	_dot setMarkerText _name;
	sleep 30;
	deleteMarker _Marker;
	deleteMarker _dot;
};
if (_Marker == "Mission") then {
	deleteMarker _Marker;
	deleteMarker _dot;
};
markerready = true;