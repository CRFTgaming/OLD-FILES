#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":{
		//public medics slots
			_return pushBack ["C_Offroad_01_F",40000];
			_return pushBack ["C_SUV_01_F",35000];
		if (__GETC__(life_medlevel) > 0) then //medic 1 and up
		{
			_return pushBack ["C_Hatchback_01_F",30000];
		};
		if (__GETC__(life_medlevel) > 1) then //medic 2 and up
		{
			_return pushBack ["I_Truck_02_medical_F",25000];
			_return pushBack ["O_Truck_03_medical_F",45000];
			_return pushBack ["B_Truck_01_medical_F",60000];
		};
	};
	case "med_air_hs": {
		// vehicles available to pub slot
			_return pushBack ["B_Heli_Light_01_F",50000];
		
		if (__GETC__(life_medlevel) > 0) then
		//vehicles available to medic level 1
		{
			_return pushBack ["O_Heli_Light_02_unarmed_F",75000];
			_return pushBack ["I_Heli_light_03_unarmed_F",85000];
		};
		if (__GETC__(life_medlevel) > 1) then
		// vehicles available to medic level 2
		{
			_return pushBack ["O_Heli_Transport_04_medevac_F",500000];
		};	
	};	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",12500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Offroad_01_repair_F",15000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_02_fuel_F",250000],
			["B_Truck_01_box_F",250000],
			["B_Truck_01_mover_F",65000],
			["O_Truck_03_device_F",2000000]
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",8500],
			["C_Hatchback_01_sport_F",10000],
			["O_Truck_02_fuel_F",250000],
			["O_Truck_02_box_F",250000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack ["B_G_Offroad_01_armed_F",500000];
			_return pushBack ["O_Truck_02_Ammo_F",250000];
			_return pushBack ["O_Truck_02_medical_F",250000];
			_return pushBack ["O_Truck_03_device_F",2000000];
			_return pushBack ["O_MRAP_02_hmg_F",2000000];
			_return pushBack ["O_MRAP_02_gmg_F",2000000];
			_return pushBack ["I_MRAP_03_hmg_F",2000000];
			_return pushBack ["I_MRAP_03_gmg_F",3000000];
			_return pushBack ["I_APC_tracked_03_cannon_F",3500000];
			_return pushBack ["B_APC_Wheeled_01_cannon_F",4000000];
			_return pushBack ["B_Heli_Light_01_F",200000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",600000];
			_return pushBack ["I_Heli_Transport_02_F",1200000];			
			_return pushBack ["B_Heli_Light_01_armed_F",1500000];
			_return pushBack ["B_Heli_Transport_01_camo_F",1500000];
			_return pushBack ["O_Heli_Transport_04_bench_F",2000000];
			_return pushBack ["B_Heli_Transport_03_unarmed_F",2500000];
			_return pushBack ["I_Heli_light_03_F",3000000];
			_return pushBack ["O_Heli_Transport_04_F",3000000];
			_return pushBack ["O_Heli_Transport_04_box_F",3000000];
			_return pushBack ["O_Heli_Attack_02_F",4000000];
		};
	};
	
	case "cop_car":
	{
			_return pushBack ["C_Offroad_01_F",40000];
		if(__GETC__(life_coplevel) > 0) then // cadet and up 
		{
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
			_return pushBack ["C_SUV_01_F",35000];
			_return pushBack ["B_Truck_01_covered_F",45000];
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
		    _return pushBack ["C_Hatchback_01_sport_F",35000];
		};
		if(__GETC__(life_coplevel) > 3) then // Sgt and up
		{
			_return pushBack ["B_MRAP_01_F",40000];
		};
		if(__GETC__(life_coplevel) > 4) then //SWAT and up
		{
			_return pushBack ["B_G_Quadbike_01_F",15000];
			_return pushBack ["B_Truck_01_ammo_F",400000];
			_return pushBack ["I_MRAP_03_F",750000];
			_return pushBack ["B_MRAP_01_hmg_F",900000];
			_return pushBack ["B_APC_Tracked_01_CRV_F",1000000];
		};
		if(__GETC__(life_coplevel) > 5) then //2nd LT and up
		{
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
			_return pushBack ["I_MRAP_03_hmg_F",750000];
			_return pushBack ["B_MRAP_01_gmg_F",1000000];
			_return pushBack ["B_APC_Tracked_01_rcws_F",2000000];
			_return pushBack ["B_APC_Wheeled_01_cannon_F",4000000];
		};
		if(__GETC__(life_coplevel) > 7) then //Captain and up
		{	
			_return pushBack ["I_MRAP_03_gmg_F",2000000];
			_return pushBack ["O_APC_Tracked_02_cannon_F",6000000];
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 0) then // cadet and up 
		{
			_return pushBack ["C_Heli_Light_01_civil_F",100000];
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
			_return pushBack ["B_Heli_Transport_01_F",200000];
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
			_return pushBack ["O_Heli_Light_02_unarmed_F",200000];
		};
		if(__GETC__(life_coplevel) > 3) then // Sgt and up
		{
			_return pushBack ["I_Heli_light_03_unarmed_F",1000000];
		};
		if(__GETC__(life_coplevel) > 4) then //SWAT and up
		{
			_return pushBack ["B_Heli_Light_01_armed_F",2000000];
			_return pushBack ["O_Heli_Transport_04_bench_F",1000000];
		};
		if(__GETC__(life_coplevel) > 5) then //2nd LT and up
		{
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
		};
		if(__GETC__(life_coplevel) > 7) then //Captain and up
		{
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
			_return pushBack ["O_Heli_Light_02_v2_F",3000000];
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{	
			_return pushBack ["O_Heli_Attack_02_black_F",5000000];
		};
	};
	
	case "cop_airhq":
	{
					
		if(__GETC__(life_coplevel) > 0) then // cadet and up 
		{
			_return pushBack ["C_Heli_Light_01_civil_F",100000];
		};
		if(__GETC__(life_coplevel) > 1) then // Patrol Officer and up 
		{
			_return pushBack ["B_Heli_Transport_01_F",200000];
		};
		if(__GETC__(life_coplevel) > 2) then // Highway Patrol and up
		{
			_return pushBack ["O_Heli_Light_02_unarmed_F",200000];
		};
		if(__GETC__(life_coplevel) > 3) then // Sgt and up
		{
			_return pushBack ["I_Heli_light_03_unarmed_F",1000000];
		};
		if(__GETC__(life_coplevel) > 4) then //SWAT and up
		{
			_return pushBack ["B_Heli_Light_01_armed_F",2000000];
			_return pushBack ["O_Heli_Transport_04_bench_F",1000000];
		};
		if(__GETC__(life_coplevel) > 5) then //2nd LT and up
		{
		};
		if(__GETC__(life_coplevel) > 6) then //1st LT and up
		{
		};
		if(__GETC__(life_coplevel) > 7) then //Captain and up
		{
		};
		if(__GETC__(life_coplevel) > 8) then //Commissioner and up
		{
			_return pushBack ["O_Heli_Light_02_v2_F",3000000];
		};
		if(__GETC__(life_coplevel) > 9) then //Commanding officer and up
		{	
			_return pushBack ["O_Heli_Attack_02_black_F",5000000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["B_Lifeboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack ["O_Boat_Armed_01_hmg_F",35000];
			_return pushBack ["O_SDV_01_F",25000];
			_return pushBack ["O_Boat_Transport_01_F",5000];
		};
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["C_Boat_Civil_01_rescue_F",20000],
			["B_SDV_01_F",100000]
		];
	};
<<<<<<< HEAD
<<<<<<< HEAD
	
	case "civ_jet":
	{
		_return =
		[
			["B_Plane_CAS_01_F",1500000],
			["O_Plane_CAS_02_F",1500000]
		];
	};
=======
>>>>>>> parent of f830989... testing jets
=======
>>>>>>> parent of f830989... testing jets
};

_return;
