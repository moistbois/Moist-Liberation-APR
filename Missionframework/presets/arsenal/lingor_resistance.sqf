/*
    File: lingor_resistance.sqf
    Date: 2023-03-14
    Last Update: 2023-03-18
    License: MIT License - http://www.opensource.org/licenses/MIT
*/
KPLIB_arsenalWeapons = [
    "vn_fkb1_pm_sd",
    "vn_fkb1_pm",
	"hlc_rifle_M1903A1",
    "vn_fkb1_red",
    "vn_fkb1",
	"gst_m16a2",
	"gst_m16a2_gl",
	"FHQ_arifle_Galil_black",
	//"rhs_weap_m240B",Locked
	"rhs_weap_pm63",
	//"rhs_weap_rpk74m",RPK-74M
	"hlc_rifle_FAL5000",
	"vn_l4",
	"rhs_weap_akm",
	"rhs_weap_rpg7",
	"hlc_rifle_L1A1SLR",
	"rhs_weap_l1a1",
	"rhs_weap_l1a1_wood",
	"vn_l1a1_03",
	"vn_l1a1_03_camo",
	"vn_l2a1_01",
	"vn_l1a1_xm148",
	"vn_l1a1_xm148_camo",
	"rhs_weap_akm_gp25",
	"arifle_AKM_F",
	"rhs_weap_aks74u",
	"rhs_weap_m92",
	"rhs_weap_rpg26",
	"hlc_rifle_g3a3",
	"rhs_weap_rsp30_white",
	"rhs_weap_rsp30_green",
	"rhs_weap_rsp30_red",
	"rhs_weap_savz58p",
	"rhs_weap_savz58p_black",
	"rhs_weap_savz58v",
	"rhs_weap_savz58v_black",
	"arifle_AKS_F",
	"rhs_weap_ak74",
	"rhs_weap_aks74",
	"vn_m1_garand",
	"rhs_weap_m1garand_sa43",
	"vn_m1_garand_gl",
	"vn_m1carbine_shorty",
	"rhsusf_weap_m9",
	"hlc_rifle_M1903A1OMR",
	"hlc_rifle_M1903A1_unertl",
	"vn_m1903",
	"vn_m1903_gl",
	"vn_ak_01",
    "vn_hp",
	"rhs_weap_m14",
	"vn_m14a1",
	"vn_m14a1_shorty",
	"vn_kbkg",
	"vn_kbkg_gl",
	"rhs_weap_m3a1",
	"rhs_weap_m3a1_specops",
	"vn_k98k",
    "vn_izh54_p",
    "vn_izh54_shorty",
    "vn_izh54",
	"vn_type64_smg",
	"vn_type64_f_smg",
    "vn_m_axe_01",
    "vn_m_axe_fire",
	"HLC_Charm_Teethgang",
    "vn_m_bayo_carbine",
	"vn_b_k98k",
	"rhs_acc_2dpZenit",
    "vn_m_bayo_m14",
    "vn_m_bayo_m16",
    "vn_m_bayo_m1897",
	"rhs_weap_Izh18",
    "vn_m_bolo_01",
    "vn_m_fighting_knife_01",
    "vn_m_hammer",
    "vn_m_m51_etool_01",
    "vn_m_machete_01",
    "vn_m_machete_02",
    "vn_m_mk2_knife_01",
    "vn_m_shovel_01",
    "vn_m_typeivaxe_01",
    "vn_m_vc_knife_01",
    "vn_m_wrench_01",
    "vn_m10_sd",
    "vn_m10",
    "vn_m127",
    "vn_m14_camo",
    "vn_m14",
	"vn_m16_m203_camo",
	"vn_m16_m203",
    "vn_m16_camo",
    "vn_m16_xm148",
    "vn_m16",
	"vn_m16_usaf",
	"vn_l2a3",
	"vn_l2a3_f",
    "vn_m1891",
    "vn_m1895",
    "vn_m1897",
    "vn_m1911",
	"rhsusf_weap_m1911a1",
    "vn_m1carbine_gl",
    "vn_m1carbine",
    "vn_m2carbine_gl",
    "vn_m2carbine",
    "vn_m38",
	"rhs_weap_m38",
	"rhs_weap_asval",
    "vn_m3a1",
    "vn_m3carbine",
    "vn_m3sd",
    "vn_m40a1_camo",
    "vn_m40a1",
    "vn_m60_shorty_camo",
    "vn_m60_shorty",
    "vn_m60",
    "vn_m63a",
	"vn_m63a_cdo",
	"vn_m63a_lmg",
    "vn_m72",
    "vn_m79_p",
    "vn_m79",
	"rhs_weap_m79",
    "vn_m9130",
    "vn_mc10_sd",
    "vn_mc10",
    "vn_mk22",
    "vn_mx991_m1911_sd",
    "vn_mx991_m1911",
    "vn_mx991_red",
    "vn_mx991",
    //"vn_p38s",Not in use
	//"vn_p38",Not in use
	//"vn_ppk",Not in use
	"vn_mg42",
	"vn_m20a1b1_01",
    "vn_pk",
    "vn_pm_sd",
    "vn_pm",
	"vn_xm16e1_xm148",
	"vn_l34a1_xm148",
	"vn_l34a1",
	"vn_l34a1_f",
    "vn_rpd_shorty_01",
    "vn_rpd_shorty",
    "vn_rpd",
    "vn_rpg2",
    "vn_rpg7",
	"launch_RPG7_F",
    //"vn_sa7",locked strelas
    //"vn_sa7b",locked
	//"rhs_weap_igla",
    "vn_sks_gl",
    "vn_sks",
	"vn_svd",
    "vn_type56",
    "vn_xm177_camo",
    "vn_xm177_fg",
    "vn_xm177_short",
    "vn_xm177_stock",
    "vn_xm177_xm148_camo",
    "vn_xm177_xm148",
    "vn_xm177",
	"rhs_weap_tr8",
	// 1.1 weapons
	"vn_vz61",
	"rhs_weap_savz61",
	"vn_m1928_tommy",
	"vn_m1928a1_tommy",
	"vn_m1a1_tommy",
	"vn_m1a1_tommy_so",
	"vn_mpu",
	"vn_mk1_udg"
];

