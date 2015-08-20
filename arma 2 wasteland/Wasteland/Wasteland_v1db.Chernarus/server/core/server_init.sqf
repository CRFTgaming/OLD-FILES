#define KINDOF_ARRAY(a,b) [##a,##b] call {_veh = _this select 0;_types = _this select 1;_res = false; {if (_veh isKindOf _x) exitwith { _res = true };} forEach _types;_res}
private["_world"];
if(!X_Server) exitWith {};
"flareServerMonitor" addPublicVariableEventHandler{[(_this select 1)] execVM "server\core\server_flare.sqf"};
private["_pos","_building","_Build"];
CVG_weapons = [];
CVG_weapons = CVG_rifles;
CVG_weapons = CVG_weapons + CVG_Scoped;
CVG_weapons = CVG_weapons + CVG_Heavy;
CVG_weapons = CVG_weapons + CVG_pistols;
CVG_weapons = CVG_weapons + CVG_Launchers;
vehspawntype = 0;

buildings = nearestObjects [[0,0], ["house"], 30000];
randomWeapons = compile preprocessFileLineNumbers "core\dvs\randomWeapons.sqf";
vehicleInfo = compile preProcessFileLineNumbers "core\dvs\vehicleinfo.sqf";
objSpawn = compile preProcessFileLineNumbers "core\dvs\ObjectSpawn.sqf";

