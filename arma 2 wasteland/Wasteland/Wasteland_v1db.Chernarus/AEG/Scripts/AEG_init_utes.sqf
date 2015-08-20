/*
    File: AEG_init_utes.sqf
    Version: 1.01
    Author: Loyalguard

    Description:
    A script to initalize and store information necessary for the AEG simulation on this world.
    
    Parameters:
    None.

    Execution:
    Executed from AEG_init.sqf.  Will only run when the mission is on Utes due to conditions checked in AEG_init.sqf.
 */

//DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_utes.sqf: Thread started."] call LGD_fnc_debugMessage;}; 

// Create a global array to store information necessary to create all the different objects and logical components required by the AEG simulation.  This array will be used by AEG_server.sqf, AEG_client.sqf, AEG_common.sqf, and AEG_JIP.sqf.  The array elements are as follows: ["Type_Name_Location", [Object Position Subarray], Object "Class" or ID, addAction?, "EffectType", [Supplied Nodes Subarray]]
AEG_objects =
[	
    ["V_Utes", [2293.38,4641.57,0.841513], 1, false, "NONE", [["D_Utes_A", 1],["D_Kame", 1],["D_Stre", 1]]], // Virtual Object.
    ["D_Utes_A", [3583.48,3736.1799,18.514116], 5180, true, "XFMR", []], 
    ["D_Kame", [3248.3,4448.0801, 11.502559], 985, true, "XFMR", []],
    ["D_Stre", [4368.7998,3279.3601,28.555195], 10548, true, "XFMR", []]
];

 // Initialize a function use to determine which power plant or transformer bus on this world is being affected by a power related event.  The function will later be called in AEG_events.sqf in case of a power-related event.
_nul = execVM "AEG\Functions\AEG_fnc_utes.sqf";

//DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_utes.sqf: Thread finished."] call LGD_fnc_debugMessage;};