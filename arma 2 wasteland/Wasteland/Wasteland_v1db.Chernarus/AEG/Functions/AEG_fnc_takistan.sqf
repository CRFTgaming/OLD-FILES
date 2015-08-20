/*
    File: AEG_fnc_takistan.sqf
    Version: 1.01
    Author: Loyalguard

    Description:
    Create a function that will determine which power plant or transformer bus is being affected by a power related event.

    Parameters:
    _this select 0: Name of the pertinent public variable (string).

    Execution:
    Loaded into memory by AEG_init_takistan.sqf.  Function called by AEG_events.sqf if a power related event has occurred on Takistan.
*/

// Create a function that will determine which power plant or transformer bus is being affected by a power related event.
AEG_fnc_takistan = 
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

      // V_Taki (Virtual Object)
        case "AEG_on_V_Taki":
        {
            _name = "V_Taki";
        };


        // D_Bast_W
        case "AEG_on_D_Bast_W":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Bast_W";
                _zones = 
                [
                    [[5378.32,9240.46,0], 500, "S1", "Bastam West"],
                    [[4567.94,9338.69,0], 500, "S2", "Lalezar"],
                    [[5830.05,10284.2,0], 500, "S3", "Grid 058102"],
                    [[3662.87,8595.79,0], 100, "S4", "Gospandi"],
                    [[6115.62,11251.4,0], 500, "S5", "Rasman"],
                    [[3903.03,10946.3,0], 500, "S6", "Nagara-1 oilfield"],
                    [[3158.8,9912.24,0], 500, "S7", "Nagara"],
                    [[3197.47,8182.36,0], 100, "S8", "Grid 031081"],
                    [[5932.15,11861.7,0], 100, "S9", "Rasman North"],
                    [[6876.58,12276.8,0], 200, "S10", "Safid Ab"],
                    [[4167.08,11809,0], 100, "S11", "Shamali"],
                    [[1946.96,11868.3,0], 500, "S12", "Nur"],
                    [[2006.38,7623.47,0], 200, "S13", "Mulladost"]
                ];
        };
        
        // D_Bast_E
        case "AEG_on_D_Bast_E":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Bast_E";
                _zones = 
                [
                    [[6801.46,8917.46,0], 100, "T1", "Bastam East"],
                    [[8670.91,9946.56,0], 100, "T2", "Grid 086099"],
                    [[9353.79,10037.9,0], 200, "T3", "Sagram"],
                    [[8438.35,11190.2,0], 200, "T4", "Par-e Siah oilfield"],
                    [[7740.96,11565.2,0], 100, "T5", "Grid 077115"],
                    [[9865.63,11414.5,0], 200, "T6", "Zavarak"],
                    [[10479.2,10717.5,0], 500, "T7", "Grid 104107"],
                    [[12343.1,10758.1,0], 500, "T8", "Karachinar North"],
                    [[12287.4,9983.09,0], 300, "T9", "Karachinar South"],
                    [[11805.6,11470,0], 300, "T10", "Grid 118114"]
                ];
        };
        
        // D_Imar
        case "AEG_on_D_Imar":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Imar";
                _zones = 
                [
                    [[8288.06,7739.98,0], 200, "I1", "Imarat"],
                    [[9333.66,6624.29,0], 350, "I2", "Garmarud"],
                    [[9108,5027.4,0], 500, "I3", "Timurkalay"],
                    [[9866.64,4321.86,0], 100, "I4", "Grid 098043"]
                ];
        };
        
        // D_Garm
        case "AEG_on_D_Garm":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Garm";
                _zones = 
                [
                    [[10697.7,6361.11,0], 400, "G1", "Garmsar"]
                ];
        };
        
        // D_LoyM_E
        case "AEG_on_D_LoyM_E":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_LoyM_E";
                _zones = 
                [
                    [[8469.45,2469.25,0], 200, "L1", "Loy Manara"],
                    [[8781.51,1980.03,0], 200, "L2", "Jaza West"],
                    [[9231.82,2016.79,0], 300, "L3", "Jaza East"],
                    [[10178.4,2352.22,0], 300, "L4", "Chardarakht"],
                    [[10826.3,2375.2,0], 200, "L5", "Chardarakht East"],
                    [[11860.1,2591.16,0], 100, "L6", "Hazar Bagh"] 
                ];
        };
        
        // D_LoyM_W
        case "AEG_on_D_LoyM_W":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_LoyM_W";
                _zones = 
                [
                    [[8196.05,2009.2,0], 250, "O1", "airfield North"],
                    [[7960.05,3106.7,0], 250, "O2", "Grid 079030"],
                    [[7525.03,1815.85,0], 250, "O3", "Airfield South"],
                    [[8605.2,3071.72,0], 100, "O4", "Grid 086030"],
                    [[7081.48,1048.17,0], 250, "O5", "Grid 070010"],
                    [[6558.31,2020.57,0], 250, "O6", "Sultansafe"],
                    [[6584.54,1561.46,0], 100, "O7", "Grid 065015"],
                    [[5995.34,1295.53,0], 250, "O8", "Huzrutimam"],
                    [[4482.8,663.021,0], 400, "O9", "Chak Chak"],
                    [[3553.36,1300.57,0], 100, "O10", "Ahmaday"],
                    [[2756.39,877.139,0], 100, "O11", "Grid 027008"],
                    [[1964.93,357.354,0], 250, "O12", "Landay"]
                ];
        };
        
        // D_Feru_S
        case "AEG_on_D_Feru_S":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Feru_S";
                _zones = 
                [
                    [[4912.58,5485.34,0], 400, "F1", "Grid 049054"],
                    [[5343,4756.13,0], 100, "F2", "Kakaru"],
                    [[3666.53,5614.81,0], 100, "F3", "Grid 036056"],
                    [[3651.8,4317.95,0], 300, "F4", "Sakhe North"],
                    [[3289.09,3820.75,0], 300, "F5", "Sakhe South"],
                    [[2543.78,5100.29,0], 300, "F6", "Jilavur"],
                    [[1533.69,5695.02,0], 300, "F7", "Khushab"],
                    [[1590.33,3693.73,0], 400, "F8", "Shukurkalay"],
                    [[740.731,2938.53,0], 500, "F9", "Chaman"],
                    [[90.3634,2811.35,0], 100, "F10", "Chaman West"]
                ];
        };
        
        // D_Feru_N
        case "AEG_on_D_Feru_N":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Feru_N";
                _zones = 
                [
                    [[5271.95,6176.46,0], 300, "E1", "Feruz Abad"],
                    [[5902.47,6411.17,0], 100, "E2", "Grid 059064"],
                    [[5043.69,6866.7,0], 100, "E3", "Mine"],
                    [[5961.99,7296.03,0], 250, "E4", "Falar"]
                ];
        };
        
          // D_Anar
        case "AEG_on_D_Anar":
        {
                _feeds = true;
                _effect = "XFMR";
                _name = "D_Anar";
                _zones = 
                [
                    [[6494.92,4992.86,0], 400, "A1", "Grid 064049"],
                    [[5980.98,5752.45,0], 300, "A2", "Anar"],
                    [[6641.41,5659.92,0], 100, "A3", "Grid 066056"],
                    [[6867.46,6297.94,0], 300, "A4", "Grid 068062"]
                ];
        };
        
    }; // End switch-do.

    // Return the array _events to AEG_events.sqf (no ";" at end of expression)
    _events = [_feeds, _effect, _name, _stack, _zones];
    _events
};