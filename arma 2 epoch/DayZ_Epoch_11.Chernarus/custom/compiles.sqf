if (!isDedicated) then {
    zombie_generate = compile preprocessFileLineNumbers "walkingdead\zombie_generate.sqf";
    player_zombieAttack = compile preprocessFileLineNumbers "walkingdead\player_zombieAttack.sqf";
    wild_spawnZombies = compile preprocessFileLineNumbers "walkingdead\wild_spawnZombies.sqf";
    fnc_usec_damageHandler = compile preprocessFileLineNumbers "walkingdead\fn_damageHandler.sqf";
};
 