/*
/A comprehensive vehicle spawning script.
 See my PDF file on the subject (dominic)
Created by Craig/bobtom

Vehicle spawning scripts by Craig
Email: craigvandergalien@gmail.com

*/
		objectlist = ["Fort_Crate_wood","CZ_VestPouch_EP1","EvMoney","Base_WarfareBBarrier10xTall","Base_WarfareBBarrier10x","Land_Barrel_water","Land_Teapot_EP1","Land_Bag_EP1","Suitcase","CZ_Backpack_EP1","TK_ALICE_Pack_EP1","US_Backpack_EP1","Satelit","Fuel_can","Land_Campfire_burning","Land_Fire_barrel_burning","Land_fort_bagfence_corner","Land_HBarrier5","Land_BagFenceLong","Fort_EnvelopeBig_EP1","Fort_EnvelopeSmall_EP1","Land_Fort_Watchtower_EP1","Fort_RazorWire","Land_HBarrier_large","Land_HBarrier5","Fort_Barricade","Land_fort_artillery_nest","Land_fort_rampart","Land_fortified_nest_small","Land_fort_bagfence_round","Land_fortified_nest_big","Land_fort_bagfence_long","Land_Dirthump01","Land_CncBlock_Stripes","Land_CncBlock","Land_Misc_deerstand","Land_BarGate2","Land_A_tent","Land_tent_east"];
		
		blacklist = ["Land_stand_small_EP1","Land_stand_meat_EP1","Land_stand_waterl_EP1","Land_Crates_stack_EP1","Land_Carpet_rack_EP1","Land_Market_stalls_01_EP1","Land_Market_stalls_02_EP1","Land_Market_shelter_EP1","Land_Misc_Well_L_EP1","Land_Misc_Well_C_EP1","Fort_StoneWall_EP1","Land_Wall_L_2m5_gate_EP1","Land_Wall_L1_gate_EP1","Land_Wall_L3_gate_EP1","Land_Wall_L3_5m_EP1","Land_Wall_L3_pillar_EP1","Land_Wall_L_Mosque_1_EP1","Land_Wall_L_Mosque_2_EP1","Wall_FenW2_6_EP1","Wall_L_2m5_EP1","Wall_L1_2m5_EP1","Wall_L1_5m_EP1","Wall_L2_5m_EP1","Wall_L3_5m_EP1","Land_BoatSmall_1","Land_D_Mlyn_Vys","Land_D_Pec_Vez1","Land_Ind_BoardsPack1","Land_Ind_Shed_02_end","Land_Ind_Shed_01_end","Land_Ind_Shed_01_main","Land_Ind_BoardsPack2","Land_Dam_Barrier_40","Land_Dam_ConcP_20","Land_Dam_Conc_20","Land_D_Pec_Vez2","Land_BoatSmall_2a","Land_BoatSmall_2b","Land_fort_artillery_nest","Land_fort_rampart","Land_Vez_Pec","Land_runway_edgelight","Land_Nav_Boathouse_PierR","Land_Nav_Boathouse_PierT","Land_Nav_Boathouse_PierL","Land_fort_bagfence_corner","Land_fort_bagfence_long","Land_fort_bagfence_round","Land_Fort_Watchtower","Land_NavigLight","Land_Panelak","Land_Panelak2","Land_Panelak3","Land_plot_green_branka","Land_plot_rust_branka","Land_plot_green_vrata","Land_plot_rust_vrata","Land_plot_istan1_rovny_gate","Land_Plot_Ohrada_Pruchozi","Land_plot_zboreny","Land_plot_zed_drevo1_branka","Land_psi_bouda","Land_A_Castle_Bastion","Land_A_Castle_Gate","Land_A_Castle_Wall1_20","Land_A_Castle_Wall1_20_Turn","Land_A_Castle_Wall1_Corner","Land_A_Castle_Wall1_End","Land_A_Castle_Wall1_End_2","Land_A_Castle_Wall2_30","Land_A_Castle_Wall2_Corner","Land_A_Castle_Wall2_End","Land_A_Castle_Wall2_End_2","Land_A_Castle_WallS_10","Land_Gate_wood2_5","Land_Ind_Expedice_2","Land_Ind_Expedice_3","Land_Ind_Timbers","Land_Rail_Semafor","Land_Rail_Zavora","Land_Stoplight02","Land_Wall_CBrk_5_D","Land_brana02nodoor","Land_plot_green_branka","Land_plot_rust_branka","Land_plot_green_vrata","Land_molo_drevo_bs","Land_molo_drevo_end","Land_nav_pier_m_2","Land_psi_bouda","Land_plot_rust_vrata","Land_rails_bridge_40","Land_seno_balik","Land_sloup_vn","Land_sloup_vn_drat","Land_sloup_vn_dratZ","Land_sloup_vn_drat_d","ZavoraAnim","Land_vez","Land_pumpa","Land_Gate_Wood1_5","Land_fortified_nest_big","Land_fortified_nest_small","Fort_Nest","Land_Fire","Land_Fire_barrel","Land_Fire_barrel_burning","Land_Fire_burning","Land_Campfire","Land_Campfire_burning","Misc_TyreHeap","Land_ConcreteBlock","Land_ConcreteRamp","Land_sign_altar","Land_Sign_Bar_RU","Land_Sign_BES","Land_sign_TEC","Land_sign_ulgano","Land_SignB_Gov","Land_SignB_GovPolice","Land_SignB_GovSchool","Land_SignB_GovSign","Land_SignB_Hotel_CZ","Land_SignB_Hotel_CZ2","Land_SignB_Hotel_CZ3","Land_SignB_Pharmacy","Land_SignB_PostOffice","Land_SignB_Pub_CZ1","Land_SignB_Pub_CZ2","Land_SignB_Pub_CZ3","Land_SignB_Pub_RU1","Land_SignB_Pub_RU2","Land_SignB_Pub_RU3","Land_Ind_Timbers","Haystack","Pile_of_wood","Land_IndPipe1_stair","Land_IndPipe1_stair_todo_delete","Land_IndPipe2_big_9","Land_IndPipe2_big_18","Land_IndPipe2_big_18ladder","Land_IndPipe2_big_support","Land_IndPipe2_bigL_R","Land_IndPipe2_bigL_L","Land_IndPipe2_bigBuild1_R","Land_IndPipe2_bigBuild1_L","Land_IndPipe2_bigBuild2_R","Land_IndPipe2_bigBuild2_L","Land_IndPipe2_big_ground1","Land_IndPipe2_big_ground2","Land_IndPipe2_T_R","Land_IndPipe2_T_L","Land_IndPipe2_Small_9","Land_IndPipe2_Small_ground1","Land_IndPipe2_Small_ground2","Land_IndPipe2_SmallBuild1_L","Land_IndPipe2_SmallBuild1_R","Land_IndPipe2_SmallBuild2_L","Land_IndPipe2_SmallBuild2_R","Land_IndPipe2_SmallL_L","Land_IndPipe2_SmallL_R","Land_nav_pier_m_2","land_nav_pier_c","land_nav_pier_c2","land_nav_pier_c2_end","land_nav_pier_c_270","land_nav_pier_c_90","land_nav_pier_c_big","land_nav_pier_C_L","land_nav_pier_C_L10","land_nav_pier_C_L30","land_nav_pier_C_R","land_nav_pier_C_R10","land_nav_pier_C_R30","land_nav_pier_c_t15","land_nav_pier_c_t20","land_nav_pier_F_17","land_nav_pier_F_23","land_nav_pier_m","land_nav_pier_m_1","land_nav_pier_m_end","land_nav_pier_M_fuel","land_nav_pier_pneu","Land_ruin_chimney","Land_ruin_corner_1","Land_ruin_corner_2","Land_ruin_rubble","Land_ruin_walldoor","Land_ruin_wall","land_nav_pier_uvaz","Land_Misc_Cargo1C","Land_Misc_Cargo1D","Land_Misc_Cargo1E","Land_Misc_Cargo1F","Land_Misc_Cargo1G","Land_Misc_Cargo2B","Land_Misc_Cargo2C","Land_Misc_Cargo2D","Land_Misc_Cargo2E","Land_Misc_deerstand","Land_Misc_GContainer_Big","Land_sign_elektrozavodsk","Land_sign_balota","Land_sign_berezino","Land_sign_chernogorsk","Land_sign_kamenka","Land_sign_kamyshovo","Land_sign_komarovo","Land_sign_prigorodki","Land_sign_solnichnyi","Land_wagon_box","Land_wagon_flat","Land_wagon_tanker","Land_Wall_CBrk_5_D","Land_Wall_CGry_5_D","Land_Wall_Gate_Ind1_L","Land_Wall_Gate_Ind1_R","Land_Gate_IndVar2_5","Land_Gate_wood1_5","Land_Gate_wood2_5","Land_Wall_Gate_Ind2A_R","Land_Wall_Gate_Ind2B_R","Land_Wall_Gate_Ind2Rail_R","Land_Wall_Gate_Village","Land_Wall_Gate_Wood1","Land_Wall_Gate_Ind2A_L","Land_Wall_Gate_Ind2B_L","Land_Wall_Gate_Ind2Rail_L"];
		militarylist = ["Fort_EnvelopeSmall","Fort_EnvelopeBig","Land_Barrack2","Land_Hangar_2","Land_Hlidac_budka","Land_Mil_Barracks","Land_Mil_Barracks_L","Land_Mil_Barracks_i","Land_Mil_ControlTower","Land_Mil_Guardhouse","Land_Mil_House","Land_SS_hangar","Land_Shed_Ind02","Land_a_stationhouse","Land_A_Villa_EP1","Land_A_Villa_dam_EP1","Land_Mil_ControlTower_EP1","Land_Mil_ControlTower_dam_EP1","Land_Mil_House_EP1","Land_Mil_House_dam_EP1","Land_Mil_Barracks_i_EP1","Land_Mil_Barracks_EP1","Land_Mil_Barracks_L_EP1","Land_Mil_Guardhouse_EP1","Land_Mil_hangar_EP1","Land_Mil_Repair_center_EP1","Bunker_PMC"];
		//Initiallizes lists of map objects

		//Setup for buildings
		 militaryWeaponBuildings = ["Land_Barrack2_EP1","Land_Barrack2","Land_Hlidac_budka","Land_Mil_ControlTower","Land_Mil_ControlTower_EP1","Land_Mil_Barracks_i","Land_Mil_Barracks_L","Land_Mil_Barracks","Land_LHD_house_1","Land_LHD_house_2","Land_a_stationhouse"];
		//Set up cars:
		militaryvehs = ["LandRover_Ambulance_ACR","T810A_MG_ACR","Dingo_GL_Wdl_ACR","Dingo_WDL_ACR","GAZ_Vodnik_HMG","GUE_WarfareBVehicleServicePoint","HMMWV","HMMWV_M2","HMMWV_Armored","DSHKM_TK_INS_EP1","DSHkM_Mini_TriPod","BAF_GMG_Tripod_W","KORD_high_UN_EP1","M2StaticMG","M2HD_mini_TriPod","M252_US_EP1","SearchLight_US_EP1","BAF_Jackal2_L2A1_D","HMMWV_MK19","HMMWV_TOW","HMMWV_Avenger","MTVR","HMMWV_Ambulance","UAZ_CDF","UAZ_AGS30_CDF","UAZ_MG_CDF","Ural_CDF","UralOpen_CDF","Ural_ZU23_CDF","UAZ_RU","UAZ_AGS30_RU","Kamaz","KamazOpen","GAZ_Vodnik","BTR90_HQ","BTR40_MG_TK_GUE_EP1","M113_TK_EP1","BRDM2_Gue","Offroad_DSHKM_INS","Pickup_PK_INS","UAZ_INS","UAZ_AGS30_INS","UAZ_MG_INS","UAZ_SPG9_INS","Ural_INS","UralOpen_INS","Ural_ZU23_INS","Offroad_DSHKM_Gue","Offroad_SPG9_Gue","Pickup_PK_GUE","V3S_Gue","Ural_ZU23_Gue","HMMWV_DES_EP1","HMMWV_MK19_DES_EP1","HMMWV_TOW_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M998A2_SOV_DES_EP1","ibr_VAB","ibr_VAB_policia","HMMWV_Terminal_EP1","HMMWV_M1035_DES_EP1","HMMWV_Avenger_DES_EP1","HMMWV_Avenger_DES_EP1","M1030_US_DES_EP1","MTVR_DES_EP1","HMMWV_Ambulance_DES_EP1","HMMWV_M1151_M2_CZ_DES_EP1","LandRover_CZ_EP1","LandRover_Special_CZ_EP1","GRAD_TK_EP1","LandRover_MG_TK_EP1","LandRover_SPG9_TK_EP1","SUV_TK_EP1","UAZ_Unarmed_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_MG_TK_EP1","Ural_ZU23_TK_EP1","V3S_TK_EP1","V3S_Open_TK_EP1","LandRover_MG_TK_INS_EP1","LandRover_SPG9_TK_INS_EP1","SUV_UN_EP1","UAZ_Unarmed_UN_EP1","Ural_UN_EP1","Offroad_DSHKM_TK_GUE_EP1","Offroad_SPG9_TK_GUE_EP1","Pickup_PK_TK_GUE_EP1","Ural_ZU23_TK_GUE_EP1","V3S_TK_GUE_EP1"];
		_excludeVehs = ["LandRover_Ambulance_Des_ACR","M1114_DSK_ACR","M1114_AGS_ACR","RM70_ACR","T810Reammo_ACR","ATV_CZ_EP1","T810_Des_ACR","T810Reammo_Des_ACR","T810Refuel_ACR","T810Refuel_Des_ACR","T810Repair_Des_ACR","Dingo_GL_DST_ACR","Dingo_DST_ACR","UAZ_Unarmed_ACR","T810A_Des_MG_ACR","T810_Open_Des_ACR","ArmoredSUV_PMC","SUV_PMC","SUV_TK_EP1","SUV_UN_EP1","SUV_PMC_BAF","MAZ_543_SCUD_TK_EP1","GRAD_INS","GRAD_RU","GRAD_CDF","MtvrReammo_DES_EP1","MtvrReammo","WarfareReammoTruck_USMC","MtvrRefuel_DES_EP1","MtvrRefuel","MtvrRepair_DES_EP1","MtvrRepair","WarfareRepairTruck_Gue","WarfareSupplyTruck_Gue","WarfareSupplyTruck_INS","WarfareSupplyTruck_USMC","WarfareSupplyTruck_RU","UralSupply_TK_EP1","V3S_Supply_TK_GUE_EP1","WarfareSupplyTruck_CDF","MtvrSupply_DES_EP1","UralReammo_INS","UralReammo_CDF","WarfareReammoTruck_INS","WarfareReammoTruck_Gue","UralReammo_TK_EP1","WarfareReammoTruck_CDF","UralRefuel_CDF","UralRefuel_TK_EP1","UralRefuel_INS","UralRepair_TK_EP1","UralRepair_INS","UralRepair_CDF","Ural_ZU23_TK_EP1","Ural_ZU23_TK_GUE_EP1","Ural_ZU23_CDF","Ural_ZU23_Gue","Ural_ZU23_INS","KamazReammo","WarfareReammoTruck_RU","KamazRefuel","KamazRepair","V3S_Reammo_TK_GUE_EP1","V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","BAF_Jackal2_GMG_D","BAF_Jackal2_GMG_W","BAF_Jackal2_L2A1_W"];
		carsArray = [];
		
