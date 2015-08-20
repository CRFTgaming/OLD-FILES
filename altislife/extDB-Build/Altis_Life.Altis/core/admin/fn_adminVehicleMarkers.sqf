#include <macro.h>
/*
	File: fn_adminVehicleMarkers.sqf
*/
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
life_vehicle_markers = !life_vehicle_markers;
if(life_vehicle_markers) then {
  VehicleMarkers = [];
  FinishedLoop = false;
  hint "Vehicle markers enabled";
  while{life_vehicle_markers} do {
    {
      if !(_x in vehicles) then {
        deleteMarkerLocal str _x;
      };
    } forEach VehicleMarkers;
    VehicleMarkers = [];
    {
      deleteMarkerLocal str _x;
      _pSee = createMarkerLocal [str _x,getPos _x];
      _pSee setMarkerTypeLocal "mil_box";
      _pSee setMarkerPosLocal getPos _x;
      _pSee setMarkerSizeLocal [1,1];
      _pSee setMarkerTextLocal str _x;
      _pSee setMarkerColorLocal ("ColorBlue");
      VehicleMarkers = VehicleMarkers + [_x];
    } forEach vehicles;
    sleep 5.0;
  };
  FinishedLoop = true;
} else {
  if(isNil "FinishedLoop") exitWith {};
  hint "Vehicle markers disabled";
  waitUntil{FinishedLoop};
  {
    deleteMarkerLocal str _x;
  } forEach VehicleMarkers;	
};
