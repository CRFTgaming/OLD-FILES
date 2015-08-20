#include <macro.h>
private["_vehicle","_veh"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
_veh = typeOf _vehicle;


// First remove all cargo
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;

// General policy here is to remove all auto-locking missile weapons.

/***************************************************
 * BTR-K Kamysh:
 *  - Remove 1x2 Titan ATGMs
 ***************************************************/
if (_veh == "O_APC_Tracked_02_cannon_F") then {
  _vehicle removeMagazinesTurret ["2Rnd_GAT_missiles",[0]];
};

/***************************************************
 * AFV-4 Gorgon:
 *  - Remove 1x2 Titan ATGMs
 ***************************************************/
if (_veh == "I_APC_Wheeled_03_cannon_F") then {
  _vehicle removeMagazinesTurret ["2Rnd_GAT_missiles",[0]];
};

/***************************************************
 * IFV-6A Cheetah:
 *  - Remove 1x4 SAMs
 ***************************************************/
if (_veh == "B_APC_Tracked_01_AA_F") then {
  _vehicle removeMagazinesTurret ["4Rnd_Titan_long_missiles",[0]];
};

/***************************************************
 * ZSU-39 Tigris:
 *  - Remove 1x4 SAMs
 ***************************************************/
if (_veh == "O_APC_Tracked_02_AA_F") then {
  _vehicle removeMagazinesTurret ["4Rnd_Titan_long_missiles",[0]];
};

/***************************************************
 * ZS9 Sochor:
 *  - Remove 1x6 round mag mine cluster
 *  - Remove 1x2 round mag cluster shells
 *  - Remove 1x6 round mag AT mine cluster
 ***************************************************/
if (_veh == "O_MBT_02_arty_F") then {
  _vehicle removeMagazinesTurret ["6Rnd_155mm_Mo_mine",[0]];
  _vehicle removeMagazinesTurret ["2Rnd_155mm_Mo_Cluster",[0]];
  _vehicle removeMagazinesTurret ["6Rnd_155mm_Mo_AT_mine",[0]];
};

/***************************************************
 * M4 Scorcher:
 *  - Remove 1x6 round mag mine cluster
 *  - Remove 1x2 round mag cluster shells
 *  - Remove 1x6 round mag AT mine cluster
 ***************************************************/
if (_veh == "B_MBT_01_arty_F") then {
  _vehicle removeMagazinesTurret ["6Rnd_155mm_Mo_mine",[0]];
  _vehicle removeMagazinesTurret ["2Rnd_155mm_Mo_Cluster",[0]];
  _vehicle removeMagazinesTurret ["6Rnd_155mm_Mo_AT_mine",[0]];
};

/***************************************************
 * MI-48 Kajman:
 *  - Remove 1x8 scalpel ATGM
 ***************************************************/
if (_veh == "O_Heli_Attack_02_black_F" ||
    _veh == "O_Heli_Attack_02_F") then {
  _vehicle removeMagazinesTurret ["8Rnd_LG_scalpel",[0]];
};

/***************************************************
 * AH-99 Blackfoot:
 *  - Remove 1x4 ASRAAM AAMs
 ***************************************************/
if (_veh == "B_Heli_Attack_01_F") then {
  _vehicle removeMagazinesTurret ["4Rnd_AAA_missiles",[0]];
};
