/*
	@file Version: 1D
	@file name: core\misc\fnc_index.sqf
	@file Author: TAW_Tonic
	@file edit: 9/26/2012
	@file description: A ghetto functio to find an index of a match in a nested array.
*/

private["_find","_limit","_select","_array","_return"];
_find = _this select 0;
_array = _this select 1;

_limit = count _array;
for "_i" from 0 to _limit do
{
	_select = _array select _i;
	if((_var in _select) && (isNil {_return})) then
	{
		_return = _i;
	};
};

if(isNil {_return}) then {_return = -1;};
_return;