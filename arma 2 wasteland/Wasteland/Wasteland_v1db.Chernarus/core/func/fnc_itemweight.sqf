/*
	@file Version: 1D
	@file name: core\func\fnc_itemweight.sqf
	@file Author: TAW_Tonic
	@file edit: 10/17/2012
	@file description: Returns the selected items weight
*/

private["_item","_weight"];

_item = _this select 0;

switch (_item) do
{
	case "rabbit": {_weight = 3};
	case "cow": {_weight = 10};
	case "boar": {_weight = 5};
	case "chicken": {_weight = 3};
	case "goat": {_weight  = 7};
	case "fuelF": {_weight = 25};
	case "fuelE": {_weight = 10};
	case "canfood": {_weight = 2};
	case "beacon": {_weight = 35};
	case "repair": {_weight = 20};
	case "bomb": {_weight = 35};
	case "water": {_weight = 1};
	case "medkit": {_weight = 15};
};

_weight;
	