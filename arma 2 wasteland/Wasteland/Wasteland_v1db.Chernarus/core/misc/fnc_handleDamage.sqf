/*
	@file Version: 1D
	@file name: core\misc\fnc_handleDamage.sqf
	@file Author: TAW_Tonic
	@file edit: 9/26/2012
	@file description: Used to disable friendly fire
*/
if(!local _unit) exitWith {};
private["_unit","_source","_damage"];
_unit = _this select 0;
_damage = _this select 2;
_source = _this select 3;

if((side _unit) == (side _source)) then
{
	false; //Do Nothing!
} else
{
	_damage;
};