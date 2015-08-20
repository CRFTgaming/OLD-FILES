/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Vehicular Manslaughter",6500]};
	case "187": {_type = ["Manslaughter",8500]};
	case "901": {_type = ["Escaping Jail",4500]};
	case "261": {_type = ["Rape",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",3000]};
	case "215": {_type = ["Attempted Auto Theft",2000]};
	case "213": {_type = ["Use of illegal explosives",10000]};
	case "211": {_type = ["Robbery",1000]};
	case "207": {_type = ["Kidnapping",3500]};
	case "207A": {_type = ["Attempted Kidnapping",2000]};
	case "487": {_type = ["Grand Theft",1500]};
	case "488": {_type = ["Petty Theft",700]};
	case "480": {_type = ["Hit and run",1300]};
	case "481": {_type = ["Drug Possession",1000]};
	case "482": {_type = ["Intent to distribute",5000]};
	case "483": {_type = ["Drug Trafficking",9500]};
	case "459": {_type = ["Burglary",6500]};
	case "919": {_type = ["Organ Dealing",20000]};
	
	case "1": {_type = ["Driving without a license",1500]};
    case "2": {_type = ["Attempted theft of civilian vehicle",3500]};
    case "3": {_type = ["Theft of civilian vehicle",5000]};
    case "4": {_type = ["Driving without lights",350]};
    case "5": {_type = ["Speeding",3500]};
    case "6": {_type = ["Dangerous driving",2500]};
    case "7": {_type = ["Attempted theft police vehicle",7500]};
    case "8": {_type = ["Theft of police vehicles",20000]};
    case "9": {_type = ["Landing in a no-fly zone",2500]};
    case "10": {_type = ["Driving illegal vehicles",10000]};
    case "11": {_type = ["Hit and run",5000]};
    case "12": {_type = ["Evading from police",7500]};
    case "13": {_type = ["Driving over another civilian",25000]};
    case "14": {_type = ["Illegal roadblocks",5000]};
    case "15": {_type = ["Resisting arrest",5000]};
    case "16": {_type = ["Trade in exotic goods",25000]};
    case "17": {_type = ["Insulting the authorities",2500]};
    case "18": {_type = ["Harassment to a police officer",8000]};
    case "19": {_type = ["Entering a restricted zone",5000]};
    case "20": {_type = ["Killing a police officer",25000]};
    case "21": {_type = ["Firing on police/officials/property",5000]};
    case "22": {_type = ["Destruction of police property",15000]};
    case "23": {_type = ["Illegal Contraband",12000]};
    case "24": {_type = ["Possession of firearms without a license",5000]};
    case "25": {_type = ["Carrying a weapon inside city limits",2500]};
    case "26": {_type = ["Possession of a illegal weapon",10000]};
    case "27": {_type = ["Use of firearms within cities",10000]};
    case "28": {_type = ["Holding a hostage",30000]};
    case "29": {_type = ["Attack on individuals/vehicles",10000]};
    case "30": {_type = ["Bank robbery",200000]};
    case "31": {_type = ["Murder",60000]};
    case "32": {_type = ["Rebellion",35000]};
    case "33": {_type = ["Disturbing the peace",1000]};
    case "34": {_type = ["Assault/siege of capital cities",25000]};
    case "35": {_type = ["Flying without a pilots license",1500]};
    case "36": {_type = ["Flying/hovering below 150m in city limits",2000]};
    case "37": {_type = ["Prison Break",25000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
    _data = life_wanted_list select _index;
    _crimes = _data select 2;
    _crimes pushBack (_type select 0);
    _val = _data select 3;
    life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
    else
{
    life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};