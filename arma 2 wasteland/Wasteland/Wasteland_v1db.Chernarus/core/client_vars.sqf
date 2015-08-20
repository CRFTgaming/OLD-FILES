/*
	@file Version: 1D
	@file name: core/client_vars.sqf
	@file Author: TAW_Tonic
	@file edit: 10/17/2012
	@file description: Set the clients starting variables
*/

//I like changing these two vars to make s0beit look into the mission files so his cheats work :)
thirstlvl = 100;
hungerlvl = 100;

waste_maxCarry = 64;
waste_carryW = 0;

//Set food variables
waste_canfood = 0; //Canned Food supply
waste_rabit = 0; //Raw rabit meat
waste_goat = 0; //Raw goat meat
waste_cow = 0; //Raw cow meat
waste_boar = 0; //Raw boar meat
waste_chicken = 0; //Raw chicken meat
waste_rabit_c = 0; //Cooked Rabit Meat
waste_goat_c = 0; //Cooked Goat Meat
waste_boar_c = 0; //Cooked Boar Meat
waste_cow_c = 0; //Cooked Cow Meat
waste_chicken_c = 0; //Cooked Chicken Meat
waste_water = 0;

//Set car-part variables
waste_fuelE = 0;
waste_fuelF = 0;
waste_repairkits = 0;

waste_medkits = 0; //Medical var
waste_money = 100; //Money

//Misc variables
waste_hasBomb = false;
waste_hasBeacon = false;
waste_sBeacon = ObjNull;
waste_sBuse = 0;
beacon_wait = false; //Define the spawn beacon wait menu var
hitStateVar = false; //Something used for the punch / rifle butt
waste_maxwater = 100; //The maximum level of water you can be hydrated by. Change this if you're editing the thirstlvl to something higher.
waste_maxfood = 100; //The maximum level of food you can have. Change this if you're editing the hungerlvl to something higher.
waste_echicken = 15;
waste_erabbit = 10;
waste_egoat = 50;
waste_eboar = 40;
waste_ecan = 20;

