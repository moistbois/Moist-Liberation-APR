params [
    ["_targetSector", "", ["",[]]],
    ["_chopper_type", objNull, [objNull]],
	["_keepHelo", false, [false]]
];

if !(isServer) exitWith {};

if (_targetSector isEqualTo "" || KPLIB_o_helicopters isEqualTo []) exitWith {false};

private _targetPos = _targetSector;
if (_targetPos isEqualType "") then {
    _targetPos = markerPos _targetSector;
};

private _spawnMarker = ([KPLIB_sectors_airSpawn, [_targetPos], {(markerpos _x) distance _input0}, "ASCEND"] call BIS_fnc_sortBy) select 0;
private _spawnPos = markerPos _spawnMarker;

private _newVehicle = objNull;
private _pilot_group = grpNull;
    
if (isNull _chopper_type) then {
    _chopper_type = selectRandom KPLIB_o_helicopters;

    while {!(_chopper_type in KPLIB_o_troopTransports)} do {
        _chopper_type = selectRandom KPLIB_o_helicopters;
    };

	_spawnPos = _spawnPos getPos [150 + random 150, random 360];
	_spawnPos set [2, 150 + random 150];

    _newVehicle = [_spawnPos, _chopper_type, true] call KPLIB_fnc_spawnVehicle;
	if (isNull _newVehicle) exitWith {false};
	_pilot_group = group driver _newVehicle;

    _newVehicle addMPEventHandler ["MPKilled", {
        params ["_unit", "_killer"];
        ["KPLIB_manageKills", [_unit, _killer]] call CBA_fnc_localEvent;
    }];
    {
        _x addMPEventHandler ["MPKilled", {
            params ["_unit", "_killer"];
            ["KPLIB_manageKills", [_unit, _killer]] call CBA_fnc_localEvent;
        }];
    } forEach (crew _newVehicle);

    // Clear cargo, if enabled
    [_newVehicle] call KPLIB_fnc_clearCargo;
    _newVehicle addItemCargoGlobal ["toolkit", 1];
    // Process KP object init
    [_newVehicle] call KPLIB_fnc_addObjectInit;
} else {
    _newVehicle = _chopper_type;
    _pilot_group = group driver _newVehicle;
};

_newVehicle lock true;

{deleteWaypoint _x} forEachReversed waypoints _pilot_group;

_newVehicle flyInHeight 150;

private _pilot = driver _newVehicle;
private _pilotSkill = 1;

if (!isNull _pilot) then {
    _pilotSkill = skill _pilot;
    _pilot allowFleeing 0;
    _pilot setSkill 1;
};

// keep a safe fly-in height while approaching the drop zone
_newVehicle flyInHeight [100, true];

// pick a tangent point to perform drop at
private _circleRadius = selectRandom [200, 300, 400];

private _approachDir = _spawnPos getDir _targetPos;

private _side = selectRandom [-90, 90]; // randomize side
private _dropPos = _targetPos getPos [_circleRadius, _approachDir + _side];

private _pilot_wp_target = _pilot_group addWaypoint [_dropPos, 50];
_pilot_wp_target setWaypointType "MOVE";
_pilot_wp_target setWaypointSpeed "FULL";
_pilot_wp_target setWaypointBehaviour "CARELESS";
_pilot_wp_target setWaypointCombatMode "BLUE";
_pilot_wp_target setWaypointCompletionRadius 200;

_pilot_group setCurrentWaypoint _pilot_wp_target;
{_x doFollow leader _pilot_group} forEach units _pilot_group;

private _offset_pos = _dropPos getPos [1000, _approachDir];
_offset_pos set [2,0];
private _pilot_wp_offset = _pilot_group addWaypoint [_offset_pos, 50];
_pilot_wp_offset setWaypointType "MOVE";
_pilot_wp_offset setWaypointSpeed "FULL";
_pilot_wp_offset setWaypointBehaviour "CARELESS";
_pilot_wp_offset setWaypointCombatMode "BLUE";
_pilot_wp_offset setWaypointCompletionRadius 200;

