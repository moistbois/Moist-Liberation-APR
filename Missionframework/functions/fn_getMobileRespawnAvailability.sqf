/*
    File: fn_getMobileRespawnAvailability.sqf
    Author: Maahi
    Date: 2026-08-21
    Last Update: 2026-08-21
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Gets mobile respawn availability depending on enemy proximity

    Parameter(s):
        _msp - mobile respawn vehicle object reference (defaults to nil)

    Returns:
        Players are allowed to respawn [BOOLEAN]
*/

params [
    ["_msp", nil]
];

private _available = true;
private _radius = 300;

if (!isNil "_msp" && {!isNull _msp}) then {
	private _ownership = [ getPos _msp, _radius ] call KPLIB_fnc_getSectorOwnership;
	if (_ownership == KPLIB_side_enemy) then {
		_available = false;
	};

};
_available