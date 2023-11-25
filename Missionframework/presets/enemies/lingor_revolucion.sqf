/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-05-15
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default CSAT) enemy preset.

    Needed Mods:
        - None

    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "O_Lingor_Officer";                                        // Officer
KPLIB_o_squadLeader = "O_Lingor_Squad_Leader";                                 // Squad Leader
KPLIB_o_teamLeader = "O_Lingor_Rifleman_01";                                  // Rifleman AK-47
KPLIB_o_sentry = "O_Lingor_Marksman_02";                                    // Marksman M1
KPLIB_o_rifleman = "O_Lingor_Rifleman_03";                                       // Rifleman M16A1
KPLIB_o_riflemanLAT = "O_Lingor_Anti_Tank_01";                                // Anti-Tank
KPLIB_o_grenadier = "O_Lingor_Grenadier";                                   // Grenadier
KPLIB_o_machinegunner = "O_Lingor_Machinegunner_02";                               // Machinegunner RPD
KPLIB_o_heavyGunner = "O_Lingor_Machinegunner_03";                                // Machinegunner M60
KPLIB_o_marksman = "O_Lingor_Marksman_04";                                     // Marksman SKS
KPLIB_o_sharpshooter = "O_Lingor_Marksman_03";                              // Marksman M1 (Alt)
KPLIB_o_sniper = "O_Lingor_Marksman_01";                                          // Marksman KRAG
KPLIB_o_atSpecialist = "O_Lingor_Anti_Tank_01";                                // Anti-Tank
KPLIB_o_aaSpecialist = "O_Lingor_Anti_Air_01";                                // AA Specialist
KPLIB_o_medic = "O_Lingor_Medic";                                            // Combat Life Saver
KPLIB_o_engineer = "O_Lingor_Shotgun";                                      // Engineer
KPLIB_o_paratrooper = "O_Lingor_Rifleman_04";                                 // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "O_Lingor_BRDM_2";                                           // Ifrit
KPLIB_o_mrapArmed = "O_LINGOR_BTR_40_DShKM";                                  // Ifrit (HMG)
KPLIB_o_transportHeli = "O_LINGOR_Mi_8MT_Cargo";                  // MI-8MT (Cargo)
KPLIB_o_transportTruck = "O_Lingor_M151A1_Transport";                        // Tempest Transport (Covered)
KPLIB_o_transportTruckAmmo = "O_Lingor_Unimog_Transport";                  // Tempest Transport (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "vn_o_wheeled_z157_fuel";                                // Tempest Fuel
KPLIB_o_ammoTruck = "O_Lingor_Unimog_Transport";                                // Tempest Ammo
KPLIB_o_fuelContainer = "Land_Pod_Heli_Transport_04_fuel_F";            // Taru Fuel Pod
KPLIB_o_ammoContainer = "Land_Pod_Heli_Transport_04_ammo_F";            // Taru Ammo Pod
KPLIB_o_flag = "flag_arl";                                           // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "O_Lingor_Rifleman_01",                                             // Rifleman AK-47
	"O_Lingor_Rifleman_01",                                             // Rifleman AK-47
	"O_Lingor_Rifleman_02",                                             // Rifleman Galil
	"O_Lingor_Rifleman_02",                                             // Rifleman Galil
	"O_Lingor_Rifleman_03",                                             // Rifleman M16A1
	"O_Lingor_Rifleman_03",                                             // Rifleman M16A1
    "O_Lingor_Anti_Tank_01",                                            // Anti-Tank
	"O_Lingor_Anti_Tank_01",                                            // Anti-Tank
    "O_Lingor_Shotgun",                                                  // Shotgun
	"O_Lingor_Shotgun",                                                  // Shotgun
	"O_Lingor_Marksman_01",                                              // Marksman KRAG
	"O_Lingor_Marksman_01",                                              // Marksman KRAG
    "O_Lingor_Marksman_04",                                              // Marksman SKS
	"O_Lingor_Marksman_04",                                              // Marksman SKS
    "O_Lingor_Medic",                                                   // Machinegunner RPD
	"O_Lingor_Medic",                                                   // Machinegunner RPD
	"O_Lingor_Machinegunner_02",                                                    // Engineer
    "O_Lingor_Machinegunner_02"                                                    // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
	"O_Lingor_Datsun_Transport",                                                  // Datsun Transport
	"O_Lingor_M151A1_M1919",                                                  // M151A1 M1919
	"O_Lingor_Unimog_Transport",                                                  // Unimog Transport
	"O_Lingor_M1910LA",
	"O_Lingor_M1910L",
	"O_LINGOR_Type_53_Mortar"
	
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "O_Lingor_M151A1_M1919",                                                  // M151A1 M1919
	"O_LINGOR_BTR_40_DShKM",                                                  // BTR-40 (DShKM)
	"O_Lingor_BRDM_2",                                                  // BRDM-2
	"O_Lingor_T55",                                                  // T-55A
	"O_Lingor_T34",                                                  // T34-85M
	"O_Lingor_Shilka",														 // Shilka
	"O_Lingor_PT_76A",                                                  // PT-76A
    "O_Lingor_M151A1_TOW",                                                // M151A1 TOW
	"O_Lingor_Type_63_Tank",                                                // Type 63 (Tank)
	"O_Lingor_M1910LA",
	"O_Lingor_M1910L",
	"O_Lingor_mk18",
	"O_LINGOR_Type_53_Recoilless_Rifle",
	"O_Lingor_D30",
	"O_Lingor_D30_AT",
	"O_Lingor_M45",
	"O_LINGOR_ZU_232",
	"O_LINGOR_Type_53_Mortar",
	"O_LINGOR_Type_53_Mortar",
	"O_LINGOR_Type_63_Mortar",
	"O_LINGOR_Type_63_Mortar"
	
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
	"O_Lingor_M151A1_M1919",                                                  // M151A1 M1919
	"O_Lingor_M151A1_M1919",                                                  // M151A1 M1919
	"O_LINGOR_BTR_40_DShKM",                                                  // BTR-40 (DShKM)
	"O_LINGOR_BTR_40_DShKM",                                                  // BTR-40 (DShKM)
	"O_Lingor_Unimog_Transport",                                                  // Unimog Transport
	"O_Lingor_M151A1_TOW",
	"O_Lingor_M151A1_TOW",
	"O_Lingor_D30",
	"O_Lingor_D30_AT",
	"O_LINGOR_Type_53_Mortar",
	"O_LINGOR_Type_53_Mortar",
	"O_LINGOR_Type_63_Mortar"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
	"O_Lingor_Shilka",														 // Shilka
	"O_Lingor_M151A1_M1919",                                                  // M151A1 M1919
	"O_Lingor_Unimog_Transport",                                                  // Unimog Transport
	"O_LINGOR_BTR_40_DShKM",                                                  // BTR-40 (DShKM)
	"O_LINGOR_Mi_8MT_Cargo",                                      // MI-8MT (Cargo)
	"O_LINGOR_BM_21",
	"O_Lingor_BRDM_2",                                                  // BRDM-2
	"O_Lingor_T55",                                                  // T-55A
	"O_LINGOR_MI_24VT",                                      // MI-24VT
	"O_Lingor_T34",                                                  // T34-85M
	"O_Lingor_PT_76A",                                                  // PT-76A
	"O_LINGOR_MI_24P",                                      // MI-24P
	"O_Lingor_PT_76B",                                                  // PT-76B
	"O_Lingor_M151A1_TOW",                                                // M151A1 TOW
	"O_Lingor_M41",                                                			// M41A3
	"O_Lingor_Type_63_Tank",                                                // Type 63 (Tank)
	"O_LINGOR_Mi_8MTV3",                                      // Mi-8MTV-3
	"O_Lingor_M45",
	"O_Lingor_D30",
	"O_Lingor_D30_AT",
	"O_LINGOR_Type_53_Mortar",
	"O_LINGOR_Mi_8MT",                                      // MI-8MT
	"O_LINGOR_Type_63_Mortar"
	
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "O_Lingor_M151A1_M1919",                                                  // M151A1 M1919
	"O_Lingor_Unimog_Transport",                                                  // Unimog Transport
	"O_Lingor_M151A1_TOW",
	"O_LINGOR_BTR_40_DShKM",                                                  // BTR-40 (DShKM)
	"O_LINGOR_Type_53_Mortar",
	"O_LINGOR_Type_63_Mortar"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur. */
