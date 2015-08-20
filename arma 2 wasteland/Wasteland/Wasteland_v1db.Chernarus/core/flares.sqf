_owner = _this select 1;
_time = time;
if(local _owner) then
{
			player playmove "AinvPknlMstpSlayWrflDnon";
			sleep 1;
			_can = "Can_small" createVehicle (getPosATL player);
			_pos = getPosATL player;
			_can setPos _pos;
			_can EnableSimulation false;
			//Area Light
			_lightArea = "#lightpoint" createVehicleLocal _pos;
			_lightArea setLightColor [0.5,0,0]; //[0.1,0.005,0.005];
			_lightArea setLightAmbient [0.2,0.01,0.01];
			_lightArea setLightBrightness 0.2;
			_lightArea lightAttachObject [_can, [0,0,0]];
			
			//Spark Light
			_lightSpark = "#lightpoint" createVehicleLocal _pos;
			_lightSpark setLightColor [0.1,0.1,0.1];
			_lightSpark setLightAmbient [0.05,0.05,0.05];
			_lightSpark setLightBrightness 0.05;
			_lightSpark lightAttachObject [_can, [0,0,0]];
			
			flareClient = [_owner,_can];
			publicVariable "flareClient";
			flareServerMonitor = [_owner,_can,_time];
			publicVariable "flareServerMonitor";
			
			while {!isNull _can} do {
				if((time - _time) < 600) then{
				
					_lightArea setLightAmbient [((random 0.2) + 0.2),0.01,0.01];
					_lightArea setLightColor [((random 0.1) + 0.1),0.005,0.005];
				} else
				{
					deleteVehicle _can;
					deleteVehicle _lightSpark;
					deleteVehicle _lightArea;
				};
				sleep (random 0.1);
			};
};