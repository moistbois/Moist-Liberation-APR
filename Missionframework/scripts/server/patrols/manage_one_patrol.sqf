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

	private _despawnDistance = 1500;

	private _minDistanceToSector = 500;
	private _maxDistanceToSector = 2000;
	private _minDistanceToBluforUnits = 750;
	private _minDistanceToBluforSector = 1000;

	/*
    Find a patrol spawn point:
    - Between _minDistanceToSector and _maxDistanceToSector from active enemy sector
    - At least _minDistanceToBluforUnits from any BLUFOR unit
    - At least _minDistanceToBluforSector from any BLUFOR sector
	*/

	for "_i" from 1 to 25 do {

		private _distanceToSector =
			_minDistanceToSector +
			random (_maxDistanceToSector - _minDistanceToSector);

		private _candidate = _sectorPos getPos [
			_distanceToSector,
			random 360
		];

		private _nearbyBluforUnits = [
			_candidate,
			_minDistanceToBluforUnits,
			KPLIB_side_player
		] call KPLIB_fnc_getUnitsCount;

		private _tooCloseToBluforSector = false;

		{
			if (_candidate distance2D (markerPos _x) < _minDistanceToBluforSector) exitWith {
				_tooCloseToBluforSector = true;
			};
		} forEach KPLIB_sectors_player;

		if ((_nearbyBluforUnits == 0) && {!_tooCloseToBluforSector}) exitWith {

			private _roads = _candidate nearRoads 200;

			if !(_roads isEqualTo []) then {
				_sector_spawn_pos = getPosATL (selectRandom _roads);
			} else {
				_sector_spawn_pos = _candidate;
			};

		};
	};


    if (_is_infantry) then {
        _grp = createGroup [KPLIB_side_enemy, true];
        _squad = [] call KPLIB_fnc_getSquadComp;
        {
            [_x, _sector_spawn_pos, _grp, "PRIVATE", 0.5] call KPLIB_fnc_createManagedUnit;
        } foreach _squad;
    } else {

        private ["_vehicle_object", "_classname", "_spawnposVeh", "_crewmens"];

        if ((KPLIB_enemyReadiness > 65) && ((random 100) > 85) && !(KPLIB_o_helicopters isEqualTo [])) then {
            _classname = selectRandom KPLIB_o_helicopters;
        } else {
            _classname = [] call KPLIB_fnc_getAdaptiveVehicle;
        };

        // Try several attempts to find a clearer spawn position (higher min clearance first)
        _spawnposVeh = [];
        private _clearAttempts = [30, 20, 10, 5];
        private _i = 0;
        while {_i < (count _clearAttempts)} do {
            private _minClear = _clearAttempts select _i;
            private _tryPos = (_sector_spawn_pos getPos [random 150, random 360]) findEmptyPosition [_minClear, 150, _classname];
            if (!(_tryPos isEqualTo [])) exitWith { _spawnposVeh = _tryPos; };
            _i = _i + 1;
        };

        if (_spawnposVeh isEqualTo []) then {
            // fallback to default spawn behaviour
            _vehicle_object = [_sector_spawn_pos, _classname] call KPLIB_fnc_spawnVehicle;
        } else {
            _vehicle_object = [_spawnposVeh, _classname, true] call KPLIB_fnc_spawnVehicle;
        };

        sleep 0.5;
        _crewmens = (crew _vehicle_object);
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
        if ( ({alive _x} count units _grp) == 0 ) then {
            _patrol_continue = false;
        } else {
            if ( time - _started_time > 900 ) then {
                if ( [ getpos (leader _grp) , _despawnDistance , KPLIB_side_player ] call KPLIB_fnc_getUnitsCount == 0 ) then {
                    _patrol_continue = false;
                    {
                        if ( vehicle _x != _x ) then {
                            [(vehicle _x)] call KPLIB_fnc_cleanOpforVehicle;
                        };
                        deleteVehicle _x;
                    } foreach (units _grp);
					deleteGroup _grp;
                };
            };
        };
    };

    if ( !([] call KPLIB_fnc_isCapitalActive) ) then {
        sleep (600.0 / KPLIB_param_difficulty);
    };

};
