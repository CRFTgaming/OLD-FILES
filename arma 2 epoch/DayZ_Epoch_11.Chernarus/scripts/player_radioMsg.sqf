	

    //PLAYER RADIO WARNING 0.11a mmmyum - attempt 2
    /*
    //First we add a line to server_airraid.sqf to tell the clients what city the airraid will hit next
    /////ADD ONLY THIS LINE:
     
    AirraidPlayerMsg = _city; publicVariable "AirraidPlayerMsg";
     
    EVERYTHING ELSE GOES INTO A NEW SCRIPT (Below stuff)
     
    */    
     
    //Radio -- loop every two mins, check to see what will be bombed, and send a message
    //note that this will check for a new message every 2 mins
    private ["_playerRadio","_city","_lastCity"];
    _lastCity = "null";
    sleep 40;
    while {true} do {
                    _city = AirraidPlayerMsg;
                    _playerRadio = "ItemRadio" in items player;
            if (_playerRadio) then {
                            if (_city != _lastCity) then {
                    cuttext [format["RADIO:     ch-SOUND THE ALA--...... BOMBER STRI--...... OH GOD RUN"], "PLAIN DOWN"];
                    sleep 10;
                    cuttext [format["RADIO:     WARNING! AIRRAID in " + _city], "PLAIN DOWN"];
                    sleep 10;
                    cuttext [format["RADIO:     BOMBER INBOUND, EVACUATE!;"], "PLAIN DOWN"];
                            };
                    };
                    _lastCity = _city;
                    sleep 420;
    };

