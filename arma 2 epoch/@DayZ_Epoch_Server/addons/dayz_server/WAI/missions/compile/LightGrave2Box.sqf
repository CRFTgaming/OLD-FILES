//Grave 2

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["m8_sharpshooter", 1];

// AMMUNITION
_box addMagazineCargoGlobal ["30Rnd_556x45_G36", 4];
_box addMagazineCargoGlobal ["ItemGoldBar10oz", 1];
_box addMagazineCargoGlobal ["ItemSodaRbull", 1];
_box addMagazineCargoGlobal ["MortarBucket", 1];
_box addMagazineCargoGlobal ["CinderBlocks", 4];

//TOOLS
_box addWeaponCargoGlobal ["ItemWatch", 1];
_box addWeaponCargoGlobal ["ItemCrowbar", 1];

