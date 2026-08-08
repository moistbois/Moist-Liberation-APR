params ["_liberated_sector"];

private _KPLIB_enemyReadiness_increase = 0;
switch (true) do {
    case (_liberated_sector in KPLIB_sectors_capital):    {_KPLIB_enemyReadiness_increase = 6 + (floor (random 6)) * KPLIB_param_difficulty;};
    case (_liberated_sector in KPLIB_sectors_city):    {_KPLIB_enemyReadiness_increase = 6 + (floor (random 4)) * KPLIB_param_difficulty;};
    case (_liberated_sector in KPLIB_sectors_military):   {_KPLIB_enemyReadiness_increase = 5 + (floor (random 12)) * KPLIB_param_difficulty;};
    case (_liberated_sector in KPLIB_sectors_factory):    {_KPLIB_enemyReadiness_increase = 3 + (floor (random 7)) * KPLIB_param_difficulty;};
    case (_liberated_sector in KPLIB_sectors_tower):      {_KPLIB_enemyReadiness_increase = 3 + (floor (random 3)) * KPLIB_param_difficulty;};
};

KPLIB_enemyReadiness = KPLIB_enemyReadiness + _KPLIB_enemyReadiness_increase;
if (KPLIB_enemyReadiness > 100.0 && KPLIB_param_difficulty <= 2.0) then {KPLIB_enemyReadiness = 100.0};
stats_readiness_earned = stats_readiness_earned + _KPLIB_enemyReadiness_increase;

[_liberated_sector, 0] remoteExecCall ["remote_call_sector"];
KPLIB_sectors_player pushback _liberated_sector; publicVariable "KPLIB_sectors_player";
latest_liberated_sector = _liberated_sector; publicVariable "latest_liberated_sector";
stats_sectors_liberated = stats_sectors_liberated + 1;

["KPLIB_ResetBattleGroups"] call CBA_fnc_serverEvent;

if (_liberated_sector in KPLIB_sectors_factory) then {
    {
        if (_liberated_sector in _x) exitWith {KPLIB_production = KPLIB_production - [_x];};
    } forEach KPLIB_production;

    private _sectorFacilities = (KPLIB_production_markers select {_liberated_sector == (_x select 0)}) select 0;
    KPLIB_production pushBack [
        markerText _liberated_sector,
        _liberated_sector,
        1,
        [],
        _sectorFacilities select 1,
        _sectorFacilities select 2,
        _sectorFacilities select 3,
        3,
        KPLIB_production_interval,
        0,
        0,
        0
    ];
};

[_liberated_sector] spawn F_cr_liberatedSector;

if ((random 100) <= KPLIB_cr_wounded_chance || (count KPLIB_sectors_player) == 1) then {
    [_liberated_sector] spawn civrep_wounded_civs;
};

asymm_blocked_sectors pushBack [_liberated_sector, time];
publicVariable "asymm_blocked_sectors";

[] spawn check_victory_conditions;

sleep 1;

[] spawn KPLIB_fnc_doSave;

sleep 45;

if (KPLIB_endgame == 0) then {
    if ((random (150 / (KPLIB_param_difficulty * KPLIB_param_aggressivity))) < (KPLIB_enemyReadiness - 15) || _liberated_sector in KPLIB_sectors_capital)
    then {
        // readiness curve for helos:
        // 35-45 -> mostly 1
        // 45-60 -> mostly 2
        // 60+   -> mostly 3
        private _roll = random 100;
        private _paratrooper_helos = 1;

        if (KPLIB_enemyReadiness < 45) then {
            // low readiness should mainly spawn 1, rarely 2 and extremely rarely 3
            if (_roll < 10) then {
                _paratrooper_helos = 2;
            } else if (_roll < 12) then {
                _paratrooper_helos = 3;
            };
        } else if (KPLIB_enemyReadiness < 60) then {
            // middle readiness should favour 2
            if (_roll < 20) then {
                _paratrooper_helos = 1;
            } else if (_roll < 80) then {
                _paratrooper_helos = 2;
            } else {
                _paratrooper_helos = 3;
            };
        } else {
            // high readiness should almost always spawn 3
            if (_roll < 70) then {
                _paratrooper_helos = 3;
            } else if (_roll < 95) then {
                _paratrooper_helos = 2;
            } else {
                _paratrooper_helos = 1;
            };
        };

        for "_i" from 1 to _paratrooper_helos do {
            [_liberated_sector] spawn send_paratroopers;
        };
    };

        private _battlegroup_delay = (1800 * (1 - ((min [KPLIB_enemyReadiness, 100]) / 100)));
        if (_battlegroup_delay < 0) then {_battlegroup_delay = 0;};
        private _battlegroup_delay_minutes = ceil (_battlegroup_delay / 60);
        private _battlegroup_delay_estimate = _battlegroup_delay_minutes + floor (random 7) - 3;
        if (_battlegroup_delay_estimate < 1) then {_battlegroup_delay_estimate = 1;};

        if (([] call KPLIB_fnc_getOpforCap) < KPLIB_cap_battlegroup) then {
            if (_battlegroup_delay > 0) then {
                [_liberated_sector, _battlegroup_delay_estimate] remoteExec ["remote_call_battlegroup_delayed"];

                if ((_liberated_sector in KPLIB_sectors_tower)) then {
                    [_liberated_sector, true, false, _battlegroup_delay] spawn {
                        private ["_sector", "_infOnly", "_reduceAggro", "_delay"] = _this; // only spawn infantry battlegroup for towers
                        sleep _delay;
                        [_sector, _infOnly, _reduceAggro] call spawn_battlegroup;
                    };
                };

                [_liberated_sector, false, false, _battlegroup_delay] spawn {
                    private ["_sector", "_infOnly", "_reduceAggro", "_delay"] = _this;
                    sleep _delay;
                    [_sector, _infOnly, _reduceAggro] call spawn_battlegroup;
                };
            } else {
                if ((_liberated_sector in KPLIB_sectors_tower)) then {
                    [_liberated_sector, true, false] spawn spawn_battlegroup; // only spawn infantry battlegroup for towers
                };
                [_liberated_sector, false, false] spawn spawn_battlegroup;
            };
        };
