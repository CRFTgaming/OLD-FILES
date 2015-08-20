//FOOD BOX


_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];


clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;


// FOOD
_box addMagazineCargoGlobal ["ItemSodaMdew", 5];
_box addMagazineCargoGlobal ["ItemSodaRbull", 5];
_box addMagazineCargoGlobal ["FoodBioMeat", 1];
_box addMagazineCargoGlobal ["FoodPistachio", 5];
_box addMagazineCargoGlobal ["FoodCanSardines", 3];
_box addMagazineCargoGlobal ["FoodCanFrankBeans", 3];
_box addMagazineCargoGlobal ["ItemSodaPepsi", 15];
_box addMagazineCargoGlobal ["ItemSodaOrangeSherbet", 10];