switch (worldname) do
{
	case "Panthera2": {
							_milExt = ["Land_garaz_bez_tanku","land_army_hut2_int","land_army_hut_int","Land_army_hut_storrage","Land_hospital"]; { militarylist set[count militarylist,_x]; } foreach _milExt; 
							chanceNumber = chanceNumber + 15; objectNumber = objectNumber + 32;
							_flats = [[8587.61,2244.41,0.00144386],[8417.53,6500.4,0.00131989],[1972.16,3481.7,0.00143862],[8321.37,5145.4,0.00143909],[4446.9,2328.54,0.00143862],[5776.5,1855.65,0.00143814],[7695.87,3890.71,0.00139618],[4586.58,7632.19,0.00141478],[4660.06,2816.85,0.00143862],[2987.29,4437.59,0.00143909]];
							{createLocation["FlatArea",_x,100,100];} foreach _flats;
					   };
};

_cfgvehicles = configFile >> "cfgVehicles";
_vehType = ["car","Motorcycle","truck"];
_exclude = ["Wheeled_APC"];

for "_i" from 0 to (count _cfgvehicles)-1 do 
{
	_veh = _cfgvehicles select _i;
	if(isClass _veh) then 
	{
		_veh_type = configName (_veh);
		if((getNumber(_veh >> "scope")==2) and (getText(_veh >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_vehType)) and !(KINDOF_ARRAY(_veh_type,_exclude))and !(KINDOF_ARRAY(_veh_type,militaryvehs))and !(KINDOF_ARRAY(_veh_type,_excludeVehs))) then
		{
			carsArray = carsArray + [_veh_type];
		};
	};
};