KPLIB_arsenalMagazines = [
    "vn_22mm_cs_mag",
    "vn_22mm_he_mag",
	"vn_m1_garand_mag",
	"vn_m1_garand_t_mag",
	"rhsgref_8Rnd_762x63_M2B_M1rifle",
	"rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle",
    "vn_22mm_lume_mag",
    "vn_22mm_m17_frag_mag",
	"1Rnd_SmokePurple_Grenade_shell",
    "vn_22mm_m19_wp_mag",
	"rhs_mag_30Rnd_556x45_M193_Stanag",
	"rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M200_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"vn_f1_smg_mag",
	"vn_f1_smg_t_mag",
	"vn_m1903_mag",
	"vn_m1903_t_mag",
	"vn_bipod_m63a",
	"vn_type64_smg_mag",
	"vn_type64_smg_t_mag",
	"vn_bipod_m16",
	"vn_bipod_m14",
	"rhs_10rnd_9x39mm_SP5",
	"rhs_10rnd_9x39mm_SP6",
	"vn_l1a1_10_mag",
	"vn_l1a1_10_t_mag",
	"vn_l1a1_20_mag",
	"vn_l1a1_20_t_mag",
    "vn_l1a1_30_02_mag",
    "vn_l1a1_30_02_t_mag",
	"hlc_10Rnd_762x51_T_fal",
	"hlc_20Rnd_762x51_T_fal",
	"hlc_10Rnd_762x51_B_fal",
	"hlc_20Rnd_762x51_B_fal",
	"FHQ_25Rnd_762x51_Mag",
	"FHQ_25Rnd_762x51_Green_Tracers_Mag",
	"FHQ_25Rnd_762x51_Red_Tracers_Mag",
	"rhsusf_mag_15Rnd_9x19_FMJ",
	"rhsusf_mag_15Rnd_9x19_JHP",
	"hlc_5rnd_3006_1903",
	"rhs_30Rnd_545x39_7N6_AK",
	"rhs_30Rnd_545x39_7N6M_AK",
	"rhs_30Rnd_545x39_7N6_green_AK",
	"rhs_30Rnd_545x39_7N6M_green_AK",
	"rhs_30Rnd_545x39_7N6M_plum_AK",
	"rhs_45Rnd_545X39_7N6_AK",
	"rhs_45Rnd_545X39_7N6M_AK",
	"rhsgref_30rnd_1143x23_M1911B_SMG",
	"rhsgref_30rnd_1143x23_M1911B_2mag_SMG",
	"vn_m3a1_mag",
	"vn_m3a1_t_mag",
	"rhsgref_5Rnd_792x57_kar98k",
	"vn_k98k_mag",
	"vn_k98k_t_mag",
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_100Rnd_762x51_m80a1epr",
	"hlc_100Rnd_762x51_B_M60E4",
	"hlc_100Rnd_762x51_M_M60E4",
	"hlc_100Rnd_762x51_T_M60E4",
	"rhsgref_30rnd_1143x23_M1T_2mag_SMG",
	"rhsgref_30rnd_1143x23_M1T_SMG",
    "vn_22mm_m1a2_frag_mag",
    "vn_22mm_m22_smoke_mag",
    "vn_22mm_m60_frag_mag",
    "vn_22mm_m60_heat_mag",
	"vn_mg42_50_mag",
	"vn_mg42_50_t_mag",
    "vn_22mm_m9_heat_mag",
	"1Rnd_HE_Grenade_shell",
	"UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"UGL_FlareWhite_F",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
    "vn_40mm_m381_he_mag",
    "vn_40mm_m397_ab_mag",
    "vn_40mm_m406_he_mag",
    "vn_40mm_m433_hedp_mag",
    "vn_40mm_m576_buck_mag",
    "vn_40mm_m583_flare_w_mag",
    "vn_40mm_m651_cs_mag",
	"hlc_GRD_blue",
	"hlc_GRD_green",
	"hlc_GRD_orange",
	"hlc_GRD_purple",
	"hlc_GRD_Red",
	"hlc_GRD_White",
	"hlc_GRD_yellow",
	"hlc_VOG25_AK",
    "vn_40mm_m661_flare_g_mag",
    "vn_40mm_m662_flare_r_mag",
    "vn_40mm_m680_smoke_w_mag",
    "vn_40mm_m682_smoke_r_mag",
    "vn_40mm_m695_flare_y_mag",
    "vn_40mm_m715_smoke_g_mag",
    "vn_40mm_m716_smoke_y_mag",
    "vn_40mm_m717_smoke_p_mag",
	"10Rnd_Mk14_762x51_Mag",
	"20Rnd_762x51_Mag",
	"2Rnd_12Gauge_Slug",
	"2Rnd_12Gauge_Pellets",
	"rhsgref_1Rnd_Slug",
	"rhsgref_1Rnd_00Buck",
    "vn_b_item_trapkit",
    "vn_carbine_15_mag",
    "vn_carbine_15_t_mag",
    "vn_carbine_30_mag",
	"rhs_10Rnd_762x39mm",
	"rhs_10Rnd_762x39mm",
	"rhs_10Rnd_762x39mm_tracer",
	"rhs_30Rnd_762x39mm_bakelite",
	"rhs_30Rnd_762x39mm_bakelite_tracer",
	"rhs_30Rnd_762x39mm",
	"rhs_30Rnd_762x39mm_tracer",
	"vn_kbkg_mag",
	"vn_kbkg_t_mag",
    "vn_carbine_30_t_mag",
    "vn_chicom_grenade_mag",
	"rhs_grenade_mkii_mag",
    "vn_f1_grenade_mag",
	"vn_20mm_dgn_wp_mag",
	"vn_20mm_f1n60_frag_mag",
	"vn_20mm_kgn_frag_mag",
	"vn_20mm_pgn60_heat_mag",
    "vn_hp_mag",
    "vn_izh54_mag",
    "vn_izh54_so_mag",
    "vn_m10_mag",
    "vn_m127_mag",
    "vn_m128_mag",
    "vn_m129_mag",
    "vn_m14_10_mag",
    "vn_m14_10_t_mag",
	"rhsusf_20Rnd_762x51_m118_special_Mag",
	"rhsusf_20Rnd_762x51_m62_Mag",
    "vn_m14_grenade_mag",
    "vn_m14_mag",
    "vn_m14_t_mag",
    "vn_m16_20_mag",
	"vn_svd_mag",
	"vn_svd_t_mag",
    "vn_m16_20_t_mag",
    //"vn_m16_30_mag",
    //"vn_m16_30_t_mag",
    "vn_m16_40_mag",
    "vn_m16_40_t_mag",
    "vn_m18_green_mag",
    "vn_m18_purple_mag",
    "vn_m18_red_mag",
    "vn_m18_white_mag",
    "vn_m18_yellow_mag",
    "vn_m1895_mag",
    "vn_m1897_buck_mag",
    "vn_m1897_fl_mag",
    "vn_m1911_mag",
	"rhsusf_mag_7x45acp_MHP",
    "vn_m34_grenade_mag",
	"rhsgref_5Rnd_762x54_m38",
    "vn_m38_mag",
    "vn_m38_t_mag",
    "vn_m3a1_mag",
    "vn_m3a1_t_mag",
    "vn_m40a1_mag",
    "vn_m40a1_t_mag",
    "vn_m60_100_mag",
    "vn_m61_grenade_mag",
    "vn_m63a_30_mag",
    "vn_m63a_30_t_mag",
    "vn_m67_grenade_mag",
    "vn_m7_grenade_mag",
	"Chemlight_red",
	"ACE_Chemlight_White",
    "vn_m72_mag",
    "vn_mc10_mag",
    "vn_mc10_t_mag",
    "vn_mine_ammobox_range_mag",
    "vn_mine_m112_remote_mag",
	"vn_mine_m18_fuze10_mag",
    "vn_mine_m14_mag",
    "vn_mine_m15_mag",
    "vn_mine_m16_mag",
    "vn_mine_m18_mag",
    "vn_mine_m18_range_mag",
    "vn_mine_m18_x3_mag",
	"vn_mine_m18_wp_fuze10_mag",
	"vn_mine_m18_wp_range_mag",
	"vn_mine_m18_wp_mag",
    "vn_mine_m18_x3_range_mag",
    "vn_mine_punji_01_mag",
    "vn_mine_punji_02_mag",
    "vn_mine_punji_03_mag",
    "vn_mine_satchel_remote_02_mag",
    "vn_mine_tm57_mag",
    "vn_mine_tripwire_arty_mag",
    "vn_mine_tripwire_f1_02_mag",
    "vn_mine_tripwire_f1_04_mag",
    "vn_mine_tripwire_m16_02_mag",
    "vn_mine_tripwire_m16_04_mag",
    "vn_mine_tripwire_m49_02_mag",
    "vn_mine_tripwire_m49_04_mag",
    "vn_mk22_mag",
    "vn_molotov_grenade_mag",
    "vn_pk_100_mag",
    "vn_pm_mag",
    "vn_rdg2_mag",
	"rhs_30Rnd_762x39mm_Savz58",
	"rhs_30Rnd_762x39mm_Savz58_tracer",
    "vn_rg42_grenade_mag",
    "vn_rgd33_grenade_mag",
    "vn_rgd5_grenade_mag",
    "vn_rkg3_grenade_mag",
    "vn_rpd_100_mag",
    "vn_rpd_125_mag",
	"rhs_rpg26_mag",
    "vn_rpg2_mag",
    "vn_rpg7_mag",
	"rhs_rpg7_PG7V_mag",
	"rhs_rpg7_PG7VL_mag",
	"rhs_rpg7_PG7VM_mag",
	"rhs_rpg7_PG7VS_mag",
	"vn_m20a1b1_heat_mag",
	"vn_m20a1b1_wp_mag",
	"rhs_mag_9k38_rocket",
    "vn_sa7_mag",
    "vn_sa7b_mag",
    "vn_sks_mag",
    "vn_sks_t_mag",
    "vn_t67_grenade_mag",
    "vn_type56_mag",
    "vn_type56_t_mag",
    "vn_type56_v_12_he_mag",
    "vn_type56_v_12_heat_mag",
    "vn_v_m18r_mag",
    "vn_v_m61_mag",
    "vn_v_m7_mag",
    "vn_v_rdg2_mag",
    "vn_v_rgd5_mag",
    "vn_v40_grenade_mag",
	// 1.1 ammo
	"vn_m63a_150_mag",
	"vn_m63a_150_t_mag",
	"vn_m63a_100_mag",
	"vn_m63a_100_t_mag",
	"vn_vz61_mag",
	"vn_vz61_t_mag",
	"rhsgref_10rnd_765x17_vz61",
	"rhsgref_20rnd_765x17_vz61",
	"vn_m1928_mag",
	"vn_m1928_t_mag",
	"vn_m1a1_20_mag",
	"vn_m1a1_20_t_mag",
	"vn_m1a1_30_mag",
	"vn_m1a1_30_t_mag",
	"vn_mpu_mag",
	"vn_mpu_t_mag",
	"vn_mk1_udg_mag",
	"hlc_20rnd_762x51_b_G3",
    "hlc_20rnd_762x51_T_G3"
];

