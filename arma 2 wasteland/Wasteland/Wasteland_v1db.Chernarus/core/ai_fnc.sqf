/*
	@file Version: 1D
	@file name: core\ai_fnc.sqf
	@file Author: TAW_Tonic
	@file edit: 9/26/2012
	@file description: Custom AI functionality to tell the unit to target the given player within range regardless of their faction.
*/
private["_unit","_targets","_potentialTarget","_bool","_bool2"];
_unit = _this select 0;

while {alive _unit} do
{
		_bool2 = false;
		
		{
			_distance = (getMarkerPos _x) distance _unit;
			if(_distance < 350) then {
				_bool2 = true;
			};
		} foreach ["gunshop_m","gunshop_m_2","gunshop_m_3","gunshop_m_4"];
	
	if(!_bool2) then
	{
		_targets = _unit nearEntities ["Man", 200];
		_lastCheck = time;
		if(!isNil {_targets}) then
		{
			{
				_potentialTarget = _x;
				if(isPlayer vehicle _potentialTarget) then
				{
					_bool = lineIntersects [eyePos _unit, eyePos _potentialTarget,_unit,_potentialTarget];
					if((!_bool) && (side _potentialTarget == civilian) || (side _potentialTarget == resistance) && ((_unit knowsAbout (vehicle _potentialTarget)) > 1.5)) then
					{
						_unit doTarget vehicle _potientialTarget;
						_unit commandFire vehicle _potentialTarget;
						_unit doFire vehicle _potentialTarget;
					
						while {alive _potentialTarget AND alive _unit} do
						{
							_unit doFire vehicle _potentialTarget;
						};
					};
				};
			} foreach _targets;
		};
	};
	sleep 10;
};

