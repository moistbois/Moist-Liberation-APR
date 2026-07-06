/*
    File: fn_getNearestPlayerSector.sqf
    Author: Valo Maahinen
    Date: 2026-07-05
    Last Update: 2026-07-05
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Gets the marker of the nearest player-owned sector from given position inside given radius.

    Parameter(s):
        _radius - Radius in which to look for the nearest sector    [NUMBER, defaults to 1000]
        _pos    - Position to look from for the nearest sector      [POSITION, defaults to getPos player]

    Returns:
        Marker of nearest sector [STRING]
*/

params [
    ["_pos", [0, 0, 0], [[]], [2, 3]],
    ["_radius", 1000, [0]]
];

private _sectors = (KPLIB_sectors_player apply {[(markerPos _x) distance2d _pos, _x]}) select {(_x select 0) <= _radius};
_sectors sort true;

(_sectors select 0) select 1
