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

private _spawnMarker = [
    3000,
    20000,
    true,
    _targetpos
] call KPLIB_fnc_getOpforSpawnPoint;

if (_spawnMarker isEqualTo "") exitWith { false };

private _spawnPos = markerPos _spawnMarker;
if (_spawnPos isEqualTo [0,0,0]) exitWith {false};
_spawnPos set [2, (((_spawnPos select 2) + 150) max 150)];

private _keepHeloFlag = _keepHelo;
private _parasPerHelo = 8;

private _newvehicle = objNull;
private _pilot_group = grpNull;

if (isNull _chopper_type) then {
    _chopper_type = selectRandom KPLIB_o_helicopters;

    while {!(_chopper_type in KPLIB_o_troopTransports)} do {
        _chopper_type = selectRandom KPLIB_o_helicopters;
    };

	_newvehicle = [_spawnPos, _chopper_type, true] call KPLIB_fnc_spawnVehicle;

	if (isNull _newvehicle) exitWith {
		diag_log format [
			"PARA ERROR: Failed to spawn helicopter %1 at %2",
			_chopper_type,
			_spawnPos
		];
	};

	_pilot_group = group driver _newvehicle;

    _newvehicle addMPEventHandler ["MPKilled", {
        params ["_unit", "_killer"];
        ["KPLIB_manageKills", [_unit, _killer]] call CBA_fnc_localEvent;
    }];
    {
        _x addMPEventHandler ["MPKilled", {
            params ["_unit", "_killer"];
            ["KPLIB_manageKills", [_unit, _killer]] call CBA_fnc_localEvent;
        }];
    } forEach (crew _newvehicle);

    [_newvehicle] call KPLIB_fnc_clearCargo;
    _newvehicle addItemCargoGlobal ["toolkit", 1];
    [_newvehicle] call KPLIB_fnc_addObjectInit;
} else {
    _newvehicle = _chopper_type;
    _pilot_group = group _newvehicle;
};

private _para_group = createGroup [KPLIB_side_enemy, true];

while {(count (units _para_group)) < _parasPerHelo} do {
    [KPLIB_o_paratrooper, _spawnPos, _para_group] call KPLIB_fnc_createManagedUnit;
};

while {(count (waypoints _pilot_group)) != 0} do {
    deleteWaypoint ((waypoints _pilot_group) select 0);
};

while {(count (waypoints _para_group)) != 0} do {
    deleteWaypoint ((waypoints _para_group) select 0);
};

{
    removeBackpack _x;
    _x addBackpack "B_Parachute";

    _x moveInCargo _newvehicle;

    if (!(vehicle _x isEqualTo _newvehicle)) then {
        _x assignAsCargo _newvehicle;
        [_x] orderGetIn true;

        private _timeout = time + 10;

        waitUntil {
            sleep 0.2;
            vehicle _x isEqualTo _newvehicle || time > _timeout
        };
    };
} forEach units _para_group;

sleep 1;

// Remove anyone who failed to board
{
    if (vehicle _x != _newvehicle) then {

        if (KPLIB_asymmetric_debug > 0) then {
            [
                format [
                    "PARA: Deleted unit that failed to board helicopter (%1)",
                    typeOf _x
                ],
                "PARA"
            ] call KPLIB_fnc_log;
        };

        deleteVehicle _x;
    };
} forEach (units _para_group);

// Abort if everyone failed to board
private _loadedUnits = (units _para_group) select {
    vehicle _x == _newvehicle
};

if (_loadedUnits isEqualTo []) exitWith {

    if (!isNull _newvehicle) then {

        {
            deleteVehicle _x;
        } forEach crew _newvehicle;

        deleteVehicle _newvehicle;
    };

    if (!isNull _pilot_group) then {
        deleteGroup _pilot_group;
    };

    deleteGroup _para_group;

    if (KPLIB_asymmetric_debug > 0) then {
        [
            "PARA: Aborted insertion because no paratroopers successfully boarded",
            "PARA"
        ] call KPLIB_fnc_log;
    };
};

private _pilot = driver _newvehicle;
private _pilotSkill = 1;

if (!isNull _pilot) then {
    _pilotSkill = skill _pilot;
    _pilot allowFleeing 0;
    _pilot setSkill 1;
};

while {(count (waypoints _pilot_group)) != 0} do {
    deleteWaypoint ((waypoints _pilot_group) select 0);
};

while {(count (waypoints _para_group)) != 0} do {
    deleteWaypoint ((waypoints _para_group) select 0);
};

sleep 0.2;

{
    _x doFollow leader _pilot_group;
} forEach units _pilot_group;

{
    _x doFollow leader _para_group;
} forEach units _para_group;

sleep 0.2;

_newvehicle flyInHeight [120, true];

