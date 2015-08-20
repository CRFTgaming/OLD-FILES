//Grave 2

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["Pecheneg_DZ", 1];

// AMMUNITION
_box addMagazineCargoGlobal ["100Rnd_762x54_PK Ammo", 2];
_box addMagazineCargoGlobal ["ItemBloodbag", 1];
_box addMagazineCargoGlobal ["ItemNewspaper", 1];
_box addMagazineCargoGlobal ["150Rnd_127x107_DSHKM", 1];
_box addMagazineCargoGlobal ["ItemAntibiotic", 1];
_box addMagazineCargoGlobal ["ItemAVE", 1];
_box addMagazineCargoGlobal ["ItemBook1", 1];
_box addMagazineCargoGlobal ["FoodMRE", 1];

//TOOLS
_box addWeaponCargoGlobal ["ItemCompass", 1];
_box addWeaponCargoGlobal ["ItemToolbox", 1];

