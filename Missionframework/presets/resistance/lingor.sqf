/*
    Needed Mods:
    - Project OPFOR

    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KPLIB_r_units = [
	"I_L_Criminal_SG_F", 
	"I_L_Criminal_SMG_F", 
	"I_L_Hunter_F", 
	"I_L_Looter_Rifle_F", 
	"I_L_Looter_Pistol_F", 
	"I_L_Looter_SMG_F"
];

// Armed vehicles
KPLIB_r_vehicles = [
    "vn_i_wheeled_m151_01",
    "C_Lingor_Hilux_Covered"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KPLIB_r_weapons_1 = [
    ["rhs_weap_Izh18","rhsgref_1Rnd_00Buck",5,"",""],
    ["vn_sks","vn_sks_t_mag",5,"",""],
	["vn_m1897","rhsgref_1Rnd_00Buck",5,"",""],
	["vn_m1897","rhsgref_1Rnd_00Buck",5,"",""],
	["vn_m1_garand","vn_m1_garand_t_mag",5,"",""]
];

KPLIB_r_weapons_2 = [
    ["arifle_AKS_F","rhs_30Rnd_545x39_AK_green",3,"",""],
    ["vn_ak_01","rhs_30Rnd_762x39mm_bakelite_tracer",5,"",""],
    ["vn_sks","vn_sks_t_mag",5,"",""]
];

KPLIB_r_weapons_3 = [
    ["hlc_rifle_L1A1SLR","vn_l1a1_30_t_mag",5,"",""],
    ["rhs_weap_ak74","rhs_30Rnd_545x39_AK_green",5,"",""],
	["vn_m16","vn_m16_20_t_mag",5,"",""]
];

// Uniforms
KPLIB_r_uniforms_1 = [
    "U_C_Poloshirt_redwhite",
    "U_C_Poloshirt_salmon"
];

KPLIB_r_uniforms_2 = [
    "U_C_Poloshirt_stripped",
    "U_C_Poloshirt_tricolour"
];

KPLIB_r_uniforms_3 = [
    "U_Competitor",
    "U_BG_Guerilla1_2_F"
];

// Vests
KPLIB_r_vests_1 = [
	"V_BandollierB_cbr",	
	"V_BandollierB_rgr",
	"rhs_belt_RPK",
	"rhs_belt_AK_GL",
	"rhs_suspender_AK8_chestrig",
	"rhs_suspender_AK",
	"rhs_suspender_AK4",
	"rhs_suspender_SKS",
	"rds_pistol_holster",
	"rhs_vest_pistol_holster",
	"rhs_gear_OFF",
	"rhs_vest_commander"
];

KPLIB_r_vests_2 = [
	"V_BandollierB_cbr",	
	"V_BandollierB_rgr",
	"rhs_belt_RPK",
	"rhs_belt_AK_GL",
	"rhs_suspender_AK8_chestrig",
	"rhs_suspender_AK",
	"rhs_suspender_AK4",
	"rhs_suspender_SKS",
	"rds_pistol_holster",
	"rhs_vest_pistol_holster",
	"rhs_gear_OFF",
	"rhs_vest_commander"
];

KPLIB_r_vests_3 = [
	"V_BandollierB_cbr",	
	"V_BandollierB_rgr",
	"rhs_belt_RPK",
	"rhs_belt_AK_GL",
	"rhs_suspender_AK8_chestrig",
	"rhs_suspender_AK",
	"rhs_suspender_AK4",
	"rhs_suspender_SKS",
	"rds_pistol_holster",
	"rhs_vest_pistol_holster",
	"rhs_gear_OFF",
	"rhs_vest_commander"
];

// Headgear
KPLIB_r_headgear_1 = [
    "vn_b_beret_01_01",
	"",
    "vn_b_beret_01_02",
	"",
    "vn_b_beret_01_03",
	"",
    "vn_b_beret_01_04",
	"",
    "vn_b_beret_01_05",
	"",
    "vn_b_beret_01_06"

];

KPLIB_r_headgear_2 = [
    "vn_b_boonie_01_01",
	"",
    "vn_b_boonie_01_02",
	"",
    "vn_b_boonie_01_03",
	"",
    "vn_b_boonie_01_04",
	"",
    "vn_b_boonie_01_05",
	"",
    "vn_b_boonie_01_06",
	"",
    "vn_b_boonie_01_07",
	"",
    "vn_b_boonie_02_01",
	"",
    "vn_b_boonie_02_02",
	"",
    "vn_b_boonie_02_03",
	"",
    "vn_b_boonie_02_04"
];

KPLIB_r_headgear_3 = [
    "vn_b_helmet_m1_01_01",
	"",
    "vn_b_helmet_m1_01_02",
	"",
    "vn_b_helmet_m1_02_01",
	"",
    "vn_b_helmet_m1_02_02",
	"",
    "vn_b_helmet_m1_03_01",
	"",
    "vn_b_helmet_m1_03_02",
	"",
    "vn_b_helmet_m1_04_01",
	"",
    "vn_b_helmet_m1_04_02",
	"",
    "vn_b_helmet_m1_05_01",
	"",
    "vn_b_helmet_m1_05_02",
	"",
    "vn_b_helmet_m1_06_01",
	"",
    "vn_b_helmet_m1_06_02",
	"",
    "vn_b_helmet_m1_07_01",
	"",
    "vn_b_helmet_m1_07_02",
	"",
    "vn_b_helmet_m1_08_01",
	"",
    "vn_b_helmet_m1_08_02",
	"",
    "vn_b_helmet_m1_09_01",
	"",
    "vn_b_helmet_m1_09_02"
];

// Facegear. Applies for tier 2 and 3.
KPLIB_r_facegear = [
    "",
    "",
    "",
    "G_Bandanna_shades",
    "G_Bandanna_beast",
    "G_Bandanna_tan",
    "G_Bandanna_khk",
    "G_Bandanna_oli",
    "G_Bandanna_aviator",
    "G_Bandanna_blk",
    "rhs_balaclava",
    "rhs_balaclava1_olive",
    "rhs_scarf"
];
