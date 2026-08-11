_combat_triggers = [30, 50, 60, 70, 90];
if ( KPLIB_param_unitcap < 0.9 ) then { _combat_triggers = [30,40,50,90]; };
if ( KPLIB_param_unitcap > 1.3 ) then { _combat_triggers = [20,30,50,60,70,90]; };

_combat_triggers_infantry = [20, 40, 60];
if ( KPLIB_param_unitcap < 0.9 ) then { _combat_triggers_infantry = [20,40]; };
if ( KPLIB_param_unitcap > 1.3 ) then { _combat_triggers_infantry = [20,30,40,60,80]; };

sleep 5;

waitUntil { sleep 0.3; !isNil "KPLIB_sectors_player" };
waitUntil { sleep 0.3; count KPLIB_sectors_player > 3 };


{
	[_x, false] spawn manage_one_patrol;
	sleep 1;
} foreach _combat_triggers;


//{
//    [_x, true] spawn manage_one_patrol;
//    sleep 1;
//} foreach _combat_triggers_infantry;
