/*
	@file Version: 1D
	@file name: core\func\fnc_inv.sqf
	@file Author: TAW_Tonic
	@file edit: 10/17/2012
	@file description: adds or removes an item from the inventory, return true if succesful or false if failed.
*/

private["_bool","_item","_num","_return","_getvar","_var","_subv","_itemweight","_weight"];
_bool = _this select 0; //Add or subtract?
_item = _this select 1; //Item that we're using
_num = _this select 2; //Item to add or subtract by

_getvar = [_item] call fnc_getvar; //Get the true & sub variable
_var = _getvar select 0; //True variable
_subv = _getvar select 1; //Sub variable
_itemweight = [_subv] call fnc_itemweight; //Get the items weight
_weight = _itemweight * _num; //Get the sum of the weight
_val = missionNamespace getVariable _var;
//If true add else subtract
if(_bool) then
{
	if((waste_carryW + _weight) <= waste_maxCarry) then
	{
		if((_subv == "bomb") || (_subv == "beacon")) then
		{
			missionNamespace setVariable[_var,true];
		} 
			else
		{
			missionNamespace setVariable[_var,((missionNameSpace getVariable _var) + _num)];
		};
		waste_carryW = waste_carryW + _weight; //Add to our weight
		_return = true;
	}
		else
	{
		_return = false;
	};
}
	else
{
	if((_subv == "bomb") || (_subv == "beacon")) then { if(_val) then {_val = 1;} else {_val = 0;}; };
	
	if((_val - _num) < 0) then
	{
		_return = false;
	}
		else
	{
		if((_subv == "bomb") || (_subv == "beacon")) then
		{
			missionNamespace setVariable[_var,false];
		} 
			else
		{
			missionNamespace setVariable[_var,((missionNameSpace getVariable _var) - _num)];
		};
		waste_carryW = waste_carryW - _weight; //Subtract our weight
		_return = true;
	};
};

_return;