/*
	@file Version: 1D
	@file name: core\setJIP.sqf
	@file Author: TAW_Tonic
	@file edit: 10/24/2012
	@file description: Initiate JIP variables to check if a client is JIP or not, if so do some stuff set by parements i.e Side swampping, rejoining to regain food.
*/

waste_cooldown = 0;
sleep 10;
//JIP to disable exploiting
_name = name player;
_var = format["%1_JIP",_name];
_side = side player;
_index = [_var,waste_JIPLIST] call fnc_index;
if(_index != -1) then
{
	waste_water = 0;
	waste_carryW = 0;
	waste_rabit = 0;
	waste_money = 0;
	waste_canfood = 0;
	
	if(waste_cooldown == 0) then
	{
		_jipSide = (waste_JIPLIST select _index) select 1;
		
		//Debug hint
		//hint format["ORGINIAL SIDE: %1\nNEWSIDE: %2", _jipSide,_side];
		if(_side != _jipSide) then
		{
			_cd = (((waste_JIPLIST select _index) select 2) - time);
			//If cooldown time is less then 30 minutes end the mission for this player telling him to swap back to his original team.
			if(_cd < 1800) then
			{
				hint "You have joined another team within the last 30 minutes, this is restricted by the server host, please choose a slot on the side you previously were.";
				sleep 15;
				endMission "LOSER"
			} else
			{
				
				waste_JIPLIST set[_index,[_var,_side,time]];
				publicVariable "waste_JIPLIST";
			};
		};
	};
} else
{
	//Client Name, Side, Time when set (time when set used for cooldown between side swapping).
	waste_JIPLIST set[count waste_JIPLIST,[_var,_side,time]];
	publicVariable "waste_JIPLIST";
};

[str ("Wasteland - Survival") ,  str (format ["%1", name player]), str("New sandbox by Tonic")] spawn BIS_fnc_infoText;