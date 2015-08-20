/*
    File: AEG_init_qom.sqf
    Version: 1.01
    Author: Loyalguard

    Description:
    A script to initalize and store information necessary for the AEG simulation on this world.
    
    Parameters:
    None.

    Execution:
    Executed from AEG_init.sqf.  Will only run when the mission is on Qom due to conditions checked in AEG_init.sqf.
 */

//DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_qom.sqf: Thread started."] call LGD_fnc_debugMessage;}; 

// Create a global array to store information necessary to create all the different objects and logical components required by the AEG simulation.  This array will be used by AEG_server.sqf, AEG_client.sqf, AEG_common.sqf, and AEG_JIP.sqf.  The array elements are as follows: ["Type_Name_Location", [Object Position Subarray], Object "Class" or ID, addAction?, "EffectType", [Supplied Nodes Subarray]]
AEG_objects =
[	
    ["P_Mahm", [6856.65,1020.39,0], "Land_Ind_Pec_03a", false, "PLANT", [["S_Mahm",1],["T_Mahm_1",1],["T_Mahm_2",1],["T_Mahm_3",1],["D_Kush",1],["D_Airp_H",1],["D_Manz_F",1],["D_Airp_S",1],["D_SWRe",1],["D_Shah",1],["D_Pron",1],["D_Mili_N",1],["D_Manz_A",1]]],
    ["S_Mahm", [6865.50,994.00,58], "Land_Ind_Stack_Big", false, "SMOKE", []],
    ["T_Mahm_1", [6825.56,1012.67,0], "Land_trafostanica_velka", true, "XFMR", [["D_Asga",1]]],
    ["T_Mahm_2", [6827.52,1023.45,0], "Land_trafostanica_velka", true, "XFMR", [["D_Aina_W",1]]], 
    ["T_Mahm_3", [6832.79,1038.44,0], "Land_trafostanica_velka", true, "XFMR", [["D_Aina_E",1]]],
    ["D_Asga", [4978.77,2067.09,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Aina_W", [5851.51,1934.54,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Aina_E", [6401.19,1535.46,0], "Land_trafostanica_velka", true, "XFMR", []],
    ["D_Kush", [5166.02,10108.5,0], "Land_trafostanica_velka", true, "XFMR", []],
    ["D_Airp_H", [3490.11,7678.77,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Manz_F", [3471.82,4192.01,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Airp_S", [3407.85,301.403,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_SWRe", [2405.94,282.855,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Shah", [449.714,3973.75,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Pron", [1787.76,6248.24,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Mili_N", [904.77,7109.11,0], "Land_trafostanica_velka", true, "XFMR", []], 
    ["D_Manz_A", [2889.1,9048.72,0], "Land_trafostanica_velka", true, "XFMR", []]
];

 // Initialize a function use to determine which power plant or transformer bus on this world is being affected by a power related event.  The function will later be called in AEG_events.sqf in case of a power-related event.
_nul = execVM "AEG\Functions\AEG_fnc_qom.sqf";

//DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_qom.sqf: Thread finished."] call LGD_fnc_debugMessage;};