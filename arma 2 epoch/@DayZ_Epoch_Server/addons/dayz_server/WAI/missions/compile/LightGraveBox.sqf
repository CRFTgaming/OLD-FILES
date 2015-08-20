//Sniper Gun Box

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// RIFLES
_box addWeaponCargoGlobal ["M4SPR", 1];

// AMMUNITION
_box addMagazineCargoGlobal ["20Rnd_556x45_Stanag", 4];
_box addMagazineCargoGlobal ["FoodbaconCooked", 1];
_box addMagazineCargoGlobal ["ItemKiloHemp", 2];
_box addMagazineCargoGlobal ["ItemTNK", 1];
_box addMagazineCargoGlobal ["ItemMorphine", 1];
_box addMagazineCargoGlobal ["ItemPainkiller", 1];

//TOOLS
_box addWeaponCargoGlobal ["Binocular_Vector", 1];
_box addWeaponCargoGlobal ["ItemGPS", 1];

