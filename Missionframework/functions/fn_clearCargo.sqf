/*
    File: fn_clearCargo.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-03-30
    Last Update: 2020-05-22
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Clears the cargo of given object while providing
        a toggle to skip the paramter and ace crate check.

    Parameter(s):
        _obj    - Object for cargo clearing             [OBJECT, defaults to objNull]
        _force  - Skip the paramter and ACE crate check [BOOL, defaults to false]

    Returns:
        Function reached the end [BOOL]
*/

params [
    ["_obj", objNull, [objNull]],
    ["_force", false, [false]]
];

if (isNull _obj) exitWith {["Null object given"] call BIS_fnc_error; false};

if (_force || {!((typeOf _obj) in KPLIB_ace_crates) && !((typeOf _obj) in KPLIB_gear_crates) && {KPLIB_param_clearCargo || {!((typeOf _obj) isKindOf "AllVehicles")}}}) then {
    clearWeaponCargoGlobal _obj;
    clearMagazineCargoGlobal _obj;
    clearBackpackCargoGlobal _obj;
    clearItemCargoGlobal _obj;
};

true
