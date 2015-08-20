private["_vehicle","_veh_type"];

_vehicle = nearestObjects[player, ["Helicopter", "LandVehicle", "Air", "Motorcycle"], 5] select 0;
_veh_type = typeOf _vehicle;

if(vehicle player != player) exitWith {titleText["You can't refuel the vehicle while in it","PLAIN"]};

if(isNil {_vehicle}) exitwith {titleText["No vehicle within range","PLAIN"];};

[true,"fuelE",1] call fnc_handleinv;

titleText [format["Refueling %1", _veh_type], "PLAIN"];
player switchMove "AinvPknlMstpSlayWrflDnon_medic";
			
//Sync the move across to clients
AnimSync = [player,"AinvPknlMstpSlayWrflDnon_medic"];
publicVariable "AnimSync";

waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
titleText["","PLAIN"];
switch true do
{
	case (_vehicle isKindOf "Helicopter") :
	{
		if(_veh_type == "MH6J_EP1") then 
		{
			_vehicle setFuel ((Fuel _vehicle) + 0.35);
		}
			else
		{
			_vehicle setFuel ((Fuel _vehicle) + 0.15);
		};
	};
	
	case (_vehicle isKindOf "Motorcycle") :
	{
		if((_veh_type == "Old_bike_TK_INS_EP1") OR (_veh_type == "Old_bike_TK_CIV_EP1") OR (_veh_type == "MMT_USMC") OR (_veh_type == "MMT_Civ")) then
		{
			titleText ["You can't refuel a bike!", "PLAIN"];
			player switchMove "";
			waste_fuelF = true;
			waste_fuelE = false;
			AnimSync = [player,""];
			publicVariable "AnimSync";
		}
			else
		{
			_vehicle setFuel ((Fuel _vehicle) + 0.50);
		};
	};
	
	case (_vehicle isKindOf "LandVehicle") :
	{
			_vehicle setFuel ((Fuel _vehicle) + 0.30);
	};
};	