//Grave 2

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["M24", 1];

// AMMUNITION
_box addMagazineCargoGlobal ["5Rnd_762x51_M24", 4];
_box addMagazineCargoGlobal ["ItemBloodbag", 1];
_box addMagazineCargoGlobal ["ItemNewspaper", 1];
_box addMagazineCargoGlobal ["HandGrenade_east", 1];
_box addMagazineCargoGlobal ["ItemORP", 1];
_box addMagazineCargoGlobal ["ItemSodaOrangeSherbet", 1];
_box addMagazineCargoGlobal ["ItemTinBar", 1];

//TOOLS
_box addWeaponCargoGlobal ["ItemKeyKit", 1];
_box addWeaponCargoGlobal ["ItemFishingPole", 1];

