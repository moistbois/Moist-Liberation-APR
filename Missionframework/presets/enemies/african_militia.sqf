/*
TODO figure out dependencies
    Needed Mods:
		- Project OPFOR
		- RHS: AFRF
		- RHS: USAF 
		- RHS: GREF
		- RHS: SAF
		- ARMSCor 3.5.5
    Optional Mods:
    - None
*/


// Enemy infantry classes
KPLIB_o_officer = "LOP_AFR_OPF_Infantry_SL";                             // Officer (Warlord)
KPLIB_o_squadLeader = "LOP_AFR_OPF_Infantry_SL";                        // Squad Leader (Warlord)
KPLIB_o_teamLeader = "LOP_AFR_OPF_Infantry_SL";                         // Team Leader (Chief)
KPLIB_o_sentry = "LOP_AFR_OPF_Infantry_Rifleman";                        // Rifleman (AKM)
KPLIB_o_rifleman = "LOP_AFR_OPF_Infantry_Rifleman_4";                    // Rifleman (AKM PM-63)
KPLIB_o_riflemanLAT = "LOP_AFR_OPF_Infantry_AT";                                 // Rifleman (RPG-7)
KPLIB_o_grenadier = "LOP_AFR_OPF_Infantry_GL";                           // Grenadier (AKM GP-25)
KPLIB_o_machinegunner = "LOP_AFR_OPF_Infantry_AR_Asst";                  // Autorifleman (AR_Asst)
KPLIB_o_heavyGunner = "LOP_AFR_OPF_Infantry_AR";                         // Heavy Gunner (PKM)
KPLIB_o_marksman = "LOP_AFR_OPF_Infantry_Rifleman_7";                    // Marksman (M38)
KPLIB_o_sharpshooter = "LOP_AFR_OPF_Infantry_Marksman";                  // Sharpshooter (SVD)
KPLIB_o_sniper = "LOP_AFR_OPF_Infantry_Marksman";                        // Sniper (SVD)
KPLIB_o_atSpecialist = "LOP_AFR_OPF_Infantry_AT";                                  // AT Specialist (RPG-7)
KPLIB_o_aaSpecialist = "LOP_AFR_OPF_Infantry_AT";                                  // AA Specialist (RPG-7)
KPLIB_o_medic = "LOP_AFR_OPF_Infantry_Corpsman";                         // Combat Life Saver (Bonesetter)
KPLIB_o_engineer = "LOP_AFR_OPF_Infantry_IED";                      // Engineer (Bomber)
KPLIB_o_paratrooper = "LOP_AFR_OPF_Infantry_Rifleman_4";                 // Paratrooper (AKM PM-63)

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "LOP_AFR_OPF_Landrover";                                    // Landrover
KPLIB_o_mrapArmed = "LOP_AFR_OPF_Landrover_M2";                           // Landrover (M2)
KPLIB_o_transportHeli = "LOP_TKA_Mi8MT_Cargo";                           // Mi-8MT (Cargo)
KPLIB_o_transportTruck = "LOP_TKA_Ural";                                 // Ural-4320 (Covered)
KPLIB_o_transportTruckAmmo = "LOP_TKA_Ural_open";                          // Ural-4320 (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "RHS_Ural_Fuel_MSV_01";                              // Ural-4320 (Fuel)
KPLIB_o_ammoTruck = "rhs_gaz66_ammo_msv";                                // GAZ-66 (Ammo)
KPLIB_o_fuelContainer = "Land_Ind_TankSmall2";            				 // Cargo Container
KPLIB_o_ammoContainer = "Misc_Cargo1B_military";          				// Wooden and Metal Ammo Crates
KPLIB_o_flag = "lop_Flag_afr_F";                                          // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "LOP_AFR_OPF_Infantry_Rifleman",                                     // Rifleman (AKM)
	"LOP_AFR_OPF_Infantry_Rifleman",                                     // Rifleman (AKM)
	"LOP_AFR_OPF_Infantry_Rifleman_GL",                                  // Rifleman (AKM GP-25)
    "LOP_AFR_OPF_Infantry_Rifleman_6",                                   // Rifleman (Vz. 58)
    "LOP_AFR_OPF_Infantry_Rifleman_4",                                   // Rifleman (AKM PM63)
	"LOP_AFR_OPF_Infantry_Rifleman_4",                                   // Rifleman (AKM PM63)
    "LOP_AFR_OPF_Infantry_AT",                                           // Rifleman (RPG-7)
	"LOP_AFR_OPF_Infantry_AT",                                           // Rifleman (RPG-7)
    "LOP_AFR_OPF_Infantry_AR",                                           // Autorifleman (PKM)
	"LOP_AFR_OPF_Infantry_AR_2",                                         // Autorifleman (MG42)
    "LOP_AFR_OPF_Infantry_AR_Asst",                                      // Autorifleman Asst. (PKM)
	"LOP_AFR_OPF_Infantry_AR_Asst_2",                                    // Autorifleman Asst. (MG42)
    "LOP_AFR_OPF_Infantry_Rifleman_7",                                   // Marksman (M38)
	"LOP_AFR_OPF_Infantry_Marksman",                                     // Marksman (SVD)
    "LOP_AFR_OPF_Infantry_Corpsman",                                     // Medic (Bonesetter)
	"LOP_AFR_OPF_Infantry_Corpsman",                                     // Medic (Bonesetter)
    "LOP_AFR_OPF_Infantry_IED",                                          // Engineer (Bomber)
	"LOP_AFR_OPF_Infantry_IED"                                           // Engineer (Bomber)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
	"LOP_AM_OPF_UAZ_DshKM",                                              // UAZ-3151 (DShKM)
	"LOP_AM_OPF_UAZ_DshKM",                                              // UAZ-3151 (DShKM)
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"rhs_2b14_82mm_msv",												// 2B14 Podnos (155mm HE)
	"rhs_2b14_82mm_msv"												// 2B14 Podnos (155mm HE)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
    "LOP_AFR_OPF_Landrover_SPG9",                                      // Land Rover (SPG)
	"LOP_AFR_OPF_Landrover_SPG9",                                      // Land Rover (SPG)
    "LOP_AFR_OPF_Offroad_M2",                                          // Offroad (M2)
	"LOP_AFR_OPF_Offroad_M2",                                          // Offroad (M2)
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
    "LOP_AFR_OPF_BTR60",                                               // BTR-60PB
	"LOP_AFR_OPF_BTR60",                                               // BTR-60PB
    "LOP_AFR_OPF_T55",                                                 // T55A
	"LOP_AFR_OPF_T55",                                                 // T55A
    "rhsgref_ins_zsu234",                                               // ZSU-23-4V AA
	"rhsgref_ins_zsu234",                                               // ZSU-23-4V AA
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"RHS_ZU23_MSV",														// ZU-23-2 (23×152mm AA)
	"RHS_ZU23_MSV",														// ZU-23-2 (23×152mm AA)
	"rhs_D30_msv",														// 2A18/D-30 (122mm towed howitzer)
	"rhs_D30_msv"														// 2A18/D-30 (122mm towed howitzer)
	
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "O_UAV_01_F",													 // AR-2 Drone CSAT
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
    "LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Offroad_M2",                                          // Offroad (M2)
	"LOP_AFR_OPF_Offroad_M2",                                          // Offroad (M2)
	"LOP_AFR_OPF_Offroad_AT",                                          // Offroad (AT)
	"LOP_AFR_OPF_Offroad_AT",                                          // Offroad (AT)
    "LOP_AFR_OPF_BTR60",                                                // BTR-60PB
	"LOP_AFR_OPF_BTR60",                                                // BTR-60PB
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"rhs_2b14_82mm_msv",												// 2B14 Podnos (155mm HE)
	"rhs_2b14_82mm_msv"												// 2B14 Podnos (155mm HE)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "O_UAV_01_F",													 // AR-2 Drone CSAT
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
    "LOP_AFR_OPF_Landrover_SPG9",                                      // Land Rover (SPG)
	"LOP_AFR_OPF_Landrover_SPG9",                                      // Land Rover (SPG)
    "LOP_AFR_OPF_Offroad_M2",                                          // Offroad (M2)
	"LOP_AFR_OPF_Offroad_M2",                                          // Offroad (M2)
    "LOP_AFR_OPF_Truck",                                               // Truck (Cargo)
	"LOP_AFR_OPF_Truck",                                               // Truck (Cargo)
    "LOP_AFR_OPF_BTR60",                                               // BTR-60PB
	"LOP_AFR_OPF_BTR60",                                               // BTR-60PB
    "LOP_AFR_OPF_T55",                                                 // T55A
	"LOP_AFR_OPF_T55",                                                 // T55A
    "LOP_AFR_OPF_T72BB",                                               // T72B
	"LOP_AFR_OPF_T72BB",                                               // T72B
    "rhsgref_ins_zsu234",                                              // ZSU-23-4V (AA)
	"rhsgref_ins_zsu234",                                              // ZSU-23-4V (AA)
    "LOP_TKA_Mi8MTV3_FAB",                                              // Mi-8MTV-3 (FAB)
	"LOP_TKA_Mi8MTV3_FAB",                                              // Mi-8MTV-3 (FAB)
	"LOP_TKA_Mi24V_AT",                                                 // Mi-24T (AT)
	"LOP_TKA_Mi24V_AT",                                                 // Mi-24T (AT)
    "LOP_TKA_Mi24V_UPK23",                                               // Mi-24V (UPK)
	"LOP_TKA_Mi24V_UPK23",                                               // Mi-24V (UPK)
	"rhs_2b14_82mm_msv",												// 2B14 Podnos (82mm Mortar)
	"rhs_2b14_82mm_msv",												// 2B14 Podnos (82mm Mortar)
	"rhs_D30_msv",														// 2A18/D-30 (122mm towed howitzer)
	"rhs_D30_msv"														// 2A18/D-30 (122mm towed howitzer)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "O_UAV_01_F",													 // AR-2 Drone CSAT
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
	"LOP_AFR_OPF_Landrover_M2",                                        // Land Rover (M2)
    "LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Nissan_PKM",                                          // Nissan (PKM)
	"LOP_AFR_OPF_Offroad_AT",                                          // Offroad (AT)
	"LOP_AFR_OPF_Offroad_AT",                                          // Offroad (AT)
    "LOP_AFR_OPF_Truck",                                               // Truck (Cargo)
	"LOP_AFR_OPF_Truck",                                               // Truck (Cargo)
	"ARMSCor_Landrover_SADF_I",											// Land Rover
	"ARMSCor_Landrover_SADF_I",											// Land Rover
	"RHS_Ural_Open_MSV_01",                                            // URAL-4320 (Open)
	"RHS_Ural_Open_MSV_01",                                            // URAL-4320 (Open)
	"rhssaf_army_o_ural_open",                                           // Ural-375D (Open)
	"rhssaf_army_o_ural_open",                                           // Ural-375D (Open)
    "LOP_TKA_Mi8MT_Cargo",                                              // Mi-8MT (Cargo) 
	"LOP_TKA_Mi8MT_Cargo",                                              // Mi-8MT (Cargo) 
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"rhs_KORD_high_MSV",												// KORD (6U16) (12.7x108mm)
	"RHS_ZU23_MSV",														// ZU-23-2 (23×152mm AA)
	"RHS_ZU23_MSV",														// ZU-23-2 (23×152mm AA)
	"rhs_D30_msv",														// 2A18/D-30 (122mm towed howitzer)
	"rhs_D30_msv"														// 2A18/D-30 (122mm towed howitzer)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
