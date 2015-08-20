#define ST_RIGHT 0x01

class osefStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 1;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 1000;
			x = safezoneX + safezoneW - 1.25;
			y = safezoneY + safezoneH - 0.030;
			w = 0.92;
			h = 0.04;
			shadow = 1;
			colorBackground[] = { 1, 0.3, 0, 0 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.03;
			type = 13;
			style = 1;
			text="Loading ...";
			class Attributes {
				align="left";
				color = "#303030";
			};
		};
	};
};