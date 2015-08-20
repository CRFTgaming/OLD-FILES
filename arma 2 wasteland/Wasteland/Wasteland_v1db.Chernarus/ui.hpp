class RscTitles
{

    titles[]={};

	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration=20;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{
			class foodHIcon : w_RscPicture 
			{
			
				idc = -1;
				text = "player_system\icons\food.paa";
				x = safeZoneX+safeZoneW-0.11; y = safeZoneY+safeZoneH-0.54;
				w = 0.03; h = 0.03;
			};
			
			class waterHIcon : w_RscPicture 
			{
			
				idc = -1;
				text = "player_system\icons\water.paa";
				x = safeZoneX+safeZoneW-0.11; y = safeZoneY+safeZoneH-0.50;
				w = 0.04; h = 0.04;
			};
		}
		
		class controls
		{
		
			class foodtext
			{
				type=0;
				idc=23500;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="Zeppelin32";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="Zeppelin32";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   
 	};
};