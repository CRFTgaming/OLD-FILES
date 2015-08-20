//WEED BOX

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];


clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;


// TOOLS
_box addWeaponCargoGlobal ["ItemCrowbar", 1];
_box addWeaponCargoGlobal ["ItemToolbox", 1];
_box addWeaponCargoGlobal ["ItemKnife", 5];
_box addWeaponCargoGlobal ["ItemMatchbox", 1];
_box addWeaponCargoGlobal ["ItemGPS", 1];


// STUFF
_box addMagazineCargoGlobal ["ItemMorphine", 1];
_box addMagazineCargoGlobal ["ItemPainkiller", 1];
_box addMagazineCargoGlobal ["ItemBloodbag", 1];
_box addMagazineCargoGlobal ["ItemKiloHemp", 20];

