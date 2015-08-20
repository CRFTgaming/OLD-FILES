/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[			
			["U_O_CombatUniform_oucamo","Urban Fatigues",5000],
			["U_O_SpecopsUniform_ocamo","Recon Fatigues",17500],
			["U_O_OfficerUniform_ocamo","Officer Fatigues",5000],
			["U_O_PilotCoveralls","Pilot Coveralls",15500],
			["U_IG_Guerilla1_1","Guerilla Smocks",5000],
			["U_IG_Guerilla2_2","Guerilla Smocks 2",5000],
			["U_I_G_Story_Protagonist_F","Worn Fatigues",7500],
			["U_I_G_resistanceLeader_F","Combat Fatigues",11500],
			["U_IG_leader","Guerilla Leader",15000],
			["U_I_CombatUniform","Combat Fatigues",17500],
			["U_I_CombatUniform_tshirt","Combat Fatigues 2",17500],
			["U_B_SpecopsUniform_sgg","Specops Uniform",17500],
			["U_B_CombatUniform_mcam","PMC Fatigues",17500],
			["U_B_CombatUniform_mcam_vest","PMC Fatigues 2",17500],
			["U_B_CombatUniform_mcam_tshirt","PMC Fatigues 3",17500],
			["U_O_Wetsuit","Wetsuit",5000],
			["U_C_Scientist","Scientist Suit",10000],
			["U_I_GhillieSuit","Ghillie Suit",50000],
			["U_O_GhillieSuit","Ghillie Suit 2",50000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_Bandanna_cbr",nil,800],
			["H_Bandanna_sgg",nil,800],
			["H_BandMask_khk",nil,800],
			["H_Beret_ocamo",nil,800],
			["H_Booniehat_khk",nil,800],
			["H_Cap_oli",nil,800],
			["H_Cap_tan",nil,800],
			["H_Cap_blk",nil,800],
			["H_Cap_brn_SPECOPS",nil,800],
			["H_CrewHelmetHeli_O",nil,800],
			["H_HelmetB_light_grass",nil,800],
			["H_HelmetB_light_black",nil,800],
			["H_HelmetB_light_sand",nil,800],
			["H_HelmetB_light_desert",nil,800],
			["H_HelmetB_light_snakeskin",nil,1000],
			["H_HelmetCrew_O",nil,800],
			["H_MilCap_ocamo",nil,800],
			["H_PilotHelmetFighter_O",nil,800],
			["H_PilotHelmetHeli_O",nil,800],
			["H_Watchcap_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk","Balaclava",200],
			["G_Bandanna_shades","Bandanna and Shades",75]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_brn",nil,1500],
			["V_TacVest_khk",nil,1500],
			["V_BandollierB_cbr",nil,2500],
			["V_BandollierB_khk",nil,2500],
			["V_BandollierB_rgr",nil,2500],
			["V_BandollierB_blk",nil,2500],
			["V_HarnessOSpec_brn",nil,2500],
			["V_Chestrig_khk",nil,3500],
			["V_HarnessOSpec_gry",nil,3500],
			["V_PlateCarrier3_rgr","PMC Plate Carrier",4500],
			["V_PlateCarrierGL_rgr","PMC Plate Carrier GL",4500],
			["V_PlateCarrier1_blk","PMC Lite Carrier",4500],
			["V_PlateCarrierIA1_dgtl",nil,4500],
			["V_PlateCarrierIA2_dgtl",nil,4500],
			["V_PlateCarrierIAGL_dgtl",nil,4500],
			["V_RebreatherIR",nil,4500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_HMG_01_weapon_F",nil,12000],
			["B_HMG_01_support_F",nil,12000],
			["B_AA_01_weapon_F",nil,25000],
			["B_AT_01_weapon_F",nil,25000],
			["B_HMG_01_support_high_F",nil,12000]
		];
	};
};
