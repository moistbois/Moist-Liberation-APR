private ["_kp_markers_array","_kp_markers_start","_kp_markers_change", "_kp_markers_size", "_kp_markers_pos","_kp_markers_posx","_kp_markers_posy","_kp_markers_name","_kp_markers_color"];

waitUntil {sleep 0.1; !isNil "KPLIB_saveLoaded" && {KPLIB_saveLoaded}};

_kp_markers_array = [];
_kp_markers_start = 0.2;
_kp_markers_change = 0.05;
_kp_markers_size = 500; // size of marker square

while {true} do {
    {deleteMarkerLocal _x;} forEach _kp_markers_array;
    _kp_markers_array = [];
    {
        // handle radio tower scanning
        if ((side _x == KPLIB_side_enemy) && (({!captive _x} count (units _x) ) > 0) && ([(getpos leader _x), KPLIB_side_player, KPLIB_range_radioTowerScan] call KPLIB_fnc_getNearestTower != "")) then {
            _kp_markers_pos = getPosATL leader _x;
            _kp_markers_posx = floor (_kp_markers_pos select 0);
            _kp_markers_posx = _kp_markers_posx - (_kp_markers_posx mod _kp_markers_size);
            _kp_markers_posy = floor (_kp_markers_pos select 1);
            _kp_markers_posy = _kp_markers_posy - (_kp_markers_posy mod _kp_markers_size);

            // Chernarus Grid Fix
            if (worldName == "Chernarus") then {
                _kp_markers_posy = _kp_markers_posy - 140;
                if ((_kp_markers_posy + _kp_markers_size) < (_kp_markers_pos select 1)) then {
                    _kp_markers_posy = _kp_markers_posy + _kp_markers_size;
                };
            };

            // Sahrani Grid Fix
            if (worldName == "Sara") then {
                _kp_markers_posy = _kp_markers_posy - 20;
                if ((_kp_markers_posy + _kp_markers_size) < (_kp_markers_pos select 1)) then {
                    _kp_markers_posy = _kp_markers_posy + _kp_markers_size;
                };
            };

            _kp_markers_name = format["kp_marker_radio_%1_%2", _kp_markers_posx, _kp_markers_posy];
            _kp_markers_color = format["Color%1", side _x];

            if ((markerShape _kp_markers_name) isEqualTo "RECTANGLE") then {
                _kp_markers_name setMarkerAlphaLocal (((markerAlpha _kp_markers_name) + _kp_markers_change) min 1);
            } else {
                createMarkerLocal[_kp_markers_name, [_kp_markers_posx + _kp_markers_size / 2, _kp_markers_posy + _kp_markers_size / 2, 0]];
                _kp_markers_name setMarkerShapeLocal "RECTANGLE";
                _kp_markers_name setMarkerSizeLocal [_kp_markers_size / 2,_kp_markers_size / 2];
                _kp_markers_name setMarkerColorLocal _kp_markers_color;
                _kp_markers_name setMarkerAlphaLocal (_kp_markers_start + _kp_markers_change);
                _kp_markers_array pushBack _kp_markers_name;
            };
        };

        // handle sector "informant" scanning
        if ((side _x == KPLIB_side_enemy) && (({!captive _x} count (units _x) ) > 0) && ([(getpos leader _x), (KPLIB_range_radioTowerScan / 2)] call KPLIB_fnc_getNearestPlayerSector != "")) then {
            private _markerSize = 250;
            private _markerStart = 0.3;

            _kp_markers_pos = getPosATL leader _x;
            _kp_markers_posx = floor (_kp_markers_pos select 0);
            _kp_markers_posx = _kp_markers_posx - (_kp_markers_posx mod _markerSize);
            _kp_markers_posy = floor (_kp_markers_pos select 1);
            _kp_markers_posy = _kp_markers_posy - (_kp_markers_posy mod _markerSize);

            // Chernarus Grid Fix
            if (worldName == "Chernarus") then {
                _kp_markers_posy = _kp_markers_posy - 140;
                if ((_kp_markers_posy + _markerSize) < (_kp_markers_pos select 1)) then {
                    _kp_markers_posy = _kp_markers_posy + _markerSize;
                };
            };

            // Sahrani Grid Fix
            if (worldName == "Sara") then {
                _kp_markers_posy = _kp_markers_posy - 20;
                if ((_kp_markers_posy + _markerSize) < (_kp_markers_pos select 1)) then {
                    _kp_markers_posy = _kp_markers_posy + _markerSize;
                };
            };

            _kp_markers_name = format["kp_marker_informant_%1_%2_%3", _markerSize, _kp_markers_posx, _kp_markers_posy];
            _kp_markers_color = format["Color%1", side _x];

            if ((markerShape _kp_markers_name) isEqualTo "RECTANGLE") then {
                _kp_markers_name setMarkerAlphaLocal (((markerAlpha _kp_markers_name) + _kp_markers_change) min 1);
            } else {
                createMarkerLocal[_kp_markers_name, [_kp_markers_posx + _markerSize / 2, _kp_markers_posy + _markerSize / 2, 0]];
                _kp_markers_name setMarkerShapeLocal "RECTANGLE";
                _kp_markers_name setMarkerSizeLocal [_markerSize / 2,_markerSize / 2];
                _kp_markers_name setMarkerColorLocal _kp_markers_color;
                _kp_markers_name setMarkerAlphaLocal (_markerStart + _kp_markers_change);
                _kp_markers_array pushBack _kp_markers_name;
            };
        };
    } forEach allGroups;
    uiSleep (60 + (random 60));
};