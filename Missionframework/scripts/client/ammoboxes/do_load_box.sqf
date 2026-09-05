params [ "_ammobox", ["_max_transport_distance", 15] ];
private [ "_neartransporttrucks", "_truck_to_load", "_truck_load", "_next_truck", "_maxload", "_i" ];

private _suppliesPerTicket = 5;

_maxload = 3;
_neartransporttrucks = ((getpos _ammobox) nearEntities [KPLIB_transport_classes, _max_transport_distance]) select {
    alive _x &&
    speed _x < 5 &&
    ((getpos _x) select 2) < 5
};

_truck_to_load = objNull;

{
    _next_truck = _x;
    _maxload = 0;
    _offsets = [];

    {
        if (_x select 0 == typeof _next_truck) then {
            _maxload = (count _x) - 2;

            for [{_i = 2}, {_i < (count _x)}, {_i = _i + 1}] do {
                _offsets pushBack (_x select _i);
            };
        };
    } forEach KPLIB_transportConfigs;

    if (isNull _truck_to_load) then {

        _truck_load = _next_truck getVariable ["KPLIB_ammo_truck_load", 0];

        if (_truck_load < _maxload) then {

            _truck_to_load = _next_truck;

            /*
                Mobile Respawn:
                Instantly convert supplies into respawn tickets
            */
            if (_truck_to_load in ([] call KPLIB_fnc_getMobileRespawns) && (typeOf _ammobox) isEqualTo KPLIB_b_crateSupply) then {

                private _supplies = _ammobox getVariable ["KPLIB_crate_value", 0];
                private _ticketsToAdd = floor (_supplies / _suppliesPerTicket);

                if (isNil {_truck_to_load getVariable "KPLIB_respawnTickets"}) then {
                    _truck_to_load setVariable [
                        "KPLIB_respawnTickets",
                        0,
                        true
                    ];
                };

                private _currentTickets = _truck_to_load getVariable ["KPLIB_respawnTickets", 0];

                _truck_to_load setVariable [
                    "KPLIB_respawnTickets",
                    _currentTickets + _ticketsToAdd,
                    true
                ];

                diag_log format [
                    "[RESPAWN] Converted crate (%1 supplies) into %2 tickets for %3",
                    _supplies,
                    _ticketsToAdd,
                    _truck_to_load
                ];

                deleteVehicle _ammobox;

                if (!isDedicated) then {
                    hint format [
                        "Added %1 respawn tickets.",
                        _ticketsToAdd
                    ];
                };

            } else {

                /*
                    Normal transport behavior
                */
                _ammobox attachTo [
                    _truck_to_load,
                    _offsets select _truck_load
                ];

                [_ammobox, false] remoteExec ["enableRopeAttach"];

                _truck_to_load setVariable [
                    "KPLIB_ammo_truck_load",
                    _truck_load + 1,
                    true
                ];

                if (!isDedicated) then {
                    hint localize "STR_BOX_LOADED";
                };
            };
        };
    };
} forEach _neartransporttrucks;

if (isNull _truck_to_load && !isDedicated) then {
    hint localize "STR_BOX_CANTLOAD";
    uiSleep 2;
    hint "";
};