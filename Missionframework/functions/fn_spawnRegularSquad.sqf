/*
    File: fn_spawnRegularSquad.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-12-03
    Last Update: 2023-05-11
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Spawns a regular enemy squad with given soldier classnames at given sector.

    Parameter(s):
        _pos     - Position to spawn the squad at          [POSITION, defaults to [0, 0, 0]]
        _classnames - Classnames of units to spawn in squad [ARRAY, defaults to []]

    Returns:
        Created squad [GROUP]
*/

params [
    ["_pos", [0, 0, 0], [[]], [2, 3]],
    ["_classnames", [], [[]]]
];

if (_pos isEqualTo [0, 0, 0]) exitWith {["No or zero pos given"] call BIS_fnc_error; grpNull};

// Get spawn position for squad
private _spawnPos = [];
private _i = 0;
while {_spawnPos isEqualTo []} do {
    _i = _i + 1;
    _spawnPos = (_pos getPos [random 50, random 360]) findEmptyPosition [15, 100, "B_APC_Tracked_01_rcws_F"];
    if (_i isEqualTo 10) exitWith {_spawnPos = (_pos getPos [random 50, random 360]) findEmptyPosition [0, 100, "B_APC_Tracked_01_rcws_F"];};
};

if (_spawnPos isEqualTo []) exitWith {
    ["No suitable spawn position found."] call BIS_fnc_error;
    [format ["Couldn't find infantry spawn position for position %1", _pos], "WARNING"] call KPLIB_fnc_log;
    grpNull
};

// Spawn units of squad
private _corrected_amount = round ((count _classnames) * ([] call KPLIB_fnc_getOpforFactor));
private _grp = createGroup [KPLIB_side_enemy, true];
{
    if (_forEachIndex < _corrected_amount) then {
        [_x, _spawnPos, _grp, "PRIVATE", 10] call KPLIB_fnc_createManagedUnit;
    };
} forEach _classnames;

[_grp] call KPLIB_fnc_LAMBS_enableReinforcements;

_grp
