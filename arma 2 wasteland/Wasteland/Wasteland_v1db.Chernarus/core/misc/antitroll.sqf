/*
	Anti-Teleport
*/

private["_pid","_uid","_lastKnown","_isveh","_dis"];

_lastKnown = getPos vehicle player;

while{true} do
{
	sleep 0.5;
	if(alive player) then
	{
		if(!beacon_wait) then
		{
			if(((vehicle player) distance _lastKnown) > 250) then
			{
				vehicle player setPos _lastKnown;
				_dis = round((vehicle player) distance _lastKnown);
				if(vehicle player != player) then {_isveh = true;} else { _isveh = false;};
				AntiCheatVar = [name player, _uid,_dis,_isveh];
				publicVariableServer "AntiCheatVar";
			};
		}
		else
		{
			waitUntil {!beacon_wait};
		};
	}
	else
	{
		waitUntil {alive player};
	};
_lastKnown = getPos vehicle player;
};