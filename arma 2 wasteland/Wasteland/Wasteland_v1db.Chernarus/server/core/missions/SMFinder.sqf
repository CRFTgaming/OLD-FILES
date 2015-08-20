//By Craig
//Choses the next sidemission
if(!isServer) exitWith {};
private ["_numb","_element","_num","_firstRun"];

if(isNil {ReAccur}) then { ReAccur = ["SM4","SM6","SM7"];};
if(isNil {SMCarray}) then { SMCarray = [];};
if (count SMarray == 0) then
{
_element = ReAccur call BIS_fnc_selectRandom;
} else {
_numb = count SMarray;
_num = floor (random _numb);
_element = SMarray select _num;
_Earray = [_element];
};


[] execVM format ["server\core\missions\%1.sqf",_element];