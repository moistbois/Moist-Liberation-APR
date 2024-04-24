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
KPLIB_b_fobBox = "Land_Misc_Cargo1B";                            // This is the FOB as a container.
KPLIB_b_fobTruck = "vn_b_wheeled_m54_03";                              // This is the FOB as a vehicle.
KPLIB_b_arsenal = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn = ["B_AFBiH_GAZ66_Transport", "walker_A3_smallb_e", "B_AFBiH_Mi8MT"];                           // This is the mobile respawn (and medical) truck.
KPLIB_b_potato01 = "B_AFBiH_KrAZ255";                                       // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit = "B_AFBiH_Driver";                          // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit = "B_AFBiH_Pilot";                              // This defines the pilot for helicopters.
KPLIB_b_addHeli = "walker_a3_hiluxhmg";                  // These are the little birds which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat = "rhsgref_cdf_b_reg_uaz_open";                 // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck = "rhs_kamaz5350_flatbed_vdv";            // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage = "ContainmentArea_02_forest_F";   // A small storage area for resources.
KPLIB_b_largeStorage = "ContainmentArea_01_forest_F";   // A large storage area for resources.
KPLIB_b_logiStation = "Land_Mil_Repair_center_EP1";           // The building defined to unlock FOB recycling functionality.
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
    ["B_AFBiH_Driver",10,0,0],                                     				// Driver
	["B_AFBiH_Pilot",10,0,0],                                  				   // Pilot 01
	["B_AFBiH_Naval",10,0,0],                                  					   // Naval Crewman
	["B_AFBiH_Shotgun",15,0,0],                             				  	 // Shotgun
	["B_AFBiH_Medical",30,0,0],                                        			   // Medic
    ["B_AFBiH_Engineer",30,0,0],                                        			   // Engineer
	["B_AFBiH_TankCmd",30,0,0],                               			    // Tank Commander
	["B_AFBiH_TankCrew",30,0,0],                               			    // Tank Crewman
	["B_AFBiH_Marksman1",30,0,0],                               			    // Marksman M70B1N
	["B_AFBiH_Marksman2",30,0,0],                               			    // VSS Vintorez
	["B_AFBiH_Sniper",30,0,0],                               			    // Sniper M76
    ["B_AFBiH_Spotter",30,0,0],                               			    // Spotter AK74
	["B_AFBiH_Grenadier",30,5,0],                                  			 // Grenadier AK74 GP25
	["B_AFBiH_Rifleman1", 40,0,0],                                 			 // Rifleman 1 AK74
	["B_AFBiH_Rifleman2", 40,0,0],                                 			 // Rifleman 2 AK47
	["B_AFBiH_Rifleman3", 40,0,0],                                 			 // Rifleman 3 M70B1N
	["B_AFBiH_Rifleman4", 40,0,0],                                 			 // Rifleman 4 Vz 58
	["B_AFBiH_Machinegunner1",60,0,0],                              		     // Machinegunner RPK
	["B_AFBiH_Machinegunner2",60,0,0],                             		      // Machinegunner RPK74
	["B_AFBiH_HMG",60,0,0],                             		      // Heavy Machine Gunner PKM
	["B_AFBiH_AntiTank1",70,10,0],                                             // Anti-Tank RPG
	["B_AFBiH_AntiTank2",70,10,0],                                             // Anti-Tank RPG-18
	["B_AFBiH_AntiAir",70,10,0]                                             // Anti-Air
];

KPLIB_b_vehLight = [
    ["vn_c_bicycle_01",0,0,0],                                         // Bicycle
	["RDS_Old_bike_Civ_01",0,0,0],                                         // Old Bike
	["O_Quadbike_01_F",15,0,5],                                        // Quad Bike
	["O_Quadbike_01_F",15,0,5],                                        // Quad Bike
	["RDS_JAWA353_Civ_01",15,0,5],                                        // Jawa 353
	["walker_a3_redbike",15,0,5],                                        // TT650 MAYBE REMOVE?
	["RDS_tt650_Civ_01",15,0,5],                                        // TT650 
	["walker_a3_gaz",35,0,45],                                 // GAZ Limo
	["walker_a3_hatch",35,0,45],                                 // Hatchback
	["walker_a3_landrover",35,0,45],                                 // Land Rover
	["B_LINGOR_Datsun_Transport",35,0,45],                                 // Datsun Transport
	["B_LINGOR_M151A1_Transport",35,0,45],                                 // M151A1 Transport
	["RHS_Ural_MSV_01",50,0,75],                                 // URAL-4320
	["rhsgref_cdf_zil131",50,0,75],                                 // ZIL-131
	["rhsgref_ins_kraz255b1_flatbed",50,0,75],                                 // KRAZ 255B1
	["rhs_gaz66_vmf",50,0,75],                                 // GAZ66
	["walker_a3_hiluxhmg",40,20,25],                                 // Hilux with MG
	["B_LINGOR_M151A1_TOW",75,40,45],                                 // M151A1 TOW
	["rhsgref_hidf_canoe",0,0,0],                                 // Canoe
	["B_Boat_Transport_01_F",25,0,2],                                 // Dinghy
	["C_Scooter_Transport_01_F",10,0,5],                                 // Jetski
	["rhs_bmk_t",15,0,15],                           			      // BMK Tug
	["I_C_Boat_Transport_02_F",45,0,40]                                 // RHIB
];

