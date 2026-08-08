if ( isDedicated ) exitWith {};

params [ "_battlegroup_position", "_delayMinutes" ];

if (!isNil "_delayMinutes") then {
    [ "lib_battlegroup_delayed", [ markerText ( [ 10000, markerPos _battlegroup_position ] call KPLIB_fnc_getNearestSector ), _delayMinutes ] ] call BIS_fnc_showNotification;
};
