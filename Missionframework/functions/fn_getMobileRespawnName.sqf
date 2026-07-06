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

private _respawn_vehicles = [] call KPLIB_fnc_getMobileRespawns;
private _name = "VEHICLE_NOT_FOUND";

if (!isNil "_msp") then {
    private _msp_name = _msp getVariable ["msp_name", nil];

    if (!isNil "_msp_name") then {
        _name = _msp_name;
    }
    else {
        //get random name from the russian alphabet
        _name = selectRandom KPLIB_russianAlphabet + " ";
        //add random number (3 digits)
        _name = _name + format ["%1%2%3", floor random 9, floor random 9, floor random 9];
        _msp setVariable ["msp_name", _name, true];
        //use msp_name
    };
};
_name
