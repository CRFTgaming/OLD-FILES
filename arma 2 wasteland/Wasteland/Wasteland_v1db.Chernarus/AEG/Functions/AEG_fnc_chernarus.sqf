/*
    File: AEG_fnc_chernarus.sqf
    Version: 1.01
    Author: Loyalguard

    Description:
    Create a function that will determine which power plant or transformer bus is being affected by a power related event

    Parameters:
    _this select 0: Name of the pertinent public variable (string).

    Execution:
    Loaded into memory by AEG_init_chernarus.sqf.  Function called by AEG_events.sqf if a power related event has occurred on Chernarus.
*/

// Create a function that will determine which power plant or transformer bus is being affected by a power related event.
AEG_fnc_chernarus = 
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
        //// ELEKTROZAVODSK GENERATION, TRANSMISSION, AND DISTRIBUTION SUBSTATION ////	

        // P_Elek
        case "AEG_on_P_Elek":
        {
            _feeds = false;
            _effect = "PLANT";
            _name = "P_Elek";
            _stack = "S_Elek";
        };

        // T_Elek_1
        case "AEG_on_T_Elek_1":
        {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_Elek_1";
            };

            // T_Elek_2
            case "AEG_on_T_Elek_2":
            {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_Elek_2";
        };

        // D_Elek
        case "AEG_on_D_Elek":
        {
            _feeds = true;
            _effect = "XFMR";
            _name = "D_Elek";
            _zones = 
            [
                [[10279.57,2557.13,0], 250, "E1", "Elektrozavodsk"],
                [[9993.2,2212.83,0], 250, "E2", "Elektrozavodsk"],
                [[10732.7,2413.6,0], 150, "E3", "Elektrozavodsk"],
                [[10230.4,2030.79,0], 150, "E4", "Elektrozavodsk"],
                [[10389.1,2163.3,0], 100, "E5", "Elektrozavodsk"],
                [[10505,2098.26,0], 150, "E6", "Elektrozavodsk"],
                [[10514.2,2306.94,0], 100, "E7", "Elektrozavodsk"],
                [[10364.9,1666.51,0], 250, "E8", "Elektrozavodsk"],
                [[9908.41,1761.11,0], 250, "E9", "Elektrozavodsk"],
                [[9393.97,1990.63,0], 150, "E10", "Elektrozavodsk"],
                [[11008,2827.19,0], 350, "E11", "Elektrozavodsk"],
                [[11576.2,3365.4,0], 350, "E12", "Zelenaya"],
                [[12086.1,3590.91,0], 200, "E13", "Kamyshovo"],
                [[13423.7,2810.72,0], 100, "E14", "Skalisty"],
                [[8682.86,2422.02,0], 100, "E15", "Golova"],
                [[10278.3,3736.33,0], 125, "E16", "Topolka"],
                [[9147.81,3944.63,0], 200, "E17", "Pusta"],
                [[9237.09,4970.72,0], 100, "E18", "Grid 092104"],
                [[8422.1,4930.37,0], 100, "E19", "Grid 084104"],
                [[8155.21,3119.33,0], 300, "E20", "Prigorodki"],
                [[7606.75,3313.42,0], 350, "E21", "Prigorodki"]
            ];
        };

        //// SOUTH ZAGORIA REGIONAL TRANSMISSION AND DISTRIBUTION SUBSTATION ////

        // T_SZag_1
        case "AEG_on_T_SZag_1":
        {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_SZag_1";
        };

        // D_SZag
        case "AEG_on_D_SZag":
        {
            _feeds = true;
            _effect = "XFMR";
            _name = "D_SZag";
            _zones = 
            [
                [[5820.05,4040.92,0], 150, "R1", "Grid 058113"],
                [[5807.04,4674.79,0], 150, "R2", "Nadezhdino"],
                [[5958.58,4923.75,0], 150, "R3", "Nadezhdino"],
                [[7560.06,5148.78,0], 175, "R4", "Mogilevka"],
                [[6526.57,6104.21,0], 100, "R5", "Vyshnoye"],
                [[7219.85,6969.44,0], 100, "R6", "Grid 072083"],
                [[8468.74,6678.05,0], 100, "R7", "Guglovo"],
                [[7085.97,7687.26,0], 200, "R8", "Novy Sobor"],
                [[6149.62,7768.54,0], 350, "R9", "Stary Sobor"],
                [[5350.61,8553.72,0], 250, "R10", "Kabinino"],
                [[3190.21,7079.03,0], 450, "R11", "Grid 031083"],
                [[2432.34,6301.25,0], 300, "R12", "Dosnovka"],
                [[1989.78,7358.75,0], 100, "R13", "Myshkino"],
                [[2165.78,7922.44,0], 100, "R14", "Grid 021074"],
                [[2999.82,7781.17,0], 150, "R15", "Pustoshka"],
                [[3123.61,8006.09,0], 150, "R16", "Pustoshka"],
                [[3748.14,8724.01,0], 200, "R17", "Vybor"],
                [[4039.3,8877.43,0], 150, "R18", "Vybor"],
                [[3732.44,9027.38,0], 150, "R19", "Vybor"],
                [[3121.17,9264.23,0], 100, "R20", "Grid 031060"],
                [[2789.21,9912.09,0], 200, "R21", "Lopatino"],
                [[2535.63,9711.58,0], 150, "R22", "Lopatino"],
                [[4569.84,9706.06,0], 200, "R23", "Airfield"],
                [[5015.1,10008.1,0], 400, "R24", "Airfield"],
                [[6011.31,10335.2,0], 325, "R25", "Grishino"],
                [[4469.36,10514.4,0], 350, "R26", "Airfield"],
                [[4141.48,10992.3,0], 250, "R27", "Airfield"],
                [[5951.45,11203.6,0], 100, "R28", "Grid 059041"],
                [[5011.15,12510.7,0], 100, "R29", "Petrovka"],
                [[1895.59,12431.1,0], 100, "R30", "Skalka"],
                [[1360.93,13396.1,0], 100, "R31", "Grid 013019"],
                [[5735.11,2856.72,0], 150, "R32", "Regional Substation"],
                [[5403.77,3724.28,0], 100, "R33", "Grid 054116"],
                [[5182.85,4188.01,0], 100, "R34", "Grid 051111"]
            ];
        };

        // T_SZag_2
        case "AEG_on_T_SZag_2":
        {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_SZag_2";
        };

        // T_SZag_3
        case "AEG_on_T_SZag_3":
        {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_SZag_3";
        };

        //// CHERNOGORSK DISTRIBUTION SUBSTATION ////

        // D_Cher
        case "AEG_on_D_Cher":
        {
            _feeds = true;
            _effect = "XFMR";
            _name = "D_Cher";
            _zones = 
            [
                [[6358.27,2495.48,0], 150, "C1", "Chernogorsk"],
                [[6139.94,2155.05,0], 350, "C2", "Chernogorsk"],
                [[6381.5,2702.56,0], 150, "C3", "Chernogorsk"],
                [[6613.28,2376.15,0], 150, "C4", "Chernogorsk"],
                [[6631.57,2619.89,0], 150, "C5", "Chernogorsk"],
                [[6583.1,2945.22,0], 200, "C6", "Chernogorsk"],
                [[6803.01,2331.88,0], 100, "C7", "Chernogorsk"],
                [[6807.68,2507.45,0], 100, "C8", "Chernogorsk"],
                [[6945.86,2361.42,0], 100, "C9", "Chernogorsk"],
                [[6893.39,2714.71,0], 150, "C10", "Chernogorsk"],
                [[6963.47,2512.91,0], 100, "C11", "Chernogorsk"],
                [[7138.51,2455.78,0], 150, "C12", "Chernogorsk"],
                [[7145.59,2191.95,0], 200, "C13", "Chernogorsk"],
                [[7008.54,3134.9,0], 250, "C14", "Chernogorsk"],
                [[5627.59,2090.78,0], 200, "C15", "Mutnaya"],
                [[5153.54,2209.69,0], 300, "C16", "Balota Airstrip"],
                [[6372.95,3493.76,0], 400, "C17", "Vysota"],
                [[4716.70,2555.32,0], 250, "C18", "Balota"],
                [[4412.97,2374.51,0], 150, "C19", "Balota"],
                [[4185.03,3285.42,0], 150, "C20", "Grid 041121"],
                [[3599.48,2398.27,0], 225, "C21", "Komarovo"],
                [[2796.16,3021.08,0], 525, "C22", "Grid 027012"]
            ];
        };

        //// CHERNOGORSK GENERATION AND TRANSMISSION SUBSTATION ////	

        // P_Cher
        case "AEG_on_P_Cher":
        {
            _feeds = false;
            _effect = "PLANT";
            _name = "P_Cher";
            _stack = "S_Cher";
        };

        // T_Cher_1
        case "AEG_on_T_Cher_1":
        {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_Cher_1";
        };

        //// ZELENOGORSK TRANSMISSION AND DISTRIBUTION SUBSTATION ////

        // T_Zele_1
        case "AEG_on_T_Zele_1":
        {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_Zele_1";
        };

        // D_Zele
        case "AEG_on_D_Zele":
        {
            _feeds = true;
            _effect = "XFMR";
            _name = "D_Zele";
            _zones = 
            [
                [[2281.33,5248.71,0], 150, "Z1", "Zelenogorsk"],
                [[1735.94,5093.43,0], 100, "Z2", "Zelenogorsk"],
                [[2649.86,5131.83,0], 150, "Z3", "Zelenogorsk"],
                [[2551.47,4795.42,0], 150, "Z4", "Zelenogorsk"],
                [[2810.49,5301.08,0], 125, "Z5", "Zelenogorsk"],
                [[2938.8,5476.16,0], 150, "Z6", "Zelenogorsk"],
                [[2638.6,5555.98,0], 150, "Z7", "Zelenogorsk"],
                [[2703.27,5973.57,0], 100, "Z8", "Zelenogorsk"],
                [[3411.18,4940.85,0], 100, "Z9", "Drozhino"],
                [[1700.09,3820.13,0], 225, "Z10", "Pavlovo"],
                [[3395.85,3901.31,0], 100, "Z11", "Bor"],
                [[4404.08,4027.43,0], 175, "Z12", "Windy Mountain"],
                [[4440.39,4627.7,0], 175, "Z13", "Kozlovka"],
                [[4401.2,5654.43,0], 100, "Z14", "Grid 043097"],
                [[3704.73,6005.41,0], 100, "Z15", "Green Mountain"],
                [[4524.53,6359.1,0], 200, "Z16", "Pogorevka"],
                [[4745.11,6808.02,0], 125, "Z17", "Rogovo"],
                [[5063.37,5568.14,0], 250, "Z18", "Pulkovo"],
                [[1865.69,2244.12,0], 175, "Z19", "Kamenka"]
            ];
        };

        // T_Zele_2
        case "AEG_on_T_Zele_2":
        {
            _feeds = false;
            _effect = "XFMR";
            _name = "T_Zele_2";
        };

        //// BEREZINO DISTRIBUTION SUBSTATION ////

        // D_Bere
        case "AEG_on_D_Bere":
        {
            _feeds = true;
            _effect = "XFMR";
            _name = "D_Bere";
            _zones = 
            [
                [[12946.4,9974.01,0], 150, "B1", "Berezino"],
                [[12837.2,9715.91,0], 200, "B2", "Berezino"],
                [[13138.6,9869.05,0], 100, "B3", "Berezino"],
                [[13256.6,10018.5,0], 100, "B4", "Berezino"],
                [[13138.9,10269.6,0], 200, "B5", "Berezino"],
                [[12868.8,10179.2,0], 100, "B6", "Berezino"],
                [[12298.4,10036.3,0], 450, "B7", "Berezino"],
                [[12254.6,9426.58,0], 250, "B8", "Berezino"],
                [[12219.6,9041.33,0], 200, "B9", "Berezino"],
                [[11873.2,9165.04,0], 200, "B10", "Berezino"],
                [[12294.2,8479.61,0], 100, "B11", "Grid 122068"],
                [[12317.5,10819.8,0], 100, "B12", "Khelm"],
                [[12274.4,10973.8,0], 100, "B13", "Khelm"],
                [[12133.2,7279.32,0], 200, "B14", "Orlovets"],
                [[10443.6,9832.34,0], 250, "B15", "Dubrovka"],
                [[10291.9,9520.26,0], 100, "B16", "Dubrovka"],
                [[10448.9,8883.94,0], 100, "B17", "Grid 104064"],
                [[9748.54,8847.65,0], 150, "B18", "Gorka"],
                [[9411.79,8847.65,0], 150, "B19", "Gorka"],
                [[9846.28,10370.9,0], 250, "B20", "Grid 098049"],
                [[10735.1,10794.4,0], 100, "B21", "Grid 107045"],
                [[8719.76,11599.1,0], 200, "B22", "Gvozdno"],
                [[8085.59,11474.9,0], 200, "B23", "Gvozdno"],
                [[8554.13,11953.1,0], 200, "B24", "Gvozdno"],
                [[10711.7,12427.8,0], 300, "B25", "Krasnostov"],
                [[11063.7,12381,0], 150, "B26", "Krasnostov"],
                [[11241.5,12217.1,0], 150, "B27", "Krasnostov"],
                [[11697.9,12477.1,0], 200, "B28", "Krasnostov Airstrip"],
                [[12240.2,12552.1,0], 300, "B29", "Krasnostov Airstrip"],
                [[13351.8,12864.2,0], 100, "B30", "Olsha"]
            ];
        };

        //// SOLNICHINIY DISTRIBUTION SUBSTATION ////

        // D_Soln
        case "AEG_on_D_Soln":
        {
            _feeds = true;
            _effect = "XFMR";
            _name = "D_Soln";
            _zones = 
            [
                [[13345.3,6288.56,0], 100, "S1", "Solnichniy"],
                [[13387.1,6115.73,0], 100, "S2", "Solnichniy"],
                [[13530.6,6293.38,0], 100, "S3", "Solnichniy"],
                [[13304.6,6659.61,0], 150, "S4", "Solnichniy"],
                [[13023.1,6946.73,0], 250, "S5", "Solnichniy"],
                [[12218.4,6257.16,0], 175, "S6", "Solnichniy"],
                [[13061.5,5701.71,0], 475, "S7", "Three Valleys"],
                [[11192.9,6556.06,0], 100, "S8", "Dolina"],
                [[12775.8,4416.77,0], 150, "S9", "Tulga"],
                [[12936.9,8005.75,0], 150, "S10", "Nizhnoye"],
                [[13005.6,8275.89,0], 150, "S11", "Nizhnoye"],
                [[11285.8,5439.17,0], 100, "S12", "Msta"],
                [[10557.6,7007.8,0], 100, "S13", "Grid 105083"],
                [[10643.8,7993.12,0], 200, "S14", "Polana"],
                [[9629.63,6556.25,0], 100, "S15", "Shakhova"],
                [[10130.9,5496.5,0], 250, "S16", "Staroye"]
            ];
        };
    }; // End switch-do.

    // Return the array _events to AEG_events.sqf (no ";" at end of expression)
    _events = [_feeds, _effect, _name, _stack, _zones];
    _events
};