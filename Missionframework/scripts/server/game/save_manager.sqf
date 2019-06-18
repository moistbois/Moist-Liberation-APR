diag_log format ["[KP LIBERATION] [SAVE] save_manager.sqf started - time: %1", diag_tickTime];

// Handle possible enabled "wipe save" mission parameters
if (GRLIB_param_wipe_savegame_1 == 1 && GRLIB_param_wipe_savegame_2 == 1) then {
    profileNamespace setVariable [GRLIB_save_key,nil];
    saveProfileNamespace;
    diag_log "[KP LIBERATION] [SAVE] Save wiped via mission parameters";
} else {
    diag_log "[KP LIBERATION] [SAVE] No save wipe";
};

/*
    --- Locals ---
    Variables which are only used inside the save_manager.sqf
*/

// Version of the KP Liberation framework
private _version = [0, 96, 5];
// Classnames of blufor vehicles
private _bluforClassnames = [];
// Current campaign date and time
private _dateTime = [];
// All classnames of objects which should be saved
private _classnamesToSave = [FOB_typename, huron_typename];
// Vehicles which shouldn't be handled in the kill manager
private _noKillHandler = [FOB_typename, huron_typename];
// All objects which should be loaded/saved
private _objectsToSave = [];
// All storages which are handled for resource persistence
private _resourceStorages = [];
// Collection array for the statistic values
private _stats = [];
// Collection array for the enemy weights
private _weights = [];

/*
    --- Globals ---
    Initializes global variables which are used at several places in the framework
*/

// All AI squads
ai_groups = [];
// Enemy weight for anti air
air_weight = 33;
// Enemy weight for anti armor
armor_weight = 33;
// Blufor sectors
blufor_sectors = [];
// Enemy combat readiness (0-100)
combat_readiness = 0;
// All FOBs
GRLIB_all_fobs = [];
// Player permissions data
GRLIB_permissions = [];
// Vehicle unlock links
GRLIB_vehicle_to_military_base_links = [];
// Enemy weight for anti infantry
infantry_weight = 33;
// Civilian reputation value (-100 - +100)
KP_liberation_civ_rep = 0;
// Captured civilian vehicles
KP_liberation_cr_vehicles = [];
// Strength value of the resistance forces
KP_liberation_guerilla_strength = 0;
// Logistic handling data
KP_liberation_logistics = [];
// Production handling data
KP_liberation_production = [];
// Factory markers to display the current available facilities
KP_liberation_production_markers = [];
// Global Intel resource
resources_intel = 0;

// Trigger to start a saving process
doSaveTrigger = false;

// Add all buildings for saving and kill manager ignore
{
    _noKillHandler pushBack (_x select 0);
    _classnamesToSave pushBack (_x select 0);
} foreach buildings;

// Fetch all blufor vehicle classnames
{
    _bluforClassnames pushBack (_x select 0);
    _classnamesToSave pushBack (_x select 0);
} foreach (static_vehicles + air_vehicles + heavy_vehicles + light_vehicles + support_vehicles);

// Add opfor and civilian vehicles for saving
_classnamesToSave = _classnamesToSave + all_hostile_classnames + civilian_vehicles;

/*
    --- Statistic Variables ---
*/

stats_ammo_produced = 0;
stats_ammo_spent = 0;
stats_blufor_soldiers_killed = 0;
stats_blufor_soldiers_recruited = 0;
stats_blufor_teamkills = 0;
stats_blufor_vehicles_built = 0;
stats_blufor_vehicles_killed = 0;
stats_civilian_buildings_destroyed = 0;
stats_civilian_vehicles_killed = 0;
stats_civilian_vehicles_killed_by_players = 0;
stats_civilians_healed = 0;
stats_civilians_killed = 0;
stats_civilians_killed_by_players = 0;
stats_fobs_built = 0;
stats_fobs_lost = 0;
stats_fuel_produced = 0;
stats_fuel_spent = 0;
stats_hostile_battlegroups = 0;
stats_ieds_detonated = 0;
stats_opfor_killed_by_players = 0;
stats_opfor_soldiers_killed = 0;
stats_opfor_vehicles_killed = 0;
stats_opfor_vehicles_killed_by_players = 0;
stats_player_deaths = 0;
stats_playtime = 0;
stats_prisonners_captured = 0;
stats_readiness_earned = 0;
stats_reinforcements_called = 0;
stats_resistance_killed = 0;
stats_resistance_teamkills = 0;
stats_resistance_teamkills_by_players = 0;
stats_secondary_objectives = 0;
stats_sectors_liberated = 0;
stats_sectors_lost = 0;
stats_spartan_respawns = 0;
stats_supplies_produced = 0;
stats_supplies_spent = 0;
stats_vehicles_recycled = 0;

