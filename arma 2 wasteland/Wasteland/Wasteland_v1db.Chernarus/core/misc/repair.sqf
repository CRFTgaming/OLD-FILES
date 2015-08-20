private["_vehicle","_veh_type"];

_vehicle = nearestObjects[player, ["Helicopter", "LandVehicle", "Air", "Motorcycle"], 5] select 0;
_veh_type = typeOf _vehicle;

if(vehicle player != player) exitWith {titleText["You can't repair the vehicle while in it","PLAIN"]};

if(isNil {_vehicle}) exitwith {titleText["No vehicle within range","PLAIN"];};

player switchMove "AinvPknlMstpSlayWrflDnon_medic";
titleText [format["Repairing %1", _veh_type], "PLAIN"];

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
			_vehicle setDamage ((damage _vehicle) - 0.45);

		}
			else
		{
			_vehicle setDamage ((damage _vehicle) - 0.25);
		};
	};
	
	case (_vehicle isKindOf "Motorcycle") :
	{
		if((_veh_type == "Old_bike_TK_INS_EP1") OR (_veh_type == "Old_bike_TK_CIV_EP1") OR (_veh_type == "MMT_USMC") OR (_veh_type == "MMT_Civ")) then
		{
			_vehicle setDamage 0;
		}
			else
		{
			_vehicle setDamage ((damage _vehicle) - 0.68);
		};
	};
	
	case (_vehicle isKindOf "LandVehicle") :
	{
			_vehicle setDamage ((damage _vehicle) - 0.40);
	};
};
			