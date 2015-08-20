		_owner = (_this select 0) select 0;
		_flare = (_this select 0) select 1;
		//if(isNil _flare) exitwith {};
			_lightArea = "#lightpoint" createVehicleLocal (getPosATL _flare);
			_lightArea setLightColor [0.5,0,0]; //[0.1,0.005,0.005];
			_lightArea setLightAmbient [0.2,0.01,0.01];
			_lightArea setLightBrightness 0.2;
			_lightArea lightAttachObject [_flare, [0,0,0]];
			
			//Spark Light
			_lightSpark = "#lightpoint" createVehicleLocal (getPosATL _flare);
			_lightSpark setLightColor [0.1,0.1,0.1];
			_lightSpark setLightAmbient [0.05,0.05,0.05];
			_lightSpark setLightBrightness 0.05;
			_lightSpark lightAttachObject [_flare, [0,0,0]];
			
			while {!isNull _flare} do
			{
				_lightArea setLightAmbient [((random 0.2) + 0.2),0.01,0.01];
				sleep (random 0.1);
			};
			
			deleteVehicle _lightSpark;
			deleteVehicle _lightArea;