// Prevent saving/duplication of objects placed in Eden
{
    _x setVariable ["KP_liberation_edenObject", true];
} forEach (allMissionObjects "");

// Get possible save data
greuh_liberation_savegame = profileNamespace getVariable GRLIB_save_key;

// Load save data, when retrieved
if (!isNil "greuh_liberation_savegame") then {
    if (((greuh_liberation_savegame select 0) select 0) isEqualType 0) then {
        diag_log format ["[KP LIBERATION] [SAVE] Save data from version: %1", (greuh_liberation_savegame select 0) joinstring "."];

        _dateTime                                   = greuh_liberation_savegame select  1;
        _objectsToSave                              = greuh_liberation_savegame select  2;
        _resourceStorages                           = greuh_liberation_savegame select  3;
        _stats                                      = greuh_liberation_savegame select  4;
        _weights                                    = greuh_liberation_savegame select  5;
        ai_groups                                   = greuh_liberation_savegame select  6;
        blufor_sectors                              = greuh_liberation_savegame select  7;
        combat_readiness                            = greuh_liberation_savegame select  8;
        GRLIB_all_fobs                              = greuh_liberation_savegame select  9;
        GRLIB_permissions                           = greuh_liberation_savegame select 10;
        GRLIB_vehicle_to_military_base_links        = greuh_liberation_savegame select 11;
        KP_liberation_civ_rep                       = greuh_liberation_savegame select 12;
        KP_liberation_guerilla_strength             = greuh_liberation_savegame select 13;
        KP_liberation_logistics                     = greuh_liberation_savegame select 14;
        KP_liberation_production                    = greuh_liberation_savegame select 15;
        KP_liberation_production_markers            = greuh_liberation_savegame select 16;
        resources_intel                             = greuh_liberation_savegame select 17;

        stats_ammo_produced                         = _stats select  0;
        stats_ammo_spent                            = _stats select  1;
        stats_blufor_soldiers_killed                = _stats select  2;
        stats_blufor_soldiers_recruited             = _stats select  3;
        stats_blufor_teamkills                      = _stats select  4;
        stats_blufor_vehicles_built                 = _stats select  5;
        stats_blufor_vehicles_killed                = _stats select  6;
        stats_civilian_buildings_destroyed          = _stats select  7
        stats_civilian_vehicles_killed              = _stats select  8;
        stats_civilian_vehicles_killed_by_players   = _stats select  9;
        stats_civilians_healed                      = _stats select 10;
        stats_civilians_killed                      = _stats select 11;
        stats_civilians_killed_by_players           = _stats select 12;
        stats_fobs_built                            = _stats select 13;
        stats_fobs_lost                             = _stats select 14;
        stats_fuel_produced                         = _stats select 15;
        stats_fuel_spent                            = _stats select 16;
        stats_hostile_battlegroups                  = _stats select 17;
        stats_ieds_detonated                        = _stats select 18;
        stats_opfor_killed_by_players               = _stats select 19;
        stats_opfor_soldiers_killed                 = _stats select 20;
        stats_opfor_vehicles_killed                 = _stats select 21;
        stats_opfor_vehicles_killed_by_players      = _stats select 22;
        stats_player_deaths                         = _stats select 23;
        stats_playtime                              = _stats select 24;
        stats_prisonners_captured                   = _stats select 25;
        stats_readiness_earned                      = _stats select 26;
        stats_reinforcements_called                 = _stats select 27;
        stats_resistance_killed                     = _stats select 28;
        stats_resistance_teamkills                  = _stats select 29;
        stats_resistance_teamkills_by_players       = _stats select 30;
        stats_secondary_objectives                  = _stats select 31;
        stats_sectors_liberated                     = _stats select 32;
        stats_sectors_lost                          = _stats select 33;
        stats_spartan_respawns                      = _stats select 34;
        stats_supplies_produced                     = _stats select 35;
        stats_supplies_spent                        = _stats select 36;
        stats_vehicles_recycled                     = _stats select 37;
    } else {
        /*
            --- Compatibility for older save data ---
            This will be removed if we reach a 0.96.7 due to more released Arma 3 DLCs until we finish 0.97.0
        */
        diag_log "[KP LIBERATION] [SAVE] Save data from version: pre 0.96.5";

        blufor_sectors                              = greuh_liberation_savegame select  0;
        GRLIB_all_fobs                              = greuh_liberation_savegame select  1;
        _objectsToSave                              = greuh_liberation_savegame select  2;
        _dateTime                                   = greuh_liberation_savegame select  3;
        combat_readiness                            = greuh_liberation_savegame select  4;
        _resourceStorages                           = greuh_liberation_savegame select  5;
        KP_liberation_production                    = greuh_liberation_savegame select  6;
        KP_liberation_logistics                     = greuh_liberation_savegame select  7;
        _stats                                      = greuh_liberation_savegame select  8;
        _weights                                    = greuh_liberation_savegame select  9;
        GRLIB_vehicle_to_military_base_links        = greuh_liberation_savegame select 10;
        GRLIB_permissions                           = greuh_liberation_savegame select 11;
        ai_groups                                   = greuh_liberation_savegame select 12;
        resources_intel                             = greuh_liberation_savegame select 13;
        KP_liberation_civ_rep                       = greuh_liberation_savegame select 15;
        KP_liberation_production_markers            = greuh_liberation_savegame select 16;
        KP_liberation_guerilla_strength             = greuh_liberation_savegame select 17;

        stats_opfor_soldiers_killed                 = _stats select  0;
        stats_opfor_killed_by_players               = _stats select  1;
        stats_blufor_soldiers_killed                = _stats select  2;
        stats_player_deaths                         = _stats select  3;
        stats_opfor_vehicles_killed                 = _stats select  4;
        stats_opfor_vehicles_killed_by_players      = _stats select  5;
        stats_blufor_vehicles_killed                = _stats select  6;
        stats_blufor_soldiers_recruited             = _stats select  7;
        stats_blufor_vehicles_built                 = _stats select  8;
        stats_civilians_killed                      = _stats select  9;
        stats_civilians_killed_by_players           = _stats select 10;
        stats_sectors_liberated                     = _stats select 11;
        stats_playtime                              = _stats select 12;
        stats_spartan_respawns                      = _stats select 13;
        stats_secondary_objectives                  = _stats select 14;
        stats_hostile_battlegroups                  = _stats select 15;
        stats_ieds_detonated                        = _stats select 16;
        stats_reinforcements_called                 = _stats select 19;
        stats_prisonners_captured                   = _stats select 20;
        stats_blufor_teamkills                      = _stats select 21;
        stats_vehicles_recycled                     = _stats select 22;
        stats_ammo_spent                            = _stats select 23;
        stats_sectors_lost                          = _stats select 24;
        stats_fobs_built                            = _stats select 25;
        stats_fobs_lost                             = _stats select 26;
        stats_readiness_earned                      = _stats select 27;
    };

    // Extract weigths from collection array
    infantry_weight = _weights select 0;
    armor_weight = _weights select 1;
    air_weight = _weights select 2;

    // Set correct resistance standing
    private _resistanceEnemy = [0, 1] select (KP_liberation_civ_rep < 25);
    private _resistanceFriendly = [0, 1] select (KP_liberation_civ_rep >= -25);

    GRLIB_side_resistance setFriend [GRLIB_side_enemy, _resistanceEnemy];
    GRLIB_side_enemy setFriend [GRLIB_side_resistance, _resistanceEnemy];
    GRLIB_side_resistance setFriend [GRLIB_side_friendly, _resistanceFriendly];
    GRLIB_side_friendly setFriend [GRLIB_side_resistance, _resistanceFriendly];

    if (KP_liberation_civrep_debug > 0) then {diag_log format ["[KP LIBERATION] [CIVREP] %1 getFriend %2: %3 - %1 getFriend %4: %5", GRLIB_side_resistance, GRLIB_side_enemy, (GRLIB_side_resistance getFriend GRLIB_side_enemy), GRLIB_side_friendly, (GRLIB_side_resistance getFriend GRLIB_side_friendly)];};

    // Apply current date and time
    if (_dateTime isEqualType []) then {
        setDate _dateTime;
    } else {
        setDate [2045, 6, 6, _dateTime, 0]; // Compatibility for older save data
    };

    //_objectsToSave pushBack [_class,_savedpos,_nextdir,_hascrew,_savedvec];		OLD
    //_objectsToSave pushBack [_class,_savedpos,_savedvecdir,_savedvecup,_hascrew];		NEW

    // Collection array for all objects which are loaded
    private _spawnedObjects = [];

    // Spawn all saved objects
    {
        // Classname of object to spawn
        private _class = _x select 0;

        // Pre 0.96.5 compatibility with repair building, as it was replaced by default with a different classname
        if (!(KP_liberation_recycle_building == "Land_CarService_F") && (_class == "Land_CarService_F")) then {
            _class = KP_liberation_recycle_building;
        };

        // Pre 0.96.5 compatibility with air building, as it was replaced by default with a different classname
        if (!(KP_liberation_air_vehicle_building == "Land_Radar_Small_F") && (_class == "Land_Radar_Small_F")) then {
            _class = KP_liberation_air_vehicle_building;
        };

        /*
            --- Done until here ---
            --- Below still to do ---
        */

        // Only spawn, if the classname is still in the presets
        if (_class in _classnamesToSave) then {
            private _pos = _x select 1;
            private _vecdir = _x select 2;
            private _vecup = _x select 3;
            private _hascrew = false;

            private _object = createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
            _object allowdamage false;
            _object enableSimulation false;
            _spawnedObjects pushBack _object;

            _object setPosWorld _pos;
            _object setVectorDirAndUp [_vecdir, _vecup];
            _hascrew = _x param [4, false];

            if (_hascrew) then {
                [ _object ] call F_forceBluforCrew;
            };

            if !(_class in _noKillHandler) then {
                _object addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
            };

            if (_class in all_hostile_classnames) then {
                _object setVariable ["GRLIB_captured", 1, true];
            };

            if (_class == FOB_typename) then {
                _object addEventHandler ["HandleDamage", {0}];
            };

            _object call F_addObjectInit;

            if !(_class in KP_liberation_ace_crates) then {
                if(KP_liberation_clear_cargo || !(_class isKindOf "AllVehicles")) then {
                    clearWeaponCargoGlobal _object;
                    clearMagazineCargoGlobal _object;
                    clearBackpackCargoGlobal _object;
                    clearItemCargoGlobal _object;
                };
            };

            if (_class in civilian_vehicles) then {
                KP_liberation_cr_vehicles pushBack _object;
            };
        };
    } forEach _objectsToSave;

    if (KP_liberation_savegame_debug > 0) then {diag_log "[KP LIBERATION] [SAVE] Saved buildings placed";};

    {
        private _class = _x select 0;

        if (_class in _classnamesToSave) then {

            //_resourceStorages pushBack [_class,_savedpos,_nextdir,_supplyValue,_ammoValue,_fuelValue,_savedvec];			OLD
            //_resourceStorages pushBack [_class,_savedpos,_savedvecdir,_savedvecup,_supplyValue,_ammoValue,_fuelValue];		NEW

            private _pos = _x select 1;
            private _vecdir = _x select 2;
            private _vecup = _x select 3;
            private _supply = 0;
            private _ammo = 0;
            private _fuel = 0;

            private _object = createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];;
            _object allowdamage false;
            _object enableSimulation false;

            // Old savegame version (Backwards compatibility)
            if (typeName _vecdir == typeName 0) then {
                _object setPosATL _pos;
                _object setdir _vecdir;	// actually a number
                _supply = floor (_x select 3);
                _ammo = floor (_x select 4);
                _fuel = floor (_x select 5);

            // New savegame version
            } else {
                _object setPosWorld _pos;
                _object setVectorDirAndUp [_vecdir, _vecup];
                _supply = floor (_x select 4);
                _ammo = floor (_x select 5);
                _fuel = floor (_x select 6);
            };

            _object setdamage 0;
            _object enableSimulation true;
            _object allowdamage true;

            _object setVariable ["KP_liberation_storage_type", 0, true];

            while {_supply > 0} do {
                private _amount = 100;
                if ((_supply / 100) < 1) then {
                    _amount = _supply;
                };
                _supply = _supply - _amount;
                private _crate = [KP_liberation_supply_crate, _amount, _pos] call F_createCrate;
                [_crate, _object] call F_crateToStorage;
            };

            while {_ammo > 0} do {
                private _amount = 100;
                if ((_ammo / 100) < 1) then {
                    _amount = _ammo;
                };
                _ammo = _ammo - _amount;
                private _crate = [KP_liberation_ammo_crate, _amount, _pos] call F_createCrate;
                [_crate, _object] call F_crateToStorage;
            };

            while {_fuel > 0} do {
                private _amount = 100;
                if ((_fuel / 100) < 1) then {
                    _amount = _fuel;
                };
                _fuel = _fuel - _amount;
                private _crate = [KP_liberation_fuel_crate, _amount, _pos] call F_createCrate;
                [_crate, _object] call F_crateToStorage;
            };
        };
    } forEach _resourceStorages;

    // Re-enable physics on the spawned objects
    {
        _x enableSimulation true;
        _x setdamage 0;
        _x allowdamage true;
    } forEach _spawnedObjects;


    if (KP_liberation_savegame_debug > 0) then {diag_log "[KP LIBERATION] [SAVE] Saved storages placed"};

    {
        private _storage = _x select 3;

        if ((count _storage) == 3) then {
            private _pos = _storage select 0;
            private _nextdir = _storage select 1;

            private _object = createVehicle [KP_liberation_small_storage_building, _pos, [], 0, "CAN_COLLIDE"];
            _object enableSimulationGlobal false;
            _object allowdamage false;
            if (count (_storage select 2) == 3) then {
                _object setVectorUp (_storage select 2);
            };
            _object setPosATL _pos;
            _object setdamage 0;
            _object setdir _nextdir;
            _object setVariable ["KP_liberation_storage_type", 1, true];

            _object enableSimulationGlobal true;
            _object allowdamage true;

            private _supply = floor (_x select 9);
            private _ammo = floor (_x select 10);
            private _fuel = floor (_x select 11);

            while {_supply > 0} do {
                private _amount = 100;
                if ((_supply / 100) < 1) then {
                    _amount = _supply;
                };
                _supply = _supply - _amount;
                private _crate = [KP_liberation_supply_crate, _amount, _pos] call F_createCrate;
                [_crate, _object] call F_crateToStorage;
            };

            while {_ammo > 0} do {
                private _amount = 100;
                if ((_ammo / 100) < 1) then {
                    _amount = _ammo;
                };
                _ammo = _ammo - _amount;
                private _crate = [KP_liberation_ammo_crate, _amount, _pos] call F_createCrate;
                [_crate, _object] call F_crateToStorage;
            };

            while {_fuel > 0} do {
                private _amount = 100;
                if ((_fuel / 100) < 1) then {
                    _amount = _fuel;
                };
                _fuel = _fuel - _amount;
                private _crate = [KP_liberation_fuel_crate, _amount, _pos] call F_createCrate;
                [_crate, _object] call F_crateToStorage;
            };
        };
    } forEach KP_liberation_production;

    if (KP_liberation_savegame_debug > 0) then {diag_log "[KP LIBERATION] [SAVE] Saved sector storages placed";};

    {
        private _nextgroup = _x;
        private _grp = createGroup [GRLIB_side_friendly, true];
        {
            private _nextunit = _x;
            private _pos = [(_nextunit select 1) select 0, (_nextunit select 1) select 1, ((_nextunit select 1) select 2) + 0.2];
            private _nextdir = _nextunit select 2;
            (_nextunit select 0) createUnit [ _pos, _grp, 'this addMPEventHandler ["MPKilled", {_this spawn kill_manager}] '];
            private _nextobj = ((units _grp) select ((count (units _grp)) - 1));
            _nextobj setPosATL _pos;
            _nextobj setDir _nextdir;
        } forEach _nextgroup;
    } forEach ai_groups;

    diag_log "[KP LIBERATION] [SAVE] Save loading finished";
} else {
    diag_log "[KP LIBERATION] [SAVE] Save nil";
};

