//Grave 2

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["DMR_DZ", 1];

// AMMUNITION
_box addMagazineCargoGlobal ["20Rnd_762x51_DMR", 4];
_box addMagazineCargoGlobal ["ItemGoldBar10oz", 1];
_box addMagazineCargoGlobal ["ItemSodaRbull", 1];
_box addMagazineCargoGlobal ["100Rnd_127x99_M2", 1];
_box addMagazineCargoGlobal ["ItemTroutCooked", 1];
_box addMagazineCargoGlobal ["metal_floor_kit", 3];

//TOOLS
_box addWeaponCargoGlobal ["ItemWatch", 1];
_box addWeaponCargoGlobal ["ItemCrowbar", 1];

