/*
	@file Version: 1D
	@file name: core/onRespawn.sqf
	@file Author: TAW_Tonic
	@file edit: 9/23/2012
	@file description: On player death select random town to respawn at
*/

private["_player","_corpse","_town","_spawn","_temp"];

_player = (_this select 0) select 0;
_corpse = (_this select 0) select 1;
_corpse removeAction 0;

//Hotfix for Debug lands
if(isNil {waste_sBeacon}) then {waste_sBeacon = ObjNull;};

if(RogueVar) then { 
_temp = createGroup resistance;
[_player] joinSilent _temp;
_player addRating -10000;
};
thirstlvl = 100; hungerlvl = 100;

//Set food variables
waste_canfood = 0; //Canned Food supply
waste_rabit = 0; //Raw rabit meat
waste_goat = 0; //Raw goat meat
waste_cow = 0; //Raw cow meat
waste_boar = 0; //Raw boar meat
waste_chicken = 0; //Raw chicken meat
waste_rabit_c = 0; //Cooked Rabit Meat
waste_goat_c = 0; //Cooked Goat Meat
waste_boar_c = 0; //Cooked Boar Meat
waste_cow_c = 0; //Cooked Cow Meat
waste_chicken_c = 0; //Cooked Chicken Meat
waste_water = 0;

//Set car-part variables
waste_fuelE = 0;
waste_fuelF = 0;
waste_repairkits = 0;

waste_medkits = 0; //Medical var
waste_money = 0; //Money

//Misc variables
waste_hasBomb = false;
waste_hasBeacon = false;
waste_carryW = 0;

removeAllWeapons _player;
removeBackpack player;

if((!isNull waste_sBeacon) && (alive waste_sBeacon)) then
{
	player setPos[-3743.03,15844.8,0];
	createDialog "beaconMenu";
	
} else
{
_town = towns call BIS_fnc_selectRandom;
_spawn = [(getPos _town),5,65,1,0,0,0] call BIS_fnc_findSafePos;
player setpos _spawn;
player setPosATL [getPos player select 0, getPos player select 1, 0.1];
titleText["","PLAIN"];
titleFadeOut 1;
beacon_wait = false;
};
[] execVM "core\playerActions.sqf";