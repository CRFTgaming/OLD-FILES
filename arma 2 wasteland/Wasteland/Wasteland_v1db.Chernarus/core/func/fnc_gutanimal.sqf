/*
	@file Version: 1D
	@file name: core\func\fnc_gutanimal.sqf
	@file Author: TAW_Tonic
	@file edit: 10/24/2012
	@file description: Guts the animal specified.
*/
private["_agent","_item"];
_item = _this select 3;
_agent = nearestObjects[getpos player, ["WildBoar","cock","hen","Rabbit","Cow01","Cow02","Cow03","Cow04","goat"], 5] select 0;
if(alive _agent) exitWith {};
_agent setVariable["gut",true,true];

player switchMove "AinvPknlMstpSlayWrflDnon_medic"; 
AnimSync = [player,"AinvPknlMstpSlayWrflDnon_medic"]; 
publicVariable "AnimSync"; 
WaitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};

switch (_item) do
{
	case "cow": 
	{
		_agent setVariable["meat",5,true];
	};
	
	case "chicken":
	{
		_agent setVariable["meat",1,true];
	};
	
	case "goat":
	{
		_agent setVariable["meat",3,true];
	};
	
	case "boar":
	{
		_agent setVariable["meat",2,true];
	};
	
	case "rabbit":
	{
		_agent setVariable["meat",1,true];
	};
};