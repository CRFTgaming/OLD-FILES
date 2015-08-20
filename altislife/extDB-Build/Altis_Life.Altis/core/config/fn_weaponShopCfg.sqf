#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["Altis Cop Shop",
					[
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Taser Mag",250],
						["Binocular",nil,150],
						["ItemGPS","GPS",500],
						["ItemMap","Map",500],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["Rangefinder",nil,700],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_attachment":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 4): {"ACCESS DENIED !!!!"};
			default
			{
				["Police Attachment Shop",
					[
						["optic_Aco","ACO Red",350],
						["optic_ACO_grn","ACO Green",350],
						["optic_Aco_smg","ACO SMG Red",450],
						["optic_ACO_grn_smg","ACO SMG Green",450],
						["optic_MRD","45 Pistol MRD Sight",350],
						["optic_Holosight","Holo Sight",1500],
						["optic_DMS","DMS",2000],
						["optic_MRCO","MRCO",1500],
						["optic_Arco","ARCO",2500],
						["optic_NVS","NVS",3500],
						["optic_SOS","SOS Scope",3500],
						["acc_pointer_IR","Laser Pointer",1800],
						["muzzle_snds_acp",".45 Suppressor",1000],
						["muzzle_snds_M","5.56 Suppressor",2000],
						["muzzle_snds_H","6.5 Suppressor",2500],
						["muzzle_snds_B","7.62mm Suppressor",15000],
						["muzzle_snds_H_MG","6.5mm LMG Suppressor",15000]
					]
				];
			};
		};
	};
	
	case "cop_cadet":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 1): {"This is a restricted menu Pub!"};
			default
			{
				["Altis Police Cadet Shop",
					[
						["arifle_SDAR_F","Taser Rifle",8500],
						["20Rnd_556x45_UW_mag","Taser Rifle Mag",200]						
					]
				];
			};
		};
	};
	
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 2): {"This is a restricted menu Cadet!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["hgun_PDW2000_F","PDW2000",2500],
						["30Rnd_9x21_Mag","PDW Mag",250],
						["arifle_TRG20_F","TRG20",3500],
						["30Rnd_556x45_Stanag","TRG Mag",250],
						["arifle_Mk20C_F","MK20",4500],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["arifle_MX_Black_F","MX 6.5mm",7500],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["optic_Aco","ACO Red",350],
						["optic_ACO_grn","ACO Green",350],
						["optic_Aco_smg","ACO SMG Red",450],
						["optic_ACO_grn_smg","ACO SMG Green",450],
						["acc_pointer_IR","Laser Pointer",1800],
						["acc_flashlight","Flashlight",100],
						["muzzle_snds_L","9mm Suppressor",250]
					]
				];
			};
		};
	};
	
	case "cop_highway":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 3): {"ACCESS DENIED !!!!"};
			default
			{
				["Altis Highway Patrol Shop",
					[
						["SMG_01_F","Vermin .45",2500],
						["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",50],
						["arifle_TRG21_GL_F","TRG21 GL",4500],
						["30Rnd_556x45_Stanag","TRG Mag",250],
						["arifle_MX_GL_Black_F","MX 3GL",8500],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["arifle_Mk20_GL_F","MK20 GL",9000],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_SmokeRed_Grenade_shell",nil,250],
						["muzzle_snds_M","5.56 Suppressor",2000],
						["muzzle_snds_H","6.5 Suppressor",2500]
					]
				];
			};
		};
	};
	
    case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 4): {"ACCESS DENIED !!!!"};
			default
			{
				["Altis Sergeant Shop",
					[
						["arifle_TRG21_F","TRG21",3500],
						["30Rnd_556x45_Stanag","TRG Mag",250],
						["arifle_MK20C_F","MK20",4500],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["arifle_MXM_F","MXM",8500],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["arifle_MXC_Black_F","MXC Black",9000],
						["30Rnd_65x39_caseless_mag","MX Mag",250]
					]
				];
			};
		};
	};
	
	case "cop_lt2":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 6): {"ACCESS DENIED !!!!"};
			default
			{
				["Altis 2nd Lieutenant's Shop",
					[
						["arifle_MX_SW_Black_F","MX LMG",5000],
						["100Rnd_65x39_caseless_mag","MX 100rd Mag",250],
						["launch_RPG32_F","RPG",6500],
						["RPG32_F","Rocket",500],
						["arifle_MK20C_F","MK20",4500],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["B_UavTerminal","UAV Terminal",25000]
					]
				];
			};
		};
	};	
		
	case "cop_lt1":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 7): {"ACCESS DENIED !!!!"};
			default
			{
				["Altis 1st Lieutenant's Shop",
					[
						["hgun_ACPC2_F",".45 ACP",3500],
						["9Rnd_45ACP_Mag",".45 9rd Mag",100],
						["srifle_LRR_F",".408 Rifle",6500],
						["7Rnd_408_Mag",".408 Mag",250],						
						["B_UavTerminal","UAV Terminal",25000]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 8): {"Oh so you want to be in charge now?  Work hard and get promoted, then you can look in here!"};
			default
			{
				["Altis Captain Officer Shop",
					[
						["LMG_Mk200_F","MK200",25000],
						["200Rnd_65x39_cased_Box","MK200 Mag",3000],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer",3000],
						["hgun_Pistol_heavy_01_F","45 Pistol",3000],
						["11Rnd_45ACP_Mag","45 Pistol Mag",200],
						["3Rnd_UGL_FlareWhite_F","White Flare",700],
						["3Rnd_UGL_FlareRed_F","Red Flare",700],
						["SmokeShellBlue","Tear Gas",150000],
						["HandGrenade_Stone","Flashbang",150000],
						["B_UavTerminal","UAV Terminal",25000]
					]
				];
			};
		};
	};
	
	case "cop_commissioner":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 9): {" HAHA Yeah Right Don't touch my junk!"};
			default
			{
				["Altis Commissioner's Shop",
					[
						["SmokeShellBlue","Tear Gas",150000],
						["LMG_Zafir_F","Zafir",35000],
						["150Rnd_762x51_Box","Zafir Mag",3500],
						["150Rnd_762x51_Box_Tracer","Zafir Mag Tracer",3500]
					]
				];
			};
		};
	};

	case "cop_commanding_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			case (__GETC__(life_coplevel) < 10): {"Don't Touch My Shop!"};
			default
			{
				["Altis Commanding Officer Shop",
					[
						["srifle_EBR_F","MK18",25000],
						["20Rnd_762x51_Mag","MK18 Mag",1000],
						["LMG_Zafir_F","Zafir",35000],
						["150Rnd_762x51_Box","Zafir Mag",3500],
						["150Rnd_762x51_Box_Tracer","Zafir Mag Tracer",3500],
						["LMG_Mk200_F","MK200",25000],
						["200Rnd_65x39_cased_Box","MK200 Mag",3000],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer",3000],
						["launch_RPG32_F","RPG 42",250000],
						["RPG32_HE_F","HE Rocket",5000],
						["RPG32_F","Rocket",10000],
						["optic_LRPS","LRPS Scope",10000],
						["HandGrenade_Stone","Flashbang",150000],
						["SmokeShellBlue","Tear Gas",150000],
						["optic_Nightstalker","Night stalker",25000],
						["B_UavTerminal","UAV Terminal",25000]
					]
				];
			};
		};
	};
	
	case "sheriff":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["Sheriffs Dept Armory",
					[
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Taser Mag",250],
						["hgun_ACPC2_F","ACP-C2 .45",2500],
						["9Rnd_45ACP_Mag",".45 ACP Mag",100],
						["hgun_Pistol_heavy_01_MRD_F","4-five .45",3500],
						["11Rnd_45ACP_Mag","4-Five Mag",150],
						["SMG_02_F","Sting 9mm SMG",4500],
						["30Rnd_9x21_Mag","SMG 30Rnd Mag",150],
						["arifle_MXC_Black_F","MXC 6.5 mm",7500],
						["30Rnd_65x39_caseless_mag","MXC 30rd Mag",300],
						["srifle_EBR_F","MK18",8500],
						["20Rnd_762x51_Mag","MK18 Mag",300],
						["arifle_MX_SW_F","MX SW",9000],
						["100Rnd_65x39_caseless_mag","100rd MX SW Mag",350],
						["arifle_MXM_Black_F","Marksman rifle",5000],
						["30Rnd_65x39_caseless_mag","Marksman Mag",300],
						["srifle_LRR_F",".408 Rifle",7500],
						["7Rnd_408_Mag",".408 Mag",250],
						["HandGrenade_Stone","Flashbang",150000]
					]
				];
			};
		};
	};
	
	case "sheriff_attachment":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["Sheriffs Attachment Shop",
					[
						["optic_Aco","ACO Red",350],
						["optic_ACO_grn","ACO Green",350],
						["optic_Aco_smg","ACO SMG Red",450],
						["optic_ACO_grn_smg","ACO SMG Green",450],
						["optic_MRD","45 Pistol MRD Sight",350],
						["optic_Holosight","Holo Sight",1500],
						["optic_DMS","DMS",2000],
						["optic_MRCO","MRCO",1500],
						["optic_Arco","ARCO",2500],
						["optic_NVS","NVS",3500],
						["optic_SOS","SOS Scope",3500],
						["optic_LRPS","LRPS Scope",10000],
						["acc_flashlight","Tactical Light",350],
						["acc_pointer_IR","Laser Pointer",1800],
						["muzzle_snds_acp",".45 Suppressor",1000],
						["muzzle_snds_M","5.56 Suppressor",2000],
						["muzzle_snds_H","6.5 Suppressor",2500],
						["muzzle_snds_B","7.62mm Suppressor",3500]
					]
				];
			};
		};
	};
	
	case "cop_swat":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["SWAT Weapons Shop",
					[
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Taser Mag",250],
						["hgun_ACPC2_F","ACP-C2 .45",2500],
						["9Rnd_45ACP_Mag",".45 ACP Mag",100],
						["hgun_Pistol_heavy_01_MRD_F","4-five .45",3500],
						["11Rnd_45ACP_Mag","4-Five Mag",150],
						["SMG_02_F","Sting 9mm SMG",4500],
						["30Rnd_9x21_Mag","SMG 30Rnd Mag",150],
						["arifle_MXC_Black_F","MXC 6.5 mm",7500],
						["30Rnd_65x39_caseless_mag","MXC 30rd Mag",300],
						["arifle_MXM_F","MXM",8500],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["arifle_TRG21_F","TRG21",3500],
						["30Rnd_556x45_Stanag","TRG Mag",250],
						["arifle_MK20C_F","MK20",4500],
						["30Rnd_556x45_Stanag","MK20 Mag",250],
						["srifle_EBR_F","MK18",8500],
						["20Rnd_762x51_Mag","MK18 Mag",300],
						["arifle_MX_SW_F","MX SW",9000],
						["100Rnd_65x39_caseless_mag","100rd MX SW Mag",350],
						["arifle_MXM_Black_F","Marksman rifle",5000],
						["30Rnd_65x39_caseless_mag","Marksman Mag",300],
						["srifle_LRR_F",".408 Rifle",7500],
						["7Rnd_408_Mag",".408 Mag",250]
					]
				];
			};
		};
	};
	
	case "swat_attachment":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["SWAT Attachment Shop",
					[
						["optic_Aco","ACO Red",350],
						["optic_ACO_grn","ACO Green",350],
						["optic_Aco_smg","ACO SMG Red",450],
						["optic_ACO_grn_smg","ACO SMG Green",450],
						["optic_MRD","45 Pistol MRD Sight",350],
						["optic_Holosight","Holo Sight",1500],
						["optic_DMS","DMS",2000],
						["optic_MRCO","MRCO",1500],
						["optic_Arco","ARCO",2500],
						["optic_NVS","NVS",3500],
						["optic_SOS","SOS Scope",3500],
						["optic_LRPS","LRPS Scope",10000],
						["optic_Nightstalker","Night stalker",25000],
						["acc_flashlight","Flashlight",100],
						["acc_pointer_IR","Laser Pointer",1800],
						["muzzle_snds_acp",".45 Suppressor",1000],
						["muzzle_snds_M","5.56 Suppressor",2000],
						["muzzle_snds_H","6.5 Suppressor",2500],
						["muzzle_snds_B","7.62mm Suppressor",15000],
						["muzzle_snds_H_MG","6.5mm LMG Suppressor",15000]
					]
				];
			};
		};
	};
	
	case "swat_equpiment":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["SWAT Equipment Shop",
					[
						["Binocular",nil,150],
						["ItemGPS","GPS",500],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["Rangefinder",nil,700],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};
	
	case "swat_specialty":
	{
		switch(true) do
		{
			case (playerSide != west): {"I don't smell bacon!"};
			default
			{
				["SWAT Specialty Shop",
					[
						["launch_RPG32_F","RPG 42",250000],
						["RPG32_HE_F","HE Rocket",5000],
						["RPG32_F","Rocket",10000],
						["arifle_MX_GL_Hamr_pointer_F","MX Hamr 3GL",8500],
						["arifle_MX_GL_Holo_pointer_snds_F","MX Holo 3GL",8500],
						["arifle_MXM_RCO_pointer_snds_F","Marksman Rifle",10000],
						["30Rnd_65x39_caseless_mag","MX Mag",250],
						["srifle_EBR_DMS_pointer_snds_F","MK18 Sniper Rifle",15000],
						["20Rnd_762x51_Mag","MK18 Mag",300],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_SmokeRed_Grenade_shell",nil,250],
						["3Rnd_UGL_FlareWhite_F","White Flare",700],
						["3Rnd_UGL_FlareRed_F","Red Flare",700],
						["B_UavTerminal","UAV Terminal",25000],
						["HandGrenade_Stone","Flashbang",150000]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["ItemMap",nil,35],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F","Rook 9mm",5500],
						["16Rnd_9x21_Mag","9mm Mag",25],
						["hgun_Pistol_heavy_02_F","Zubr 45",6500],
						["6Rnd_45ACP_Cylinder","Zubr Mag",50],
						["hgun_ACPC2_F","ACP 45",7500],
						["9Rnd_45ACP_Mag","ACP Mag",45],
						["hgun_PDW2000_F","PDW2000",10000],
						["30Rnd_9x21_Mag","PDW Mag",75],
						["optic_ACO_grn_smg","ACO SMG",2500],
						["V_Rangemaster_belt","RangeMaster Belt",4500],
						["Rangefinder",nil,4500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Equipment Shop",
					[
						["NVGoggles_OPFOR","NVG Black",2000],
						["Rangefinder",nil,450],
						["ToolKit",nil,50],
						["itemgps","GPS",50],
						["FirstAidKit",nil,25]
					]
				];
			};
		};
	};
	
	case "rebel_cqb":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel CQB Shop",
					[
						["hgun_Rook40_F","Rook 9mm",500],
						["16Rnd_9x21_Mag","Rook Mag",25],
						["hgun_ACPC2_F","ACP-C2 .45",2500],
						["9Rnd_45ACP_Mag",".45 ACP Mag",100],
						["hgun_Pistol_heavy_01_MRD_F","4-five .45",3500],
						["11Rnd_45ACP_Mag","4-Five Mag",150],
						["hgun_PDW2000_F","PDW2000",10000],
						["30Rnd_9x21_Mag","PDW Mag",75],
						["SMG_02_F","Sting 9mm SMG",14500],
						["30Rnd_9x21_Mag","SMG 30Rnd Mag",150],
						["SMG_01_F","Vermin 45",15000],
						["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",100]
					]
				];
			};
		};
	};
	
	case "rebel_assault":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Assault Rifle Shop",
					[
						["arifle_Katiba_C_F","Katiba",30000],
						["arifle_Katiba_F","Katiba Long Barrel",30000],
						["30Rnd_65x39_caseless_green","Katiba Mag",300],
						["30Rnd_65x39_caseless_green_mag_Tracer","Katiba Tracer Mag",350],
						["arifle_TRG20_F","TRG20",30000],
						["arifle_TRG21_F","TRG21",30000],
						["30Rnd_556x45_Stanag","TRG Mag",300],
						["30Rnd_556x45_Stanag_Tracer_Yellow","TRG Tracer Mag",350],
						["arifle_Mk20C_plain_F","MK20 Long Barrel",40000],
						["arifle_Mk20C_F","MK20 Short Barrel",40000],
						["30Rnd_556x45_Stanag","MK20 Mag",300]
					]
				];
			};
		};
	};
	
	case "rebel_sniper":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Sniper Shop",
					[
						["srifle_DMR_01_ACO_F","Rahim 7.62 mm",8500],
						["10Rnd_762x51_Mag","Rahim 10rd Mag",300],
						["srifle_LRR_F","LRR 408",100000],
						["7Rnd_408_Mag","LRR Mag",2000]
					]
				];
			};
		};
	};
	
	case "rebel_attachment":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebel Attachment Shop",
					[
						["optic_Aco","ACO Red",350],
						["optic_ACO_grn","ACO Green",350],
						["optic_Aco_smg","ACO SMG Red",450],
						["optic_ACO_grn_smg","ACO SMG Green",450],
						["optic_MRD","45 Pistol MRD Sight",350],
						["optic_Holosight","Holo Sight",1500],
						["optic_MRCO","MRCO",1000],
						["optic_Arco","ARCO",2500],
						["optic_SOS","SOS",5000],
						["optic_DMS","DMS",2000],
						["optic_NVS","NVS",5000],
						["acc_flashlight","Flashlight",100],
						["acc_pointer_IR","Laser Pointer",1800],
						["muzzle_snds_H","6.5 Suppressor",10000],
						["muzzle_snds_L","9mm Suppressor",10000],
						["muzzle_snds_acp","45 ACP Suppressor",10000],
						["muzzle_snds_M","5.56 Suppressor",10000],
						["muzzle_snds_B","7.62 Suppressor",10000]
					]
				];
			};
		};
	};
	
	// Cartel Shop.
	case "cartel":
	{
		["Cartel Heavy Weapons Shop",
			[
				["LMG_Mk200_F","MK200",75000],
				["200Rnd_65x39_cased_Box","MK200 Mag",2000],
				["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer Mag",2000],
				["LMG_Zafir_F","Zafir",80000],
				["150Rnd_762x51_Box","Zafir Mag",3500],
				["150Rnd_762x51_Box_Tracer","Zafir Mag Tracer",3500],
				["srifle_LRR_F","LRR 408",100000],
				["7Rnd_408_Mag","LRR Mag",2000],
				["launch_RPG32_F","RPG",250000],
				["RPG32_F","Rocket",2500],
				["RPG32_HE_F","HE Rocket",5000],
				["HandGrenade_Stone","Flashbang",150000],
				["muzzle_snds_H_MG","6.5 LMG Suppressor",10000],
				["optic_LRPS","LRPS Scope",10000],
				["optic_tws","Thermal Scope",15000],
				["optic_Nightstalker","Night Stalker",45000],
				["NVGoggles_OPFOR","NVG Black",2000],
				["Rangefinder",nil,4500],
				["ToolKit",nil,50],
				["itemgps","GPS",50],
				["Medikit",nil,350]
			]
		];
	};
	
	case "gunrunner":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You're NOT a Rebel so I don't TRUST you!!!"};
			default
			{
				["Altis GunRunners Arsenal",
					[
						["arifle_MX_ACO_pointer_snds_F","MX Custom ACO",45000],
						["arifle_MXC_SOS_point_snds_F","MX Custom SOS",50000],
						["arifle_MX_GL_Holo_pointer_snds_F","MX 3GL Custom",50000],
						["arifle_MXM_RCO_pointer_snds_F","MXM Sniper Custom",55000],
						["30Rnd_65x39_caseless_mag","30rd MX Mag",300],
						["30Rnd_65x39_caseless_mag_Tracer","30rd MX Tracer Mag",350],
						["100Rnd_65x39_caseless_mag","100rd MX Sw Mag",400],
						["3Rnd_SmokeRed_Grenade_shell","3rd Red Smoke",250],
						["3Rnd_SmokeGreen_Grenade_shell","3rd Green Smoke",250],
						["3Rnd_SmokeOrange_Grenade_shell","3rd Orange Smoke",250],
						["3Rnd_UGL_FlareWhite_F","3rd Flare White",300],
						["arifle_Katiba_GL_ACO_pointer_F","Katiba GL ACO",30000],
						["arifle_Katiba_GL_ARCO_pointer_F","Katiba GL ARCO",35000],
						["30Rnd_65x39_caseless_green","30rd Katiba Mag",200],
						["30Rnd_65x39_caseless_green_mag_Tracer","30rd Katiba Tracer Mag",250],
						["arifle_TRG21_GL_ACO_pointer_F","TRG21 GL ACO",30000],
						["arifle_TRG21_GL_MRCO_F","TRG21 GL MRCO",35000],
						["30Rnd_556x45_Stanag","30rd TRG Mag",200],
						["30Rnd_556x45_Stanag_Tracer_Red","TRG Tracer Mag RED",250],
						["30Rnd_556x45_Stanag_Tracer_Green","TRG Tracer Mag GREEN",250],
						["30Rnd_556x45_Stanag_Tracer_Yellow","TRG Tracer Mag YELLOW",250],
						["arifle_Mk20_GL_ACO_F","MK20 GL ACO",30000],
						["arifle_Mk20_GL_MRCO_pointer_F","MK20 GL MRCO",35000],
						["30Rnd_556x45_Stanag","30rd MK20 Mag",200],
						["30Rnd_556x45_Stanag_Tracer_Red","MK20 Tracer Mag RED",250],
						["30Rnd_556x45_Stanag_Tracer_Green","MK20 Tracer Mag GREEN",250],
						["30Rnd_556x45_Stanag_Tracer_Yellow","MK20 Tracer Mag YELLOW",250],
						["1Rnd_Smoke_Grenade_shell","Smoke Shell",1500],
						["1Rnd_SmokeRed_Grenade_shell","Red Smoke Shell",1500],
						["1Rnd_SmokeGreen_Grenade_shell","Green Smoke Shell",1500],
						["1Rnd_SmokeYellow_Grenade_shell","Yellow Smoke Shell",1500],
						["1Rnd_SmokePurple_Grenade_shell","Purple Smoke Shell",1500],
						["srifle_DMR_01_DMS_snds_F","Rahim DMS Suppressed",30000],
						["srifle_DMR_01_SOS_F","Rahim SOS Custom",35000],
						["10Rnd_762x51_Mag","10rd Rahim Mag",175]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["NVGoggles",nil,2000],
						["ToolKit",nil,250],
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,1000],
						["RPG32_HE_F",nil,5000],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["HandGrenade_Stone","Flashbang",150000],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "seal_equip":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You're NOT a Rebel so I don't TRUST you!!!"};
			default
			{
				["SEAL Equipment Shop",
					[
						["NVGoggles","NVG Brown",1500],
						["NVGoggles_OPFOR","NVG Black",1500],
						["NVGoggles_INDEP","NVG Green",1500],
						["acc_flashlight",nil,350],
						["acc_pointer_IR",nil,1000],
						["Binocular",nil,350],
						["Rangefinder",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]
					]
				];
			};
		};
	};
	
	case "seal_gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You're NOT a Rebel so I don't TRUST you!!!"};
			default
			{
				["SEAL Weapons Shop",
					[
						["hgun_Pistol_heavy_01_F","4-Five .45",3500],
						["11Rnd_45ACP_Mag","4-Five Mag",150],
						["hgun_ACPC2_F","ACP-C2 .45",2500],
						["9Rnd_45ACP_Mag",".45 ACP Mag",100],
						["SMG_02_F","Sting 9mm SMG",5000],
						["30Rnd_9x21_Mag","Sting Mag",150],
						["SMG_01_F","Vermin SMG",5000],
						["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",150],
						["arifle_SDAR_F","Underwater Rifle",5000],
						["20Rnd_556x45_UW_mag","Underwater Mag",250],
						["arifle_MXC_Black_F","MXC Black",10000],
						["arifle_MX_Black_F","MX Black",10000],
						["30Rnd_65x39_caseless_mag","30rd MX Mag",300],
						["30Rnd_65x39_caseless_mag_Tracer","30rd MX Tracer Mag",350],
						["arifle_MX_SW_Black_F","MX SW Black",15000],
						["100Rnd_65x39_caseless_mag","100rd MX SW Mag",400],
						["arifle_MXM_Black_F","Marksman Rifle",12500],
						["30Rnd_65x39_caseless_mag","30rd MX Mag",300],
						["30Rnd_65x39_caseless_mag_Tracer","30rd MX Tracer Mag",350],
						["srifle_DMR_01_DMS_snds_F","SEAL Rahim",17500],
						["10Rnd_762x51_Mag","10rd Rahim Mag",200]								
					]
				];
			};
		};
	};
	
	case "hellfire":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You're NOT a Rebel so I don't TRUST you!!!"};
			default
			{
				["HellFire Arsenal",
					[
						["hgun_Rook40_F","Rook 9mm",500],
						["16Rnd_9x21_Mag","Rook Mag",25],
						["hgun_Pistol_heavy_02_F","Zubr 45",6500],
						["6Rnd_45ACP_Cylinder","Zubr Mag",50],
						["hgun_Pistol_heavy_01_F","4-Five .45",3500],
						["11Rnd_45ACP_Mag","4-Five Mag",150],
						["hgun_ACPC2_F","ACP-C2 .45",2500],
						["9Rnd_45ACP_Mag",".45 ACP Mag",100],
						["SMG_02_F","Sting 9mm SMG",5000],
						["30Rnd_9x21_Mag","Sting Mag",150],
						["SMG_01_F","Vermin SMG",5000],
						["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",150],
						["arifle_SDAR_F","Underwater Rifle",5000],
						["20Rnd_556x45_UW_mag","Underwater Mag",250],
						["arifle_MXC_Black_F","MXC Black",10000],
						["arifle_MX_Black_F","MX Black",10000],
						["30Rnd_65x39_caseless_mag","30rd MX Mag",300],
						["30Rnd_65x39_caseless_mag_Tracer","30rd MX Tracer Mag",350],
						["arifle_MX_SW_Black_F","MX SW Black",15000],
						["100Rnd_65x39_caseless_mag","100rd MX SW Mag",400],
						["arifle_MXM_Black_F","Marksman Rifle",12500],
						["30Rnd_65x39_caseless_mag","30rd MX Mag",300],
						["30Rnd_65x39_caseless_mag_Tracer","30rd MX Tracer Mag",350],
						["srifle_DMR_01_DMS_snds_F","Rahim DMS Suppressed",20000],
						["10Rnd_762x51_Mag","10rd Rahim Mag",175]
					]
				];
			};
		};
	};
	
	case "hellfire_e":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You're NOT a Rebel so I don't TRUST you!!!"};
			default
			{
				["HellFire Equipment Shop",
					[
						["NVGoggles","NVG Brown",1500],
						["NVGoggles_OPFOR","NVG Black",1500],
						["NVGoggles_INDEP","NVG Green",1500],
						["Binocular",nil,350],
						["Rangefinder",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]
					]
				];
			};
		};
	};
	
	case "hellfire_a":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You're NOT a Rebel so I don't TRUST you!!!"};
			default
			{
				["HellFire Attachment Shop",
					[
						["optic_Aco","ACO Red",350],
						["optic_ACO_grn","ACO Green",350],
						["optic_Aco_smg","ACO SMG Red",450],
						["optic_ACO_grn_smg","ACO SMG Green",450],
						["optic_MRD","45 Pistol MRD Sight",350],
						["optic_Holosight","Holo Sight",1500],
						["optic_MRCO","MRCO",1000],
						["optic_Arco","ARCO",2500],
						["optic_SOS","SOS",5000],
						["optic_DMS","DMS",2000],
						["optic_NVS","NVS",5000],
						["acc_flashlight","Flashlight",100],
						["acc_pointer_IR","Laser Pointer",1800],
						["muzzle_snds_H","6.5 Suppressor",10000],
						["muzzle_snds_L","9mm Suppressor",10000],
						["muzzle_snds_acp","45 ACP Suppressor",10000],
						["muzzle_snds_M","5.56 Suppressor",10000],
						["muzzle_snds_B","7.62 Suppressor",10000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};

};	
	
	