publicVariable "stats_ieds_detonated";
publicVariable "blufor_sectors";
publicVariable "GRLIB_all_fobs";

if (count GRLIB_vehicle_to_military_base_links == 0) then {
    private _assigned_bases = [];
    private _assigned_vehicles = [];

    while {count _assigned_bases < count sectors_military && count _assigned_vehicles < count elite_vehicles} do {
        private _nextbase =  selectRandom (sectors_military select {!(_x in _assigned_bases)});
        private _nextvehicle =  selectRandom (elite_vehicles select {!(_x in _assigned_vehicles)});
        _assigned_bases pushBack _nextbase;
        _assigned_vehicles pushBack _nextvehicle;
        GRLIB_vehicle_to_military_base_links pushBack [_nextvehicle, _nextbase];
    };
} else {
    private _classnames_to_check = GRLIB_vehicle_to_military_base_links;
    {
        if !([_x select 0] call F_checkClass) then {
            GRLIB_vehicle_to_military_base_links = GRLIB_vehicle_to_military_base_links - [_x];
        };
    } forEach _classnames_to_check;
};
publicVariable "GRLIB_vehicle_to_military_base_links";
publicVariable "GRLIB_permissions";
publicVariable "KP_liberation_cr_vehicles";
save_is_loaded = true; publicVariable "save_is_loaded";

