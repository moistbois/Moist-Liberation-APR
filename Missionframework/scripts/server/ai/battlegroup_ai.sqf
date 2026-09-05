params [
    ["_grp", grpNull, [grpNull]],
    ["_target", [], [[]]],
	["_announce", true, [true]]
];

if (isNull _grp) exitWith {};

private _objPos = [];

if (_target isEqualTo []) then {
    _objPos = [getPos (leader _grp)] call KPLIB_fnc_getNearestBluforObjective;
} else {
    _objPos = _target;
};

if (_announce) then {
	[_objPos] remoteExec ["remote_call_incoming"];
};

private _waypoint = [];

{ deleteWaypoint _x } forEachReversed waypoints _grp;
{ _x doFollow leader _grp } forEach units _grp;

_waypoint = _grp addWaypoint [_objPos, 100];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointSpeed "NORMAL";
_waypoint setWaypointBehaviour "AWARE";
_waypoint setWaypointCombatMode "YELLOW";
_waypoint setWaypointCompletionRadius 30;

_waypoint = _grp addWaypoint [_objPos, 100];
_waypoint setWaypointType "SAD";
_waypoint = _grp addWaypoint [_objPos, 100];
_waypoint setWaypointType "SAD";
_waypoint = _grp addWaypoint [_objPos, 100];
_waypoint setWaypointType "SAD";
_waypoint = _grp addWaypoint [_objPos, 100];
_waypoint setWaypointType "CYCLE";
