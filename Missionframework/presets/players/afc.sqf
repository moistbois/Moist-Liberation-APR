/*
    Needed Mods:
    -


    Optional Mods:
    - None
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding = "Land_Camp_House_01_brown_F";                                    // This is the main FOB HQ building.
KPLIB_b_fobBox = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
KPLIB_b_fobTruck = "LOP_CDF_KAMAZ_Covered";                              // This is the FOB as a vehicle.
KPLIB_b_arsenal = "B_AFBiH_Arsenal";                                   // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn = ["B_AFBiH_GAZ66_Transport", "walker_A3_smallb_e", "B_AFBiH_Mi8MT"];                           // This is the mobile respawn (and medical) truck.
KPLIB_b_potato01 = "RHS_Mi8mt_Cargo_vvs";                                       // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit = "B_AFBiH_Driver";                          // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit = "B_AFBiH_Pilot";                              // This defines the pilot for helicopters.
KPLIB_b_addHeli = "walker_a3_hiluxhmg";                  // These are the little birds which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat = "B_Lifeboat";                 // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck = "rhs_kamaz5350_flatbed_vdv";            // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage = "ContainmentArea_02_forest_F";   // A small storage area for resources.
KPLIB_b_largeStorage = "ContainmentArea_01_forest_F";   // A large storage area for resources.
KPLIB_b_logiStation = "Land_GarageRow_01_small_F";           // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl = "Land_ControlTower_01_F";                       // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli = "Land_HelipadCivil_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane = "Land_Hangar_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
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
    ["B_AFBiH_Driver",1,0,0],                                     				// Driver
	["B_AFBiH_Pilot",1,0,0],                                  				   // Pilot 01
	["B_AFBiH_Naval",1,0,0],                                  					   // Naval Crewman
	["B_AFBiH_Shotgun",1,0,0],                             				  	 // Shotgun
	["B_AFBiH_Medical",1,0,0],                                        			   // Medic
    ["B_AFBiH_Engineer",3,0,0],                                        			   // Engineer
	["B_AFBiH_TankCmd",3,0,0],                               			    // Tank Commander
	["B_AFBiH_TankCrew",3,0,0],                               			    // Tank Crewman
	["B_AFBiH_Marksman1",3,0,0],                               			    // Marksman M70B1N
	["B_AFBiH_Marksman2",3,0,0],                               			    // VSS Vintorez
	["B_AFBiH_Sniper",3,0,0],                               			    // Sniper M76
    ["B_AFBiH_Spotter",3,0,0],                               			    // Spotter AK74
	["B_AFBiH_Grenadier",3,5,0],                                  			 // Grenadier AK74 GP25
	["B_AFBiH_Rifleman1", 4,0,0],                                 			 // Rifleman 1 AK74
	["B_AFBiH_Rifleman2", 4,0,0],                                 			 // Rifleman 2 AK47
	["B_AFBiH_Rifleman3", 4,0,0],                                 			 // Rifleman 3 M70B1N
	["B_AFBiH_Rifleman4", 4,0,0],                                 			 // Rifleman 4 Vz 58
	["B_AFBiH_Machinegunner1",8,0,0],                              		     // Machinegunner RPK
	["B_AFBiH_Machinegunner2",8,0,0],                             		      // Machinegunner RPK74
	["B_AFBiH_HMG",8,5,0],                             		      // Heavy Machine Gunner PKM
	["B_AFBiH_AntiTank1",10,15,0],                                             // Anti-Tank RPG
	["B_AFBiH_AntiTank2",10,10,0],                                             // Anti-Tank RPG-18
	["B_AFBiH_AntiAir",10,20,0]                                             // Anti-Air
];

KPLIB_b_vehLight = [
    ["rhsgref_cdf_b_reg_uaz_dshkm",25,50,5],                                 // UAZ-3151 (DShKM)
    ["walker_a3_hiluxhmg",40,50,5],                                 // Hilux with MG
    ["B_AFBiH_M1151",100,50,30],                                         // M1151
    ["B_AFBiH_BRDM2UM",100,50,40],                                         // BRDM2UM (No cannon)
    ["B_AFBiH_BRDM2",150,100,40],                                         // BRDM2
    ["B_AFBiH_BTR60PB",175,150,50],                                         // BTR-60PB
    ["B_AFBiH_BTR80",180,150,50],                                         // BTR-80
    ["B_AFBiH_BM21",200,400,40],                                         // BM-21
    ["rhsgref_cdf_b_reg_uaz_ags",125,175,25],                                         // UAZ-3151 (AGS-30)
    ["B_AFBiH_GAZ66_AA",150,250,40],                                         // GAZ-66 AA
    ["B_AFBiH_URAL_AA",175,250,40],                                         // URAL AA
    ["C_Cher90s_Civ_Bike",20,0,0],                                         // Bicycle
    ["C_Cher90s_Civ_JAWA",35,0,5],                                         // Jawa Motorcycle
    ["C_Cher90s_Civ_Hatch",40,0,5],                                         // Hatch
    ["C_Cher90s_Civ_Gaz",40,0,5],                                         // GAZ 24
    ["C_Cher90s_Civ_GazB",40,0,5],                                         // GAZ 24B
    ["C_Cher90s_Civ_Lada",40,0,5],                                         // Lada
    ["C_Cher90s_Civ_Toyota",40,0,5],                                         // Toyota Sedan
    ["C_Cher90s_Civ_Skodo",40,0,5],                                         // Skodovka
    ["C_Cher90s_Civ_S1203",45,0,10],                                         // S1203 Van
    ["C_Cher90s_Civ_1203B",45,0,10],                                         // S1203 Van Blue
    ["C_Cher90s_Civ_Hilux",60,0,5],                                         // Hilux
    ["C_Cher90s_Civ_HiluxC",60,0,5],                                         // Hilux (Covered)
    ["C_Cher90s_Civ_UAZ3151",60,0,5],                                         // UAZ-3151
    ["C_Cher90s_Civ_UAZ3151O",60,0,5],                                         // UAZ-3151 (Open)
    ["C_Cher90s_Civ_Ural",70,0,10],                                         // Ural-4320
    ["C_Cher90s_Civ_UralOpen",70,0,10],                                         // Ural-4320 (Open)
    ["rhsgref_hidf_canoe",10,0,0],                                         // Canoe
    ["C_Scooter_Transport_01_F",35,0,5],                                         // Water Scooter
    ["B_Lifeboat",60,0,5]                                         // Rescue Boat
    
];

KPLIB_b_vehHeavy = [
    ["B_AFBiH_BMP",400,350,250],                                         // BPM 1
    ["rhsgref_cdf_b_2s1",400,600,300],                                         // BPM 1
    ["B_AFBiH_T34",300,300,200],                                         // T-34
    ["B_AFBiH_T55",400,400,250],                                         // T-55
    ["B_AFBiH_T72",600,500,300]                                         // T-72

];

KPLIB_b_vehAir = [
    ["B_AFBiH_MI8MT_Cargo",200,0,150],                                      // MI-8MT (Cargo)
    ["B_AFBiH_AN2",250,0,250],                                             // AN2
    ["B_AFBiH_Mi24V",400,500,350],                                             // Mi24V
    ["B_AFBiH_Mi24P",400,500,350]                                             // Mi24P

];

KPLIB_b_vehStatic = [
    ["B_AFBiH_D30",250,300,0],                                     // D-30
    ["B_AFBiH_Podnos",100,150,0],                                     // Podnos mortar
    ["rhsgref_cdf_b_SPG9",100,150,0],                                     // Podnos mortar
    ["B_AFBiH_ZU23",75,250,40],                                         // ZU AA
    ["B_AFBiH_M2",25,30,0],                                     // M2 HMG
    ["B_AFBiH_M2Lo",25,30,0]                                     // M2 HMG (Low Mount)
    
];

KPLIB_b_objectsDeco = [
    ["rhssaf_flag_yugoslavia",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Radio",0,0,0],
    ["Radio_Old",0,0,0],
    ["Land_tent_east",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_FirewoodPile_01_F",0,0,0],
    ["Axe_woodblock",0,0,0],
	["Land_Greenhouse_01_F",0,0,0],
	["Land_Greenhouse_01_damaged_F",0,0,0],
	["Land_Shed_11_F",0,0,0],
	["Land_DryToilet_01_F",0,0,0],
    ["Land_WoodenWindBreak_01_F",0,0,0],
	["Land_Caravan_01_rust_Fa",0,0,0],
    ["Land_Caravan_01_green_F",0,0,0],
	["Land_Shed_12_F",0,0,0],
	["Land_Shed_09_F",0,0,0],
	["Land_Shed_10_F",0,0,0],
	["Land_Shed_14_F",0,0,0],
    ["Land_Slum_01_F",0,0,0],
    ["Land_DeerStand_01_F",0,0,0],
    ["Land_DeerStand_02_F",0,0,0],
    ["Land_GuardTower_01_F",0,0,0],
	["Land_ConcreteWell_02_F",0,0,0],
    ["Lantern_01_red_F",0,0,0],
    ["Lantern_01_green_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_Airport_01_hangar_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase plane cap!
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
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
    //Target Practice
    ["Land_Target_Single_01_F",0,0,0],
    ["Land_Target_Pistol_01_F",0,0,0],
    ["Land_Target_Line_01_F",0,0,0],
    ["Hostage_PopUp_Moving_90deg_F",0,0,0],
    ["TargetP_Inf2_Acc2_F",0,0,0],
    //Target Practice End
	["Land_WoodenTable_large_F",0,0,0],
	["Land_WoodenTable_small_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_Portable_generator_F",0,0,0],
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
    ["Land_HBarrierTower_F",0,0,0],
    // Sandbags
    ["Land_SandbagBarricade_01_half_F",0,0,0],
    ["Land_SandbagBarricade_01_F",0,0,0],
    ["Land_SandbagBarricade_01_hole_F",0,0,0],
    ["Fence",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    // Sandbags End
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
    [KPLIB_b_arsenal,25,25,0],
    [(KPLIB_b_mobileRespawn select 0),150,0,100],
    [(KPLIB_b_mobileRespawn select 1),200,0,100],
    [(KPLIB_b_mobileRespawn select 2),300,0,100],
    [KPLIB_b_fobBox,300,500,0],
    [KPLIB_b_fobTruck,300,500,75],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,150,0,0],
    [KPLIB_b_airControl,800,0,0],
    [KPLIB_b_slotHeli,250,0,0],
    [KPLIB_b_slotPlane,500,0,0],
    ["B_AFBiH_EmptyBox",1,0,0],
    ["ACE_medicalSupplyCrate_advanced",10,0,0],
    ["B_AFBiH_KORDBox",10,20,0],
    ["B_AFBiH_SPG9Box",10,20,0],
    ["B_AFBiH_M80Box",10,30,0],
    ["B_AFBiH_IglaBox",10,60,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",25,0,0],
    ["RHS_Ural_Repair_MSV_01",150,0,60],                                // Ural Repair
    ["B_AFBiH_URAL_Fuel",150,0,160],                                 // Ural Fuel
    ["B_AFBiH_GAZ66_Ammo",150,150,45],                                  // Gaz-66 Ammo
    ["B_Slingload_01_Repair_F",150,0,0],                                // Huron Container Repair
    ["Land_Workbench_01_F",100,0,0],                                     // Workbench Repair
    ["B_Slingload_01_Fuel_F",75,0,150],                                 // Huron Container Fuel
    ["B_Slingload_01_Ammo_F",75,150,0]                                  // Huron Container Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "B_AFBiH_SL",								// "Squad Leader"
    "B_AFBiH_Rifleman1",								// "Rifleman 1 AK74"
	"B_AFBiH_Rifleman2",								// "Rifleman AK47"
    "B_AFBiH_Rifleman3",								// "Rifleman M70B1N"
	"B_AFBiH_Rifleman4",								// "Rifleman Vz 58"
	"B_AFBiH_AntiTank2",								// "Anti-Tank RPG-18"
    "B_AFBiH_Marksman1",								// "Marksman M70B1N"
	"B_AFBiH_Medical",								// "Medic"
	"B_AFBiH_Grenadier"								// "Grenadier AK74 GP25"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
    "B_AFBiH_Officer",								// "Officer"
    "B_AFBiH_Rifleman1",								// "Rifleman 1 AK74"
	"B_AFBiH_Rifleman2",								// "Rifleman AK47"
	"B_AFBiH_Rifleman3",								// "Rifleman M70B1N"
	"B_AFBiH_Rifleman4",								// "Rifleman Vz 58"
    "B_AFBiH_Machinegunner1",								// "Machinegunner RPK"
    "B_AFBiH_Machinegunner2",								// "Machinegunner RPK74"
    "B_AFBiH_HMG",								// "Heavy Machine Gunner PKM"
	"B_AFBiH_AntiTank1",								// "Anti-Tank RPG"
    "B_AFBiH_Grenadier",								// "Grenadier AK74 GP25"
    "B_AFBiH_Medical"								// "Medic"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "B_AFBiH_SL",								// "Squad Leader"
	"B_AFBiH_Rifleman3",								// "Rifleman M70B1N"
	"B_AFBiH_Rifleman2",								// "Rifleman AK47"
    "B_AFBiH_AntiTank1",								// "Anti-Tank RPG"
	"B_AFBiH_AntiTank2",								// "Anti-Tank RPG-18"
	"B_AFBiH_Machinegunner1",								// "Machinegunner RPK"
	"B_AFBiH_Medical",								// "Medic"
	"B_AFBiH_Engineer"								// "Engineer"
];

// AA specialists squad.
KPLIB_b_squadAA = [
    "B_AFBiH_Officer",								// "Officer"
	"B_AFBiH_Rifleman3",								// "Rifleman M70B1N"
    "B_AFBiH_Rifleman4",								// "Rifleman Vz 58"
    "B_AFBiH_AntiAir",								// "Anti-Air"
    "B_AFBiH_AntiAir",								// "Anti-Air"
	"B_AFBiH_Machinegunner2",								// "Machinegunner RPK74"
    "B_AFBiH_Marksman1",								// "Marksman M70B1N"
	"B_AFBiH_Medical"								// "Medic"

];

// Force recon squad.
KPLIB_b_squadRecon = [
    "B_AFBiH_SL",								// "Squad Leader"
    "B_AFBiH_Rifleman1",								// "Rifleman 1 AK74"
	"B_AFBiH_Rifleman4",								// "Rifleman Vz 58"
	"B_AFBiH_Marksman1",								// "Marksman M70B1N"
    "B_AFBiH_Marksman2",								// "Marksman VSS Vintorez"
    "B_AFBiH_Sniper",								// "Sniper M76"
	"B_AFBiH_Medical",								// "Medic"
    "B_AFBiH_Spotter"								// "Spotter AK74"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "B_AFBiH_SL",								// "Squad Leader"
    "B_AFBiH_Rifleman1",								// "Rifleman 1 AK74"
    "B_AFBiH_Rifleman2",								// "Rifleman AK47"
    "B_AFBiH_Rifleman3",								// "Rifleman M70B1N"
    "B_AFBiH_Rifleman4",								// "Rifleman Vz 58"
	"B_AFBiH_Grenadier",								// "Grenadier AK74 GP25"
	"B_AFBiH_Medical"								// "Medic"
];

/*
    --- Elite vehicles --- 20 UNLOCKS ONLY
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
	"B_AFBiH_D30",
    "B_AFBiH_Podnos",
    "B_AFBiH_BRDM2",
    "B_AFBiH_BTR60PB",
    "B_AFBiH_BTR80",
    "B_AFBiH_BM21",
    "B_AFBiH_GAZ66_AA",
    "B_AFBiH_URAL_AA",
    "B_AFBiH_BMP",
    "B_AFBiH_T34",
    "B_AFBiH_T72",
    "B_AFBiH_Mi24V",
    "B_AFBiH_Mi24P",
    "B_AFBiH_T55",
    "B_AFBiH_ZU23",
    "rhsgref_cdf_b_reg_uaz_ags",
    "rhsgref_cdf_b_2s1",
    "rhsgref_cdf_b_SPG9"
];