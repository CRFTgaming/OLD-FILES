// File: AEG_ControlClasses.hpp
// Version: 1.01
// Author: Loyalguard
// Description: Define base controls for all AEG dialogs.  Included from within AEG_Dialogs.hpp.

// CONTROL CLASSES

// AEG Base Control Classes

class AEG_StaticText
{
   // COMMON
    idc = -1;
    moving  =  false;
    type = CT_STATIC;
    style = ST_CENTER; // ST_LEFT
    font = FontM;
    sizeEx = 0.025;
 
    x = 0.00;
    y = 0.00;
    w = 0.00; 
    h = 0.00;
    
    // CT_STATIC
    //lineSpacing = 0.00; // Only Req. for ST_MULTI/
    colorText[] = AEG_COLOR_BLACK;
    colorBackground[] = AEG_COLOR_WHITE;
    text = "";
};

class AEG_StaticFrame
{
   // COMMON
    idc = -1;
    moving  =  false;
    type = CT_STATIC;
    style = ST_FRAME;
    font = FontM;
    sizeEx = 0.025;
 
    x = 0.00;
    y = 0.00;
    w = 0.00; 
    h = 0.00;
    
    //CT_STATIC
    colorText[] = AEG_COLOR_WHITE;
    colorBackground[] = AEG_COLOR_DKGRAY;
    text = "";
};

class AEG_StaticRect
{
   // COMMON
    idc = -1;
    moving  =  false;
    type = CT_STATIC;
    style = ST_CENTER; // ST_LEFT
    font = FontM;
    sizeEx = 0.025;
 
    x = 0.00;
    y = 0.00;
    w = 0.00; 
    h = 0.00;
    
    // CT_STATIC
    colorText[] = AEG_COLOR_CLEAR;
    colorBackground[] = AEG_COLOR_CLEAR;
    text = "";
};

class AEG_StaticPicture
{
    // COMMON
    idc = -1;
    moving  =  false;
    type = CT_STATIC;
    style = ST_PICTURE;
    font = FontM;
    sizeEx = 0.025;
 
    x = 0.00;
    y = 0.00;
    w = 0.00; 
    h = 0.00;
 
    // CT_STATIC
    colorText[] = {};
    colorBackground[] = {};
    text = ""; // path\filename.paa
};

class AEG_StructText
{
    // COMMON
    idc = -1;
    moving  =  false;
    type = CT_STRUCTURED_TEXT;
    style = ST_LEFT; //  ST_CENTER
    //font = FontM;
    //sizeEx = 0.025;
  
    x = 0.1; 
    y = 0.1; 
    w = 0.3; 
    h = 0.1; 
  
    // CT_STRUCTURED_TEXT
    colorBackground[] = AEG_COLOR_WHITE; 
    colorText[] = AEG_COLOR_BLACK;
    size = 0.025;
    text = "";
    class Attributes 
    {
        font = FontM;
        color = "#000000";
        align = "left";
        valign = "top";
        shadow = false;
        shadowColor = "#ff0000";
        size = "1";
    };
};

class AEG_Button
{
    // COMMON
    idc = -1;
    moving  =  false;
    type = CT_BUTTON;
    style = ST_CENTER; //ST_LEFT
    font = FontM;
    sizeEx = 0.03;

    x = 0.0;
    y = 0.0;
    w = 0.0;
    h = 0.0;

    // CT_Button
    colorText[] = AEG_COLOR_BLACK;
    colorFocused[] = AEG_COLOR_WHITE;   // border color for focused state
    colorDisabled[] = { 0, 0, 1, 0.7 }; // Blue/30% Transparent  // text color for disabled state
    colorBackground[] = AEG_COLOR_LTGRAY;
    colorBackgroundDisabled[] = AEG_COLOR_LTGRAY;  // background color for disabled state
    colorBackgroundActive[] = AEG_COLOR_WHITE;   // background color for active state
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    colorShadow[] = { 0, 0, 0, 0.5 };
    colorBorder[] = { 0, 0, 0, 1 };
    borderSize = 0;
    soundEnter[] = { "", 0, 1 };  // no sound
    soundPush[] = { "", 0.1, 1 };  // no sound
    soundClick[] = { "", 0, 1 };  // no sound
    soundEscape[] = { "", 0, 1 };  // no sound
    text = "";
    action = "";
    default = false;
};

class AEG_ActiveText
{
    // COMMON
    idc = -1;
    moving  =  false;
    type = CT_ACTIVETEXT;
    style = ST_CENTER; //ST_LEFT
    font = FontM;
    sizeEx = 0.025;

    x = 0.00;
    y = 0.00;
    w = 0.00; 
    h = 0.00;

    // CT_ACTIVETEXT
    color[] = AEG_COLOR_WHITE;
    colorActive[] = { 1, 0.2, 0.2, 1 };
    soundEnter[] = { "", 0, 1 }; 
    soundPush[] = { "", 0, 1 };
    soundClick[] = { "", 0, 1 };
    soundEscape[] = { "", 0, 1 };
    action = "";
    text = "";
    default = false;
};

class AEG_EditText
{
     // COMMON
    idc = -1;
    moving  =  false;
    type = CT_EDIT;
    style = ST_LEFT;
    font = FontM;
    sizeEx = 0.025;

    x = 0.00;
    y = 0.00;
    w = 0.00; 
    h = 0.00;

    //CT_EDIT
    autocomplete = false;
    colorSelection[] = AEG_COLOR_DKGRAY;
    colorText[] = AEG_COLOR_BLACK;
    colorBackground[] = AEG_COLOR_WHITE;
    text = "";
};

//AEG Sub Classes

class AEG_Frame: AEG_StaticFrame
{
    colorBackground[] = AEG_COLOR_CLEAR;
};

class AEG_H_Line: AEG_StaticRect
{
    h = (safeZoneH * 0.001); 
    colorBackground[] = AEG_COLOR_CYAN;
};

class AEG_V_Line: AEG_StaticRect
{
    w = (safeZoneW * 0.001); 
    colorBackground[] = AEG_COLOR_CYAN;
};

class AEG_Window: AEG_StaticText
{
    colorText[] = AEG_COLOR_BLACK;
    colorBackground[] = AEG_COLOR_LTGRAY;
};

class AEG_Rect: AEG_StaticRect
{
    colorBackground[] = AEG_COLOR_BLACK;
};

class AEG_Active: AEG_ActiveText
{
    color[] = AEG_COLOR_WHITE;
    colorActive[] = AEG_COLOR_YELLOW;
};
	
class AEG_Poles : AEG_StaticPicture
{
    style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
    text = "AEG\Textures\Poles.paa";
};