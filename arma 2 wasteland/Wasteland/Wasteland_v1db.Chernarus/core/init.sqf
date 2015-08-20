/*
	@file Version: 1D
	@file name: core/init.sqf
	@file Author: TAW_Tonic
	@file edit: 9/26/2012
	@file Description: Initiate main core
*/

private["_center","_cfgweapons","_type","_item_type","_weapon","_cur_type","_display_name","_optics","_no_pack","_server_init"];

[] execVM "strings_en.sqf";
[] execVM "core\misc\compile.sqf"; //Load precompiled commands

_center = getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition");
towns = nearestLocations [_center, ["CityCenter"], 25000];
towns = towns + nearestLocations[_center, ["NameVillage"],25000];

chanceNumber = (paramsArray select 0); //Amount of vehicles
objectNumber = (paramsArray select 5); //Amount of objects
CVG_Weaponcount = (paramsArray select 1); //Amount of weapons
CVG_Caches = (paramsArray select 2); //Enable caches in small towns
CVG_SideMissions= (paramsArray select 3); //Enable Side missions
Waste_Time = (paramsArray select 4); //Set Time
skipTime Waste_Time;
cvg_debug = 0;

		CVG_Rifles = [];
		CVG_scoped = [];
		CVG_heavy = [];
		CVG_launchers = [];
		CVG_pistols = [];
		
	{
		_cfgweapons = configFile >> "cfgWeapons";
	
		_type = 1;
		_item_type = _x;
		switch (_item_type) do {
			case 0: {_type = [1];};//CVG_Rifles
			case 1: {_type = [1];};//scoped CVG_Rifles
			case 2: {_type = [1,5];};//heavy
			case 3: {_type = [4];};//secondary weapon
			case 4: {_type = [2];};//pistol
			case 5: {_type = [0];};//put/throw
			case 6: {_type = [4096];};//BinocularSlot
			case 7: {_type = [131072];};//SmallItems
			default {_type = [1];};
		};

		for "_i" from 0 to (count _cfgweapons)-1 do {
			_weapon = _cfgweapons select _i;
			if (isClass _weapon) then {
				_weap_type = configName(_weapon);
				_cur_type = getNumber(_weapon >> "type");
				_display_name = getText(_weapon >> "displayName");
				_no_pack = getNumber(_weapon >> "ACE_nopack");
				_optics = getText(_weapon >> "ModelOptics");
				
				if (((((getNumber(_weapon >> "scope")==2)&&(getText(_weapon >> "model")!="")&&(_display_name!=""))||((_item_type==5)&&(getNumber(_weapon >> "scope")>0)))&&(_cur_type in _type)&&(_display_name!=""))
				&&
				((_item_type in [3,4,5,6,7])||((_item_type==0)&&(_no_pack!=1)&&((_optics=="-")))||((_item_type==1)&&(_no_pack!=1)&&((_optics!="-")))||((_item_type==2)&&((_cur_type==5)||((_no_pack==1)&&(_cur_type in _type)))))) then {

				if (_item_type == 0) then {
				CVG_Rifles set [(count CVG_Rifles),_weap_type];//CVG_Rifles
				};
				if (_item_type == 1) then {
				if((_weap_type == "AKS_74_GOSHAWK") or (_weap_type == "PMC_AS50_TWS") or (_weap_type == "BAF_AS50_TWS") or (_weap_type == "M110_TWS_EP1") or (_weap_type == "m8_tws_sd") or (_weap_type == "m8_tws") or (_weap_type == "SCAR_H_STD_TWS_SD")) then {} else {
				CVG_Scoped set [(count CVG_Scoped),_weap_type];//CVG_Scoped
				};
				};
					if (_item_type == 2) then {
					if((_weap_type == "AKS_74_GOSHAWK") or(_weap_type == "m107_TWS_EP1")) then {} else {
				CVG_Heavy set [(count CVG_Heavy),_weap_type];//CVG_Heavy
				};
				};
				if (_item_type == 3) then {
				CVG_Launchers set [(count CVG_Launchers),_weap_type];//CVG_Launchers
				};
				if (_item_type == 4) then {
				CVG_Pistols set [(count CVG_Pistols),_weap_type];//CVG_Pistols
				};
				
				};
			};
		};
	
} forEach [0,1,2,3,4,5,6,7];

if(X_Server) then {
[] execVM "server\core\server_init.sqf";
};
if(!isDedicated) then {
[] execVM "core\client_init.sqf";
};
[4] execFSM "core\core_time.fsm";