KPLIB_o_troopTransports = [
    "RHS_Ural_Open_MSV_01",                                               // URAL-4320 (Open)
	"LOP_AFR_OPF_Truck",                                               // Truck (Cargo)
	"rhssaf_army_o_ural_open",                                           // Ural-375D (Open)
	"ARMSCor_Landrover_SADF_I",											// Land Rover
    "LOP_AFR_OPF_BTR60",                                               // BTR-60PB
    "LOP_TKA_Mi8MT_Cargo",                                              // Mi-8MT (Cargo)
	"LOP_TKA_Mi24V_AT",                                                 // Mi-24T (AT)
	"RHS_Mi24P_vvs",                                              // MI-24P (GSh-30-2k/S8 KOM)
    "LOP_TKA_Mi24V_UPK23",                                               // Mi-24V (UPK)
	"RHS_Mi24V_vvs", 											//MI-24V (S-8 KOM and DF and a YakB-12.7)
	"LOP_TKA_Mi8MTV3_FAB"                                              // Mi-8MTV-3 (FAB)
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "LOP_TKA_Mi24V_AT",                                                 // Mi-24T (AT)
	"LOP_TKA_Mi24V_UPK23",                                               // Mi-24V (UPK)
	"LOP_TKA_Mi8MTV3_FAB",                                              // Mi-8MTV-3 (FAB)
	"O_UAV_01_F",													 // AR-2 Drone CSAT
	"LOP_TKA_Mi8MT_Cargo",											// Mi-8MT (Cargo)
	"RHS_Mi24P_vvs",                                              // MI-24P (GSh-30-2k/S8 KOM)
	"RHS_Mi24V_vvs", 											//MI-24V (S-8 KOM and DF and a YakB-12.7)
	"ARMSCor_Rooivalk_I" 											// AH-2 Rooivalk Mk-1F (F2 20mm Cannon and 9K121 Vikhr)
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [

];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_HMG = [
    "O_HMG_01_F",
    "O_HMG_01_high_F"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_GMG = [
    "O_GMG_01_F",
    "O_GMG_01_high_F"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AT = [
    "O_static_AT_F"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AA = [
    "O_static_AA_F"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_MORTAR = [
    "O_Mortar_01_F"
];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
    ["B_SAM_System_01_F"], 
    ["B_SAM_System_02_F"], 
    ["O_SAM_System_04_F", "O_Radar_System_02_F"]
];