KPLIB_b_vehHeavy = [
	["rhsgref_tla_btr60",275,80,200],                                      // BTR-60PB APC ((PKT (7.62x54mm) and KPVT (14.5x115mm))
	["B_LINGOR_Type_63",325,100,120],                                // Type 63
	["B_LINGOR_PT_76A",345,275,290],                                 // PT-76A
    ["rhs_bmp1_vdv",500,470,420],                    			// BMP-1 (2A28 Cannon (HE-FRAG OG15V/HEAT PG15V), PKT (7.62x54mm), 9K111 (wire AT missile))
    ["B_LINGOR_T55",600,600,600]                                     // T-55A (D-10 Cannon (BK5M HEAT-FS), (OF416Sh HE-FRAG), BM8 APDS)

];

KPLIB_b_vehAir = [
	["rhs_uh1h_hidf",120,280,25],                                             // UH-1H (M240Hx2)
	["RHS_Mi8mt_vvs",130,300,30],                                             // Mi-8MT (PKT (7.62x54mm))
	["RHS_Mi24Vt_vvs",140,300,30]                                             // MI-24VT (YakB-12.7)

];

KPLIB_b_vehStatic = [
	["RHS_NSV_TriPod_VDV",25,30,0],                                     // NSV Low Tripod (12.7x108mm)
	["rhs_KORD_MSV",25,30,0],											// KORD (6U16) (12.7x108mm)
	["rhsgref_cdf_DSHKM_Mini_TriPod",25,30,0],							// DShKm Mini-Tripod (12.7x108mm)
	["rhs_KORD_high_MSV",30,30,0],											// KORD (6U16) (12.7x108mm)
	["LOP_AFR_Static_DSHKM",30,30,0],											// DShKm (12.7x108mm)
	["vn_b_army_static_m1919a4_high",25,40,0],                            // M-1919A4 .30cal (High)
    ["vn_b_army_static_m1919a4_low",25,40,0],                             // M-1919A4 .30cal (Low)
    ["vn_b_army_static_m1919a6",25,40,0],                                 // M-1919A6 .30cal
    ["vn_b_army_static_m60_high",35,40,0],                               // M60 (High)
    ["vn_b_army_static_m60_low",20,40,0],                                // M60 (Low)
	["vn_b_army_static_m2_scoped_high",40,60,0],                                // M-2HB .50cal (High/Scoped)
    ["vn_b_army_static_m2_high",35,60,0],                                // M-2HB .50cal (High)
    ["vn_b_army_static_m2_low",35,60,0],                                 // M-2HB .50cal (Low)
    ["vn_b_army_static_mortar_m2",40,80,0],                              // M2 60mm Mortar
    ["vn_b_army_static_mortar_m29",50,100,0],                             // M29 81mm Mortar
    ["vn_b_army_static_m101_02",80,250,0],                               // M101 105mm Howitzer
	["rhs_2b14_82mm_msv",100,750,0],											// 2B14 Podnos (155mm HE)
	["O_Lingor_D30",100,750,0],											// 2A18/D-30 (155mm HE)
	["O_Lingor_D30_AT",100,750,0],											// 2A18/D-30 (155mm HE)
    ["vn_b_army_static_m45",50,200,0],                                   // M-45 Quadmount
	["RHS_ZU23_MSV",80,125,0],											// ZU-23-2 (23×152mm AA)
	["vn_o_nva_static_zgu1_01",80,125,0],									// ZGU-1 14.5mm AA
    ["vn_b_navy_static_l60mk3",150,100,0],                                // L60 Mk3 40 mm (BOFORS)
    ["vn_b_navy_static_l70mk2",150,100,0],                                 // L70 Mk2 20 mm (grenade)
    ["vn_b_army_static_tow",80,100,0]                                    // BGM71 TOW
];

