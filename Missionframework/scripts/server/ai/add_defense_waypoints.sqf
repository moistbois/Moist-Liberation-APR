params [
    ["_grp", grpNull],
    ["_flagpos", [0,0,0]]
];

if (isNull _grp) exitWith {};

private _flagpos = _this select 1;
private _is_infantry = false;
private _wpPositions = [];
private _waypoint = [];


if (vehicle (leader _grp) == (leader _grp)) then {_is_infantry = true;};

sleep 5;

if (isNull _grp) exitWith {};

while {(count (waypoints _grp)) != 0} do {deleteWaypoint ((waypoints _grp) select 0);};
sleep 1;
{_x doFollow leader _grp} foreach units _grp;
sleep 1;

if (_is_infantry) then {

	if (isNull _grp) exitWith {};

	_wpPositions = [];
	private _startDir = random 360;
	private _rotationDir = selectRandom [-1, 1];

	for "_i" from 1 to 5 do {
		_wpPositions pushBack (
			_flagpos getPos [
				(50 + random 150),
				_startDir + (_rotationDir * (_i * 72)) + random [-30,0,30]
			]
		);
	};
	

    _waypoint = _grp addWaypoint [_wpPositions select 0, 10];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointBehaviour "SAFE";
    _waypoint setWaypointCombatMode "YELLOW";
    _waypoint setWaypointSpeed "LIMITED";
    _waypoint setWaypointCompletionRadius 20;
    _waypoint setWaypointTimeout [3, 6, 9];

    _waypoint = _grp addWaypoint [_wpPositions select 1, 10];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointTimeout [3, 6, 9];
    _waypoint = _grp addWaypoint [_wpPositions select 2, 10];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointTimeout [3, 6, 9];
    _waypoint = _grp addWaypoint [_wpPositions select 3, 10];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointTimeout [3, 6, 9];

    _waypoint = _grp addWaypoint [_wpPositions select 4, 10];
    _waypoint setWaypointType "CYCLE";
    _waypoint setWaypointTimeout [3, 6, 9];
} else {

	// vehicles
	_grp setBehaviour "SAFE";
	_grp setCombatMode "YELLOW";
	_grp setSpeedMode "LIMITED";

	private _wps = [
		_flagpos getPos [150, 0],
		_flagpos getPos [200, 90],
		_flagpos getPos [150, 180],
		_flagpos getPos [200, 270]
    ];
	{
		private _wp = _grp addWaypoint [_x, 30];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "LIMITED";
		_wp setWaypointBehaviour "SAFE";
		_wp setWaypointCompletionRadius 50;
		_wp setWaypointTimeout [20,40,60];
	} forEach _wps;

	// loop patrol
	private _cycle = _grp addWaypoint [_wps#0, 0];
	_cycle setWaypointType "CYCLE";

	{
		private _veh = vehicle _x;

		if (_veh != _x) then {
			_veh limitSpeed 10;
		};
	} forEach units _grp;
};

if (isNull _grp) exitWith {};

_grp setCurrentWaypoint [_grp, 0];

waitUntil {
    sleep 10;

	if (isNull _grp) exitWith { true };

    ({alive _x} count (units _grp) == 0) || !(isNull ((leader _grp) findNearestEnemy (leader _grp)))
};

if (((units _grp) findIf {alive _x}) != -1) then {

	if (isNull _grp) exitWith {};

    while {(count (waypoints _grp)) != 0} do {deleteWaypoint ((waypoints _grp) select 0)};
    sleep 1;
    {_x doFollow leader _grp} foreach units _grp;
	
	private _combatPos = getPosATL (leader _grp);

    sleep 1;
    _wpPositions = [
        _combatPos getPos [random [50, 100, 150], random [0, 36, 72]],
        _combatPos getPos [random [50, 100, 150], random [72, 108, 144]],
        _combatPos getPos [random [50, 100, 150], random [144, 180, 216]],
        _combatPos getPos [random [50, 100, 150], random [216, 252, 288]],
        _combatPos getPos [random [50, 100, 150], random [288, 324, 360]]
    ];
    _waypoint = _grp addWaypoint [_wpPositions select 0, 10];
    _waypoint setWaypointType "SAD";
    _waypoint setWaypointBehaviour "COMBAT";
    _waypoint setWaypointCombatMode "YELLOW";
    if (_is_infantry) then {
        _waypoint setWaypointSpeed "NORMAL";
    } else {
		{
		private _veh = vehicle _x;

			if (_veh != _x) then {
				_veh limitSpeed -1;
			};
		} forEach units _grp;
        _waypoint setWaypointSpeed "LIMITED";
    };
    _waypoint = _grp addWaypoint [_wpPositions select 1, 10];
    _waypoint setWaypointType "SAD";
    _waypoint = _grp addWaypoint [_wpPositions select 2, 10];
    _waypoint setWaypointType "SAD";
    _waypoint = _grp addWaypoint [_wpPositions select 3, 10];
    _waypoint setWaypointType "SAD";
    _waypoint = _grp addWaypoint [_wpPositions select 4, 10];
    _waypoint setWaypointType "CYCLE";
    _grp setCurrentWaypoint [_grp, 0];
};
