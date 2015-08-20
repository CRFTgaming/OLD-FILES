/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Sheriff's Dept.","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		//rebel spawn points
		if(license_civ_rebel && playerSide == civilian) then {
		_return = [
				["Rebelop","Reb. Airfield","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["Rebelop_2","Reb. Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["Rebelop_1","Cartel HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		// Civ spawn points
		if(!license_civ_rebel && playerSide == civilian) then {
		_return = [
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		// HellFire PMC Base         
        if((getPlayerUID player) in ["76561198134898961","76561198032047520","76561198058368737","76561198054879039","76561198056017572","76561198123632050"]) then {
        _return = _return + [
				["hellfire_player_spawn","Hellfire Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		// FE4R Security Corp
        if((getPlayerUID player) in ["76561197999157898","76561198060330707","76561198089779519","76561198093249364","765611980606330707","76561198058563261"]) then {
        _return = _return + [
				["FE4R_spawn","FE4R Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		// RWAC
        if((getPlayerUID player) in ["76561197983621024","76561198030376566"]) then {
        _return = _return + [
				["rwac_player","RWAC BASE","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		// classified
        if((getPlayerUID player) in ["76561197983394081","76561198047148413","76561198008962683"]) then {
        _return = _return + [
				["dS_spawn","DS BASE","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		// BC   
        if((getPlayerUID player) in ["76561198052016461","76561198047321620","76561198149395868","76561198039279681","76561198137246770","76561198036548171","76561197963292336","76561198082256888","76561197973575529","76561198140797514","76561198054219234","76561198009021128"]) then {
        _return = _return + [
				["bc_player","BC Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		// SEAL Team 3
        if((getPlayerUID player) in ["76561198028605988","76561198069687603","76561198101045726","76561198122482308","76561197990795128","76561198082456834","76561198106538437","76561198146424526","76561198081456248","76561197960870579","76561198076745740","76561197973639637"]) then {
        _return = _return + [
				["seal_spawn","SEAL BASE","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;