#include "dialog\player_sys.sqf"; 
if(isnil {waste_money}) then {waste_money = false;};
if(isNil {RogueVar}) then {RogueVar = false;};
if(dialog) exitwith{};
_playerDialog = createDialog "playerSettings";
disableSerialization;

private["_Dialog","_foodtext","_watertext","_moneytext","_mvalue","_rogue"];


_Dialog = findDisplay playersys_DIALOG;
_foodtext = _Dialog displayCtrl food_text;
_watertext = _Dialog displayCtrl water_text;
_moneytext = _Dialog displayCtrl money_text;
_mvalue = _Dialog displayCtrl money_value;
_ivalue = _Dialog displayCtrl item_edit;
_rogue = _Dialog displayCtrl rogue_text;
_carry = _Dialog displayCtrl carry_weight;
_foodtext ctrlSettext format["%1 / 100", round(hungerlvl)];
_watertext ctrlSetText format["%1 / 100", round(thirstlvl)];
_carry ctrlSetText format["Weight: %1 / %2", waste_carryW, waste_maxCarry];
_moneytext ctrlSetText format["%1", waste_money];
if(RogueVar) then {_rogue ctrlSetText "Go Civ";} else { _rogue ctrlSetText "Go Rogue";};

_iIndex = _ivalue lbadd "1"; _ivalue lbSetData [(lbSize _ivalue)-1, "1"];
_iIndex = _ivalue lbadd "2"; _ivalue lbSetData [(lbSize _ivalue)-1, "2"];
_iIndex = _ivalue lbadd "3"; _ivalue lbSetData [(lbSize _ivalue)-1, "3"];
_iIndex = _ivalue lbadd "4"; _ivalue lbSetData [(lbSize _ivalue)-1, "4"];
_iIndex = _ivalue lbadd "5"; _ivalue lbSetData [(lbSize _ivalue)-1, "5"];
_iIndex = _ivalue lbadd "6"; _ivalue lbSetData [(lbSize _ivalue)-1, "6"];
_iIndex = _ivalue lbadd "7"; _ivalue lbSetData [(lbSize _ivalue)-1, "7"];
_iIndex = _ivalue lbadd "8"; _ivalue lbSetData [(lbSize _ivalue)-1, "8"];
_iIndex = _ivalue lbadd "9"; _ivalue lbSetData [(lbSize _ivalue)-1, "9"];
_iIndex = _ivalue lbadd "10"; _ivalue lbSetData [(lbSize _ivalue)-1, "10"];

_mIndex = _mvalue lbadd "$5"; _mvalue lbSetData [(lbSize _mvalue)-1, "5"];
_mIndex = _mvalue lbadd "$15"; _mvalue lbSetData [(lbSize _mvalue)-1, "15"];
_mIndex = _mvalue lbadd "$20"; _mvalue lbSetData [(lbSize _mvalue)-1, "20"];
_mIndex = _mvalue lbadd "$50"; _mvalue lbSetData [(lbSize _mvalue)-1, "50"];
_mIndex = _mvalue lbadd "$75"; _mvalue lbSetData [(lbSize _mvalue)-1, "75"];
_mIndex = _mvalue lbadd "$100"; _mvalue lbSetData [(lbSize _mvalue)-1, "100"];
_mIndex = _mvalue lbadd "$200"; _mvalue lbSetData [(lbSize _mvalue)-1, "200"];
_mIndex = _mvalue lbadd "$300"; _mvalue lbSetData [(lbSize _mvalue)-1, "300"];
_mIndex = _mvalue lbadd "$500"; _mvalue lbSetData [(lbSize _mvalue)-1, "500"];
_mIndex = _mvalue lbadd "$1000"; _mvalue lbSetData [(lbSize _mvalue)-1, "1000"];