/*
	@file Version: 1D
	@file name: core\misc\fnc_ranPos.sqf
	@file Author: TAW_Tonic
	@file edit: 9/14/2012
	@file description: Returns a random position with the given random x,y and makes sure its not over water.
*/

private["_oldPos","_min","_max","_ranPos","_return","_go"];
_oldPos = [(_this select 0) select 0, (_this select 0) select 1];
_min = _this select 1;
_max = _this select 2;

_dice = random 100;
if(_dice < 50) then
{
	_math = false;
}
else
{
	_math = true;
};

_ranVal = random _max;

while {_ranVal < _min} do
{
	_ranVal = random _max;
};

if(_math) then
{
	_ranPos = [(_oldPos select 0) - random _max, (_oldPos select 0) + random _max];
}
else
{
	_ranPos = [(_oldPos select 0) + random _max, (_oldPos select 0) - random _max];
};
while {surfaceIsWater _ranPos} do
{
	if(_math) then
	{	
		_ranPos = [(_oldPos select 0) - random _max, (_oldPos select 0) + random _max];
	}
	else
	{
		_ranPos = [(_oldPos select 0) + random _max, (_oldPos select 0) - random _max];
	};
};

_return = [_ranPos select 0, _ranPos select 1, 0];
_return;