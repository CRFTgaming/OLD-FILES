//GEM BOX


_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];


clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;


// GEMS
_box addMagazineCargoGlobal ["ItemRuby", 1];
_box addMagazineCargoGlobal ["ItemObsidian", 1];
_box addMagazineCargoGlobal ["ItemEmerald", 1];
_box addMagazineCargoGlobal ["ItemSapphire", 1];
_box addMagazineCargoGlobal ["ItemGoldBar10oz", 5];