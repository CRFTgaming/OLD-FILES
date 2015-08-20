/*
    File: AEG_init_takistan.sqf
    Version: 1.01
    Author: Loyalguard

    Description:
    A script to initalize and store information necessary for the AEG simulation on this world.
    
    Parameters:
    None.

    Execution:
    Executed from AEG_init.sqf.  Will only run when the mission is on Takistan due to conditions checked in AEG_init.sqf.
 */
 
 //DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_takistan.sqf: Thread started."] call LGD_fnc_debugMessage;}; 

// Create a global array to store information necessary to create all the different objects and logical components required by the AEG simulation.  This array will be used by AEG_server.sqf, AEG_client.sqf, AEG_common.sqf, and AEG_JIP.sqf.  The array elements are as follows: ["Type_Name_Location", [Object Position Subarray], Object "Class" or ID, addAction?, "EffectType", [Supplied Nodes Subarray]]
AEG_objects =
[	
    ["V_Taki", [615.831,10074.2,9.6167], 128273, false, "NONE", [["D_Bast_W", 1],["D_Bast_E", 1],["D_Imar", 1],["D_Garm", 1],["D_LoyM_E", 1],["D_LoyM_W", 1],["D_Feru_S", 1],["D_Feru_N", 1],["D_Anar", 1]]], // Virtual Object.
    ["D_Bast_W", [5832.27,8856.2695,97.853622], 35126, true, "XFMR", []],
    ["D_Bast_E", [6767.98,8803.9902,122.40424], 35147, true, "XFMR", []],
    ["D_Imar", [8216.9102,7762.7402,174.71146], 35449, true, "XFMR", []],
    ["D_Garm", [10238.9,6406.3999,248.97552], 35514, true, "XFMR", []],
    ["D_LoyM_E", [8438.6504,2432.29,304.33115], 122514, true, "XFMR", []],
    ["D_LoyM_W", [7896.79,2411.5901,304.24487], 35612, true, "XFMR", []],
    ["D_Feru_S", [4667.96,5809.0601,157.40173], 35335, true, "XFMR", []],
    ["D_Feru_N", [5185.71,6210.8501,158.20869], 35253, true, "XFMR", []],
    ["D_Anar", [6282.1299,5033.0698,323.52298], 35440, true, "XFMR", []] 
];

 // Initialize a function use to determine which power plant or transformer bus on this world is being affected by a power related event.  The function will later be called in AEG_events.sqf in case of a power-related event.
_nul = execVM "AEG\Functions\AEG_fnc_takistan.sqf";

//DEBUG
if (!isNil "AEG_DEBUG") then {_debug = ["AEG_init_takistan.sqf: Thread finished."] call LGD_fnc_debugMessage;}; 

