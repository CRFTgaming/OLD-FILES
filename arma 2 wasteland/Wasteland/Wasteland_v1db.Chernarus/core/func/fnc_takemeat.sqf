/*
	@file Version: 1D
	@file name: core\func\fnc_takemeat.sqf
	@file Author: TAW_Tonic
	@file edit: 10/24/2012
	@file description: Takes meat from an animal and checks if the meat source has ran out to remove the body.
*/
private["_item","_target","_meat","_inv"];
_target = nearestObjects[getpos player, ["WildBoar","cock","hen","Rabbit","Cow01","Cow02","Cow03","Cow04","goat"], 5] select 0;
if((alive _target) || !(_target getVariable "gut")) exitWith {};
_type = typeOf _target;
_meat = _target getVariable "meat";

//hint format["%1", _type];
if(_meat <=0) exitwith {hint "This animal has no meat."; hideBody _target;};

switch (_type) do
{
	case "Cow01" : {_item = "cow"};
	case "Cow02" : {_item = "cow"};
	case "Cow03" : {_item = "cow"};
	case "Cow04" : {_item = "cow"};
	case "Cock" : {_item = "chicken"};
	case "Hen" : {_item = "chicken"};
	case "Goat" : {_item = "goat"};
	case "Rabbit" : {_item = "rabbit"};
	case "WildBoar" : {_item = "boar"};
};

_inv = [true,_item,1] call fnc_handleinv;

if(_inv) then
{
	player playmove "AinvPknlMstpSlayWrflDnon";
	
	_target setVariable["meat",(_meat - 1),true];
	_meat = _target getVariable "meat";
	
	if(_meat <=0) then {hideBody _target;};
};