KPLIB_o_troopTransports = [
    "O_Lingor_Unimog_Transport",                                                  // Unimog Transport
    "O_Lingor_PT_76A",                                                  // PT-76A
	"O_Lingor_PT_76B",                                                  // PT-76B
	"O_Lingor_Type_63_Tank",                                                // Type 63 (Tank)
	"O_Lingor_BRDM_2",                                                  // BRDM-2
	"O_LINGOR_Mi_8MTV3",                                      // Mi-8MTV-3
	"O_LINGOR_MI_24P",                                      // MI-24P
	"O_LINGOR_MI_24VT",                                      // MI-24VT
	"O_LINGOR_Mi_8MT",                                      // MI-8MT
	"O_LINGOR_Mi_8MT_Cargo"                                      // MI-8MT (Cargo)
	
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "O_LINGOR_Mi_8MTV3",                                      // Mi-8MTV-3
	"O_LINGOR_MI_24P",                                      // MI-24P
	"O_LINGOR_MI_24VT",                                      // MI-24VT
	"O_LINGOR_Mi_8MT",                                      // MI-8MT
	"O_LINGOR_Mi_8MT_Cargo"                                      // MI-8MT (Cargo)
	
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [

];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_HMG = [

];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_GMG = [

];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AT = [

];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AA = [

];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_MORTAR = [

];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
	["O_LINGOR_BM_21"],
	["O_Lingor_Shilka"],
    ["O_LINGOR_ZU_232"]
];