KPLIB_b_objectsDeco = [
    ["Land_Slum_01_F",0,0,0],
    ["Land_Cargo_Patrol_V2_F",0,0,0],
    ["Land_GuardTower_01_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["CamoNet_OPFOR_F",0,0,0],
    ["CamoNet_OPFOR_open_F",0,0,0],
    ["CamoNet_OPFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
	["Land_LampShabby_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
	["Land_NAV_Lighthouse2",0,0,0],
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
	["Land_Bucket_F",0,0,0],
	["Land_CanisterPlastic_F",0,0,0],
	["Land_TinContainer_F",0,0,0],
	["Land_Pallets_stack_F",0,0,0],
	["datsun02Wreck",0,0,0],
	["Land_Barricade_01_4m_F",0,0,0],
	["Land_Barricade_01_10m_F",0,0,0],
	["Land_Posed",0,0,0],
	["Land_fort_rampart_EP1",0,0,0],
	["Land_cargo_house_slum_F",0,0,0],
	["Land_Misc_Well_L_EP1",0,0,0],
	["vn_air_ah1g_01_wreck",0,0,0],
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
	["vn_steeldrum_bbq_02",0,0,0],
	["vn_b_prop_fmradio_01",0,0,0],
	["Radio_Old",0,0,0],
	["CUP_radio_b",0,0,0],
	["Radio",0,0,0],
    ["vn_bar_01_campchair_01",0,0,0],
    ["vn_steeldrum_half_02",0,0,0],
    ["vn_steeldrum_trash_02",0,0,0],
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
	["Land_Water_pipe_EP1",0,0,0],
	["Misc_TyreHeapEP1",0,0,0],
	["Misc_Wall_lamp",0,0,0],
	["Land_Slum_02_F",0,0,0],
	["Land_Target_Single_01_F",0,0,0],
	["Land_Target_Pistol_01_F",0,0,0],
	["Land_Target_Line_PaperTargets_01_F",0,0,0],
	["TargetBootcampHumanSimple_F",0,0,0],
	["Land_TargetPopup_ACR",0,0,0],
	["vn_targetp_inf_f",0,0,0],
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
	["FootBridge_0_ACR",0,0,0], 			//Bridge
	["FootBridge_30_ACR",0,0,0], 			//Bridge
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
    [(KPLIB_b_mobileRespawn select 0),200,0,100],
    [(KPLIB_b_mobileRespawn select 1),200,0,100],
	[(KPLIB_b_mobileRespawn select 2),200,0,100],
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
	["B_LINGOR_IglaBox",25,75,0],
    ["ACE_Wheel",0,0,0],
    ["ACE_Track",25,0,0],
    ["vn_b_wheeled_m54_repair",325,0,75],                               // M185 Repair
    ["vn_b_wheeled_m54_fuel",125,0,275],                                // M49 Fuel
    ["vn_b_wheeled_m54_ammo",125,200,75],                               // M54 Ammo
    ["B_Slingload_01_Repair_F",50,0,0],                                // Huron Container Repair
	["Land_Workbench_01_F",50,0,0], 									// Workbench Repair
    ["B_Slingload_01_Fuel_F",0,0,150],                                 // Huron Container Fuel
	["Land_vn_b_prop_fuelbladder_01",0,0,50],
    ["Land_vn_b_prop_fuelbladder_03",0,0,50],
    ["B_Slingload_01_Ammo_F",0,50,0],                                  // Huron Container Ammo
	["vn_b_ammobox_supply_01",0,50,0],
	["vn_o_ammobox_full_06",0,100,0]
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
    "B_AFBiH_Marksman2",								// "Marksman VSS Vintorez"
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
	"B_AFBiH_Medical"								// "Medic"
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
	"vn_b_wheeled_m54_mg_02",                        					 	// Quad AA
	"vn_b_army_static_m45",                        							// M-45 Quadmount AA
	"vn_b_navy_static_l70mk2",                        								 // L70 HEI 20mm GL
	"vn_b_navy_static_l60mk3",                      					  	 // L60 40mm BOFORS
    "vn_b_army_static_m101_02",                        					  // M101 105mm Howitzer
    "rhs_2b14_82mm_msv",                                    			 //2B14 Podnos (155mm HE)
    "O_Lingor_D30",                                            		    // 2A18/D-30 (155mm HE)
	"O_Lingor_D30_AT",                                            		    // 2A18/D-30 (155mm HE)
	"vn_b_air_ah1g_02_usmc",                         		  	 		   // AH-1G APERS misl
	"vn_b_air_ah1g_03",                          			   			  // AH-1G AT
	"vn_b_air_uh1e_02_04",                          	    			 // UH-1E heavy gunship
	"vn_b_air_uh1c_05_01",                          	    			 // UH-1C heavy hog
	"vn_b_boat_06_02",                          	    			 // PTF Boats
	"vn_b_boat_05_01",                          	    			 // PTF Boats
	"vn_b_armor_m41_01_01",                          	    			 // M41A3 Walker
	"B_LINGOR_Type_63",                          	    			 // Type 63 Tank
	"vn_b_armor_m132_01",                          	    			 // Flamethrower Tank
	"B_LINGOR_PT_76A",                          	    			 // PT76A
	"rhs_bmp1_vdv",                          	    			 // BEEG BMP with lots of shit
	"B_LINGOR_T55",                          	    			 // T-55
	"vn_b_air_ach47_01_01"												// ACH-47A Guns-A-Go-Go (M200)
];