diag_log format ["[KP LIBERATION] [SAVE] save_manager.sqf done - time: %1", diag_tickTime];

while {true} do {
    waitUntil {
        sleep 0.5;
        doSaveTrigger || GRLIB_endgame == 1;
    };

    if (KP_liberation_savegame_debug > 0) then {diag_log format ["[KP LIBERATION] [SAVE] Save interval started - time: %1", time];};

    if (GRLIB_endgame == 1) then {
        profileNamespace setVariable [GRLIB_save_key, nil];
        saveProfileNamespace;
        while {true} do {sleep 300;};
    } else {
        doSaveTrigger = false;
        _objectsToSave = [];
        _resourceStorages = [];
        ai_groups = [];

        private _all_buildings = [];
        private _all_storages = [];
        {
            private _fobpos = _x;
            private _nextbuildings = (_fobpos nearobjects (GRLIB_fob_range * 2)) select {
                ((typeof _x) in _classnamesToSave ) &&
                (alive _x) &&					            // Exclude dead or broken objects
                (speed _x < 5) &&				            // Exclude moving objects (like civilians driving through)
                (isNull attachedTo _x) &&			        // Exclude attachTo'd objects
                (((getpos _x) select 2) < 10) &&	        // Exclude hovering helicopters and the like
                (getObjectType _x >= 8) &&			        // Exclude preplaced terrain objects
                !((typeOf _x) in KP_liberation_crates) &&	// Exclude storage crates (those are handled separately)
                !(_x getVariable ["KP_liberation_preplaced", false]) &&
                !(_x getVariable ["KP_liberation_edenObject", false])
             };

            _all_buildings = (_all_buildings + _nextbuildings) select {!((typeOf _x) in KP_liberation_storage_buildings)};
            _all_storages = (_all_storages + _nextbuildings) select {(_x getVariable ["KP_liberation_storage_type",-1]) == 0};

            {
                private _nextgroup = _x;
                if (side _nextgroup == GRLIB_side_friendly) then {
                    if ({isPlayer _x} count (units _nextgroup) == 0) then {
                        if ({ alive _x} count (units _nextgroup) > 0) then {
                            if ((_fobpos distance (leader _nextgroup) < GRLIB_fob_range * 2) && ((typeOf (leader _nextgroup)) in friendly_infantry_classnames)) then {
                                private _grouparray = [];
                                {
                                    if (alive _x && (vehicle _x == _x)) then {
                                        _grouparray pushBack [typeof _x, getPosATL _x, getDir _x];
                                    };
                                } forEach (units _nextgroup);
                                ai_groups pushBack _grouparray;
                            };
                        };
                    };
                };
            } forEach allGroups;
        } forEach GRLIB_all_fobs;

        // Save all buildings and vehicles
        {
            private _savedpos = getPosWorld _x;;
            private _savedvecdir = vectorDirVisual _x;
            private _savedvecup = vectorUpVisual _x;;
            private _class = typeof _x;
            private _hascrew = false;

            if (_class in _bluforClassnames) then {
                if (({!isPlayer _x} count (crew _x) ) > 0) then {
                    _hascrew = true;
                };
            };
            if (!(_class in civilian_vehicles) || (_x in KP_liberation_cr_vehicles)) then {
                //_objectsToSave pushBack [_class,_savedpos,_nextdir,_hascrew,_savedvec];
                _objectsToSave pushBack [_class,_savedpos,_savedvecdir,_savedvecup,_hascrew];
            };
        } forEach _all_buildings;

        {
            private _savedpos = getPosWorld _x;;
            private _savedvecdir = vectorDirVisual _x;
            private _savedvecup = vectorUpVisual _x;;
            private _class = typeof _x;
            _supplyValue = 0;
            _ammoValue = 0;
            _fuelValue = 0;

            {
                switch ((typeOf _x)) do {
                    case KP_liberation_supply_crate: {_supplyValue = _supplyValue + (_x getVariable ["KP_liberation_crate_value",0]);};
                    case KP_liberation_ammo_crate: {_ammoValue = _ammoValue + (_x getVariable ["KP_liberation_crate_value",0]);};
                    case KP_liberation_fuel_crate: {_fuelValue = _fuelValue + (_x getVariable ["KP_liberation_crate_value",0]);};
                    default {diag_log format ["[KP LIBERATION] [ERROR] Invalid object (%1) at storage area", (typeOf _x)];};
                };
            } forEach (attachedObjects _x);

            //_resourceStorages pushBack [_class,_savedpos,_nextdir,_supplyValue,_ammoValue,_fuelValue,_savedvec];
            _resourceStorages pushBack [_class,_savedpos,_savedvecdir,_savedvecup,_supplyValue,_ammoValue,_fuelValue];
        } forEach _all_storages;

        /*
            --- Above still to do ---
            --- Done from here ---
        */

        _stats = [
            stats_ammo_produced,
            stats_ammo_spent,
            stats_blufor_soldiers_killed,
            stats_blufor_soldiers_recruited,
            stats_blufor_teamkills,
            stats_blufor_vehicles_built,
            stats_blufor_vehicles_killed,
            stats_civilian_buildings_destroyed,
            stats_civilian_vehicles_killed,
            stats_civilian_vehicles_killed_by_players,
            stats_civilians_healed,
            stats_civilians_killed,
            stats_civilians_killed_by_players,
            stats_fobs_built,
            stats_fobs_lost,
            stats_fuel_produced,
            stats_fuel_spent,
            stats_hostile_battlegroups,
            stats_ieds_detonated,
            stats_opfor_killed_by_players,
            stats_opfor_soldiers_killed,
            stats_opfor_vehicles_killed,
            stats_opfor_vehicles_killed_by_players,
            stats_player_deaths,
            stats_playtime,
            stats_prisonners_captured,
            stats_readiness_earned,
            stats_reinforcements_called,
            stats_resistance_killed,
            stats_resistance_teamkills,
            stats_resistance_teamkills_by_players,
            stats_secondary_objectives,
            stats_sectors_liberated,
            stats_sectors_lost,
            stats_spartan_respawns,
            stats_supplies_produced,
            stats_supplies_spent,
            stats_vehicles_recycled
        ];

        _weights = [
            infantry_weight,
            armor_weight,
            air_weight
        ];

        greuh_liberation_savegame = [
            _version,
            date,
            _objectsToSave,
            _resourceStorages,
            _stats,
            _weights,
            ai_groups,
            blufor_sectors,
            combat_readiness,
            GRLIB_all_fobs,
            GRLIB_permissions,
            GRLIB_vehicle_to_military_base_links,
            KP_liberation_civ_rep,
            KP_liberation_guerilla_strength,
            KP_liberation_logistics,
            KP_liberation_production,
            KP_liberation_production_markers,
            resources_intel
        ];

        profileNamespace setVariable [GRLIB_save_key, greuh_liberation_savegame];
        saveProfileNamespace;

        if (KP_liberation_savegame_debug > 0) then {diag_log format ["[KP LIBERATION] [SAVE] Save interval finished - time: %1", time];};
    };
};
