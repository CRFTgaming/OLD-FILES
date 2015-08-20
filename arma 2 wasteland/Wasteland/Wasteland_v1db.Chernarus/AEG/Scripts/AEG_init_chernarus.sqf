/*
    File: AEG_init_chernarus.sqf
    Version: 1.01
    Author: Loyalguard

    Description:
    A script to initalize and store information necessary for the AEG simulation on this world.

    Parameters:
    None.

    Execution:
    Executed from AEG_init.sqf.  Will only run when the mission is on Chernarus due to conditions checked in AEG_init.sqf.
 */
 
//DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_chernaus.sqf: Thread started."] call LGD_fnc_debugMessage;};

// Create a global array to store information necessary to create all the different objects and logical components required by the AEG simulation.  This array will be used by AEG_server.sqf, AEG_client.sqf, AEG_common.sqf, and AEG_JIP.sqf.  The array elements are as follows: ["Type_Name_Location", [Object Position Subarray], Object "Class" or ID, addAction?, "EffectType", [Supplied Nodes Subarray]]
AEG_objects =
[	
    ["D_Bere", [12857.9,9872.9,0], "Land_trafostanica_velka", true, "XFMR", []],
    ["T_Zele_1", [2256.56,5257.14,0], "Land_trafostanica_velka", true, "XFMR", [["D_Zele", .5], ["T_Zele_2", .5]]],
    ["T_Zele_2", [2254.26,5236.21,0], "Land_trafostanica_velka", true, "XFMR", [["D_Bere", 1]]],
    ["D_Zele", [2286.14,5247.76,0], "Land_trafostanica_velka", true, "XFMR", [["T_Zele_2", .5]]],
    ["T_Cher_1", [6225.57,2163.83,-2.28], "Land_trafostanica_velka", true, "XFMR", [["T_SZag_2", 1], ["D_Cher", .5]]],
    ["D_Cher", [6248.39,2467.36,6.67], "Land_trafostanica_velka", true, "XFMR", []],
    ["S_Cher", [6264.0,2206.2778,26.65], "Land_Ind_MalyKomin", false, "SMOKE", []],
    ["P_Cher", [6249.57,2188.1,0], "Land_Ind_Pec_03a", false, "PLANT", [["S_Cher", 1], ["T_Cher_1", 1]]],
    ["T_SZag_3", [5669.14,2986.78,0], "Land_trafostanica_velka", true, "XFMR", [["T_Zele_1", 1]]],
    ["T_SZag_2", [5680.46,2948.25,0], "Land_trafostanica_velka", true, "XFMR", [["T_SZag_3", .5], ["D_SZag", .5]]] ,
    ["T_SZag_1", [5680.74,2984.81,7.6], "Land_trafostanica_velka", true, "XFMR", [["D_SZag", .5], ["T_SZag_3", .5]]],
    ["D_SZag", [5687.86,2960.26,-2.28], "Land_trafostanica_velka", true, "XFMR", [["D_Cher", .5]]],
    ["D_Soln", [12782.1,6209.95,1.7], "Land_trafostanica_velka", true, "XFMR", []],
    ["D_Elek", [10452.6,2649.76,4.7], "Land_trafostanica_velka", true, "XFMR", [["D_Soln", 1]]],
    ["T_Elek_2", [10472,2620.67,8.10], "Land_trafostanica_velka", true, "XFMR", [["D_Zele", .5]]],
    ["T_Elek_1", [10466.8,2611.02,0], "Land_trafostanica_velka", true, "XFMR", [["T_SZag_1", 1]]],
    ["S_Elek", [10411.19,2599.3613,55], "Land_Ind_Stack_Big", false, "SMOKE", []],
    ["P_Elek", [10438.6,2600.89,0], "Land_Ind_Pec_03a", false, "PLANT", [["S_Elek", 1], ["T_Elek_1", 1], ["T_Elek_2", 1], ["D_Elek", 1]]]
];

 // Initialize a function used to determine which power plant or transformer bus on this world is being affected by a power related event.  The function will later be called in AEG_events.sqf in case of a power-related event.
_nul = execVM "AEG\Functions\AEG_fnc_chernarus.sqf";

//DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_chernarus.sqf: Thread finished."] call LGD_fnc_debugMessage;};