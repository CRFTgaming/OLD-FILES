custom_publish  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\custom_publishVehicle.sqf";
spawn_ammo_box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\ammobox.sqf";

//Custom Boxes
Construction_Supply_Box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\ConstructionSupplyBox.sqf";
Medical_Supply_Box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\MedicalSupplyBox.sqf";
Sniper_Gun_Box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\SniperGunBox.sqf";
Chain_Bullet_Box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\ChainBulletBox.sqf";

Extra_Large_Gun_Box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\ExtraLargeGunBox.sqf";
Large_Gun_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\LargeGunBox.sqf";
Medium_Gun_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\MediumGunBox.sqf";
Small_Gun_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\SmallGunBox.sqf";
Weed_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\WeedBox.sqf";
Gem_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\GemBox.sqf";
Gold_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\GoldBox.sqf";
Food_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\FoodBox.sqf";
Grave_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\GraveBox.sqf";
Grave2_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\Grave2Box.sqf";
Grave3_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\Grave3Box.sqf";
Grave4_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\Grave4Box.sqf";
Light_Grave_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\LightGraveBox.sqf";
Light_Grave2_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\LightGrave2Box.sqf";
Light_Grave3_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\LightGrave3Box.sqf";
Light_Grave4_Box = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\LightGrave4Box.sqf";
Bunny_Safe = compile preprocessFileLineNumbers "\z\addons\dayz_server\WAI\missions\compile\Bunny_Safe.sqf";
clean_running_mission = False;

//load mission config
[] ExecVM "\z\addons\dayz_server\WAI\missions\missionCfg.sqf";
waitUntil {WAImissionconfig};
diag_log "WAI: Mission Config File Loaded";
[] ExecVM "\z\addons\dayz_server\WAI\missions\missions.sqf";
//Custom ammo boxes
[] ExecVM "\z\addons\dayz_server\WAI\missions\StaticAmmoBoxes.sqf";