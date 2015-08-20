/*
 *	General publicVariable event handlers
 */
"flareClient" addPublicVariableEventHandler{[(_this select 1)] execVM "core\flareMonitor.sqf"};
"AnimSync" addPublicVariableEventHandler{[(_this select 1)] execVM "core\animsync.sqf";}; //Animation Syncer
"wAction" addPublicVariableEventHandler{[(_this select 1)] call fnc_action;}; //Eventhandler for adding / removing actions, don't want to use remoteExecute

/*
 *	General purpose eventhandlers
 */
	player addMPEventHandler ["MPRespawn", {[_this] call onRespawn;}];
	player addMPEventHandler ["MPKilled", {[_this] call onKilled;}];
	player addEventHandler ["fired", {[_this] call onFired}];