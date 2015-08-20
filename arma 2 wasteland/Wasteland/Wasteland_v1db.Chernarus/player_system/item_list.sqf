#include "dialog\player_sys.sqf";
disableSerialization;

private["_itemListIndex","_itemList"];

_dialog2 = findDisplay playersys_DIALOG;
_itemList = _dialog2 displayCtrl item_list;

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