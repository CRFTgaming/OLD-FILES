#include <macro.h>
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the players virtual inventory menu
*/

#define InvButtonGang 2011
#define InvButtonWantedMenu 2012
#define InvButtonWantedAdd 9800
#define InvButtonCellPhone 2020
#define InvButtonAdminMenu 2021

if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

// Set some sane defaults.
ctrlShow[InvButtonAdminMenu, false];
ctrlShow[InvButtonWantedMenu, false];
ctrlShow[InvButtonWantedAdd, false];

switch(playerSide) do
{
	case west: 
	{
		// Enable / Disable buttons for cops.
		ctrlShow[InvButtonGang, false];
		ctrlShow[InvButtonWantedMenu, true];

		// Cadets don't get access to custom wanted list.
		if (__GETC__(life_coplevel) > 5) then {
			ctrlShow[InvButtonWantedAdd, true];
		};
	};
	
	case civilian:
	{
		
	};
};

[] call life_fnc_p_updateMenu;

if(__GETC__(life_adminlevel) > 0) then {
	ctrlShow[InvButtonAdminMenu, true];
};

