#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991
	
	Description:
	Figure it out.
*/
private["_value","_action"];
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
_value = parseNumber(ctrlText 9922);
if(_value < 0) exitWith {};
if(_value > 10000000) exitWith {hint "Maximum of 10 Million!"};
//if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};
life_cash = life_cash + _value;
hint format [localize "STR_ANOTF_Success",[_value] call life_fnc_numberText];
closeDialog 0;
