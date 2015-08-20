//Grave 2

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["SVD", 1];

// AMMUNITION
_box addMagazineCargoGlobal ["10Rnd_762x54_SVD", 5];
_box addMagazineCargoGlobal ["ItemBloodbag", 1];
_box addMagazineCargoGlobal ["ItemSodaMdew", 1];
_box addMagazineCargoGlobal ["ItemAntibiotic", 1];
_box addMagazineCargoGlobal ["FoodchickenCooked", 1];

//TOOLS
_box addWeaponCargoGlobal ["ItemCompass", 1];
_box addWeaponCargoGlobal ["ItemToolbox", 1];

