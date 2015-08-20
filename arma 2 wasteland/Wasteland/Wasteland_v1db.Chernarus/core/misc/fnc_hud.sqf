/*
	@file Version: 1D
	@file name: core\misc\fnc_hud.sqf
	@file Author: TAW_Tonic
	@file edit: 9/28/2012
	@file description: This controls the hud / UI for food / water
*/

disableSerialization;
private["_ui","_hud","_food","_water"];

while {true} do
{
	cutRsc ["playerHUD","PLAIN"];
	_ui = uiNameSpace getVariable "playerHUD";
	_food = _ui displayCtrl 23500;
	_water = _ui displayCtrl 23510;
	
	_food ctrlSetPosition [safeZoneX+safeZoneW-0.080,safeZoneY+safeZoneH-0.55];
	_food ctrlSetText format["%1", hungerlvl];
	_food ctrlCommit 0;
	
	_water ctrlSetPosition [safeZoneX+safeZoneW-0.080,safeZoneY+safeZoneH-0.50];
	_water ctrlSetText format["%1", thirstlvl];
	_water ctrlCommit 0;
	
sleep 2;
};