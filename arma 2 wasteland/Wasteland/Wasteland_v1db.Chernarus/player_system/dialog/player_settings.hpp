#include "player_sys.sqf"

class playerSettings {

	idd = playersys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'player_system\item_list.sqf'";
	
	class controlsBackground {
		
		class MainBG : w_RscPicture {
		
			idc = -1;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
			
			moving = true;
			
			x = 0.0; y = 0.1;
			w = 1.0; h = 0.65;
		
		};
		
		class MainTitle : w_RscText {
		
			idc = -1;
			text = "Player Inventory Menu";
			sizeEx = 0.04;
			
			x = 0.260; y = 0.112;
			w = 0.3; h = 0.05;
		
		};
		
		
		class moneyIcon : w_RscPicture {
			
	  		idc = -1;
        	text = "\CA\misc\data\icons\picture_money_CA.paa";
        	x = 0.02; y = 0.32;
			w = 0.04; h = 0.04;
		};
		
		
		class waterIcon : w_RscPicture {
			
	  		idc = -1;
        	text = "player_system\icons\water.paa";
        	x = 0.015; y = 0.19;
			w = 0.05; h = 0.05;
			
		};
		
		
		class foodIcon : w_RscPicture {
			
      		idc = -1;
        	text = "player_system\icons\food.paa";
        	x = 0.02; y = 0.26;
			w = 0.04; h = 0.04;
		};
		
		
		class moneyText : w_RscText {
			
			idc = money_text;
			text = "";
			
			sizeEx = 0.03;
			
			x = 0.06; y = 0.313;
			w = 0.3; h = 0.05;
		};
		
		class foodText : w_RscText {
			
			idc = food_text;
			
			sizeEx = 0.03;
			text = "";
			
			x = 0.06; y = 0.254;
			w = 0.3; h = 0.05;
		};
		
		class carryweight : w_RscText {
			
			idc = carry_weight;
			text = "";
			
			sizeEx = 0.03;
			
			x = 0.550; y = 0.68;
			w = 0.3; h = 0.05;
		};
		
		class waterText : w_RscText {
			
			idc = water_text;
			text = "";
			
			sizeEx = 0.03;
			
			x = 0.06; y = 0.193;
			w = 0.3; h = 0.05;
		};
		
		
	};
	
	class controls {
	
		class itemList : w_Rsclist {
		
		idc = item_list;
		//onLBSelChanged = "[0] execvm 'player_system\itemList.sqf'";
		
		x = 0.49; y = 0.200;
		w = 0.235; h = 0.340;
		
		};
		
		class itemEdit : w_RscCombo {
		
		idc = item_edit;
		
		x = 0.49; y = 0.55;
		w = 0.235; h = 0.03;
		
		};
		
		
		class moneyInput: w_RscCombo {
			
			idc = money_value;
			
			x  = 0.02; y = 0.402;
			w = .1; h = .030;
		};
		
		class DropButton : w_RscButton {
			
			text = "Drop";
			onButtonClick = "[1] execVM 'player_system\itemfnc.sqf'";
			
			x = 0.610; y = 0.60;
			w = 0.125; h = 0.05;
			
		};
		
		class UseButton : w_RscButton {
			
			text = "Use";
			onButtonClick = "[0] execVM 'player_system\itemfnc.sqf'";
			
			x = 0.48; y = 0.60;
			w = 0.125; h = 0.05;
			
		};
		
		class DropcButton : w_RscButton {

			text = "Drop Money";
			onButtonClick = "[] execVM 'player_system\money_fnc.sqf'";
			
			x = 0.13; y = 0.4;
			w = 0.135; h = 0.05;
			
		};
		
		class CloseButton : w_RscButton {
			
			text = "Close";
			onButtonClick = "closeDialog 0;";
			
			x = 0.01; y = 0.60;
			w = 0.125; h = 0.05;
			
		};
		
		class settings : w_RscButton {
		
			text = "Rogue List";
			onButtonClick = "closeDialog 0; execVM 'player_system\roguelist.sqf'";
			
			x = 0.140; y = 0.60;
			w = 0.125; h = 0.05;
			
		};
		
		class goRogue : w_RscButton {
		
		idc = rogue_text;
		text = "";
		onButtonClick = "closeDialog 0; execVM 'player_system\rogue.sqf'";
		
		x = 0.070; y = 0.68;
		w = 0.125; h = 0.05;
		
		};
		
	};

};