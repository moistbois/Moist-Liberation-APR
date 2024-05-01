
KPLIB_init = false;
KPLIB_endgame = 0;
KPLIB_respawn_marker = "respawn";

// Version of the KP Liberation framework
KPLIB_version = [0, 96, "8apr"];

enableSaving [false, false];

if (isDedicated) then {debug_source = "Server";} else {debug_source = name player;};

[] call KPLIB_fnc_initSectors;
if (!isServer) then {waitUntil {!isNil "KPLIB_initServerDone"};};
[] call compile preprocessFileLineNumbers "KPLIB_config.sqf";
[] call compile preprocessFileLineNumbers "KPLIB_whitelists.sqf";
[] call compile preprocessFileLineNumbers "KPLIB_transportConfigs.sqf";
[] call compile preprocessFileLineNumbers "KPLIB_classnameLists.sqf";
[] call compile preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compile preprocessFileLineNumbers "presets\init_presets.sqf";
[] call compile preprocessFileLineNumbers "KPLIB_objectInits.sqf";

// Activate selected player menu. If CBA isn't loaded -> fallback to GREUH
if (KPPLM_CBA && KPLIB_param_playerMenu) then {
    [] call KPPLM_fnc_postInit;
} else {
    [] execVM "GREUH\scripts\GREUH_activate.sqf";
};
// FFE
// Leaving that in as a template for now
RydFFE_Debug = true;
RydFFE_ShellView = false;
RydFFE_ArtyShells = 5;
RydFFE_Amount = 2;
RydFFE_FOAccGain = 10;
RydFFE_Safe = (50);
RydFFE_FOClass = ([
"o_lingor_squad_leader",
"o_lingor_marksman_01",
"o_lingor_marksman_02",
"o_lingor_marksman_03",
"o_lingor_marksman_04",
"o_lingor_anti_tank_01",
"o_lingor_anti_air_01",
"o_lingor_anti_air_02",
"o_lingor_tank_commander",
"o_lingor_tank_crewman",
"o_lingor_artillery_01",
"o_lingor_artillery_02",
"o_lingor_pilot_01",
"o_lingor_pilot_02"
]);
RydFFE_Add_Rocket = ["O_LINGOR_BM_21"];
RydFFE_Add_Other = 
    [
    [["o_lingor_d30"],["rhs_mag_3of56_10","rhs_mag_3of56_10","rhs_mag_3of56_10","rhs_mag_3of69m_2","rhs_mag_d462_2"]],
	[["o_lingor_d30_at"],["rhs_mag_of462_direct","rhs_mag_of462_direct","rhs_mag_bk6m",""]],
	[["o_lingor_type_53_mortar"],["vn_mortar_type53_mag_he_x8","vn_mortar_type53_mag_wp_x8","vn_mortar_type53_mag_lume_x8",""]],
	[["o_lingor_type_63_mortar"],["vn_mortar_type63_mag_he_x8","vn_mortar_type63_mag_wp_x8","vn_mortar_type63_mag_lume_x8",""]]
    ];

nul = [] execVM "RYD_FFE\FFE.sqf";

CHVD_allowNoGrass = false; // Set 'false' if you want to disable "Low" option for terrain (default: true)

// Temperature and humidity changes
[{
    ace_weather_humidityShift = 25;
    ace_weather_temperatureShift = 27;
},[], 1] call CBA_fnc_waitAndExecute;

[] call compile preprocessFileLineNumbers "scripts\shared\init_shared.sqf";

if (isServer) then {
    [] call compile preprocessFileLineNumbers "scripts\server\init_server.sqf";
};

if (!isDedicated && !hasInterface && isMultiplayer) then {
    execVM "scripts\server\offloading\hc_manager.sqf";
};

if (!isDedicated && hasInterface) then {
    // Get mission version and readable world name for Discord rich presence
    [
        ["UpdateDetails", [localize "STR_MISSION_VERSION", "on", getText (configfile >> "CfgWorlds" >> worldName >> "description")] joinString " "]
    ] call (missionNamespace getVariable ["DiscordRichPresence_fnc_update", {}]);

    // Add EH for curator to add kill manager and object init recognition for zeus spawned units/vehicles
    {
        _x addEventHandler ["CuratorObjectPlaced", {[_this select 1] call KPLIB_fnc_handlePlacedZeusObject;}];
    } forEach allCurators;

    waitUntil {alive player};
    if (debug_source != name player) then {debug_source = name player};
    [] call compile preprocessFileLineNumbers "scripts\client\init_client.sqf";
} else {
    setViewDistance 1600;
};

// Execute fnc_reviveInit again (by default it executes in postInit)
if ((isNil {player getVariable "bis_revive_ehHandleHeal"} || isDedicated) && !(bis_reviveParam_mode == 0)) then {
    [] call bis_fnc_reviveInit;
};

///////////////////////////////////////////////
// ----- Clean and give default equipment -----
///////////////////////////////////////////////
if ( isServer) then {
    private _playableUnits = playableUnits + switchableUnits;

    // Get the default uniform for the first unit type in the list of buildable infantry units
    private _basic_uniform = KPLIB_b_basic_uniform;
    {
        [
            [_x,_basic_uniform],
            {
                //  Some commands are Local Argument, so they have to be executed remotely
                //  Because the unit controlled by the player belongs to the player's computer (Local Argument), it cannot be removed without remote
                params ["_unit","_basic_uniform"];

                // clear all equipment
                removeHeadgear _unit;                      // Clear Headgear
                removeGoggles _unit;                       // Clear face gear (glasses...etc)
                removeAllAssignedItems _unit;              // Clear equipable items
                removeAllWeapons _unit;                    // Clear primary weapons, secondary weapons, launchers
                removeAllContainers _unit;                 // Clear Clothes, Vests, Backpacks

                _unit addUniform _basic_uniform;     // given a specific uniform
                //_unit addWeapon "Rangefinder";    //  Binoculars/Night Vision Goggles are classified under Weapons...
                {
                    _unit linkItem _x;            //  Add and automatically equip special props
                } foreach [
                    "ItemCompass",
                    //"ItemGPS",
                    "ItemMap",
                    "ItemWatch"
                ];
            }
        ] remoteExec ["call",owner _x];  // Directly specify the computer of the player who belongs to the unit to execute, avoiding unnecessary broadcast
        //  TODO : Should AI units be filtered out so that they are not thrown into remoteExec to occupy resources?
    } foreach _playableUnits;
};
////////////////////////////////

KPLIB_init = true;

// Notify clients that server is ready
if (isServer) then {
    KPLIB_initServerDone = true;
    publicVariable "KPLIB_initServerDone";
};

//VAM_GUI: For changing camo and vehicle appearence without Zeus:
[] execVM "VAM_GUI\VAM_GUI_init.sqf";