KPLIB_arsenalItems = [
// Headgear
	"COL_BaseballCap_FlagGreen",
    "FirstAidKit",
    "G_Aviator",
    "G_Bandanna_aviator",
    "G_Bandanna_blk",
    "G_Bandanna_oli",
    "G_Spectacles_Tinted",
    "ItemCompass",
    "ItemMap",
    "ItemWatch",
    "Medikit",
    "Toolkit",
	"vn_camera_01",
    "vn_anpvs2_binoc",
    "vn_b_acc_goggles_01",
    "vn_b_aviator",
	"rds_long_hair_01",
	"rds_long_hair_02",
	"rds_long_hair_03",
	"TRYK_Beard_BL",
	"TRYK_Beard_BK",
	"TRYK_Beard",
	"TRYK_Beard_BW",
	"TRYK_Beard_Gr",
	"TRYK_Beard_BL2",
	"TRYK_Beard_BK2",
	"TRYK_Beard2",
	"TRYK_Beard_BW2",
	"TRYK_Beard_Gr2",
	"TRYK_Beard_BL3",
	"TRYK_Beard_BK3",
	"TRYK_Beard3",
	"TRYK_Beard_BW3",
	"TRYK_Beard_Gr3",
	"TRYK_Beard_BL4",
	"TRYK_Beard_BK4",
	"TRYK_Beard4",
	"TRYK_Beard_BW4",
	"TRYK_Beard_Gr4",
	"TRYK_Beard_BL5",
	"TRYK_Beard_BK5",
	"TRYK_Beard5",
	"TRYK_Beard_BW5",
	"TRYK_Beard_Gr5",
	"TRYK_Beard_BL6",
	"TRYK_Beard_BK6",
	"TRYK_Beard6",
	"TRYK_Beard_BW6",
	"TRYK_Beard_Gr6",
    "vn_b_bandana_01",
    "vn_b_bandana_02",
    "vn_b_bandana_03",
    "vn_b_bandana_04",
    "vn_b_bandana_05",
    "vn_b_bandana_06",
    "vn_b_bandana_07",
    "vn_b_bandana_a",
    "vn_b_beret_01_01",
    "vn_b_beret_01_02",
    "vn_b_beret_01_03",
    "vn_b_beret_01_04",
    "vn_b_beret_01_05",
    "vn_b_beret_01_06",
    "vn_b_boonie_01_01",
    "vn_b_boonie_01_02",
    "vn_b_boonie_01_03",
    "vn_b_boonie_01_04",
    "vn_b_boonie_01_05",
    "vn_b_boonie_01_06",
    "vn_b_boonie_01_07",
    "vn_b_boonie_02_01",
    "vn_b_boonie_02_02",
    "vn_b_boonie_02_03",
    "vn_b_boonie_02_04",
    "vn_b_boonie_02_05",
    "vn_b_boonie_02_06",
    "vn_b_boonie_02_07",
    "vn_b_boonie_03_01",
    "vn_b_boonie_03_02",
    "vn_b_boonie_03_03",
    "vn_b_boonie_03_04",
    "vn_b_boonie_03_05",
    "vn_b_boonie_03_06",
    "vn_b_boonie_03_07",
    "vn_b_boonie_04_01",
    "vn_b_boonie_04_02",
    "vn_b_boonie_04_03",
    "vn_b_boonie_04_04",
    "vn_b_boonie_04_05",
    "vn_b_boonie_04_06",
    "vn_b_boonie_04_07",
    "vn_b_boonie_05_01",
    "vn_b_boonie_05_02",
    "vn_b_boonie_05_03",
    "vn_b_boonie_05_04",
    "vn_b_boonie_05_05",
    "vn_b_boonie_05_06",
    "vn_b_boonie_05_07",
    "vn_b_camo_m14",
	"vn_b_camo_k98k",
	"vn_b_camo_svd",
    "vn_b_camo_m40a1",
    "vn_b_camo_m9130",
    "vn_b_carbine",
    "vn_b_headband_01",
    "vn_b_headband_02",
    "vn_b_headband_03",
    "vn_b_headband_04",
    "vn_b_headband_05",
	"vn_b_helmet_svh4_01_05",
    "vn_b_helmet_aph6_01_01",
    "vn_b_helmet_aph6_01_02",
    "vn_b_helmet_aph6_01_03",
    "vn_b_helmet_aph6_01_04",
    "vn_b_helmet_aph6_01_05",
    "vn_b_helmet_aph6_02_01",
    "vn_b_helmet_aph6_02_02",
    "vn_b_helmet_aph6_02_03",
    "vn_b_helmet_aph6_02_04",
    "vn_b_helmet_aph6_02_05",
    "vn_b_helmet_m1_01_01",
    "vn_b_helmet_m1_01_02",
    "vn_b_helmet_m1_02_01",
    "vn_b_helmet_m1_02_02",
    "vn_b_helmet_m1_03_01",
    "vn_b_helmet_m1_03_02",
    "vn_b_helmet_m1_04_01",
    "vn_b_helmet_m1_04_02",
    "vn_b_helmet_m1_05_01",
    "vn_b_helmet_m1_05_02",
    "vn_b_helmet_m1_06_01",
    "vn_b_helmet_m1_06_02",
    "vn_b_helmet_m1_07_01",
    "vn_b_helmet_m1_07_02",
    "vn_b_helmet_m1_08_01",
    "vn_b_helmet_m1_08_02",
    "vn_b_helmet_m1_09_01",
    "vn_b_helmet_m1_09_02",
    "vn_b_helmet_sog_01",
    "vn_b_helmet_svh4_01_01",
    "vn_b_helmet_svh4_01_02",
    "vn_b_helmet_svh4_01_03",
    "vn_b_helmet_svh4_01_04",
    "vn_b_helmet_svh4_01_05",
    "vn_b_helmet_svh4_01_06",
    "vn_b_helmet_svh4_02_01",
    "vn_b_helmet_svh4_02_02",
    "vn_b_helmet_svh4_02_03",
    "vn_b_helmet_svh4_02_04",
    "vn_b_helmet_svh4_02_05",
    "vn_b_helmet_svh4_02_06",
    "vn_b_helmet_t56_01_01",
    "vn_b_helmet_t56_01_02",
    "vn_b_helmet_t56_01_03",
    "vn_b_helmet_t56_02_01",
    "vn_b_helmet_t56_02_02",
    "vn_b_helmet_t56_02_03",
	// 1.1 helmets
	"vn_b_helmet_m1_12_01",
	"vn_b_helmet_m1_12_02",
	"vn_b_helmet_m1_10_01",
	"vn_b_helmet_m1_11_01",
    "vn_b_item_compass_sog",
    "vn_b_item_compass",
    "vn_b_item_firstaidkit",
    "vn_b_item_map",
    "vn_b_item_medikit_01",
    "vn_b_item_toolkit",
    "vn_b_item_trapkit",
    "vn_b_item_watch",
    "vn_b_item_wiretap",
    "vn_b_m14",
    "vn_b_m16",
    "vn_b_m1897",
    "vn_b_m38",
    "vn_b_scarf_01_01",
    "vn_b_scarf_01_03",
    "vn_b_sks",
    "vn_b_spectacles_tinted",
    "vn_b_spectacles",
    "vn_b_squares_tinted",
    "vn_b_squares",
    "vn_b_type56",
	"hlc_optic_suit",
	"rhs_acc_pgs64_74u",
	"rhs_acc_pgs64_74un",
	"rhs_acc_uuk",
	"rhs_acc_dtk1983",
	"rhs_acc_tgpa",
	"rhs_acc_pbs1",
	"rhs_acc_pgo7v",
	"vn_o_1_5x_k98k",
	"vn_o_8x_m1903",
	"vn_o_m14_front",
	"vn_o_3x_m84",
    "vn_o_3x_m9130",
    "vn_o_4x_m16",
	"vn_o_1x_sp_m16",
	"vn_o_4x_svd",
    "vn_o_9x_m14",
    "vn_o_9x_m16",
    "vn_o_9x_m40a1_camo",
	"vn_b_camo_m14a1",
	"vn_b_m1903",
    "vn_o_9x_m40a1",
    "vn_o_anpvs2_m14",
    "vn_o_anpvs2_m16",
    "vn_o_anpvs2_m40a1",
    "vn_rocket_m128_launcher",
	"rhs_acc_pso1m2",
    "vn_s_m14",
	"vn_s_hp",
    "vn_s_m16",
    "vn_s_m1895",
    "vn_s_m1911",
    "vn_s_m3a1",
    "vn_s_mc10",
    "vn_s_mk22",
	"vn_s_ppk",
    "vn_s_pm",
    "vn_type56_v_03",
// Uniforms
	"rhsgref_uniform_og107",
	"vn_b_uniform_macv_01_01",
    "vn_b_uniform_macv_01_02",
    "vn_b_uniform_macv_01_03",
    "vn_b_uniform_macv_01_04",
    "vn_b_uniform_macv_01_05",
    "vn_b_uniform_macv_01_06",
    "vn_b_uniform_macv_01_07",
    "vn_b_uniform_macv_01_08",
    "vn_b_uniform_macv_02_01",
    "vn_b_uniform_macv_02_02",
    "vn_b_uniform_macv_02_05",
    "vn_b_uniform_macv_02_06",
    "vn_b_uniform_macv_02_07",
    "vn_b_uniform_macv_02_08",
    "vn_b_uniform_macv_03_01",
    "vn_b_uniform_macv_03_02",
    "vn_b_uniform_macv_03_05",
    "vn_b_uniform_macv_03_06",
    "vn_b_uniform_macv_03_07",
    "vn_b_uniform_macv_03_08",
    "vn_b_uniform_macv_04_01",
    "vn_b_uniform_macv_04_02",
    "vn_b_uniform_macv_04_05",
    "vn_b_uniform_macv_04_06",
    "vn_b_uniform_macv_04_07",
    "vn_b_uniform_macv_04_08",
    "vn_b_uniform_macv_04_20",
    "vn_b_uniform_macv_04_21",
    "vn_b_uniform_macv_05_01",
    "vn_b_uniform_macv_05_02",
    "vn_b_uniform_macv_05_05",
    "vn_b_uniform_macv_05_06",
    "vn_b_uniform_macv_05_07",
    "vn_b_uniform_macv_05_08",
    "vn_b_uniform_macv_06_01",
    "vn_b_uniform_macv_06_02",
    "vn_b_uniform_macv_06_05",
    "vn_b_uniform_macv_06_06",
    "vn_b_uniform_macv_06_07",
    "vn_b_uniform_macv_06_08",
	"vn_b_uniform_seal_01_06", 
	"vn_b_uniform_seal_01_01", 
	"vn_b_uniform_seal_01_07", 
	"vn_b_uniform_seal_01_05", 
	"vn_b_uniform_seal_01_02", 
	"vn_b_uniform_seal_02_06", 
	"vn_b_uniform_seal_02_01", 
	"vn_b_uniform_seal_02_05", 
	"vn_b_uniform_seal_02_02", 
	"vn_b_uniform_seal_03_01", 
	"vn_b_uniform_seal_04_01", 
	"vn_b_uniform_seal_05_06", 
	"vn_b_uniform_seal_05_01", 
	"vn_b_uniform_seal_05_07", 
	"vn_b_uniform_seal_05_05", 
	"vn_b_uniform_seal_05_02", 
	"vn_b_uniform_seal_06_06", 
	"vn_b_uniform_seal_06_01", 
	"vn_b_uniform_seal_06_05", 
	"vn_b_uniform_seal_06_02", 
	"vn_b_uniform_seal_06_07",
	"LOP_U_PMC_shorts_blue_hi",
	"LOP_U_PMC_shorts_red_hi",
	"LOP_U_PMC_blue_hi",
	"LOP_U_PMC_red_hi",
	"LOP_U_PMC_shorts_floral",
	"LOP_U_PMC_shorts_m81_olv",
	"LOP_U_PMC_shorts_marpat_tan",
	"LOP_U_PMC_shorts_mcam_blk",
	"LOP_U_PMC_shorts_grn_palm",
	"LOP_U_PMC_shorts_prp_palm",
	"LOP_U_PMC_shorts_tan_olv",
	"rhsgref_uniform_og107_erdl",
	"LOP_U_CHR_Citizen_05",
	"U_C_Poloshirt_burgundy",
	"U_C_Poor_1",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"vn_b_uniform_k2b_02_03",
	"U_Competitor",
	"U_BG_Guerilla1_2_F",
	"rhsgref_uniform_TLA_2",
	"U_I_L_Uniform_01_tshirt_olive_F",
	"rhsgref_uniform_altis_lizard_olive",
	"rhsgref_uniform_dpm_olive",
	"rhsgref_uniform_olive",
	"rhsgref_uniform_woodland_olive",
	"rhsgref_uniform_tigerstripe",
	"usm_bdu_ERDL",
	"usm_bdu_btisrl_ERDL",
	"usm_bdu_bti_ERDL",
	"usm_bdu_srh_ERDL",
	"usm_bdu_srl_ERDL",
	"usm_bdum65_ERDL",
	"rhsgref_uniform_ERDL",
	"rhsgref_uniform_og107_erdl",
// Vests
	"vn_b_vest_aircrew_01",
	"vn_b_vest_aircrew_03",
	"V_Pocketed_black_F",
	"V_Pocketed_coyote_F",
	"V_Pocketed_olive_F",
	"LOP_V_6B23_OLV",
	"LOP_V_Chestrig_Black",
	"LOP_V_Chestrig_Kamysh",
	"LOP_V_Chestrig_VSR",
	"vn_b_vest_seal_06", 
	"vn_b_vest_seal_03", 
	"vn_b_vest_seal_04", 
	"vn_b_vest_seal_05", 
	"vn_b_vest_seal_02", 
	"vn_b_vest_seal_07",
	"rhs_6b2",
	"rhs_6b2_holster",
	"rhs_chicom",
	"rhs_chicom_khk",
	"rhsgref_chicom",
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
	"rhs_vest_commander",
	"vn_b_vest_usarmy_01",
    "vn_b_vest_usarmy_02",
    "vn_b_vest_usarmy_03",
    "vn_b_vest_usarmy_04",
    "vn_b_vest_usarmy_05",
    "vn_b_vest_usarmy_06",
    "vn_b_vest_usarmy_07",
    "vn_b_vest_usarmy_08",
    "vn_b_vest_usarmy_09",
    "vn_b_vest_usarmy_10",
    "vn_b_vest_usarmy_11",
    "vn_b_vest_usarmy_12",
    "vn_b_vest_usarmy_13",
    "vn_b_vest_usarmy_14",
// Facewear:
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Lady_Blue",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"rhs_balaclava",
	"rhs_balaclava1_olive",
	"rhs_scarf",
	"rhssaf_veil_Green",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
// Binoculars
	"Binocular",
	"rhs_tr8_periscope",
	"rhs_tr8_periscope_pip",
	"rhssaf_zrak_rd7j",
	"vn_m19_binocs_grn",
	"vn_m19_binocs_grey",
	"vn_mk21_binocs",
// Extra
	"ItemMap",
	"ItemCompass",
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_Flashlight_XL50",
	"vn_b_item_radio_urc10",
	"TFAR_rf7800str", //POVERTY ALT
// ACE items
	"ACE_artilleryTable",                                           // Artillery Rangetable
	"ACE_RangeCard",                                                // Range Card
	"ACE_RangeTable_82mm",                                          // 82 mm Rangetable
	"ACE_Banana",
	"ACE_DefusalKit",
	"ACE_Flashlight_XL50",
	"ACE_LIB_FireCord",
	"ACE_DeadManSwitch",
	"ACE_WaterBottle",
    "ACE_SpraypaintBlack",
    "ACE_SpraypaintBlue",
    "ACE_SpraypaintGreen",
    "ACE_SpraypaintRed"
];

