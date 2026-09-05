/*
    File: fn_getMobileRespawnName.sqf
    Author: doxus
    Date: 2024-04-23
    Last Update: 2024-04-23
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Gets NATO military name of the given respawn vehicle (assigned per idx)

    Parameter(s):
        _msp - mobile respawn vehicle object reference (defaults to nil)

    Returns:
        Mobile respawn name
*/


params [
    ["_msp", nil]
];

private _name = "VEHICLE_NOT_FOUND";

if (!isNil "_msp") then {
    private _msp_name = _msp getVariable ["msp_name", nil];

    if (!isNil "_msp_name") then {
        _name = _msp_name;
    }
    else {
		// find used names
		private _respawns = [] call KPLIB_fnc_getMobileRespawns;
		private _used = _respawns apply {_x getVariable ["msp_name", ""]};

        //get random name from the russian alphabet
        _name = selectRandom (KPLIB_russianAlphabet select {!(_x in _used)});

        _msp setVariable ["msp_name", _name, true];
        //use msp_name
    };
};
_name
