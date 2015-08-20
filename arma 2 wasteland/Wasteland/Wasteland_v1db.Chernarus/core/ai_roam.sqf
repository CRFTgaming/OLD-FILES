/*
	@file Version: 1D
	@file name: core\ai_roam.sqf
	@file Author: TAW_Tonic
	@file edit: 9/28/2012
	@file description: initiates random AI to come attack the target
*/
sleep 30; //Let's put it to sleep for an extra 30 seconds
private["_target","_aiArray","_group","_temp","_spawnPos","_targets","_randTime","_startTime","_accur","_bool"];
waitUntil {!isNil {SHK_pos}};

_totalAI = {!isPlayer _x && side _x == resistance;} count allUnits; //fetch AI Count
if(_totalAI < 60) then
{
_randTime = [2000,700] call fnc_hTime;

_players = [];
{
	if(isPlayer _x) then
	{
		_players set[count _players,_x];
	};
} foreach playableUnits;

_targets = _players call BIS_fnc_selectRandom;
_target = vehicle _targets;

diag_log format["Server: AI have been spawned. POS: %1",_spawnPos];

//Our array of spawnable AI
_aiArray = ["GUE_Soldier_CO","GUE_Soldier_GL","GUE_Soldier_AT","GUE_Soldier_AR","GUE_Soldier_2","GUE_Soldier_1"];

_group = createGroup resistance;
_spawnPos = [getPos _target,random 360,[2000,2500],false,1] call SHK_pos;

while {(typeName _spawnPos) != "ARRAY"} do
{
	_spawnPos = [getPos _target,random 360,[1000,2000],false,2] call SHK_pos;
};
//Let's create our squad
{
	_temp = _group createunit [_x,_spawnPos, [], 0, "Form"];
	_accur = random 3;
	_temp setUnitRecoilCoefficient _accur;
	[_temp] spawn waste_ai_fnc;
} foreach _aiArray;

while {(count units _group) >=1} do
{
	if((!alive _target) OR (isNull (_target))) then
	{
	//Search for new target, if no actual player within 400m lets destroy this group
		_target = ObjNull;
		_targets = leader(_group) nearEntities ["Man", 1500];
		{
			if((isPlayer _x) AND (alive _x) AND (!isNull _target)) then
			{
				if(isNull _target) then {_target = _x;};
			};
		} foreach _targets;

		if(isNull _target) then
		{
			{deleteVehicle _x;} foreach units _group;
		};	
	}
	else
	{
		_bool = false;
		
		{
			_distance = (getMarkerPos _x) distance player;
			if(_distance < 400) then {
				_bool = true;
			};
		} foreach ["gunshop_m","gunshop_m_2","gunshop_m_3","gunshop_m_4"];
		
		if(!_bool) then
		{
		
			if(leader(_group) distance _target > 450) then
			{
				_group setSpeedMode "NORMAL";
			} else
			{
				_group setSpeedMode "LIMITED";
			};

			if((leader(_group) knowsAbout _target) > 2.5) then
			{
				if(leader(_group) distance _target > 250) then
				{
					if(leader(_group) distance _target < 120) then { leader(_group) reveal _target;};
					_group move getPos _target;
				}
				else
				{
					{
						commandStop _x;
					} foreach units _group;
				};
			}
			else
			{
				if(leader(_group) distance _target < 120) then { leader(_group) reveal _target;};
				_group move getPos _target;
			};
		};
	};
	sleep 5;
};
};
if((count units _group) >=1) then
{
	{deleteVehicle _x;} foreach units _group;
};
deleteGroup _group;
_startTime = time;
waitUntil {(time - _startTime) > _randTime};

[] spawn waste_ai_roam;