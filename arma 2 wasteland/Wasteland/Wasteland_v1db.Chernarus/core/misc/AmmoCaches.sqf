
private ["_marker","_boxes","_town","_newpos","_numb","_boxnum","_box","_townpos","_towns"];

if (isServer) then {
if (CVG_Caches == 1) then {
boxes = 12;	// Starting point every island should have...
_towns = towns;


while {boxes > 0} do {
_boxes = ["RUBasicWeaponsBox","RUSpecialWeaponsBox","LocalBasicWeaponsBox","SpecialWeaponsBox","CZBasicWeapons_EP1"];
_town = _towns call BIS_fnc_selectRandom;
_newpos = getpos _town;
_townpos = [_newpos, 10, 100, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
_numb = (count _boxes);
_boxnum = floor (random _numb);
_box = _boxes select _boxnum;
_box = createVehicle [_box,_townpos,[], 0, "NONE"]; 
boxes = boxes - 1;

if (cvg_debug == 2) then {
		_marker=createMarker [format ["mar%1",random 100000],_townpos];
		_marker setMarkerType "Dot";
		_marker setMarkerColor "ColorBrown";
		_marker setMarkerSize [1,1];
};
};
};

};