KPLIB_arsenalBackpacks = [
// Backpacks
    "NonSteerable_Parachute_F",
    "Steerable_Parachute_F",
	"B_Messenger_Black_F",
	"B_Messenger_Coyote_F",
	"B_Messenger_Gray_F",
	"B_Messenger_Olive_F",
	"rhs_rd54",
	"rhs_rd54_flora1",
	"rhs_rd54_vest",
	"rhs_rd54_vest_flora",
	"rhs_sidor",
	"usm_pack_alice",
	"rhsgref_hidf_alicepack",
	"rhsgref_ttsko_alicepack",
	"rhsgref_wdl_alicepack",
	"rhssaf_alice_md2camo",
	"rhssaf_alice_smb",
	"tacpac_bk",
	"tacpac_tan",
	"tacpac_od",
    "vn_b_pack_01_02",
    "vn_b_pack_01",
    "vn_b_pack_02_02",
    "vn_b_pack_02",
    "vn_b_pack_03_02",
    "vn_b_pack_03",
    "vn_b_pack_04_02",
    "vn_b_pack_04",
    "vn_b_pack_05_02",
    "vn_b_pack_05",
    "vn_b_pack_lw_01",
    "vn_b_pack_lw_02",
    "vn_b_pack_lw_03",
    "vn_b_pack_lw_04",
    "vn_b_pack_lw_05",
    "vn_b_pack_lw_06",
    "vn_b_pack_lw_07",
    "vn_b_pack_m5_01",
    "vn_b_pack_prc77_01",
    "vn_b_pack_trp_01_02",
    "vn_b_pack_trp_01",
    "vn_b_pack_trp_02_02",
    "vn_b_pack_trp_02",
    "vn_b_pack_trp_03_02",
    "vn_b_pack_trp_03",
    "vn_b_pack_trp_04_02",
    "vn_b_pack_trp_04"
];
