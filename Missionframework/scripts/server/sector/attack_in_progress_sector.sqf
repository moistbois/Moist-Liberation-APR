params [ "_sector" ];
private [ "_attacktime", "_ownership", "_grp", "_squad_type", "_spawnedByHandler" ];

sleep 5;

_ownership = [ markerpos _sector ] call KPLIB_fnc_getSectorOwnership;
if ( _ownership != KPLIB_side_enemy ) exitWith {};

_squad_type = KPLIB_b_squadInf;
if ( _sector in KPLIB_sectors_military ) then {
    _squad_type = KPLIB_b_squadInf;
};

if ( KPLIB_param_bluforDefenders ) then {
    // If proactive manager already spawned defenders for this sector, skip spawning here
    if (isNil "KPLIB_sectors_blufor_defenders") then { KPLIB_sectors_blufor_defenders = []; publicVariable "KPLIB_sectors_blufor_defenders"; };

    private _foundIndex = -1;
    for "_i" from 0 to ((count KPLIB_sectors_blufor_defenders) - 1) do {
        if (((KPLIB_sectors_blufor_defenders select _i) select 0) == _sector) exitWith { _foundIndex = _i };
    };

    if (_foundIndex != -1) then {
        private _entry = KPLIB_sectors_blufor_defenders select _foundIndex;
        private _grp = _entry select 1;
        private _aliveUnits = if (isNull _grp) then { [] } else { (units _grp) select { alive _x } };
        if ((count _aliveUnits) == 0) then {
            KPLIB_sectors_blufor_defenders set [_foundIndex, []];
            KPLIB_sectors_blufor_defenders = KPLIB_sectors_blufor_defenders select { _x != [] };
            publicVariable "KPLIB_sectors_blufor_defenders";
            _foundIndex = -1;
        };
    };

    private _spawnedByHandler = false;
    if (_foundIndex == -1) then {
        _grp = creategroup [KPLIB_side_player, true];
        {
            [_x, markerPos _sector, _grp] call KPLIB_fnc_createManagedUnit;
        } foreach _squad_type;
        sleep 3;
        _grp setBehaviour "COMBAT";

        // register so manager knows about this group (backup behavior)
        KPLIB_sectors_blufor_defenders pushBack [_sector, _grp, time];
        publicVariable "KPLIB_sectors_blufor_defenders";
        _spawnedByHandler = true;
    } else {
        // update last seen time so manager won't despawn them immediately
        private _entry = KPLIB_sectors_blufor_defenders select _foundIndex;
        KPLIB_sectors_blufor_defenders set [_foundIndex, [_sector, (_entry select 1), time]];
        publicVariable "KPLIB_sectors_blufor_defenders";
    };
};

sleep 60;

_ownership = [ markerpos _sector ] call KPLIB_fnc_getSectorOwnership;
if ( _ownership == KPLIB_side_player ) exitWith {
    if ( KPLIB_param_bluforDefenders ) then {
        {
            if ( alive _x ) then { deleteVehicle _x };
        } foreach units _grp;
    };
};

[_sector, 1] remoteExec ["remote_call_sector"];
_attacktime = KPLIB_vulnerability_timer;

while { _attacktime > 0 && ( _ownership == KPLIB_side_enemy || _ownership == KPLIB_side_resistance ) } do {
    _ownership = [markerpos _sector] call KPLIB_fnc_getSectorOwnership;
    _attacktime = _attacktime - 1;
    sleep 1;
};

waitUntil {
    sleep 1;
    [markerpos _sector] call KPLIB_fnc_getSectorOwnership != KPLIB_side_resistance;
};

if ( KPLIB_endgame == 0 ) then {
    if ( _attacktime <= 1 && ( [markerpos _sector] call KPLIB_fnc_getSectorOwnership == KPLIB_side_enemy ) ) then {
        KPLIB_sectors_player = KPLIB_sectors_player - [ _sector ];
        publicVariable "KPLIB_sectors_player";
        [_sector, 2] remoteExec ["remote_call_sector"];
        ["KPLIB_ResetBattleGroups"] call CBA_fnc_serverEvent;
        [] spawn KPLIB_fnc_doSave;
        stats_sectors_lost = stats_sectors_lost + 1;
        {
            if (_sector in _x) exitWith {
                if ((count (_x select 3)) == 3) then {
                    {
                        detach _x;
                        deleteVehicle _x;
                    } forEach (attachedObjects ((nearestObjects [((_x select 3) select 0), [KPLIB_b_smallStorage], 10]) select 0));

                    deleteVehicle ((nearestObjects [((_x select 3) select 0), [KPLIB_b_smallStorage], 10]) select 0);
                };
                KPLIB_production = KPLIB_production - [_x];
            };
        } forEach KPLIB_production;
    } else {
        [_sector, 3] remoteExec ["remote_call_sector"];
        {
            if (captive _x) then {
                [_x, true] spawn prisonner_ai;
            } else {
                [_x] spawn prisonner_ai;
            };
        } foreach (((markerpos _sector) nearEntities ["CAManBase", KPLIB_range_sectorCapture * 0.8]) select {side group _x == KPLIB_side_enemy});
    };
};

sleep 60;

if ( KPLIB_param_bluforDefenders ) then {
        if (_spawnedByHandler) then {
            {
                if ( alive _x ) then { if (isNull objectParent _x) then {deleteVehicle _x} else {(objectParent _x) deleteVehicleCrew _x}; };
            } foreach units _grp;
            // also remove entry from manager list if present
            if (!isNil "KPLIB_sectors_blufor_defenders") then {
                private _remIdx = -1;
                for "_i" from 0 to ((count KPLIB_sectors_blufor_defenders) - 1) do {
                    if (((KPLIB_sectors_blufor_defenders select _i) select 0) == _sector) exitWith { _remIdx = _i };
                };
                if (_remIdx != -1) then {
                    KPLIB_sectors_blufor_defenders set [ _remIdx, [] ];
                    KPLIB_sectors_blufor_defenders = KPLIB_sectors_blufor_defenders select { _x != [] };
                    publicVariable "KPLIB_sectors_blufor_defenders";
                };
            };
        };
};
