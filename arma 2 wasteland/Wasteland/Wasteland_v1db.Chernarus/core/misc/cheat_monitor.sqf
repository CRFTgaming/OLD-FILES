/*
 * Report the teleportation in the report log
 */
private["_name","_uid","_str","_nthis","_dis","_isveh"];
_nthis = (_this select 0);
_name = _nthis select 0;
_uid = _nthis select 1;
_dis = _nthis select 2;
_isveh = _nthis select 3;
_str = format["TP-LOG:%1:%2:%3:%4",_name,_uid,_dis,_isveh];
diag_log str(_str);