/*
	@file Version: 1D
	@file name: onRespawn.sqf
	@file Author: TAW_Tonic
	@file edit: 4/16/2012
	@file description: When player fires this checks to see if they're near a gun store.
*/
if(!local player) exitwith {};
if(isNil {gsFire}) then {gsFire = 1};
	{
		_distance = (getMarkerPos _x) distance player;
		if(_distance < 200) then {
		if(gsFire == 2) then {removeAllWeapons player};
		if(gsFire == 3) then {endMission "LOSER"};
			hint format["You are firing 200m of a gun store. Keep this up and you'll be removed.\n\n %1/3 Attempts", gsFire];
			gsFire = gsFire + 1;
		};
	} foreach ["gunshop_m","gunshop_m_2","gunshop_m_3","gunshop_m_4"];