#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
			_ret pushBack ["U_BG_Guerilla2_1","Police Uniform",25];
		if(__GETC__(life_coplevel) > 0) then // cadet shop and up 
		{
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
			_ret pushBack ["U_Competitor","HP Cadet Uniform",150];
			_ret pushBack ["U_C_Journalist","Highway Patrol Uniform",550];
			_ret pushBack ["U_B_SpecopsUniform_sgg","HP Combat Uniform",550];
		};
		if(__GETC__(life_coplevel) > 4) then // SWAT and up
		{
			_ret pushBack ["U_I_G_Story_Protagonist_F","SWAT Uniform",550];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt","SWAT Uniform 2",550];
			_ret pushBack ["U_B_CombatUniform_mcam","SWAT Uniform 3",550];
			_ret pushBack ["U_B_Wetsuit","SWAT Wetsuit",550];
			_ret pushBack ["U_B_GhillieSuit","Ghillie Suit",1000];
		};
		if(__GETC__(life_coplevel) > 5) then //2LT and up
		{
			_ret pushBack ["U_IG_Guerilla3_1","Guerilla UC",250];
			_ret pushBack ["U_OG_Guerilla2_1","Civilian UC",250];
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
		};
		if(__GETC__(life_coplevel) > 7) then //CPT and up
		{
			_ret pushBack ["U_Marshal","Senior Officer's Uniform",25];
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then // cadet shop and up 
		{
			_ret pushBack ["H_Cap_blk",nil,75];
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
			_ret pushBack ["H_HelmetB_plain_mcamo",nil,75];
			_ret pushBack ["H_Booniehat_mcamo",nil,120];
			_ret pushBack ["H_Beret_blk_POLICE",nil,75];
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
			_ret pushBack ["H_MilCap_mcamo",nil,100];
		};
		if(__GETC__(life_coplevel) > 4) then // SWAT and up
		{
			_ret pushBack ["H_Bandanna_mcamo",nil,75];
			_ret pushBack ["H_BandMask_blk",nil,75];
			_ret pushBack ["H_Beret_red",nil,75];
			_ret pushBack ["H_Booniehat_dgtl",nil,75];
			_ret pushBack ["H_Cap_blk_Raven",nil,75];
			_ret pushBack ["H_Watchcap_blk",nil,75];
			_ret pushBack ["H_CrewHelmetHeli_B","TearGas Helmet",250];
			_ret pushBack ["H_HelmetIA",nil,75];
			_ret pushBack ["H_HelmetCrew_B",nil,75];
			_ret pushBack ["H_MilCap_dgtl",nil,75];
			_ret pushBack ["H_PilotHelmetFighter_B",nil,75];
			_ret pushBack ["H_PilotHelmetHeli_B",nil,75];
			_ret pushBack ["H_HelmetSpecB_paint1","SWAT Helmet",75];
			_ret pushBack ["H_HelmetB_camo","SWAT Helmet 2",75];
			_ret pushBack ["H_HelmetB_black","SWAT Helmet 3",75];
		};
		if(__GETC__(life_coplevel) > 5) then //2LT and up
		{
			_ret pushBack ["H_Beret_Colonel","C.O. Beret",75];
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
		};
		if(__GETC__(life_coplevel) > 7) then //CPT and up
		{
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 0) then // cadet shop and up 
		{
			_ret pushBack ["G_Shades_Black",nil,25];
			_ret pushBack ["G_Shades_Blue",nil,20];
			_ret pushBack ["G_Sport_Blackred",nil,20];
			_ret pushBack ["G_Sport_Checkered",nil,20];
			_ret pushBack ["G_Sport_Blackyellow",nil,20];
			_ret pushBack ["G_Sport_BlackWhite",nil,20];
			_ret pushBack ["G_Aviator",nil,75];
			_ret pushBack ["G_Squares",nil,10];
			_ret pushBack ["G_Lowprofile",nil,30];
			_ret pushBack ["G_Diving",nil,55];
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
		};
		if(__GETC__(life_coplevel) > 4) then // SWAT and up
		{
			_ret pushBack ["G_Balaclava_blk","Balaclava",100];
			_ret pushBack ["G_Balaclava_lowprofile","Low Profile Balaclava",100];
			_ret pushBack ["G_Bandanna_aviator","Aviator Bandanna",75];
			_ret pushBack ["G_Bandanna_beast","Beast Bandanna",75];
			_ret pushBack ["G_Bandanna_shades","Bandanna and Shades",75];
			_ret pushBack ["G_Bandanna_tan","Tan Bandanna",75];
		};
		if(__GETC__(life_coplevel) > 5) then //2LT and up
		{
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
		};
		if(__GETC__(life_coplevel) > 7) then //CPT and up
		{
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{
		};
	};
	
	//Vest
	case 3:
	{
			_ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 0) then // cadet shop and up 
		{
			_ret pushBack ["V_TacVest_blk_POLICE","Police Vest",1500];
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
			_ret pushBack ["V_PlateCarrier1_blk","Officer Vest",1500];
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
			_ret pushBack ["V_TacVest_khk","Highway Patrol Vest",350];
		};
		if(__GETC__(life_coplevel) > 4) then // SWAT and up
		{
			_ret pushBack ["V_TacVest_blk","SWAT Vest",1500];
			_ret pushBack ["V_PlateCarrierH_CTRG","SWAT Plate Carrier",1500];
			_ret pushBack ["V_RebreatherB",nil,550];
		};
		if(__GETC__(life_coplevel) > 5) then //2LT and up
		{
			_ret pushBack ["V_BandollierB_oli",nil,800];
			_ret pushBack ["V_BandollierB_blk",nil,800];
			_ret pushBack ["V_TacVest_oli",nil,800];
			_ret pushBack ["V_Chestrig_rgr",nil,800];
			_ret pushBack ["V_RebreatherIA",nil,800];
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
			_ret pushBack ["V_PlateCarrier1_rgr","Carrier Rig 1",800];
			_ret pushBack ["V_PlateCarrier2_rgr","Carrier Rig 2",800];
			_ret pushBack ["V_PlateCarrier3_rgr","Carrier Rig 3",800];
			_ret pushBack ["V_PlateCarrierGL_rgr","Carrier Rig GL",800];
		};
		if(__GETC__(life_coplevel) > 7) then //CPT and up
		{
			_ret pushBack ["V_PlateCarrierIA1_dgtl",nil,800];
			_ret pushBack ["V_PlateCarrierIAGL_dgtl",nil,800];
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
			_ret pushBack ["V_PlateCarrier1_blk","Carrier Lite",800];
			_ret pushBack ["V_PlateCarrierSpec_rgr","Carrier Special",800];
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{
		};
	};
	
	//Backpacks
	case 4:
	{
			_ret pushBack ["B_Bergen_blk","Police Backpack",2500];
		if(__GETC__(life_coplevel) > 0) then // cadet shop and up 
		{
			
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
			_ret pushBack ["B_Carryall_khk",nil,500];
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
			_ret pushBack ["B_Kitbag_cbr",nil,800];
		};
		if(__GETC__(life_coplevel) > 4) then // SWAT and up
		{
			_ret pushBack ["B_AssaultPack_cbr",nil,700];
			_ret pushBack ["B_HMG_01_weapon_F",nil,6000];
			_ret pushBack ["B_HMG_01_support_F",nil,6000];
			_ret pushBack ["B_AA_01_weapon_F",nil,12000];
			_ret pushBack ["B_AT_01_weapon_F",nil,12000];
			_ret pushBack ["B_HMG_01_support_high_F",nil,6000];

		};
		if(__GETC__(life_coplevel) > 5) then //2LT and up
		{
			_ret pushBack ["B_FieldPack_cbr",nil,500];
			_ret pushBack ["B_Bergen_sgg",nil,2500];
			_ret pushBack ["B_Carryall_cbr",nil,3500];
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
		};
		if(__GETC__(life_coplevel) > 7) then //CPT and up
		{
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
			_ret pushBack ["B_UAV_01_backpack_F",nil,500000];
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{
		};
	};
};

_ret;