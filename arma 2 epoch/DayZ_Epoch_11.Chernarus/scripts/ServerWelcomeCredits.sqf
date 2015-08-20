// FILENAME: server_WelcomeCredits.sqf
// SCRIPT NAME: Server Intro Credits Script by IT07
// SCRIPT VERSION: v1.3.7 BETA
// Credits for original script: Bohemia Interactive http://bistudio.com
_onScreenTime = 8; //how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role
waitUntil {!isNil "dayz_animalCheck"};
sleep 30; //Wait in seconds before the credits start after player IS ingame
_role1 = "Welcome to";
_role1names = ["CRFT Gaming's Epoch Chernarus Server","PVE Only"];
_role2 = "Admins";
_role2names = ["Rad","Casey","Flamez","Tiadashi","Trobzing"];
_role3 = "RULES/HELP";
_role3names = ["NO PVP","NO BASE RAIDING","NO STEALING VEHICLES FROM BASES"];
_role4 = "Server Mods - #1"; 
_role4names = ["press F10 to toggle debugmonitor","Press M For Map","F9 For Group Management"];
_role5 = "Server Mods - #2";
_role5names = ["Fast trade","Walking/Running Zombies","Walk Amongst The Dead"];
_role6 = "Server Mods - #3";
_role6names = ["Roaming Helis","DZAI","WAI","DZMS","AI Vehicle And Motorbike Partols"];
_role7 = "Server Mods - #4";
_role7names = ["Burn Tents", "Drink Water", "Fast Roping", "Build Snap Pro", "Heli Lift", "Towing"];
_role8 = "Server Mods - #5";
_role8names = ["CAGN Safezones","Animated Heli Crashes","Bank Robbery","Auto Refuel"];
_role9 = "Server Mods - #6";
_role9names = ["Mv22 Working Ramp","Animated SUV Turrent","Gems at traders","Arrest Player"];
_role10 = "Server Mods - #7";
_role10names = ["Street Lights","House Lights","Tower Lights","Animated AN2 crashes","AN2 carepackage drops"];
_role11 = "Server Mods - #8";
_role11names =["Harvest Hemp","Deploy Bike"];
_role12 = "Server Info";
_role12names = ["CRFTGaming.com","TS:192.111.144.6"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#31C300' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names],
[_role12, _role12names],
[_role13, _role13names]//make SURE the last one here does NOT have a , at the end
];