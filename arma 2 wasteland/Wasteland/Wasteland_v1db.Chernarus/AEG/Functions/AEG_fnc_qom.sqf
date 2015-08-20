/*
    File: AEG_fnc_qom.sqf
    Version: 1.01
    Author: Loyalguard

    Description:
    Create a function that will determine which power plant or transformer bus is being affected by a power related event.

    Parameters:
    _this select 0: Name of the pertinent public variable (string).

    Execution:
    Loaded into memory by AEG_init_qom.sqf.  Function called by AEG_events.sqf if a power related event has occurred on Qom.
*/

// Create a function that will determine which power plant or transformer bus is being affected by a power related event.
AEG_fnc_qom = 
{
    // Scope //
    private ["_var", "_feeds", "_effect", "_name", "_stack", "_zones", "_events"];

    // Parameter(s) //
    _var = _this;

    // Assign initial values to all variables that will be returned to ensure they are not null.
    _feeds = false; // Determine whether this nodes feeds power to street lamps.
    _effect = ""; // Determine what sounds effects (or smoke effects) are associated with this node.
    _name = ""; // Determine which object this is.
    _stack = ""; // If this is a power plant, determine which smokestack is associated with it.
    _zones = []; // Create an array of zones that this objects feeds/distributes power to if applicable.

    // Determine which which power plant or transformer bus is being affected by a power related event based on the public variable that has changed.
    switch (_var) do
    {
        // P_Mahm
        case "AEG_on_P_Mahm":
        {
            _feeds = false;
            _effect = "PLANT";
            _name = "P_Mahm";
        };
        
        // S_Mahm
        case "AEG_on_S_Mahm":
        {
            _feeds = false;
            _effect = "SMOKE";
            _name = "S_Mahm";
        };
        
        // T_Mahm_1
        case "AEG_on_T_Mahm_1":
        {
                _feeds = false;
                _effect = "XFMR";
                _name = "T_Mahm_1";
        };
        
        // T_Mahm_2
        case "AEG_on_T_Mahm_2":
        {
                _feeds = false;
                _effect = "XFMR";
                _name = "T_Mahm_2";
        };
        
        // T_Mahm_3
        case "AEG_on_T_Mahm_3":
        {
                _feeds = false;
                _effect = "XFMR";
                _name = "T_Mahm_3";
        };
        
        // D_Asga
        case "AEG_on_D_Asga":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Asga";
                _zones = 
                [
                    [[4941.97,742.582,0], 500, "A1", "Persian Gulf Highway South"],
                    [[4781.32,1725.73,0], 500, "A2", "Asgara"],
                    [[4735.52,2722.55,0], 500, "A3", "Jannatabad - Persian Gulf Highway Stop"],
                    [[5580.91,2709.95,0], 200, "A4", "Oil Field"],
                    [[5004.71,3680.76,0], 500, "A5", "Jannatabad North"],
                    [[4947.23,4679.09,0], 500, "A6", "Mount Quah-re South"],
                    [[5198.3,5524.02,0], 500, "A7", "Mount Quah-re"]
                ];
        };

        // D_Aina_W
        case "AEG_on_D_Aina_W":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Aina_W";
                _zones = 
                [
                    [[6169.71,1748.44,0], 500, "C1", "Aina"]
                ];
        };

        // D_Aina_E
        case "AEG_on_D_Aina_E":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Aina_E";
                _zones = 
                [
                    [[6969.04,1059.09,0], 300, "D1", "Mahmoudabad"],
                    [[8152.29,3538.18,0], 500, "D2", "Airstrip"],
                    [[7069.71,4361.33,0], 200, "D3", "Military Base Grid 070941"],
                    [[9714.69,4483.01,0], 200, "D4", "Emm-Erebad"]
                ];
        };
        
        // D_Kush
        case "AEG_on_D_Kush":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Kush";
                _zones = 
                [
                    [[5133.89,10162,0], 400, "B1", "Kushkabad"],
                    [[4903.79,9350.27,0], 500, "B2", "Kushk-E_Nosrat - Ganachini"],
                    [[4997.72,8352.24,0], 500, "B3", "Boushlurjabad North"],
                    [[5447.51,7461.13,0], 500, "B4", "Boushlurjabad"],
                    [[5167.87,6524.67,0], 500, "B5", "Boushlurjabad South"],
                    [[8411.41,6599.68,0], 550, "B6", "Soltanabad"]
                ];
        };
        
        // D_Airp_H
        case "AEG_on_D_Airp_H":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Airp_H";
                _zones = 
                [
                    [[3577.96,8172.45,0], 500, "E1", "Airport Highway Stop"],
                    [[4076.54,9082.2,0], 500, "E2", "Airport Highway Stop North - Military Base Grid 043984"],
                    [[3587.99,7109,0], 500, "E3", "Baqerabad"],
                    [[4263.41,9901.2,0], 300, "E4", "Airport Highway North"],
                    [[3486.62,6060.46,0], 500, "E5", "Baqerabad South"],
                    [[3417.74,5010.95,0], 500, "E6", "Manzariyeh North"]
                ];
        };
        
        // D_Manz_F
        case "AEG_on_D_Manz_F":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Manz_F";
                _zones = 
                [
                    [[3461.38,4242.77,0], 250, "G1", "Manzariyeh Fort"]
                ];
        };
        
        // D_Airp_S
        case "AEG_on_D_Airp_S":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Airp_S";
                _zones = 
                [
                    [[3285.68,1216.27,0], 200, "F1", "Hoseynadbad-e Gai'ha"],
                    [[3974.44,1114.47,0], 500, "F2", "Ga'iha"],
                    [[4245.51,457.208,0], 300, "F3", "Airport Highway South"],
                    [[3679.24,1825.23,0], 550, "F4", "Shamsabad - Rahmatabad"],
                    [[3745.61,2756.21,0], 500, "F5", "Jannata"],
                    [[3672.36,3606.8,0], 400, "F6", "Manzariyeh South"]
                ];
        };
        
        // D_SWRe
        case "AEG_on_D_SWRe":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_SWRe";
                _zones = 
                [
                    [[1832.22,267.925,0], 200, "I1", "Grid 018900"],
                    [[2256.53,1316.21,0], 200, "I2", "Inejar'Bezidabed"],
                    [[778.491,1160.13,0], 200, "I3", "Shamsa-e-Soltan"],
                    [[517.457,1929.97,0], 500, "I4", "Faizabad - Za'iha"]
                ];
        };
        
        // D_Shah
        case "AEG_on_D_Shah":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Shah";
                _zones = 
                [
                    [[902.256,3508.72,0], 500, "J1", "Tehr-e-Sol - Shahjerd"],
                    [[442.483,2934.94,0], 200, "J2", "Shezanabad"],
                    [[2511.41,3623.63,0], 500, "J3", "Grid 0293"]
                ];
        };
        
        // D_Pron
        case "AEG_on_D_Pron":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Pron";
                _zones = 
                [
                    [[1749.4,6201.88,0], 200, "K1", "Provincial Villa"],
                    [[845.819,6422.05,0], 200, "K2", "Military Base Grid 008961"]
                ];
        };
        
        // D_Mili_N
        case "AEG_on_D_Mili_N":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Mili_N";
                _zones = 
                [
                    [[1887.7,7495.4,0], 400, "M1", "Grid 0197"],
                    [[432.88,9261.05,0], 200, "M2", "Morteza Qoli"]
                ];
        };
        
        // D_Manz_A
        case "AEG_on_D_Manz_A":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Manz_A";
                _zones = 
                [
                    [[2805.84,8803.05,0], 500, "H1", "Manzariyeh Airfield South"],
                    [[2958.96,9267.65,0], 500, "H2", "Manzariyeh Airfield North"],
                    [[3353.88,8911.98,0], 200, "H3", "Manzariyeh Airfield East"]
                ];
        };
        
    }; // End switch-do.

    // Return the array _events to AEG_events.sqf (no ";" at end of expression)
    _events = [_feeds, _effect, _name, _stack, _zones];
    _events
};