/*
    Spawns BLUFOR defenders proactively when enemy units are approaching
    player-owned sectors. Mirrors OPFOR proximity checks so defenders
    arrive earlier and can despawn when the threat has passed.

    Behaviour:
    - Watches `KPLIB_sectors_player`.
    - If enemy units are detected within `KPLIB_range_sectorCapture * 8`, spawn
      a `KPLIB_b_squadInf` group and assign defense waypoints.
    - Track last enemy-seen time and despawn defenders after a grace period
      when enemies are gone.
*/

waitUntil { !isNil "KPLIB_sectors_player" };
waitUntil { !isNil "KPLIB_b_squadInf" };

// Map of [sector, group, lastEnemySeenTime]
if (isNil "KPLIB_sectors_blufor_defenders") then { KPLIB_sectors_blufor_defenders = []; publicVariable "KPLIB_sectors_blufor_defenders"; };
if (isNil "KPLIB_sector_liberation_times") then { KPLIB_sector_liberation_times = []; publicVariable "KPLIB_sector_liberation_times"; };

private _gracePeriod = 60; // seconds to wait after last enemy seen before despawning
private _scanSleep = 30; // how often to scan sectors
private _liberationHoldoff = 7200; // seconds to wait after a sector is liberated before spawning defenders

while { KPLIB_endgame == 0 } do {
    private _now = time;
    private _sectors = KPLIB_sectors_player;

    // remove stale defender entries if the group has no alive units
    private _validDefenders = [];
    {
        private _entry = _x;
        private _grp = _entry select 1;
        private _aliveUnits = if (isNull _grp) then { [] } else { (units _grp) select { alive _x } };
        if ((count _aliveUnits) > 0) then { _validDefenders pushBack _entry; };
    } forEach KPLIB_sectors_blufor_defenders;
    if ((count _validDefenders) != (count KPLIB_sectors_blufor_defenders)) then {
        KPLIB_sectors_blufor_defenders = _validDefenders;
        publicVariable "KPLIB_sectors_blufor_defenders";
    };

    {
        private _sector = _x;
        private _sectorPos = markerPos _sector;
        private _radius = KPLIB_range_sectorCapture * 2;
        private _enemyCount = [_sectorPos, _radius, KPLIB_side_enemy] call KPLIB_fnc_getUnitsCount;

        // find existing entry index
        private _foundIndex = -1;
        for "_i" from 0 to ((count KPLIB_sectors_blufor_defenders) - 1) do {
            if (((KPLIB_sectors_blufor_defenders select _i) select 0) == _sector) exitWith { _foundIndex = _i; };
        };

        if (_enemyCount > 0) then {
            if (_foundIndex == -1) then {
                private _libFoundIndex = -1;
                for "_j" from 0 to ((count KPLIB_sector_liberation_times) - 1) do {
                    if (((KPLIB_sector_liberation_times select _j) select 0) == _sector) exitWith { _libFoundIndex = _j };
                };
                if (_libFoundIndex != -1) then {
                    private _libTime = (KPLIB_sector_liberation_times select _libFoundIndex) select 1;
                    if ((_now - _libTime) < _liberationHoldoff) exitWith {};
                };

                // spawn defender group near sector
                private _spawnPos = [];
                private _try = 0;
                while {_spawnPos isEqualTo [] && _try < 10} do {
                    _spawnPos = (_sectorPos getPos [random 50, random 360]) findEmptyPosition [5, 100, "B_Heli_Light_01_F"];
                    _try = _try + 1;
                };
                if (_spawnPos isEqualTo []) then { _spawnPos = _sectorPos; };

                private _grp = createGroup [KPLIB_side_player, true];
                {
                    [_x, _spawnPos, _grp] call KPLIB_fnc_createManagedUnit;
                } foreach KPLIB_b_squadInf;

                [_grp, _sectorPos] spawn add_defense_waypoints;

                KPLIB_sectors_blufor_defenders pushBack [_sector, _grp, _now];
                publicVariable "KPLIB_sectors_blufor_defenders";
            } else {
                // update last seen
                private _entry = KPLIB_sectors_blufor_defenders select _foundIndex;
                private _updated = [_sector, (_entry select 1), _now];
                KPLIB_sectors_blufor_defenders set [ _foundIndex, _updated ];
                publicVariable "KPLIB_sectors_blufor_defenders";
            };
        } else {
            // no enemies nearby, possible cleanup
            if (_foundIndex != -1) then {
                private _entry = KPLIB_sectors_blufor_defenders select _foundIndex;
                private _lastSeen = _entry select 2;
                if ((_now - _lastSeen) > _gracePeriod) then {
                    private _grp = _entry select 1;
                    {
                        if (_x isKindOf "CAManBase") then {
                            if (isNull objectParent _x) then { deleteVehicle _x } else { (objectParent _x) deleteVehicleCrew _x };
                        } else {
                            if (!isNull _x) then { [_x] call KPLIB_fnc_cleanOpforVehicle; deleteVehicle _x; };
                        };
                    } forEach units _grp;

                    KPLIB_sectors_blufor_defenders = KPLIB_sectors_blufor_defenders - [_entry];
                    publicVariable "KPLIB_sectors_blufor_defenders";
                };
            };
        };
    } forEach _sectors;

    sleep _scanSleep;
};
