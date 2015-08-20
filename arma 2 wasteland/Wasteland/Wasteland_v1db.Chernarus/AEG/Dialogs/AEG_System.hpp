// File: AEG_System.hpp
// Version: 1.01
// Author: Loyalguard
// Description: Define dialog classes and related controls to access the grid control system dialog.

class AEG_System
{
    idd = 20700;
    movingEnable = false;

    // On unload ensure that the camera is switched back to player's normal view and the camera and pp effects are destroyed/disabled.
    onUnload = "if ((!isNil ""AEG_video"") or (AEG_video != objNull)) then {AEG_video cameraEffect [""Terminate"", ""BACK""]; AEG_video camCommitPrepared 0; camDestroy AEG_Video; ""filmGrain"" ppEffectEnable false;};";

    controlsBackground[] = 
    {
            AEG_WindowBackground_Rect,

            P_Elek_Frame,
            P_Cher_Frame,
            S_Bere_Frame,
            S_Cher_Frame,
            S_SZag_Frame,
            S_Soln_Frame,
            S_Zele_Frame,

            H1_Line,
            H2_Line,
            H3_Line,
            H4_Line,
            H5_Line,
            H6_Line,
            H7_Line,
            H8_Line,
            H9_Line,

            V1_Line,
            V2_Line,
            V3_Line,
            V4_Line,
            V5_Line,
            V6_Line,
            V7_Line,
            V9_Line,
            V10_Line,
            V11_Line,
            V12_Line,
            V13_Line,
            V14_Line,
            V15_Line,
            V16_Line,
            V17_Line,
            V1_Line,
            V17_Line,
            V18_Line,
            V19_Line,
            V20_Line
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

            AEG_WindowSideRect,
            AEG_WindowSideStruct,

            AEG_VideoButton,
            AEG_ExitButton,

            AEG_ConnectButton,
            AEG_DisconnectButton,

            D_Bere_Rect,
            D_Cher_Rect,
            D_SZag_Rect,
            D_Soln_Rect,
            D_Zele_Rect,
            P_Cher_Rect,
            P_Elek_Rect,
            T_Cher_1_Rect,
            T_Elek_1_Rect,
            T_Elek_2_Rect,
            D_Elek_Rect,
            T_SZag_1_Rect,
            T_SZag_2_Rect,
            T_SZag_3_Rect,
            T_Zele_1_Rect,
            T_Zele_2_Rect,

            D_Bere_Active,
            D_Cher_Active,
            D_SZag_Active,
            D_Soln_Active,
            D_Zele_Active,
            P_Cher_Active,
            P_Elek_Active,
            T_Cher_1_Active,
            T_Elek_1_Active,
            T_Elek_2_Active,
            D_Elek_Active,
            T_SZag_1_Active,
            T_SZag_2_Active,
            T_SZag_3_Active,
            T_Zele_1_Active,
            T_Zele_2_Active,

            Poles_Bere_Picture,
            Poles_Cher_Picture,
            Poles_Elek_Picture,
            Poles_Soln_Picture,
            Poles_SZag_Picture,
            Poles_Zele_Picture
    };

// BACKGROUND CONTROL CLASSES //

    // Window Background

    class AEG_WindowBackground_Rect : AEG_StaticRect
    {

            x = (safeZoneX + (safeZoneW * 0.0));
            y = (safeZoneY + (safeZoneH * 0.00)); 
            w = (safeZoneW * 1);
            h = (safeZoneH * 1);
            colorBackground[] = AEG_COLOR_BLACK;
    };

    // Frames

    class S_Bere_Frame : AEG_Frame
    {

