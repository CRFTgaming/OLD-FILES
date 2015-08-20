/*
	@file Version: 1D
	@file name: init.sqf
	@file Author: TAW_Tonic
	@file edit: 9/26/2012
*/
X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

//Fix for friendly fire against units
civilian setFriend [west,0];
civilian setFriend [east, 0];
civilian setFriend [resistance, 0];

if(isServer) then { X_Server = true; waste_JIPLIST = []; publicVariable "waste_JIPLIST";};
if(!isDedicated) then { X_Client = true;};
if(isNull player) then {X_JIP = true;};
enableSaving[false,false];

//init Wasteland Core
[] execVM "core\init.sqf";

AEG_explode = 4;
AEG_password = "waste";

//init 3rd Party Scripts
[] execVM "R3F_ARTY_AND_LOG\init.sqf";
[] execVM "core\misc\DynamicWeatherEffects.sqf";
[] execVM "scripts\NEO_tfs\TFS_init.sqf"; 

[] execVM "briefing.sqf"; //Load Briefing

if(X_JIP) then {[] execVM "core\onJIP.sqf";};
