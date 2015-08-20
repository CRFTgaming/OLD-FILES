#include "rogue.sqf"

class beaconMenu {

	idd = beacon_DIALOG;
	movingEnable = false;
	enableSimulation = true;
	//onLoad = "[] execVM 'player_system\item_list.sqf'";
	
	class controlsBackground {
		
		class MainBG : w_RscPicture {
		
			idc = -1;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
			
			moving = 0;
			
			x = 0.300000; y = 0.270000;
			w = 0.50; h = 0.15;
		
		};
		
		class MainTitle : w_RscText {
		
			idc = -1;
			text = "Spawn Options";
			sizeEx = 0.03;
			moving = 0;
			
			x = 0.300000 + 0.105; y = 0.270000 + 0.020;
			w = 0.3; h = 0.05;
		
		};
		
		
	};
	
	class controls {
	
		class NormalRespawn : w_RscButton {
			
			text = "Normal Spawn";
			onButtonClick = "[0] execVM 'core\onChoice.sqf'; closeDialog 0;";
			moving = 0;
			
			x = 0.300000 + 0.03; y = 0.270000 + 0.070;
			w = 0.140; h = 0.05;
			
		};
		
			class BeaconSpawn : w_RscButton {
			
			text = "Beacon Spawn";
			onButtonClick = "[1] execVM 'core\onChoice.sqf'; closeDialog 0;";
			moving = 0;
			
			
			x = 0.300000 + 0.20; y = 0.270000 + 0.070;
			w = 0.140; h = 0.05;
			
		};
		
	};

};