            x = (safeZoneX + (safeZoneW * 0.6));
            y = (safeZoneY + (safeZoneH * 0.1)); 
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.1);
            text = "Bere";
    };

    class S_Cher_Frame : AEG_Frame
    {

            x = (safeZoneX + (safeZoneW * 0.225));
            y = (safeZoneY + (safeZoneH * 0.65)); 
            w = (safeZoneW * 0.075);
            h = (safeZoneH * .10);
            text = "Cher";

    };

    class S_Soln_Frame : AEG_Frame
    {
            x = (safeZoneX + (safeZoneW * 0.60));
            y = (safeZoneY + (safeZoneH * 0.45));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.10);
            text = "Soln";
    };

    class S_SZag_Frame : AEG_Frame
    {
            x = (safeZoneX + (safeZoneW * 0.02375));
            y = (safeZoneY + (safeZoneH * 0.375));
            w = (safeZoneW * 0.175);
            h = (safeZoneH * 0.2);
            text = "Regional Sub";
    };

    class S_Zele_Frame : AEG_Frame
    {
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.10));
            w = (safeZoneW * 0.175);
            h = (safeZoneH * 0.2);
            text = "Zelenogorsk Sub";
    };

    class P_Cher_Frame : AEG_Frame
    {
            x = (safeZoneX + (safeZoneW * 0.02625));
            y = (safeZoneY + (safeZoneH * 0.6500));
            w = (safeZoneW * 0.175);
            h = (safeZoneH * 0.225);
            text = "Chernogorsk Plant";
    };

    class P_Elek_Frame : AEG_Frame
    {
            x = (safeZoneX + (safeZoneW * 0.4));
            y = (safeZoneY + (safeZoneH * 0.65003));
            w = (safeZoneW * 0.275);
            h = (safeZoneH * 0.225);
            text = "Elektrozavodsk Plant";
    };

    // Horizontal Lines

    class H1_LINE : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.0625));
            y = (safeZoneY + (safeZoneH * 0.075));
            w = (safeZoneW * 0.577);
    };

    class H2_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1));
            y = (safeZoneY + (safeZoneH * 0.160));
            w = (safeZoneW * 0.062);
    };

    class H3_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1));
            y = (safeZoneY + (safeZoneH * 0.26));
            w = (safeZoneW * 0.025);
    };

    class H4_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.325));
            w = (safeZoneW * 0.375);
    };

    class H5_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.35));
            w = (safeZoneW * 0.275);
    };

    class H6_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1));
            y = (safeZoneY + (safeZoneH * 0.437));
            w = (safeZoneW * 0.025);
    };

    class H7_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.6125));
            w = (safeZoneW * 0.1);
    };

    class H8_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1));
            y = (safeZoneY + (safeZoneH * 0.7125));
            w = (safeZoneW * 0.125);
    };

    class H9_Line : AEG_H_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1));
            y = (safeZoneY + (safeZoneH * 0.537));
            w = (safeZoneW * 0.025);
    };

    // Vertical Lines

    class V1_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.0625));
            y = (safeZoneY + (safeZoneH * 0.075));
            h = (safeZoneH * 0.05);
    };

    class V2_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.6375));
            y = (safeZoneY + (safeZoneH * 0.075));
            h = (safeZoneH * 0.05003);
    };

    class V3_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.1625));
            h = (safeZoneH * 0.065);
    };

    class V4_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.3));
            h = (safeZoneH * 0.025);
    };

    class V5_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.35));
            h = (safeZoneH * 0.05);
    };

    class V6_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.4375));
            y = (safeZoneY + (safeZoneH * 0.35));
            h = (safeZoneH * 0.3);
    };

    class V7_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.5375));
            y = (safeZoneY + (safeZoneH * 0.325));
            h = (safeZoneH * 0.325);
    };

    class V8_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.6375));
            y = (safeZoneY + (safeZoneH * 0.2));
            h = (safeZoneH * 0.25);
    };

    class V9_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.6375));
            y = (safeZoneY + (safeZoneH * 0.55));
            h = (safeZoneH * 0.1);
    };

    class V10_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.0625));
            y = (safeZoneY + (safeZoneH * 0.2));
            h = (safeZoneH * 0.037);
    };

    class V11_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.0625));
            y = (safeZoneY + (safeZoneH * 0.3));
            h = (safeZoneH * 0.075);
    };

    class V12_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.0625));
            y = (safeZoneY + (safeZoneH * 0.475));
            h = (safeZoneH * 0.037);
    };

    class V13_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.475));
            h = (safeZoneH * 0.037);
    };

    class V14_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.0625));
            y = (safeZoneY + (safeZoneH * 0.575));
            h = (safeZoneH * 0.075);
    };

    class V15_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.1625));
            y = (safeZoneY + (safeZoneH * 0.575));
            h = (safeZoneH * 0.038);
    };

    class V16_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.06));
            y = (safeZoneY + (safeZoneH * 0.745));
            h = (safeZoneH * 0.037);
    };

    class V17_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.4375));
            y = (safeZoneY + (safeZoneH * 0.75));
            h = (safeZoneH * 0.03704);
    };

    class V18_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.5375));
            y = (safeZoneY + (safeZoneH * 0.75));
            h = (safeZoneH * 0.037);
    };

    class V19_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.6375));
            y = (safeZoneY + (safeZoneH * 0.75));
            h = (safeZoneH * 0.037);
    };

    class V20_Line : AEG_V_Line
    {
            x = (safeZoneX + (safeZoneW * 0.2625));
            y = (safeZoneY + (safeZoneH * 0.6125));
            h = (safeZoneH * 0.037);
    };


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
            idc = 20701;
            x = (safeZoneX + (safeZoneW * 0));
            y = (safeZoneY + (safeZoneH * 0.95));
            w = (safeZoneW * 1);
            h = (safeZoneH * 0.05);
            style = ST_LEFT;
    };

    class AEG_WindowSideRect : AEG_Window
    {
            x = (safeZoneX + (safeZoneW * 0.75));
            y = (safeZoneY + (safeZoneH * 0.05));
            w = (safeZoneW * 0.25);
            h = (safeZoneH * 0.90);
            colorBackground[] = AEG_COLOR_DKGRAY; 
    };

    class AEG_WindowSideStruct : AEG_StructText
    {

            idc = 20702;
            style = ST_LEFT + ST_MULTI; //  ST_CENTER
            x = (safeZoneX + (safeZoneW * 0.754));
            y = (safeZoneY + (safeZoneH * 0.054));
            w = (safeZoneW * 0.242);
            h = (safeZoneH * 0.590);
    };

    class AEG_WindowIconPicture : AEG_StaticPicture
    {
            style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
            x = (safeZoneX + (safeZoneW * 0.002));
            y = (safeZoneY + (safeZoneH * 0));
            w = (safeZoneW * 0.03);
            h = (safeZoneH * 0.05);
            text = "AEG\Textures\WindowIcon.paa";
    };

    class AEG_ConnectButton : AEG_Button
    {
            idc = 20703;
            sizeEx = 0.0225;
            colorText[] = AEG_COLOR_WHITE;
            colorFocused[] = AEG_COLOR_GREEN;   // border color for focused state
            colorBackground[] = AEG_COLOR_GREEN;
            colorBackgroundActive[] = AEG_COLOR_YELLOW;   // background color for active state
            x = (safeZoneX + (safeZoneW * 0.754));
            y = (safeZoneY + (safeZoneH * 0.65)); 
            w = (safeZoneW * 0.121);
            h = (safeZoneH * 0.05);
            text = "CONNECT";
            action = "";
    };

    class AEG_VideoButton : AEG_Button
    {
            sizeEx = 0.0225;
            colorText[] = AEG_COLOR_BLACK;
            colorFocused[] = AEG_COLOR_WHITE;   // border color for focused state
            colorBackground[] = AEG_COLOR_LTGRAY;
            colorBackgroundActive[] = AEG_COLOR_LTGRAY;   // background color for active state
            x = (safeZoneX + (safeZoneW * 0.754));
            y = (safeZoneY + (safeZoneH * 0.75)); 
            w = (safeZoneW * 0.242);
            h = (safeZoneH * 0.1);
            text = "SYSTEM VIDEO";
            action  = "_nul = execVM ""AEG\Scripts\AEG_video.sqf"";";
    };

    class AEG_ExitButton : AEG_Button
    {
            sizeEx = 0.0225;
            colorText[] = AEG_COLOR_RED;
            colorFocused[] = AEG_COLOR_RED;   // border color for focused state
            colorBackground[] = AEG_COLOR_LTGRAY;
            colorBackgroundActive[] = AEG_COLOR_LTGRAY;   // background color for active state
            x = (safeZoneX + (safeZoneW * 0.754));
            y = (safeZoneY + (safeZoneH * 0.89)); 
            w = (safeZoneW * 0.242);
            h = (safeZoneH * 0.05);
            action = "closeDialog 0;";
            text = "EXIT";
    };

    class AEG_DisconnectButton : AEG_Button
    {
            idc = 20704;
            sizeEx = 0.0225;
            colorText[] = AEG_COLOR_WHITE;
            colorFocused[] = AEG_COLOR_RED;   // border color for focused state
            colorBackground[] = AEG_COLOR_RED;
            colorBackgroundActive[] = AEG_COLOR_YELLOW;   // background color for active state
            x = (safeZoneX + (safeZoneW * 0.875));
            y = (safeZoneY + (safeZoneH * 0.65)); 
            w = (safeZoneW * 0.121);
            h = (safeZoneH * 0.05);
            text = "DISCONNECT";
            action = "";
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
            action = "closeDialog 0;";
            text = "   ";
    };

    // BUS RECTANGLES

