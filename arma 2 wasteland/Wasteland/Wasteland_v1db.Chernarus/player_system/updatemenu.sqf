#include "dialog\player_sys.sqf"; 
#include "dialog\player_sys.sqf"; 
if(isnil {waste_money}) then {waste_money = false;};
if(isNil {RogueVar}) then {RogueVar = false;};
disableSerialization;

_Dialog = findDisplay playersys_DIALOG;
_foodtext = _Dialog displayCtrl food_text;
_watertext = _Dialog displayCtrl water_text;
_moneytext = _Dialog displayCtrl money_text;
_mvalue = _Dialog displayCtrl money_value;
_ivalue = _Dialog displayCtrl item_edit;
_rogue = _Dialog displayCtrl rogue_text;
_carry = _Dialog displayCtrl carry_weight;
_foodtext ctrlSettext format["%1 / %2", round(hungerlvl),waste_maxfood];
_watertext ctrlSetText format["%1 / %2", round(thirstlvl),waste_maxwater];
_carry ctrlSetText format["Weight: %1 / %2", waste_carryW, waste_maxCarry];
_moneytext ctrlSetText format["%1", waste_money];
if(RogueVar) then {_rogue ctrlSetText "Go Civ";} else { _rogue ctrlSetText "Go Rogue";};

_itemList = _Dialog displayCtrl item_list;
lbClear _itemList;

if(waste_canfood > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Canned Food", waste_canfood];
_itemList lbSetData [(lbSize _itemList)-1, "canfood"];
};
if(waste_rabit > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Raw Rabbit Meat", waste_rabit];
_itemList lbSetData [(lbSize _itemList)-1, "rabitmeat"];
};
if(waste_rabit_c > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Cooked Rabbit Meat", waste_rabit_c];
_itemList lbSetData [(lbSize _itemList)-1, "rabitmeatc"];
};
if(waste_cow > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Raw Cow Meat", waste_cow];
_itemList lbSetData [(lbSize _itemList)-1, "cowmeat"];
};
if(waste_cow_c > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Cooked Cow Meat", waste_cow_c];
_itemList lbSetData [(lbSize _itemList)-1, "cowmeatc"];
};
if(waste_chicken > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Raw Chicken Meat", waste_chicken];
_itemList lbSetData [(lbSize _itemList)-1, "chickenmeat"];
};
if(waste_chicken_c > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Cooked Chicken Meat", waste_chicken_c];
_itemList lbSetData [(lbSize _itemList)-1, "chickenmeatc"];
};
if(waste_boar > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Raw Boar Meat", waste_boar];
_itemList lbSetData [(lbSize _itemList)-1, "boarmeat"];
};
if(waste_boar_c > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Cooked Boar Meat", waste_boar_c];
_itemList lbSetData [(lbSize _itemList)-1, "boarmeatc"];
};
if(waste_goat > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Raw Goat Meat", waste_goat];
_itemList lbSetData [(lbSize _itemList)-1, "goatmeat"];
};
if(waste_goat_c > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Cooked Goat Meat", waste_goat_c];
_itemList lbSetData [(lbSize _itemList)-1, "goatmeatc"];
};
if(waste_water > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Water bottle", waste_water];
_itemList lbSetData [(lbSize _itemList)-1, "water"];
};
if(waste_fuelF > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Fuel Can", waste_fuelF];
_itemList lbSetData [(lbSize _itemList)-1, "fuelFull"];
};
if(waste_fuelE > 0) then {
_itemListIndex = _itemList lbAdd format["%1x - Empty Fuel Can", waste_fuelE];
_itemList lbSetData [(lbSize _itemList)-1, "fuelEmpty"];
};
if(waste_repairkits > 0) then {
_itemListIndex = _itemList lbAdd "Repair Kit";
_itemList lbSetData [(lbSize _itemList)-1, "repairkits"];
};
if(waste_medkits > 0) then {
_itemListIndex = _itemList lbAdd "Medkit";
_itemList lbSetData [(lbSize _itemList)-1, "medkit"];
};
if(waste_hasBeacon) then
{
_itemListIndex = _itemList lbAdd "Spawn Beacon";
_itemList lbSetData [(lbSize _itemList)-1,"beacon"];
};
if(waste_hasBomb) then
{
	_itemListIndex = _itemList lbAdd "Time Bomb";
	_itemList lbSetData [(lbSize _itemList)-1, "bombs"];
};