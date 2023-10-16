/*
    Needed Mods:
    -Project OPFOR


    Optional Mods:
    - None
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding = "Land_Slum_House02_F";                                    // This is the main FOB HQ building.
KPLIB_b_fobBox = "Base_WarfareBContructionSite";                            // This is the FOB as a container.
KPLIB_b_fobTruck = "LOP_CDF_KAMAZ_Covered";                              // This is the FOB as a vehicle.
KPLIB_b_arsenal = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn = "RHS_Ural_MSV_01";                           // This is the mobile respawn (and medical) truck.
KPLIB_b_potato01 = "RHS_Ural_Open_Civ_01";                                       // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit = "LOP_AFRCiv_Driver";                          // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit = "LOP_AFR_Driver";                              // This defines the pilot for helicopters.
KPLIB_b_addHeli = "LOP_AFR_Landrover";                  // These are the little birds which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat = "rhsgref_nat_ural_open";                 // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck = "rhs_kamaz5350_flatbed_vdv";            // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage = "ContainmentArea_02_forest_F";   // A small storage area for resources.
KPLIB_b_largeStorage = "ContainmentArea_01_forest_F";   // A large storage area for resources.
KPLIB_b_logiStation = "Land_House_C_12_EP1";           // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl = "Land_ControlTower_01_F";                       // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli = "Land_HelipadCivil_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane = "Land_Airport_01_hangar_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KPLIB_b_crateFuel = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
    ["LOP_AFRCiv_Soldier_Medic",30,0,0],                                           // Bonesetter
	["LOP_AFR_Infantry_AR", 60,0,0],                                 			 // Pirate (PKM)
	["LOP_AFR_Infantry_AR_2", 60,0,0],                                 			 // Pirate (MG-42)
	["LOP_AFR_Infantry_AR_Asst", 60,0,0],                                 			 // Pirate (PKM)
	["LOP_AFR_Infantry_AR_Asst_2", 60,0,0],                                 			 // Pirate (MG-42)
	["LOP_AFR_Infantry_IED",30,0,0],                                        // Bomber
	["LOP_AFR_Infantry_GL",30,0,0],                                  			 // Grenadier
    ["LOP_AFR_Infantry_AT",60,10,0],                                             // Pirate (RPG-7)
    ["LOP_AFR_Infantry_Rifleman_5",15,0,0],                              // Pirate (IzH18)
    ["LOP_AFR_Infantry_Rifleman_7",15,0,0],                                 // Pirate (M38)
	["LOP_AFR_Infantry_Rifleman_6",30,0,0],                                   // Pirate (Vz. 58)
    ["LOP_AFR_Infantry_Rifleman",30,0,0],                                        // Pirate (AKM)
	["LOP_AFR_Infantry_Rifleman_4",30,0,0],                                  // Pirate (AKM PM-63)
    ["LOP_AFR_Infantry_Rifleman_8",30,0,0],                           // Pirate (MP 44)
	["LOP_AFR_Infantry_Rifleman_2",30,0,0],                                       // Pirate (M16)
	["LOP_AFR_Infantry_Marksman",30,0,0],                                        // Pirate (SVDs)
    ["LOP_AFR_Driver",10,0,0]                                     // Pirate Driver
];

KPLIB_b_vehLight = [
    ["O_Quadbike_01_F",15,0,5],                                        // Quad Bike
    ["ARMSCor_Landrover_SADF_I",35,0,45],                                 // Land Rover
	["LOP_AFR_Landrover",35,0,45],                                 // Land Rover
	["LOP_AFR_Landrover_M2",75,40,45],                                 // Land Rover (M2)
	["C_Offroad_02_unarmed_F",25,0,45],                                 // Jeep Wrangler
	["I_C_Offroad_02_LMG_F",75,25,45],                              // Jeep Wrangler (FN Minimi SPW LMG)
	["RHS_Ural_Open_MSV_01",50,0,75],                                 // URAL-4320 (Open)
	["rhs_gaz66_vmf",45,0,60],                                 // GAZ-66
	["rhsgref_hidf_canoe",0,0,0],                                 // Canoe
	["B_Boat_Transport_01_F",25,0,2],                                 // Dinghy
	["C_Scooter_Transport_01_F",10,0,5],                                 // Jetski
	["I_C_Boat_Transport_02_F",45,0,40],                                 // RHIB
	["rhs_bmk_t",15,0,15]                           			      // BMK Tug
];

KPLIB_b_vehHeavy = [
    ["rhsgref_BRDM2",275,150,300],                                      // BRDM-2. (KPVT (14.5x115mm))
	["rhsgref_tla_btr60",375,180,300],                                      // BTR-60PB APC ((PKT (7.62x54mm) and KPVT (14.5x115mm))
    ["rhs_bmp1_vdv",600,470,420],                    			// BMP-1 (2A28 Cannon (HE-FRAG OG15V/HEAT PG15V), PKT (7.62x54mm), 9K111 (wire AT missile))
    ["LOP_AFR_T55",800,800,800]                                     // T-55A (D-10 Cannon (BK5M HEAT-FS), (OF416Sh HE-FRAG), BM8 APDS)

];

KPLIB_b_vehAir = [
    ["B_UAV_01_F",50,0,10],                                             // AR-2 Darter
	["C_Heli_Light_01_civil_F",100,0,25],                                 // MD 500
	["ARMSCor_AlouetteIII_SF_ZADF_I",100,0,25],                            // Alouette III
	["rhs_uh1h_hidf_unarmed",100,0,25],                                // UH-1H
	["rhs_uh1h_hidf",120,280,25],                                             // UH-1H (M240Hx2)
	["RHS_Mi8mt_vvs",130,300,30],                                             // Mi-8MT (PKT (7.62x54mm))
	["RHS_Mi24Vt_vvs",140,300,30],                                             // MI-24VT (YakB-12.7)
	["RHS_AN2",100,0,25],                                             // AN2
	["RHSGREF_A29B_HIDF",300,100,125]                                             // A-29 Super Tucano

];

KPLIB_b_vehStatic = [
    ["RHS_NSV_TriPod_VDV",25,30,0],                                     // NSV Low Tripod (12.7x108mm)
	["rhs_KORD_MSV",25,30,0],											// KORD (6U16) (12.7x108mm)
	["rhs_KORD_high_MSV",30,30,0],											// KORD (6U16) (12.7x108mm)
	["rhsgref_cdf_DSHKM_Mini_TriPod",25,30,0],							// DShKm Mini-Tripod (12.7x108mm)
	["LOP_AFR_Static_DSHKM",30,30,0],											// DShKm (12.7x108mm)
	["rhs_SPG9M_MSV",50,100,0],											// SPG-9M (HE-FRAG OG9VM, HEAT PG9N)
	["RHS_ZU23_MSV",80,125,0],											// ZU-23-2 (23×152mm AA)
	["rhs_D30_msv",100,750,0],											// 2A18/D-30 (155mm HE)
	["rhs_2b14_82mm_msv",100,750,0]											// 2B14 Podnos (155mm HE)
];

KPLIB_b_objectsDeco = [
    ["Land_Slum_01_F",0,0,0],
    ["Land_Cargo_Patrol_V2_F",0,0,0],
    ["Land_GuardTower_01_F",0,0,0],
    ["lop_Flag_afr_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_MedicalTent_01_tropic_closed_F",0,0,0],
    ["CamoNet_OPFOR_F",0,0,0],
    ["CamoNet_OPFOR_open_F",0,0,0],
    ["CamoNet_OPFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
	["Land_Laptop_unfolded_F",0,0,0],
	["Land_WaterCooler_01_old_F",0,0,0],
	["Land_BakedBeans_F",0,0,0],
	["Land_CerealsBox_F",0,0,0],
	["Land_Campfire_F",0,0,0],
	["Land_TentA_Fd",0,0,0],
	["Land_KBud",0,0,0],
	["Satelit",0,0,0],
	["Land_Bucket_F",0,0,0],
	["Land_CanisterPlastic_F",0,0,0],
	["Land_TinContainer_F",0,0,0],
	["Land_Pallets_stack_F",0,0,0],
	["datsun02Wreck",0,0,0],
	["Land_Barricade_01_4m_F",0,0,0],
	["Land_Barricade_01_10m_F",0,0,0],
	["Land_Posed",0,0,0],
	["Land_Barrack2_EP1",0,0,0],
	["Land_fort_rampart_EP1",0,0,0],
	["Land_cargo_house_slum_F",0,0,0],
	["Land_Misc_Well_L_EP1",0,0,0],
	["Land_GarbageWashingMachine_F",0,0,0],
	["Land_GarbageHeap_01_F",0,0,0],
	["Land_GarbageHeap_02_F",0,0,0],
	["Land_GarbageHeap_03_F",0,0,0],
	["Land_GarbageHeap_04_F",0,0,0],
	["Land_JunkPile_F",0,0,0],
	["Land_Misc_GContainer_Big",0,0,0],
	["Land_Wreck_Car3_F",0,0,0],
	["Land_Sleeping_bag_F",0,0,0],
	["Land_Sleeping_bag_brown_F",0,0,0],
	["Land_Garbage_square5_F",0,0,0],
	["Land_GarbageBags_F",0,0,0],
	["Land_Garbage_square3_F",0,0,0],
	["GunrackTK_EP1",0,0,0],
	["Land_HumanSkull_F",0,0,0],
	["Land_PalmTotem_02_F",0,0,0],
	["plp_bo_BottleGin",0,0,0],
	["CUP_tv_a",0,0,0],
	["Land_PartyTent_01_F",0,0,0],
	["Land_Microwave_01_F",0,0,0],
	["plp_bo_ChainOfLightsMono",0,0,0],
	["plp_bo_ChainOfLightsMonoShort",0,0,0],
	["Land_Leseni4x",0,0,0],
	["Land_Leseni2x",0,0,0],
	["Computer",0,0,0],
	["Land_Water_pipe_EP1",0,0,0],
	["Misc_TyreHeapEP1",0,0,0],
	["Misc_Wall_lamp",0,0,0],
	["Land_Slum_02_F",0,0,0],
	["CUP_case_bedroom_b",0,0,0],
	["CUP_postel_manz_kov",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_WoodenTable_large_F",0,0,0],
	["Land_WoodenTable_small_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
	["Wall_FenW2_6_EP1",0,0,0],
	["Fence_corrugated_plate",0,0,0],
	["Fence_Ind_long",0,0,0],
	["Fence_Ind",0,0,0],
	["FenceWood",0,0,0],
	["FenceWoodPalet",0,0,0],
	["WireFence",0,0,0],
	["Land_Mil_WiredFence_F",0,0,0],
	["Land_Mil_WiredFence_Gate_F",0,0,0],
	["Land_TentA_F",0,0,0],
	["Land_TentLamp_01_standing_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
	["Land_WoodenWindBreak_01_F",0,0,0],
	["Land_Caravan_01_rust_Fa",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
	["Wire",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

KPLIB_b_vehSupport = [
    [KPLIB_b_arsenal,100,200,0],
    [KPLIB_b_mobileRespawn,200,0,100],
    [KPLIB_b_fobBox,300,500,0],
    [KPLIB_b_fobTruck,300,500,75],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,100,0,0],
    [KPLIB_b_airControl,800,0,0],
    [KPLIB_b_slotHeli,250,0,0],
    [KPLIB_b_slotPlane,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["RHS_Ural_Repair_MSV_01",50,0,60],                                // Ural Repair
    ["RHS_Ural_Fuel_MSV_01",50,0,160],                                 // Ural Fuel
    ["rhs_gaz66_ammo_vmf",40,100,45],                                  // Gaz-66 Ammo
    ["B_Slingload_01_Repair_F",50,0,0],                                // Huron Container Repair
	["Land_Workbench_01_F",50,0,0], 									// Workbench Repair
    ["B_Slingload_01_Fuel_F",0,0,50],                                 // Huron Container Fuel
    ["B_Slingload_01_Ammo_F",0,50,0]                                  // Huron Container Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "LOP_AFR_Infantry_SL    ",
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_AT",
    "LOP_AFR_Infantry_GL",
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_Marksman",
    "LOP_AFRCiv_Soldier_Medic",
    "LOP_AFR_Infantry_IED"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
    "LOP_AFR_Infantry_SL    ",
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_AT",
    "LOP_AFR_Infantry_GL",
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_AR",
    "LOP_AFR_Infantry_Marksman",
    "LOP_AFRCiv_Soldier_Medic",
    "LOP_AFR_Infantry_IED"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "LOP_AFR_Infantry_SL    ",
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_AT",
    "LOP_AFR_Infantry_AT",
    "LOP_AFR_Infantry_AT",
    "LOP_AFR_Infantry_AT",
    "LOP_AFRCiv_Soldier_Medic",
    "LOP_AFR_Infantry_Rifleman"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "LOP_AFR_Infantry_Rifleman",
    "LOP_AFR_Infantry_Rifleman_2",
    "LOP_AFR_Infantry_Rifleman_4",
    "LOP_AFR_Infantry_Rifleman_5",
    "LOP_AFR_Infantry_Rifleman_6",
    "LOP_AFR_Infantry_Rifleman_7",
    "LOP_AFRCiv_Soldier_Medic",
    "LOP_AFR_Infantry_Rifleman_8",
    "LOP_AFR_Infantry_GL",
    "LOP_AFR_Infantry_Marksman"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
	"rhs_2b14_82mm_msv",                        					 	// 2B14 Podnos. 82mm Mortar
	"rhs_SPG9M_MSV",                        							// SPG-9M
	"RHS_ZU23_MSV",                        								 // ZU-23-2
	"rhs_D30_msv",                        								 // 2A18/D-30
	"I_C_Offroad_02_AT_F",                      					  	 // Jeep Wrangler (SPG-9 with HE and HEAT)
    "LOP_AFR_Landrover_SPG9",                        					  // Land Rover (SPG-9 PG9V HEAT)
    "rhs_gaz66_zu23_vmf",                                    			 // GAZ-66 (ZU-23-2)
    "rhs_bmp1_vdv",                                            		    // BMP-1
	"rhsgref_tla_btr60",                         		  	 		   // BTR-60PB APC
	"LOP_AFR_T55",                          			   			  // T-55A
	"RHSGREF_A29B_HIDF"                          	    			 // A-29 Super Tucano
];
