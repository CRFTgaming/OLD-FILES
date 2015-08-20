/*
	@file Version: 1D
	@file name: core\onJIP.sqf
	@file Author: TAW_Tonic
	@file edit: 9/14/2012
	@file description: Initiate JIP related stuff incase client has joined in progress
*/
private["_markertxt","_markerpos"];

if(!isNil {SM_Mission_Vars}) then
{
	if((SM_Mission_Vars select 0)) then
	{
		diag_log ("Starting JIP!");
		diag_log str(SM_Mission_Vars);
		_markertxt = SM_Mission_Vars select 1;
		_markerpos = SM_Mission_Vars select 2;
		_marker = createMarkerLocal [_markertxt,_markerpos];
		_marker setMarkerTypeLocal "mil_destroy";
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTextLocal _markertxt;
		_marker setMarkerSizeLocal [1,1];
		diag_log("JIP COMPLETED!");
	};
};
