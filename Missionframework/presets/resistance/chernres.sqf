/*
    File: middle_eastern.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-12-09
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Middle Eastern resistance preset.

    Needed Mods:
        - Project OPFOR
        - RHS AFRF
        - RHS USAF

    Optional Mods:
        - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KPLIB_r_units = [
    "I_L_Criminal_SG_F",
    "I_L_Looter_SG_F",
    "I_L_Looter_SMG_F",
    "I_L_Criminal_SMG_F",
    "I_L_Hunter_F",
    "I_L_Looter_Rifle_F",
    "I_L_Looter_Pistol_F"
];

// Armed vehicles
KPLIB_r_vehicles = [
    "rhsgref_ins_g_uaz_dshkm_chdkz"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KPLIB_r_weapons_1 = [
    ["rhs_weap_ak74","rhs_30rnd_545x39_AK",4,"",""],
    ["rhs_weap_aks74u","rhs_30rnd_545x39_AK",4,"",""]
];

KPLIB_r_weapons_2 = [
    ["rhs_weap_ak74","rhs_30rnd_545x39_AK",4,"",""],
    ["rhs_weap_akm","rhs_30rnd_762x39mm",4,"",""],
    ["rhs_weap_akms","rhs_30rnd_762x39mm",4,"",""],
    ["rhs_weap_aks74u","rhs_30rnd_545x39_AK",4,"",""],
    ["rhs_weap_pp2000","rhs_mag_9x19mm_7n21_20",5,"optic_ACO_grn_smg",""]
];

KPLIB_r_weapons_3 = [
    ["rhs_weap_ak103","rhs_30rnd_762x39mm",4,"",""],
    ["rhs_weap_ak104","rhs_30rnd_762x39mm",4,"",""],
    ["rhs_weap_ak105","rhs_30rnd_545x39_AK",4,"rhs_acc_ekp1",""],
    ["rhs_weap_pkm","rhs_100Rnd_762x54mmR",2,"",""],
    ["rhs_weap_aks74un","rhs_30rnd_545x39_AK",4,"rhs_acc_ekp8_02",""],
    ["LOP_Weap_LeeEnfield_railed","LOP_10rnd_77mm_mag",3,"optic_MRCO",""]
];

// Uniforms
KPLIB_r_uniforms_1 = [
    "U_C_E_LooterJacket_01_F",
    "U_I_C_Soldier_Para_1_F",
    "U_I_C_Soldier_Para_2_F",
    "U_I_C_Soldier_Para_3_F",
    "U_I_C_Soldier_Para_5_F",
    "U_I_L_Uniform_01_tshirt_black_F",
    "U_I_L_Uniform_01_tshirt_olive_F",
    "U_I_L_Uniform_01_tshirt_skull_F",
    "LOP_U_CHR_Citizen_05",
    "LOP_U_CHR_Citizen_06",
    "LOP_U_CHR_Woodlander_01",
    "LOP_U_CHR_Woodlander_02",
    "LOP_U_CHR_Woodlander_03",
    "LOP_U_CHR_Woodlander_04"
];

KPLIB_r_uniforms_2 = [
    "U_C_E_LooterJacket_01_F",
    "U_I_C_Soldier_Para_1_F",
    "U_I_C_Soldier_Para_2_F",
    "U_I_C_Soldier_Para_3_F",
    "U_I_C_Soldier_Para_5_F",
    "U_I_L_Uniform_01_tshirt_black_F",
    "U_I_L_Uniform_01_tshirt_olive_F",
    "U_I_L_Uniform_01_tshirt_skull_F",
    "LOP_U_CHR_Citizen_05",
    "LOP_U_CHR_Citizen_06",
    "LOP_U_CHR_Woodlander_01",
    "LOP_U_CHR_Woodlander_02",
    "LOP_U_CHR_Woodlander_03",
    "LOP_U_CHR_Woodlander_04"
];

KPLIB_r_uniforms_3 = [
    "U_C_E_LooterJacket_01_F",
    "U_I_C_Soldier_Para_1_F",
    "U_I_C_Soldier_Para_2_F",
    "U_I_C_Soldier_Para_3_F",
    "U_I_C_Soldier_Para_5_F",
    "U_I_L_Uniform_01_tshirt_black_F",
    "U_I_L_Uniform_01_tshirt_olive_F",
    "U_I_L_Uniform_01_tshirt_skull_F",
    "LOP_U_CHR_Citizen_05",
    "LOP_U_CHR_Citizen_06",
    "LOP_U_CHR_Woodlander_01",
    "LOP_U_CHR_Woodlander_02",
    "LOP_U_CHR_Woodlander_03",
    "LOP_U_CHR_Woodlander_04"
];

// Vests
KPLIB_r_vests_1 = [
    ""
];

KPLIB_r_vests_2 = [
    "",
    "rhssaf_vest_md98_woodland",
    "rhssaf_vest_md99_woodland"
];

KPLIB_r_vests_3 = [
    "",
    "rhssaf_vest_md98_woodland",
    "rhssaf_vest_md98_md2camo",
    "rhssaf_vest_md99_md2camo",
    "rhssaf_vest_md99_woodland",
    "usm_vest_pasgt_odg",
    "usm_vest_lbe_p",
    "V_BandollierB_blk"
];

// Headgear
KPLIB_r_headgear_1 = [
    "",
    "",
    "rhs_beanie_green",
    "rhs_beanie",
    "H_Booniehat_tna_F"
];

KPLIB_r_headgear_2 = [
    "",
    "rhs_beanie_green",
    "rhs_beanie",
    "rds_worker_cap1",
    "rds_worker_cap2",
    "H_Bandanna_cbr",
    "H_Bandanna_khk",
    "H_Bandanna_mcamo",
    "H_Bandanna_sgg",
    "H_Bandanna_sand",
    "H_Bandanna_surfer",
    "H_Booniehat_tna_F"
];

KPLIB_r_headgear_3 = [
    "rhs_beanie_green",
    "rhs_beanie",
    "rds_worker_cap1",
    "rds_worker_cap2",
    "rds_worker_cap3",
    "rds_worker_cap4",
    "H_Bandanna_gry",
    "H_Bandanna_blu",
    "H_Bandanna_cbr",
    "H_Bandanna_khk",
    "H_Bandanna_mcamo",
    "H_Bandanna_sgg",
    "H_Bandanna_sand",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_blk",
    "H_Bandanna_surfer_grn",
    "H_Bandanna_camo",
    "H_Beret_blk",
    "H_Booniehat_khk",
    "H_Booniehat_oli",
    "H_Booniehat_tan",
    "H_Cap_blk",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_oli",
    "H_Cap_surfer",
    "H_Cap_tan",
    "H_Booniehat_tna_F"
];

// Facegear. Applies for tier 2 and 3.
KPLIB_r_facegear = [
    ""
];