// Distro Buses

    class D_Bere_Rect : AEG_Rect
    {
            idc = 20710;
            x = (safeZoneX + (safeZoneW * 0.6));
            y = (safeZoneY + (safeZoneH * 0.12502));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class D_Cher_Rect : AEG_Rect
    {
            idc = 20711;
            x = (safeZoneX + (safeZoneW * 0.225));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class D_SZag_Rect : AEG_Rect
    {
            idc = 20712;
            x = (safeZoneX + (safeZoneW * 0.125));
            y = (safeZoneY + (safeZoneH * 0.50006));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class D_Soln_Rect : AEG_Rect
    {
            idc = 20713;
            x = (safeZoneX + (safeZoneW * 0.6));
            y = (safeZoneY + (safeZoneH * 0.47498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class D_Zele_Rect : AEG_Rect
    {
            idc = 20714;
            x = (safeZoneX + (safeZoneW * 0.125));
            y = (safeZoneY + (safeZoneH * 0.22495));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    // Plant Buses

    class P_Cher_Rect : AEG_Rect
    {
            idc = 20715;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.77505));
            w = (safeZoneW * 0.175);
            h = (safeZoneH * 0.1);
    };

    class P_Elek_Rect : AEG_Rect
    {
            idc = 20716;
            x = (safeZoneX + (safeZoneW * 0.4));
            y = (safeZoneY + (safeZoneH * 0.77505));
            w = (safeZoneW * 0.275);
            h = (safeZoneH * 0.1);
    };

    // Transmission Buses

    class T_Cher_1_Rect : AEG_Rect
    {
            idc = 20717;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class T_Elek_1_Rect : AEG_Rect
    {
            idc = 20718;
            x = (safeZoneX + (safeZoneW * 0.4));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class T_Elek_2_Rect : AEG_Rect
    {
            idc = 20719;
            x = (safeZoneX + (safeZoneW * 0.5));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class D_Elek_Rect : AEG_Rect
    {
            idc = 20720;
            x = (safeZoneX + (safeZoneW * 0.6));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class T_SZag_1_Rect : AEG_Rect
    {
            idc = 20721;
            x = (safeZoneX + (safeZoneW * 0.125));
            y = (safeZoneY + (safeZoneH * 0.4));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class T_SZag_2_Rect : AEG_Rect
    {
            idc = 20722;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.50201));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    class T_SZag_3_Rect : AEG_Rect
    {
            idc = 20723;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.4));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.074);
    };

            class T_Zele_1_Rect : AEG_Rect
    {
            idc = 20724;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.225));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
};

    class T_Zele_2_Rect : AEG_Rect
    {
            idc = 20725;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.125));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
    };

    // BUS ACTIVE TEXTS

// Distro Actives

    class D_Bere_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.6));
            y = (safeZoneY + (safeZoneH * 0.12502));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "D_Bere";
            action = "[""D_Bere""] call AEG_fnc_commands;";
    };

    class D_Cher_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.225));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "D_Cher";
            action = "[""D_Cher""] call AEG_fnc_commands;";
    };

    class D_SZag_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.125));
            y = (safeZoneY + (safeZoneH * 0.50006));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "D_SZag";
            action = "[""D_SZag""] call AEG_fnc_commands;";
    };

    class D_Soln_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.6));
            y = (safeZoneY + (safeZoneH * 0.47498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "D_Soln";
            action = "[""D_Soln""] call AEG_fnc_commands;";
    };

    class D_Zele_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.125));
            y = (safeZoneY + (safeZoneH * 0.22495));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "D_Zele";
            action = "[""D_Zele""] call AEG_fnc_commands;";
    };

    // Plant Actives

    class P_Cher_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.77505));
            w = (safeZoneW * 0.175);
            h = (safeZoneH * 0.1);
            text = "P_Cher";
            action = "[""P_Cher""] call AEG_fnc_commands;";
    };

    class P_Elek_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.4));
            y = (safeZoneY + (safeZoneH * 0.77505));
            w = (safeZoneW * 0.275);
            h = (safeZoneH * 0.1);
            text = "P_Elek";
            action = "[""P_Elek""] call AEG_fnc_commands;";
    };

    // Transmission Actives

    class T_Cher_1_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "T_Cher_1";
            action = "[""T_Cher_1""] call AEG_fnc_commands;";
    };

    class T_Elek_1_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.4));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "T_Elek_1";
            action = "[""T_Elek_1""] call AEG_fnc_commands;";
    };

    class T_Elek_2_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.5));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "T_Elek_2";
            action = "[""T_Elek_2""] call AEG_fnc_commands;";
    };

    class D_Elek_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.6));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "D_Elek";
            action = "[""D_Elek""] call AEG_fnc_commands;";
    };

    class T_SZag_1_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.125));
            y = (safeZoneY + (safeZoneH * 0.4));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "T_SZag_1";
            action = "[""T_SZag_1""] call AEG_fnc_commands;";
    };

    class T_SZag_2_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.50201));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "T_SZag_2";
            action = "[""T_SZag_2""] call AEG_fnc_commands;";
    };

    class T_SZag_3_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.4));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.074);
            text = "T_SZag_3";
            action = "[""T_SZag_3""] call AEG_fnc_commands;";
    };

            class T_Zele_1_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.22495));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "T_Zele_1";
            action = "[""T_Zele_1""] call AEG_fnc_commands;";
};

    class T_Zele_2_Active : AEG_Active
    {
            idc = -1;
            x = (safeZoneX + (safeZoneW * 0.025));
            y = (safeZoneY + (safeZoneH * 0.12502));
            w = (safeZoneW * 0.075);
            h = (safeZoneH * 0.075);
            text = "T_Zele_2";
            action = "[""T_Zele_2""] call AEG_fnc_commands;";
    };

    // Pole Pictures 

    class Poles_Bere_Picture : AEG_Poles
    {
            x = (safeZoneX + (safeZoneW * 0.675));
            y = (safeZoneY + (safeZoneH * 0.12502));
            w = (safeZoneW * 0.05);
            h = (safeZoneH * 0.075);
    };

    class Poles_Cher_Picture : AEG_Poles
    {
            x = (safeZoneX + (safeZoneW * 0.3));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.05);
            h = (safeZoneH * 0.075);
    };

    class Poles_Elek_Picture : AEG_Poles
    {
            x = (safeZoneX + (safeZoneW * 0.675));
            y = (safeZoneY + (safeZoneH * 0.67498));
            w = (safeZoneW * 0.05);
            h = (safeZoneH * 0.075);
    };

    class Poles_Soln_Picture : AEG_Poles
    {
            x = (safeZoneX + (safeZoneW * 0.675));
            y = (safeZoneY + (safeZoneH * 0.47498));
            w = (safeZoneW * 0.05);
            h = (safeZoneH * 0.075);
    };

    class Poles_SZag_Picture : AEG_Poles
    {
            x = (safeZoneX + (safeZoneW * 0.2));
            y = (safeZoneY + (safeZoneH * 0.50006));
            w = (safeZoneW * 0.05);
            h = (safeZoneH * 0.075);
    };

    class Poles_Zele_Picture : AEG_Poles
    {
            x = (safeZoneX + (safeZoneW * 0.2));
            y = (safeZoneY + (safeZoneH * 0.22495));
            w = (safeZoneW * 0.05);
            h = (safeZoneH * 0.075);
    };
};