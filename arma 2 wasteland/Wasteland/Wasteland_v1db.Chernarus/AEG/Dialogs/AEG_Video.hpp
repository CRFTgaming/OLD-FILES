// File: AEG_Video.hpp
// Version: 1.01
// Author: Loyalguard
// Description: Define dialog classes and related controls for the AEG CCTV child dialog of the grid control system.

class AEG_Video
{
	
    idd = 20800;
    movingEnable = false;

    controlsBackground[] = 
    {

    };

    objects[] = { };

    controls[] = 
    {
            AEG_WindowHeaderRect,
            AEG_WindowHeaderText,
            AEG_WindowIconPicture,

            AEG_WindowClosePicture,
            AEG_WindowCloseActive,

            AEG_WindowFooterText,

            AEG_CamLabelStaticText,

            AEG_Cam1Button,		
            AEG_Cam2Button,		
            AEG_Cam3Button,				
            AEG_Cam4Button,		
            AEG_Cam5Button,		
            AEG_Cam6Button,		
            AEG_Cam7Button,		
            AEG_ReturnButton		
    };

    // BACKGROUND CONTROL CLASSES //

    // CONTROL CLASSES //

    // GUI Window Controls

    class AEG_WindowHeaderRect : AEG_Window
    {
            x = (safeZoneX + (safeZoneW * 0));
            y = (safeZoneY + (safeZoneH * 0));
            w = (safeZoneW * 1);
            h = (safeZoneH * 0.05);
            colorBackground[] = AEG_COLOR_BLUE;
    };

    class AEG_WindowHeaderText : AEG_Window
    {
            x = (safeZoneX + (safeZoneW * 0.035));
            y = (safeZoneY + (safeZoneH * 0));
            w = (safeZoneW * 0.75);
            h = (safeZoneH * 0.05);
            style = ST_LEFT;		
            colorText[] = AEG_COLOR_WHITE;
            colorBackground[] = AEG_COLOR_CLEAR;
            text = "Chernarus Electrical Grid Transmission and Distribution System - South Zagoria Region";
    };

    class AEG_WindowFooterText : AEG_Window
    {
            idc = 20801;
            x = (safeZoneX + (safeZoneW * 0));
            y = (safeZoneY + (safeZoneH * 0.95));
            w = (safeZoneW * 1);
            h = (safeZoneH * 0.05);
            style = ST_LEFT;
            text = "Click a button to switch to that camera.  Click RETURN to return to System Overview Screen";
    };

    class AEG_WindowIconPicture : AEG_StaticPicture
    {
            style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
            x = (safeZoneX + (safeZoneW * 0));
            y = (safeZoneY + (safeZoneH * 0));
            w = (safeZoneW * 0.03);
            h = (safeZoneH * 0.05);
            text = "AEG\Textures\WindowIcon.paa";
    };

    class AEG_WindowClosePicture : AEG_StaticPicture
    {
            default = true;
            style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
            x = (safeZoneX + (safeZoneW * 0.965));
            y = (safeZoneY + (safeZoneH * 0));
            w = (safeZoneW * 0.03);
            h = (safeZoneH * 0.05);
            text = "AEG\Textures\CloseButton.paa";
    };

    class AEG_WindowCloseActive : AEG_ActiveText
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.965));
            y = (safeZoneY + (safeZoneH * 0));
            w = (safeZoneW * 0.03);
            h = (safeZoneH * 0.05);
            color[] = AEG_COLOR_CLEAR;
            colorActive[] = AEG_COLOR_CLEAR;
            action = "closeDialog 20800;";
            text = "   ";
    };

    class AEG_CamLabelStaticText : AEG_StaticText
    {
            idc = 20802;
            style = ST_LEFT;
            x = (safeZoneX + (safeZoneW * 0));
            y = (safeZoneY + (safeZoneH * 0.050));
            w = (safeZoneW * 0.75);
            h = (safeZoneH * 0.1);
            colorText[] = AEG_COLOR_LTGRAY;
            colorBackground[] = AEG_COLOR_CLEAR;
            SizeEX = 0.04;
            text = "";
    };

     class AEG_Cam1Button : AEG_Button
    {
            idc = 20810;
            x = (safeZoneX + (safeZoneW * 0));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW *  0.125);
            h = (safeZoneH * 0.075);
            action = "[""P_Elek""] spawn AEG_fnc_video;";
            text = "01 - Elek";
    };

    class AEG_Cam2Button : AEG_Button
    {
            idc = 20811;
            x = (safeZoneX + (safeZoneW * 0.125));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW * 0.125);
            h = (safeZoneH * 0.075);
            action = "[""SZag""] spawn AEG_fnc_video;";
            text = "02 - SZag";
    };

    class AEG_Cam3Button : AEG_Button
    {
            idc = 20812;
            x = (safeZoneX + (safeZoneW * 0.25));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW * 0.125);
            h = (safeZoneH * 0.075);
            action = "[""Soln""] spawn AEG_fnc_video;";
            text = "03 - Soln";
    };

    class AEG_Cam4Button : AEG_Button
    {
            idc = 20813;
            x = (safeZoneX + (safeZoneW * 0.375));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW * 0.125);
            h = (safeZoneH * 0.075);
            action = "[""D_Cher""] spawn AEG_fnc_video;";
            text = "04 - DCher";
    };

    class AEG_Cam5Button : AEG_Button
    {
            idc = 20814;
            x = (safeZoneX + (safeZoneW * 0.5));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW * 0.125);
            h = (safeZoneH * 0.075);
            action = "[""P_Cher""] spawn AEG_fnc_video;";
            text = "05 - PCher";
    };

    class AEG_Cam6Button : AEG_Button
    {
            idc = 20815;
            x = (safeZoneX + (safeZoneW * 0.625));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW * 0.125);
            h = (safeZoneH * 0.075);
            action = "[""Zele""] spawn AEG_fnc_video;";
            text = "06 - Zele";
    };

    class AEG_Cam7Button : AEG_Button
    {
            idc = 20816;
            x = (safeZoneX + (safeZoneW * 0.75));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW *  0.125);
            h = (safeZoneH * 0.075);
            action = "[""Bere""] spawn AEG_fnc_video;";
            text = "07 - Bere";
    };

    class AEG_ReturnButton : AEG_Button
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.875));
            y = (safeZoneY + (safeZoneH * 0.875));
            w = (safeZoneW * 0.125);
            h = (safeZoneH * 0.075);
            text = "RETURN";
            action = "closeDialog 20800;";
    };
};