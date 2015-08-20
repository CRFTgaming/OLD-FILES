// File: AEG_Logon.hpp
// Version: 1.01
// Author: Loyalguard
// Description: Define dialog classes and related controls for the grid control sytsem logon dialog.

class AEG_Logon
{
    idd = 20900;
    movingEnable = false;

    controlsBackground[] = 
    {
        AEG_WindowBackground_Rect,
        AEG_Popup,
        AEG_PasswordRect
    };

    objects[] = { };

    controls[] = 
    {
        AEG_WindowHeaderRect,
        AEG_WindowHeaderText,
        AEG_WindowIconPicture,
        AEG_PasswordInput,
        AEG_IncorrectText,
        AEG_PasswordLabel,
        AEG_OKButton,
        AEG_CancelButton
    };

    // BACKGROUND CONTROL CLASSES //

    class AEG_WindowBackground_Rect : AEG_StaticRect
    {

        x = (safeZoneX + (safeZoneW * 0.0));
        y = (safeZoneY + (safeZoneH * 0.00)); 
        w = (safeZoneW * 1);
        h = (safeZoneH * 1);
        colorBackground[] = AEG_COLOR_BLACK;
    };

    class AEG_Popup : AEG_Window
    {
        x = (safeZoneX + (safeZoneW * 0.275));
        y = (safeZoneY + (safeZoneH * 0.3));
        w = (safeZoneW * 0.4);
        h = (safeZoneH * 0.25);
        colorBackground[] = AEG_COLOR_LTGRAY;
    };

     class AEG_PasswordRect : AEG_StaticRect
    {
        x = (safeZoneX + (safeZoneW * 0.425));
        y = (safeZoneY + (safeZoneH * 0.425));
        w = (safeZoneW * 0.2);
        h = (safeZoneH * 0.04);
        colorBackground[] = AEG_COLOR_WHITE;
    };

    // CONTROL CLASSES //

    // GUI Window Controls

    class AEG_WindowHeaderRect : AEG_Window
    {
        x = (safeZoneX + (safeZoneW * 0.275));
        y = (safeZoneY + (safeZoneH * 0.3));
        w = (safeZoneW * 0.4);
        h = (safeZoneH * 0.05);
        colorBackground[] = AEG_COLOR_BLUE;
    };

    class AEG_WindowHeaderText : AEG_Window
    {
        x = (safeZoneX + (safeZoneW * 0.3125));
        y = (safeZoneY + (safeZoneH * 0.3));
        w = (safeZoneW * 0.372);
        h = (safeZoneH * 0.05);
        style = ST_LEFT;		
        colorText[] = AEG_COLOR_WHITE;
        colorBackground[] = AEG_COLOR_CLEAR;
        text = "Chernarus Electrical Grid Remote Access Logon";
    };

    class AEG_WindowIconPicture : AEG_StaticPicture
    {
        style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
        x = (safeZoneX + (safeZoneW * 0.277));
        y = (safeZoneY + (safeZoneH * 0.3));
        w = (safeZoneW * 0.03);
        h = (safeZoneH * 0.05);
        text = "AEG\Textures\WindowIcon.paa";
    };

     class AEG_PasswordInput : AEG_EditText
    {
        idc = 20901;
        x = (safeZoneX + (safeZoneW * 0.425));
        y = (safeZoneY + (safeZoneH * 0.425));
        w = (safeZoneW * 0.2);
        h = (safeZoneH * 0.04);
    };

    class AEG_IncorrectText : AEG_StaticText
    {
        idc = 20902;
        x = (safeZoneX + (safeZoneW * 0.325));
        y = (safeZoneY + (safeZoneH * 0.375));
        w = (safeZoneW * 0.3);
        h = (safeZoneH * 0.04);
        colorText[] = AEG_COLOR_RED;
        colorBackground[] = AEG_COLOR_CLEAR;
    };

    class AEG_PasswordLabel : AEG_StaticText
    {
        x = (safeZoneX + (safeZoneW * 0.325));
        y = (safeZoneY + (safeZoneH * 0.425));
        w = (safeZoneW * 0.1);
        h = (safeZoneH * 0.04);
        colorBackground[] = AEG_COLOR_CLEAR;
        text = "Password:";
    };

    class AEG_OKButton : AEG_Button
    {
        x = (safeZoneX + (safeZoneW * 0.325));
        y = (safeZoneY + (safeZoneH * 0.475));
        w = (safeZoneW * 0.125);
        h = (safeZoneH * 0.05);
        text = "OK";
        action = "call AEG_fnc_password";
        default = true;
    };

    class AEG_CancelButton : AEG_Button
    {
        x = (safeZoneX + (safeZoneW * 0.5));
        y = (safeZoneY + (safeZoneH * 0.475));
        w = (safeZoneW * 0.125);
        h = (safeZoneH * 0.05);
        text = "CANCEL";
        action = "closeDialog 20900;";
    };
};