boatsArray = [];

_cfgvehicles = configFile >> "cfgVehicles";
_vehType = ["ship"];

for "_i" from 0 to (count _cfgvehicles)-1 do
{
	_veh = _cfgvehicles select _i;
	if(isClass _veh) then
	{
		_veh_type = configName (_veh);
		if((getNumber(_veh >> "scope")==2) and (getText(_veh >> "picture")!="")and(KINDOF_ARRAY(_veh_type,_vehType)) and !(KINDOF_ARRAY(_veh_type,_exclude))) then
		{
			boatsArray = boatsArray + [_veh];
		};
	};
};

[] execFSM "server\core\server_spawn.fsm";


[player,nil,rSIDECHAT,"SERVER - DVS Completed"] call RE;

[] execVM "core\misc\AmmoCaches.sqf";

SM_Mission_Vars = [false,ObjNull,ObjNull];
publicVariable "SM_Mission_Vars";

if (CVG_SideMissions == 1) then {
SMarray = ["SM1","SM2","SM3","SM4","SM5","SM6","SM7"];
[1] execVM "server\core\missions\SMfinder.sqf";
};

[] execVM "server\core\gunstore_fort.sqf";
[] execFSM "server\core\monitor_animal.fsm";
[] execVM "server\core\eventhandlers.sqf";

//Spawn 3 sets of AI
[] spawn waste_ai_roam;
[] spawn waste_ai_roam;
[] spawn waste_ai_roam;