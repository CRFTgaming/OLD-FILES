// File: AEG_Constants.hpp
// Version: 1.01
// Author: Loyalguard
// Description: Define constants for all AEG Dialogs.  Included from within AEG_Dialogs.hpp.

// CONSTANTS

// Control types

#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUT_BUTTON  16 
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_List_N_Box       102

// Static styles

#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c
#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176
#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles

#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400
#define SL_TEXTURES       0x10

// Listbox styles

#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Fonts

#define FontM             "Zeppelin32"

// AEG Colors

#define AEG_COLOR_CLEAR {0,0,0,0}

#define AEG_COLOR_BLACK {0,0,0,1}
#define AEG_COLOR_WHITE {1,1,1,1}

#define AEG_COLOR_RED {1,0,0,1}
#define AEG_COLOR_GREEN {0,1,0,1}
#define AEG_COLOR_BLUE {0,0,1,1}

#define AEG_COLOR_YELLOW {1,1,0,1}
#define AEG_COLOR_MAGENTA {1,0,1,1}
#define AEG_COLOR_CYAN {0,1,1,1}

#define AEG_COLOR_MAROON {0.5,0,0,1}
#define AEG_COLOR_DARKGREEN {0,0.5,0,1}
#define AEG_COLOR_NAVY {0,0,0.5,1}

#define AEG_COLOR_OLIVE {0.5,0.5,0,1}
#define AEG_COLOR_PURPLE {0.5,0,0.5,1}
#define AEG_COLOR_TEAL {0,0.5,0.5,1}

#define AEG_COLOR_GRAY {0.5,0.5,0.5,1}
#define AEG_COLOR_SILVER {0.75,0.75,0.75,1}
#define AEG_COLOR_LTGRAY {0.75,0.75,0.75,1}
#define AEG_COLOR_DKGRAY {0.5,0.5,0.5,1}