waitUntil {sleep 1;
    !(alive _newVehicle) || (damage _newVehicle > 0.2) || (_newVehicle distance2D _dropPos < 1000)
};

_newVehicle flyInHeight [80, true];

private _para_group = createGroup [KPLIB_side_enemy, true];

while {(count (units _para_group)) < 8} do {
    [KPLIB_o_paratrooper, _spawnPos, _para_group] call KPLIB_fnc_createManagedUnit;
};

{
    removeBackpack _x;
    _x addBackpack "B_Parachute";
    _x assignAsCargo _newVehicle;
    _x moveInCargo _newVehicle;
} forEach units _para_group;

waitUntil {sleep 1;
    !(alive _newVehicle) || (damage _newVehicle > 0.2) || (_newVehicle distance2D _dropPos < 300)
};

_newVehicle lock false;

{sleep 0.5; unassignVehicle _x; moveout _x;} forEach (units _para_group);

{deleteWaypoint _x} forEachReversed waypoints _para_group;

private _para_wp_landing = _para_group addWaypoint [_dropPos, 100];
_para_wp_landing setWaypointType "MOVE";
_para_wp_landing setWaypointSpeed "FULL";
_para_wp_landing setWaypointBehaviour "CARELESS";
_para_wp_landing setWaypointCombatMode "BLUE";
_para_wp_landing setWaypointCompletionRadius 100;
_para_group setCurrentWaypoint _para_wp_landing;

_pilot_group setCurrentWaypoint _pilot_wp_offset;
{_x doFollow leader _pilot_group} forEach units _pilot_group;

sleep 8;

_pilot setSkill _pilotSkill;
{deleteWaypoint _x} forEachReversed waypoints _pilot_group;

private _pilot_wp_circle = _pilot_group addWaypoint [_targetPos, 100];
_pilot_wp_circle setWaypointType "SAD";
_pilot_wp_circle setWaypointCombatMode "BLUE";
_pilot_wp_offset setWaypointBehaviour "CARELESS";
_pilot_wp_circle setWaypointCompletionRadius 500;
_pilot_group setCurrentWaypoint _pilot_wp_circle;

{_x doFollow leader _para_group} forEach units _para_group;

[_para_group] call KPLIB_fnc_LAMBS_enableReinforcements;
[_para_group, _targetPos, false] call battlegroup_ai;


if (_keepHelo) then {
	private _pilot_wp_combat_1 = _pilot_group addWaypoint [_targetPos, 300];
	_pilot_wp_combat_1 setWaypointType "SAD";
	_pilot_wp_combat_1 setWaypointBehaviour "COMBAT";
	_pilot_wp_combat_1 setWaypointCombatMode "RED";
	_pilot_wp_combat_1 setWaypointCompletionRadius 500;
	_pilot_wp_combat_1 setWaypointTimeout [500, 650, 600];
	_pilot_group setCurrentWaypoint _pilot_wp_combat_1;
	sleep 600
};

private _pilot_wp_rtb = _pilot_group addWaypoint [_spawnPos, 100];
_pilot_wp_rtb setWaypointType "MOVE";
_pilot_wp_rtb setWaypointSpeed "FULL";
_pilot_wp_rtb setWaypointBehaviour "CARELESS";
_pilot_wp_rtb setWaypointCombatMode "BLUE";
_pilot_wp_rtb setWaypointCompletionRadius 25;

_pilot_group setCurrentWaypoint _pilot_wp_rtb;

waitUntil {sleep 1;
    !(alive driver _newVehicle) || (_newVehicle distance2D _spawnPos < 100)
};

sleep 5;
if (!alive driver _newVehicle) exitWith {};

deleteVehicleCrew _newVehicle;
deleteVehicle _newVehicle;