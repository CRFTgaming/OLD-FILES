#include "dialog\player_sys.sqf";
#define GET_DISPLAY (findDisplay playersys_DIALOG)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_idc = _this select 0;_selection = (lbSelection GET_CTRL(_idc) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_idc) lbData _selection)})
if(isNil {dropActive}) then {dropActive = false};
disableSerialization;

private["_switch","_data","_vehicle_type","_pos","_bomb","_beacon","_temp"];
_switch = _this select 0;
_data = GET_SELECTED_DATA(item_list);
_value = parsenumber(GET_SELECTED_DATA(item_edit));
switch(_switch) do 
	{
		case 0:
		{
			switch(_data) do 
				{
					case "bombs":
					{
						if([false,"bomb",1] call fnc_handleinv) then {
							closeDialog 0;
							player playmove "AinvPknlMstpSlayWrflDnon";
							sleep 1.2;
							
							hint "You have placed the bomb!\n\n30s till it explodes!";
						
							_bomb = "bomb" createVehicle getPos player;
							_bomb setPosATL getPosATL player;
							_bomb enableSimulation false;
							_bomb setVariable["bArmed", true, true];
							[_bomb] execVM "core\misc\bomb.sqf";
						};
					};
					
					case "beacon":
					{
						if([false,"beacon",1] call fnc_handleinv) then
						{
							closeDialog 0;
							[] call waste_beacon_set;
						};
					};
					
					case "fuelFull": 
					{
						if([false,"fuelF",1] call fnc_handleinv) then
						{
							closeDialog 0;
							[] call fnc_refuel;
						};
					};
					
					case "repairkits": 
					{
						if([false,"repair",1] call fnc_handleinv) then
						{
							closeDialog 0;
							[] call fnc_repair;
						};
					};
					
					case "canfood": 
					{

						if([false,"canfood",1] call fnc_handleinv) then {
						if((vehicle player) == player) then { player playmove "AinvPknlMstpSnonWnonDnon_healed_1"; };
							hungerlvl = hungerlvl + waste_ecan;
							hint format["You have eaten some canned food\nHunger Level: %1",hungerlvl];
							sleep  1;
						};
					};
					
					case "rabitmeatc": 
					{
						if([false,"rabbitc",1] call fnc_handleinv) then {
							if((vehicle player) == player) then { player playmove "AinvPknlMstpSnonWnonDnon_healed_1"; };
							hungerlvl = hungerlvl + waste_erabbit;
							hint format["You have eaten some rabbit meat\nHunger Level: %1",hungerlvl];
							sleep  1;
						};
					};
					
					case "cowmeatc": 
					{
						if([false,"cowc",1] call fnc_handleinv) then {
							if((vehicle player) == player) then { player playmove "AinvPknlMstpSnonWnonDnon_healed_1"; };
							hungerlvl = waste_maxfood;
							hint format["You have eaten some cow meat\nHunger Level: %1",hungerlvl];
							sleep  1;
						};
					};
					
					case "goatmeatc": 
					{
						if([false,"goatc",1] call fnc_handleinv) then {
							if((vehicle player) == player) then { player playmove "AinvPknlMstpSnonWnonDnon_healed_1"; };
							hungerlvl = hungerlvl + waste_egoat;
							hint format["You have eaten some goat meat\nHunger Level: %1",hungerlvl];
							sleep  1;
						};
					};
					
					case "boarmeatc": 
					{
						if([false,"boarc",1] call fnc_handleinv) then {
							if((vehicle player) == player) then { player playmove "AinvPknlMstpSnonWnonDnon_healed_1"; };
							hungerlvl = hungerlvl + waste_eboar;
							hint format["You have eaten some boar meat\nHunger Level: %1",hungerlvl];
							sleep  1;
						}
					};
					
					case "chickenmeatc": 
					{
						if([false,"chickenc",1] call fnc_handleinv) then {
							if((vehicle player) == player) then { player playmove "AinvPknlMstpSnonWnonDnon_healed_1"; };
								hungerlvl = hungerlvl + waste_echicken;
								hint format["You have eaten some chicken meat\nHunger Level: %1",hungerlvl];
								sleep  1;
						};
					};
					
					case "water": 
					{
						if([false,"water",1] call fnc_handleinv) then {
							if((vehicle player) == player) then { player playmove "AinvPknlMstpSnonWnonDnon_healed_1"; };
								thirstlvl = waste_maxwater;
								hint format["You've drank some water.\n\n Hydration Level: %1",thirstlvl];
								sleep  1;
								player playmove "AinvPknlMstpSnonWnonDnon_healed_1";
						};
					};
					
					case "medkit": 
					{
						if((damage player) < 0.1) exitwith {hint "You do not require a medkit"};
						if([false,"medkit",1] call fnc_handleinv) then
						{
						closeDialog 0;
						if((vehicle player) == player) then { player playmove "AinvPknlMstpSlayWrflDnon_medic"; };
							sleep 6.5;
							player setDamage 0;
							hint "You are now fully healed";
						};
					};
				};
		};
		
		case 1:
		{
		
		if(_data == "") exitWith {hint "You didn't select anything to drop";};
		if(_value <= 0) exitWith {hint "You didn't select the amount you wanted to drop."};
		if(dropActive) exitwith {hint "You're already dropping something";};
		if(vehicle player != player) exitwith {hint "You can't use this action while in a vehicle."};
		player playmove "AinvPknlMstpSlayWrflDnon";
		dropActive = true;
		sleep 1.5;
		_pos = getPosATL player;
		//Drops the item and sets values & variables
		for "_i" from 1 to _value do
		{
			switch(_data) do 
				{
					case "canfood": {if(!([false,"canfood",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Bag_EP1" createVehicle (position player); _temp setPos [(_pos select 0)+1, _pos select 1, _pos select 2]; _temp setVariable["food",10,true];};
					case "rabitmeat": {if(!([false,"rabbit",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["raw", true, true]; _temp setVariable["item", "rabit",true]};
					case "fuelFull": {if(!([false,"fuelF",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Fuel_can" createVehicle (position player); _temp setVariable["fuel", true, true]; _temp setPos _pos;};
					case "fuelEmpty": {if(!([false,"fuelE",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Fuel_can" createVehicle (position player); _temp setVariable["fuel", false, true]; _temp setPos _pos;};
					case "repairkits": {if(!([false,"repair",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Suitcase" createVehicle (position player); _temp setPos _pos;};
					case "water": {if(!([false,"water",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Teapot_EP1" createVehicle (position player); _temp setPos _pos;};
					case "medkit": {if(!([false,"medkit",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "CZ_VestPouch_EP1" createVehicle (position player); _temp setPos _pos;};
					case "goatmeat": {if(!([false,"goat",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["raw", true, true]; _temp setVariable["item", "goat",true]};
					case "cowmeat": {if(!([false,"cow",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["raw", true, true]; _temp setVariable["item", "cow",true]};
					case "boarmeat": {if(!([false,"boar",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["raw", true, true]; _temp setVariable["item", "boar",true]};
					case "chickenmeat": {if(!([false,"chicken",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["raw", true, true]; _temp setVariable["item", "chicken",true]};
					case "chickenmeatc": {if(!([false,"chickenc",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["item", "chicken",true]; _temp setVariable["raw",false,true];};
					case "rabitmeatc": {if(!([false,"rabbitc",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["item", "rabit",true]; _temp setVariable["raw",false,true];};
					case "boarmeatc": {if(!([false,"boarc",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["item", "boar",true]; _temp setVariable["raw",false,true];};
					case "goatmeatc": {if(!([false,"goatc",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["item", "goat",true]; _temp setVariable["raw",false,true];};
					case "cowmeatc": {if(!([false,"cowc",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _temp = "Land_Sack_EP1" createVehicle (position player); _temp setPos _pos; _temp setVariable["item", "cow",true]; _temp setVariable["raw",false,true];};
					case "bombs": {if(!([false,"bomb",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _bomb = "bomb" createVehicle getPos player; _bomb enableSimulation false; _bomb setVariable["bArmed", false, true]; _bomb setPosATL _pos;};
					case "beacon": {if(!([false,"beacon",1] call fnc_handleinv)) exitWith {hint "You don't have that many of the selected item."}; _beacon = "Satelit" createVehicle getPos player; _beacon setVariable["beacon",false,true]; _beacon enableSimulation false; _beacon setPosATL [(_pos select 0) + 1,_pos select 1, _pos select 2];};
				};
				dropActive = false;
				//closeDialog 0;
		};
		};
};

[] call fnc_updateMenu;