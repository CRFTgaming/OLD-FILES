/*
	@file Version: 1D
	@file name: client_init.sqf
	@file Author: TAW_Tonic
	@file edit: 9/26/2012
	@file description: Initiate client-based functions
*/
removeAllWeapons player;
removeBackpack player;
//titleText ["Initializing client", "black"]; titleFadeOut 9999;
waitUntil{!(isNil "BIS_fnc_init")}; //Wait till BIS function's are initialized
private["_town","_spawn","_index","_jipSide","_side","_name","_var","_cd"];
waitUntil{player == player};

_town = towns call BIS_fnc_selectRandom;
_spawn = [(getPos _town),5,65,1,0,0,0] call BIS_fnc_findSafePos;
player setpos _spawn;
player setPosATL [getPos player select 0, getPos player select 1, 0.1];

[] call waste_init_vars; //Initialize Client Variables
[] call waste_pActions; //Initliaze Player Actions
[] execVM "core\init_survival.sqf";
//[] spawn waste_ai_roam; //Start the roaming Raiders
[] execVM "core\misc\antitroll.sqf"; //Stop Teleporters and report to server
[] spawn fnc_hud; //pull up the HUD
[] execVM "core\eventhandles.sqf"; //Setup Event Handlers

//Set starter kit
[true,"canfood",2] call fnc_handleinv;
[true,"water",2] call fnc_handleinv;
[true,"rabbit",1] call fnc_handleinv;

waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call keysDown"];

[] execVM "core\setJIP.sqf";