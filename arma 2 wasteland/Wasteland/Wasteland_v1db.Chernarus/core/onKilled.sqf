/*
	@file Version: 1D
	@file name: core/onKilled.sqf
	@file Author: TAW_Tonic
	@file edit: 9/2/2012
	@file description: When killed unit drops whatever items he had
*/

_player = (_this select 0) select 0;
_killer = (_this select 0) select 1;
_player removeAction 0;
if(isnil {waste_money}) then {waste_money = 0;};

if(!local _player) exitwith {};

private["_a","_b","_c","_d","_e","_f","_m","_player","_killer"];

if(waste_money > 0) then {
_m = "EvMoney" createVehicle (position _player);
_m setVariable["money", waste_money, true];
};
if(waste_medkits > 0) then {

for "_a" from 1 to waste_medkits do
{	
	_m = "CZ_VestPouch_EP1" createVehicle (position _player);
};
};
if(waste_hasBomb) then
{
	_bomb = "bomb" createVehicle getPos _player; 
	_bomb enableSimulation false; 
	_bomb setVariable["bArmed", false, true]; 
};
if(waste_repairkits > 0) then {

for "_b" from 1 to waste_repairkits do
{	
	_m = "Suitcase" createVehicle (position _player);
};
};
if(waste_canfood > 0) then {

for "_c" from 1 to waste_canfood do
{	
_m = "Land_Bag_EP1" createVehicle (position _player);
};
};
if(waste_fuelF > 0) then 
{
	_m = "Fuel_can" createVehicle (position _player);
	_m setVariable["fuel",true,true];
};
if(waste_fuelE > 0) then {

	_m = "Fuel_can" createVehicle (position _player);
	_m setVariable["fuel",false,true];
};
if(waste_water > 0) then {

for "_f" from 1 to waste_water do
{	
	_m = "Land_Teapot_EP1" createVehicle (position _player);
};
};
if(waste_hasBeacon) then
{
	_beacon = "Satelit" createVehicle getPos player; 
	_beacon setVariable["beacon",false,true]; 
	_beacon setPosATL (getPosATL player);
};

//Drop Rabit meat if unit has it
[_player,waste_rabit,true,"rabit"] call waste_fnc_dropFood;
[_player,waste_rabit_c,false,"rabit"] call waste_fnc_dropFood;
//Drop Goat meat if unit has it
[_player,waste_goat,true,"goat"] call waste_fnc_dropFood;
[_player,waste_goat_c,false,"goat"] call waste_fnc_dropFood;
//Drop Cow meat if unit has it
[_player,waste_cow,true,"cow"] call waste_fnc_dropFood;
[_player,waste_cow_c,false,"cow"] call waste_fnc_dropFood;
//Drop Boar meat if unit has it
[_player,waste_boar,true,"boar"] call waste_fnc_dropFood;
[_player,waste_boar_c,false,"boar"] call waste_fnc_dropFood;
//Drop Chicken meat if unit has it
[_player,waste_chicken,true,"chicken"] call waste_fnc_dropFood;
[_player,waste_chicken_c,false,"chicken"] call waste_fnc_dropFood;

titleText["","Black Out"];
titleFadeOut 999;
beacon_wait = true;