private _pilot_wp_target = _pilot_group addWaypoint [_targetpos, 50];
_pilot_wp_target setWaypointType "MOVE";
_pilot_wp_target setWaypointSpeed "FULL";
_pilot_wp_target setWaypointBehaviour "CARELESS";
_pilot_wp_target setWaypointCombatMode "BLUE";
_pilot_wp_target setWaypointCompletionRadius 200;

private _offset_dir = vectorNormalized (_targetpos vectorFromTo _spawnPos);
private _offset_pos = _targetpos vectorAdd (_offset_dir vectorMultiply -500);
_offset_pos set [2,0];
private _pilot_wp_offset = _pilot_group addWaypoint [_offset_pos, 50];
_pilot_wp_offset setWaypointType "MOVE";
_pilot_wp_offset setWaypointSpeed "FULL";
_pilot_wp_offset setWaypointBehaviour "CARELESS";
_pilot_wp_offset setWaypointCombatMode "BLUE";
_pilot_wp_offset setWaypointCompletionRadius 200;

_pilot_group setCurrentWaypoint _pilot_wp_target;
{_x doFollow leader _pilot_group} forEach units _pilot_group;

waitUntil {
    sleep 1;
    (_newvehicle distance2D _targetpos < 300)
};

_newvehicle lock false;

{sleep 0.5; unassignVehicle _x; moveOut _x;} forEach units _para_group;

while {(count (waypoints _para_group)) != 0} do {
    deleteWaypoint ((waypoints _para_group) select 0);
};

private _para_wp_combat_1 = _para_group addWaypoint [_targetpos, 100];
_para_wp_combat_1 setWaypointType "SAD";
_para_wp_combat_1 setWaypointSpeed "FULL";
_para_wp_combat_1 setWaypointBehaviour "AWARE";
_para_wp_combat_1 setWaypointCombatMode "RED";
_para_wp_combat_1 setWaypointCompletionRadius 100;
_para_wp_combat_1 setWaypointTimeout [60, 90, 120];
private _para_wp_combat_2 = _para_group addWaypoint [_targetpos, 100];
_para_wp_combat_2 setWaypointType "SAD";
_para_wp_combat_2 setWaypointSpeed "NORMAL";
_para_wp_combat_2 setWaypointBehaviour "COMBAT";
_para_wp_combat_2 setWaypointCompletionRadius 100;
private _para_wp_combat_3 = _para_group addWaypoint [_targetpos, 100];
_para_wp_combat_3 setWaypointType "SAD";
_para_wp_combat_3 setWaypointCompletionRadius 100;
private _para_wp_combat_4 = _para_group addWaypoint [_targetpos, 100];
_para_wp_combat_4 setWaypointType "SAD";
_para_wp_combat_4 setWaypointCompletionRadius 100;

_pilot_group setCurrentWaypoint _pilot_wp_offset;
_para_group setCurrentWaypoint _para_wp_combat_1;
{_x doFollow leader _para_group} forEach units _para_group;
{_x doFollow leader _pilot_group} forEach units _pilot_group;

sleep 8;

_pilot setSkill _pilotSkill;
_newvehicle flyInHeight [100, false];

while {(count (waypoints _pilot_group)) != 0} do {
    deleteWaypoint ((waypoints _pilot_group) select 0);
};

private _pilot_wp_combat_1 = _pilot_group addWaypoint [_targetpos, 100];
_pilot_wp_combat_1 setWaypointType "SAD";
_pilot_wp_combat_1 setWaypointBehaviour "COMBAT";
_pilot_wp_combat_1 setWaypointCombatMode "RED";
_pilot_wp_combat_1 setWaypointCompletionRadius 500;
_pilot_wp_combat_1 setWaypointTimeout [210, 240, 270];

private _pilot_wp_rtb = _pilot_group addWaypoint [_spawnPos, 25];
_pilot_wp_rtb setWaypointType "MOVE";
_pilot_wp_rtb setWaypointSpeed "FULL";
_pilot_wp_rtb setWaypointBehaviour "CARELESS";
_pilot_wp_rtb setWaypointCombatMode "BLUE";
_pilot_wp_rtb setWaypointCompletionRadius 25;

if (_keepHeloFlag) then {
    _pilot_group setCurrentWaypoint _pilot_wp_combat_1;
} else {
    _pilot_group setCurrentWaypoint _pilot_wp_rtb;
};

sleep 240;

if (_keepHeloFlag) then {
    _pilot_group setCurrentWaypoint _pilot_wp_rtb;
};

waitUntil {
    sleep 1;
    !(alive driver _newvehicle) || (_newvehicle distance2D _spawnPos < 100)
};

sleep 5;
if (!alive driver _newvehicle) exitWith {};

{
    deleteVehicle _x;
} forEach crew _newvehicle;

deleteVehicle _newvehicle;
