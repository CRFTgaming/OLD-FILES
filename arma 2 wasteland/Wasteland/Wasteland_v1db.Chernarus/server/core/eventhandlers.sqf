/*
 * Server Handlers
 */
if(X_Server) then
{
"AntiCheatVar" addPublicVariableEVentHandler{[(_this select 1)] call fnc_cheat_report;};
};