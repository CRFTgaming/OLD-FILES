//Sniper Gun Box

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["BAF_LRR_scoped", 1];

// AMMUNITION
_box addMagazineCargoGlobal ["5Rnd_86x70_L115A1", 5];
_box addMagazineCargoGlobal ["ItemEmerald", 1];
_box addMagazineCargoGlobal ["ItemComboLock", 1];
_box addMagazineCargoGlobal ["2000Rnd_762x51_M134", 1];
_box addMagazineCargoGlobal ["ItemMorphine", 1];
_box addMagazineCargoGlobal ["ItemPainkiller", 1];

//TOOLS
_box addWeaponCargoGlobal ["Binocular_Vector", 1];
_box addWeaponCargoGlobal ["ItemGPS", 1];


