0 spawn {
    waitUntil {time > 1 && !isNull player && !isNull (findDisplay 46)};
    private _teamspeakServer = "sirkku.pw";
    private _teamspeakChannel = "TaskForceRadio";
    private _timeout = 120;
    
    if (!(isClass (configFile >> "CfgPatches" >> "task_force_radio"))) exitWith {systemChat "You are missing TFAR. Goodbye!"; sleep 2; endMission "end2"};
    while {call TFAR_fnc_getTeamSpeakServerName isNotEqualTo _teamspeakServer} do {
        systemChat format ["Can't connect to TeamSpeak!"];
        if (time > _timeOut) exitWith {};
        sleep(4);
    };
    while {call TFAR_fnc_getTeamSpeakChannelName isNotEqualTo _teamspeakChannel} do {
        systemChat format ["Wrong TeamSpeak channel. TFAR isn't configured correctly."];
        if (time > _timeOut) exitWith {};
        sleep 4;
    };
    if (time > _timeOut) exitWith {systemChat "TeamSpeak Timeout. Check your connection."; sleep 2; endMission "end2";};
    systemChat "Established connection to TeamSpeak!";
};