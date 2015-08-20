/*
	@file Version: 1D
	@file name: core\func\fnc_getvar.sqf
	@file Author: TAW_Tonic
	@file edit: 10/17/2012
	@file description: Takes a specific value and returns its true variable. Inplaced because i'm to lazy.
*/

private["_var","_return"];
_var = _this select 0;

switch (_var) do
{
	case "cow": {_return = ["waste_cow","cow"];};
	case "cowc": {_return = ["waste_cow_c","cow"];};
	case "rabbit": {_return = ["waste_rabit","rabbit"];};
	case "rabbitc": {_return = ["waste_rabit_c","rabbit"];};
	case "goat": {_return = ["waste_goat","goat"];};
	case "goatc": {_return = ["waste_goat_c","goat"];};
	case "boar": {_return = ["waste_boar","boar"];};
	case "boarc": {_return = ["waste_boar_c","boar"];};
	case "chicken": {_return = ["waste_chicken","chicken"];};
	case "chickenc": {_return = ["waste_chicken_c","chicken"];};
	case "canfood": {_return = ["waste_canfood","canfood"];};
	case "water": {_return = ["waste_water","water"];};
	case "repair": {_return = ["waste_repairkits","repair"];};
	case "medkit": {_return = ["waste_medkits","medkit"];};
	case "beacon": {_return = ["waste_hasBeacon","beacon"];};
	case "bomb": {_return = ["waste_hasBomb","bomb"];};
	case "fuelF": {_return = ["waste_fuelF","fuelF"];};
	case "fuelE": {_return = ["waste_fuelE","fuelE"];};
};
_return;
