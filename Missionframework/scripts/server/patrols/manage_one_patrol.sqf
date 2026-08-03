params [ "_minimum_readiness", "_is_infantry" ];
private [ "_headless_client", "_grp", "_squad"];

waitUntil { !isNil "KPLIB_sectors_player" };
waitUntil { !isNil "KPLIB_enemyReadiness" };

while { KPLIB_endgame == 0 } do {
    waitUntil { sleep 0.3; count KPLIB_sectors_player >= 3; };
    waitUntil { sleep 0.3; KPLIB_enemyReadiness >= (_minimum_readiness / KPLIB_param_difficulty); };

    sleep (random 30);

    while {  [] call KPLIB_fnc_getOpforCap > KPLIB_cap_patrol } do {
            sleep (random 30);
    };

    _grp = grpNull;

    private _activeEnemySectors =
        KPLIB_sectors_active select {
            !(_x in KPLIB_sectors_player)
        };

    if (_activeEnemySectors isEqualTo []) then {
        sleep 60;
        continue;
    };

    private _sector_spawn = selectRandom _activeEnemySectors;
    private _sectorPos = markerPos _sector_spawn;

    private _sector_spawn_pos = [];

    /*
        Find a patrol spawn point:
        - 300m to 1000m from the active sector
        - At least 500m from any BLUFOR unit
    */
    for "_i" from 1 to 25 do {

        private _candidate = _sectorPos getPos [
            300 + random 700,
            random 360
        ];

        if (
            ([_candidate, 750, KPLIB_side_player]
                call KPLIB_fnc_getUnitsCount) == 0
        ) exitWith {
            _sector_spawn_pos = _candidate;
        };
    };

    if (_sector_spawn_pos isEqualTo []) then {
        diag_log format [
            "PATROL DEBUG: No valid spawn position found near %1",
            _sector_spawn
        ];
        continue;
    };

    if (_is_infantry) then {
        _grp = createGroup [KPLIB_side_enemy, true];
        _squad = [] call KPLIB_fnc_getSquadComp;
        {
            [_x, _sector_spawn_pos, _grp, "PRIVATE", 0.5] call KPLIB_fnc_createManagedUnit;
        } foreach _squad;
    } else {

        private [ "_vehicle_object" ];
        if ((KPLIB_enemyReadiness > 75) && ((random 100) > 85) && !(KPLIB_o_helicopters isEqualTo [])) then {
            _vehicle_object = [_sector_spawn_pos, selectRandom KPLIB_o_helicopters] call KPLIB_fnc_spawnVehicle;
        } else {
            _vehicle_object = [_sector_spawn_pos, [] call KPLIB_fnc_getAdaptiveVehicle] call KPLIB_fnc_spawnVehicle;
        };

        sleep 0.5;
        private _crewmens = (crew _vehicle_object);
        // wait leader and he is alive in vehicle
        waitUntil {
            sleep 1;
            count _crewmens > 0
        };
        _grp = group (_crewmens select 0);
    };

    [_grp] remoteExec ["patrol_ai", 2];

    _started_time = time;
    _patrol_continue = true;

    if ( local _grp ) then {
        _headless_client = [] call KPLIB_fnc_getLessLoadedHC;
        if ( !isNull _headless_client ) then {
            _grp setGroupOwner ( owner _headless_client );
        };
    };

    while { _patrol_continue } do {
        sleep 60;
        if ( count (units _grp) == 0  ) then {
            _patrol_continue = false;
        } else {
            if ( time - _started_time > 900 ) then {
                if ( [ getpos (leader _grp) , 4000 , KPLIB_side_player ] call KPLIB_fnc_getUnitsCount == 0 ) then {
                    _patrol_continue = false;
                    {
                        if ( vehicle _x != _x ) then {
                            [(vehicle _x)] call KPLIB_fnc_cleanOpforVehicle;
                        };
                        deleteVehicle _x;
                    } foreach (units _grp);
                };
            };
        };
    };

    if ( !([] call KPLIB_fnc_isCapitalActive) ) then {
        sleep (600.0 / KPLIB_param_difficulty);
    };

};
