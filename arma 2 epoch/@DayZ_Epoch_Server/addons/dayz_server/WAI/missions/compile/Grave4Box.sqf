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
_box addMagazineCargoGlobal ["20Rnd_762x51_DMR", 3];
_box addMagazineCargoGlobal ["ItemBloodbag", 1];
_box addMagazineCargoGlobal ["ItemNewspaper", 1];
_box addMagazineCargoGlobal ["ItemSodaMdew", 1];
_box addMagazineCargoGlobal ["metal_floor_kit", 2];
_box addMagazineCargoGlobal ["ItemARM", 1];
_box addMagazineCargoGlobal ["PartVRotor", 1];
_box addMagazineCargoGlobal ["ItemTinBar", 1];

//TOOLS
_box addWeaponCargoGlobal ["ItemKeyKit", 1];
_box addWeaponCargoGlobal ["ItemFishingPole", 1];

