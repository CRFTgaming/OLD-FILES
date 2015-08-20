//Chain Bullet Box

_box = _this select 0;
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

// GOLD
_box addMagazineCargoGlobal ["ItemGoldBar2oz", 5];
_box addMagazineCargoGlobal ["PartOreGold", 7];
_box addMagazineCargoGlobal ["ItemGoldBar10oz", 15];
