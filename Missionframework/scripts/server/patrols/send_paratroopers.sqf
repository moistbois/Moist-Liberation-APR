params [
    ["_targetsector", "", ["",[]]],
    ["_chopper_type", objNull, [objNull]],
    ["_keepHelo", false, [false]]
];

if (_targetsector isEqualTo "" || KPLIB_o_helicopters isEqualTo []) exitWith {false};

private _targetpos = _targetsector;
if (_targetpos isEqualType "") then {
    _targetpos = markerPos _targetsector;
};
private _spawnsector = ([KPLIB_sectors_airSpawn, [_targetpos], {(markerpos _x) distance _input0}, "ASCEND"] call BIS_fnc_sortBy) select 0;
private _keepHeloFlag = _keepHelo;
private _parasPerHelo = 8;

private _newvehicle = objNull;
private _pilot_group = grpNull;
private _para_group = createGroup [KPLIB_side_enemy, true];

if (isNull _chopper_type) then {
    private _selected_chopper = selectRandom KPLIB_o_helicopters;
    while {!(_selected_chopper in KPLIB_o_troopTransports)} do {
        _selected_chopper = selectRandom KPLIB_o_helicopters;
    };

    _newvehicle = createVehicle [_selected_chopper, markerPos _spawnsector, [], 0, "FLY"];
    createVehicleCrew _newvehicle;
    sleep 0.1;

    _pilot_group = createGroup [KPLIB_side_enemy, true];
    (crew _newvehicle) joinSilent _pilot_group;

    _newvehicle addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
    {_x addMPEventHandler ["MPKilled", {_this spawn kill_manager}];} forEach (crew _newvehicle);
} else {
    _newvehicle = _chopper_type;
    _pilot_group = group _newvehicle;
};

while {(count (units _para_group)) < _parasPerHelo} do {
    [KPLIB_o_paratrooper, markerPos _spawnsector, _para_group] call KPLIB_fnc_createManagedUnit;
};

    {removeBackpack _x; _x addBackPack "B_parachute"; _x moveInCargo _newvehicle;} forEach (units _para_group);

    while {(count (waypoints _pilot_group)) != 0} do {deleteWaypoint ((waypoints _pilot_group) select 0);};
    while {(count (waypoints _para_group)) != 0} do {deleteWaypoint ((waypoints _para_group) select 0);};
    sleep 0.2;
    {_x doFollow leader _pilot_group} forEach units _pilot_group;
    {_x doFollow leader _para_group} forEach units _para_group;
    sleep 0.2;

    _newvehicle flyInHeight 100;

    private _waypoint = _pilot_group addWaypoint [_targetpos, 25];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointSpeed "FULL";
    _waypoint setWaypointBehaviour "CARELESS";
    _waypoint setWaypointCombatMode "BLUE";
    _waypoint setWaypointCompletionRadius 100;
    _waypoint = _pilot_group addWaypoint [_targetpos, 25];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointSpeed "FULL";
    _waypoint setWaypointBehaviour "CARELESS";
    _waypoint setWaypointCombatMode "BLUE";
    _waypoint setWaypointCompletionRadius 100;
    _waypoint = _pilot_group addWaypoint [_targetpos, 700];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointCompletionRadius 100;
    _waypoint = _pilot_group addWaypoint [_targetpos, 700];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointCompletionRadius 100;
    _waypoint = _pilot_group addWaypoint [_targetpos, 700];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointCompletionRadius 100;
    _pilot_group setCurrentWaypoint [_pilot_group, 1];

    _waypoint = _para_group addWaypoint [_targetpos, 100];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointSpeed "NORMAL";
    _waypoint setWaypointBehaviour "COMBAT";
    _waypoint setWaypointCombatMode "YELLOW";
    _waypoint setWaypointCompletionRadius 50;
    _waypoint = _para_group addWaypoint [_targetpos, 100];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointCompletionRadius 50;
    _pilot_group setCurrentWaypoint [_para_group, 1];

    _newvehicle flyInHeight 100;

    [_newvehicle, _pilot_group, _para_group, _spawnsector, _targetpos, _keepHeloFlag] spawn {
        params ["_newvehicle", "_pilot_group", "_para_group", "_spawnsector", "_targetpos", "_keepHeloFlag"];

        waitUntil {sleep 1;
            !(alive _newvehicle) || !(alive (driver _newvehicle)) || ((_newvehicle distance _targetpos) < 400)
        };

        if ((alive _newvehicle) && (alive (driver _newvehicle))) then {
            {
                unassignVehicle _x;
                moveout _x;
                sleep 0.5;
            } forEach (units _para_group);

            _newvehicle flyInHeight 100;

            sleep 0.2;
            while {(count (waypoints _pilot_group)) != 0} do {deleteWaypoint ((waypoints _pilot_group) select 0);};
            while {(count (waypoints _para_group)) != 0} do {deleteWaypoint ((waypoints _para_group) select 0);};
            sleep 0.2;
            {_x doFollow leader _pilot_group} foreach units _pilot_group;
            {_x doFollow leader _para_group} foreach units _para_group;
            sleep 0.2;

            if _keepHeloFlag then {
                private _waypoint = _pilot_group addWaypoint [_targetpos, 200];
                _waypoint setWaypointBehaviour "COMBAT";
                _waypoint setWaypointCombatMode "RED";
                _waypoint setWaypointType "SAD";
                _waypoint = _pilot_group addWaypoint [_targetpos, 200];
                _waypoint setWaypointBehaviour "COMBAT";
                _waypoint setWaypointCombatMode "RED";
                _waypoint setWaypointType "SAD";
                _waypoint = _pilot_group addWaypoint [_targetpos, 200];
                _waypoint setWaypointBehaviour "COMBAT";
                _waypoint setWaypointCombatMode "RED";
                _waypoint setWaypointType "SAD";
                _waypoint = _pilot_group addWaypoint [_targetpos, 200];
                _waypoint setWaypointType "SAD";
                _waypoint = _pilot_group addWaypoint [_targetpos, 200];
                _waypoint setWaypointType "SAD";
                _pilot_group setCurrentWaypoint [_pilot_group, 1];
            } else {
                private _waypoint = _pilot_group addWaypoint [_spawnsector, 100];
                _waypoint setWaypointType "MOVE";
                _waypoint setWaypointSpeed "NORMAL";
                _waypoint setWaypointBehaviour "CARELESS";
                _waypoint setWaypointCombatMode "BLUE";
                _waypoint setWaypointCompletionRadius 100;
                _waypoint = _pilot_group addWaypoint [_spawnsector, 100];
                _waypoint setWaypointType "CYCLE";
                _pilot_group setCurrentWaypoint [_pilot_group, 1];
            };

            private _waypoint = _para_group addWaypoint [_targetpos, 100];
            _waypoint setWaypointType "SAD";
            _waypoint = _para_group addWaypoint [_targetpos, 100];
            _waypoint setWaypointType "SAD";
            _waypoint = _para_group addWaypoint [_targetpos, 100];
            _waypoint setWaypointType "SAD";
            _waypoint = _para_group addWaypoint [_targetpos, 100];
            _waypoint setWaypointType "SAD";
            _waypoint = _para_group addWaypoint [_targetpos, 100];
            _waypoint setWaypointType "SAD";
            _pilot_group setCurrentWaypoint [_para_group, 1];
        };
    };
};
