/*
TODO figure out dependencies
    Needed Mods:
    Optional Mods:
    - None
*/


// Enemy infantry classes
KPLIB_o_officer = "O_RSA90_Officer";                             // Officer
KPLIB_o_squadLeader = "O_RSA90_SL";                        // Squad Leader
KPLIB_o_teamLeader = "O_RSA90_SL";                         // Squad Leader
KPLIB_o_sentry = "O_RSA90_Rifleman1";                        // Rifleman 1 (AK74)
KPLIB_o_rifleman = "O_RSA90_Rifleman3";                    // Rifleman 3 (M70B3N)
KPLIB_o_riflemanLAT = "O_RSA90_AntiTank2";                                 // Anti-Tank 2 (RPG-18)
KPLIB_o_grenadier = "O_RSA90_Grenadier";                           // Grenadier (AK74 GP25)
KPLIB_o_machinegunner = "O_RSA90_Machinegunner2";                  // Machinegunner 2 (RPK74)
KPLIB_o_heavyGunner = "O_RSA90_HMG";                         // HMG (PKM)
KPLIB_o_marksman = "O_RSA90_Marksman1";                    // Marksman 1 (M70B1N)
KPLIB_o_sharpshooter = "O_RSA90_Marksman2";                  // Marksman 2 (VSS Vintorez)
KPLIB_o_sniper = "O_RSA90_Sniper";                        // Sniper (M76)
KPLIB_o_atSpecialist = "O_RSA90_AntiTank1";                                  // AT Specialist (RPG-7)
KPLIB_o_aaSpecialist = "O_RSA90_AntiAir";                                  // AA Specialist
KPLIB_o_medic = "O_RSA90_Medical";                         // Medic
KPLIB_o_engineer = "O_RSA90_Engineer";                      // Engineer
KPLIB_o_paratrooper = "O_RSA90_Rifleman4";                 // Rifleman 4 (Vz 58)

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "O_RSA90_M1151";                                    // M1151
KPLIB_o_mrapArmed = "O_RSA90_BRDM2";                                        // BRDM2
KPLIB_o_transportHeli = "O_RSA90_MI8MT_Cargo";                           // Mi-8MT (Cargo)
KPLIB_o_transportTruck = "O_RSA90_GAZ66_Transport";                                 // GAZ-66 (Transport)
KPLIB_o_transportTruckAmmo = "rhs_zil131_open_msv";                          // ZiL-131 (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "O_RSA90_URAL_Fuel";                              // Ural-4320 (Fuel)
KPLIB_o_ammoTruck = "O_RSA90_URAL_Ammo";                                // GAZ-66 (Ammo)
KPLIB_o_fuelContainer = "Land_Ind_TankSmall2";            				 // Cargo Container
KPLIB_o_ammoContainer = "Misc_Cargo1B_military";          				// Wooden and Metal Ammo Crates
KPLIB_o_flag = "rhssaf_flag_serbia";                                          // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "O_RSA90_SL",								// "Squad Leader"
    "O_RSA90_Rifleman1",								// "Rifleman 1 AK74"
    "O_RSA90_Rifleman2",								// "Rifleman AK47"
    "O_RSA90_Rifleman3",								// "Rifleman M70B1N"
    "O_RSA90_Rifleman4",								// "Rifleman Vz 58"
    "O_RSA90_Marksman1",								// "Marksman M70B1N"
    "O_RSA90_Spotter",								// "Spotter AK74"
    "O_RSA90_AntiTank2",								// "Anti-Tank RPG-18"
    "O_RSA90_Machinegunner1",								// "Machinegunner RPK"
    "O_RSA90_Machinegunner2",								// "Machinegunner RPK74"
    "O_RSA90_HMG",								// "Heavy Machine Gunner PKM"
    "O_RSA90_Grenadier",								// "Grenadier AK74 GP25"
    "O_RSA90_Shotgun",								// "Shotgun"
    "O_RSA90_Medical",								// "Medic"
    "O_RSA90_Engineer"								// "Engineer"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry militia.
KPLIB_o_militiaVehicles = [
	"O_RSA90_M1151",
    "O_RSA90_M1151",
    "O_RSA90_BRDM2UM",
    "O_RSA90_BTR60PB",
    "O_RSA90_M1151",
    "O_RSA90_BMP",
    "O_RSA90_Podnos",
    "O_RSA90_M2",
    "O_RSA90_NSV"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
	"O_RSA90_M1151",
    "O_RSA90_BRDM2",
    "O_RSA90_BTR60PB",
    "O_RSA90_BTR80",
    "O_RSA90_GAZ66_AA",
    "O_RSA90_URAL_AA",
    "O_RSA90_BMP",
    "O_RSA90_T34",
    "O_RSA90_T72",
    "O_RSA90_T55",
    "O_RSA90_D30",
    "O_RSA90_Podnos",
    "O_RSA90_ZU23",
    "O_RSA90_M2",
    "O_RSA90_M2Lo",
    "O_RSA90_NSV"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
	"O_RSA90_M1151",
    "O_RSA90_BRDM2UM",
    "O_RSA90_BTR60PB",
    "O_RSA90_BMP",
    "O_RSA90_T34",
    "O_RSA90_Podnos",
    "O_RSA90_M2",
    "O_RSA90_M2Lo",
    "O_RSA90_NSV"

];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "O_RSA90_GAZ66_AA",
    "O_RSA90_URAL_AA",
    "O_RSA90_GAZ66_Transport",
    "O_RSA90_BRDM2",
    "O_RSA90_BTR80",
    "O_RSA90_T72",
    "O_RSA90_GAZ66_Transport",
    "O_RSA90_T55",
    "O_RSA90_D30",
    "O_RSA90_GAZ66_Transport",
    "O_RSA90_ZU23"

];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
	"O_RSA90_M1151",
    "O_RSA90_BRDM2UM",
    "O_RSA90_GAZ66_Transport",
    "O_RSA90_BTR60PB",
    "O_RSA90_GAZ66_Transport",
    "O_RSA90_M1151",
    "O_RSA90_GAZ66_Transport",
    "O_RSA90_BMP",
    "O_RSA90_GAZ66_Transport",
    "O_RSA90_Podnos"

];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviors may occur.    */
KPLIB_o_troopTransports = [
    "O_RSA90_Mi24V",                                                 // Mi-24V
    "O_RSA90_Mi24P",                                                 // Mi-24P
    "O_RSA90_Mi8MT",                                                 // Mi-8
    "O_RSA90_BTR60PB",
    "O_RSA90_BMP",
    "O_RSA90_GAZ66_Transport"

];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "O_RSA90_Mi24V",                                                 // Mi-24V
    "O_RSA90_Mi24P",                                                 // Mi-24P
    "O_RSA90_Mi8MT"                                                 // Mi-8

];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [

];

// Enemy defense turrets that will be spawned in sectors.
KPLIB_o_turrets_HMG = [

];

// Enemy defense turrets that will be spawned in sectors.
KPLIB_o_turrets_GMG = [

];

// Enemy defense turrets that will be spawned in sectors.
KPLIB_o_turrets_AT = [

];

// Enemy defense turrets that will be spawned in sectors.
KPLIB_o_turrets_AA = [

];

// Enemy defense turrets that will be spawned in sectors.
KPLIB_o_turrets_MORTAR = [

];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
    ["O_RSA90_BM21"],
    ["O_RSA90_GAZ66_AA"],
    ["O_RSA90_URAL_AA"],
    ["O_RSA90_ZU23"],
    ["rhssaf_army_2s1"]
];