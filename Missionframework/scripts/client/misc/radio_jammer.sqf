if (!hasInterface) exitWith {};

waitUntil {
    !isNull player &&
    {!isNil "KPLIB_sectors_tower"} &&
    {!isNil "KPLIB_sectors_player"} &&
    {!isNil "KPLIB_side_enemy"}
};

#define JAM_STRENGTH 0.2 // 0.0 - 1.0 -> minimum 
#define BOOST_MODIFIER 0.1

private _fnc_setInterference = {
    params ["_recInterference", "_sendInterference"];

	// Multipliers range from 1 (normal range) to 0 (no range)
    player setVariable ["tf_receivingDistanceMultiplicator", _recInterference];
    player setVariable ["tf_sendingDistanceMultiplicator", _sendInterference];
};

while {true} do {

    sleep 10;

    if (!alive player) then {
		[1,1] call _fnc_setInterference;
		continue;
	};

    private _tower =
        [getPos player, KPLIB_side_enemy, KPLIB_range_radioTowerScan]
        call KPLIB_fnc_getNearestTower;

	private _bluforBoost = 1 + 0.1 * count (KPLIB_sectors_tower select {_x in KPLIB_sectors_player});

    // No enemy tower nearby
    if (isNil "_tower") then {
		[_bluforBoost, _bluforBoost] call _fnc_setInterference;
        continue;
    };

    private _dist = player distance2D (markerPos _tower);
	private _jamDist = KPLIB_range_radioTowerScan;

	// multiplier decreases linearly as distance decreases
	private _jamFactor = ((1 - JAM_STRENGTH) / _jamDist) * _dist + JAM_STRENGTH; // straight line between the points (0, JAM_STRENGTH) and (_jamDist, 1)

	[_jamFactor, _jamFactor] call _fnc_setInterference;
};