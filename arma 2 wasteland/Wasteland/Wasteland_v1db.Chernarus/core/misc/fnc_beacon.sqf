private["_beacon","_box","_poso","_pos","_marker"];

if(isNil {waste_beaconCD}) then {waste_beaconCD = -1};
if((waste_beaconCD == -1) OR ((time - waste_beaconCD) > 900)) then
{
player switchMove "AinvPknlMstpSlayWrflDnon_medic";
AnimSync = [player,"AinvPknlMstpSlayWrflDnon_medic"];
publicVariable "AnimSync";
waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};

deleteMarkerLocal "myBeacon";
_beacon = "Satelit" createVehicle (getPos player);
_box = [boundingBox player select 1 select 0,boundingBox player select 1 select 1];
_poso = getPosATL player;
_pos = [(_poso select 0) + (_box select 0), (_poso select 1) + (_box select 1), _poso select 2];
_beacon enableSimulation false;
_beacon setPosATL _pos;
_beacon setVariable["beacon",true,true];
_beacon allowDamage true;
_beacon addEventHandler["Killed", {[player] execVM "core\misc\fnc_beacon_die.sqf"}];

waste_sBeacon = _beacon;
waste_sBuse = 0;
waste_beaconCD = time;

_marker = createMarkerLocal["myBeacon", getPos _beacon];
_marker setMarkerTextLocal "Spawn Beacon";
_marker setMarkerTypeLocal "Dot";
_marker setMarkerColorLocal "ColorBlue";

titleText["Spawn beacon has been deployed","PLAIN"];
} else
{
	titleText["You have already placed and picked up a beacon, a cooldown is now in effect for 15 minutes.","PLAIN"];
};