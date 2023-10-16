/*
    File: allowedExtension.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-05-11
    Last Update: 2020-05-11
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        List of classnames which will be always added to the allowed gear list.
        This is used to add let's name it "generic classnames".

        E.g. if you've an available weapon "myMod_weap_M16" and an available grip "myMod_acc_coolGrip"
        some mods transform this combination to a weapon "myMod_weap_M16_coolGrip".
        That classname is used internally and wouldn't be listed in the arsenal and can cause issues to be
        detected as not allowed weapon, even if the weapon and the grip is whitelisted.
        So add this "generic classname" here afterwards to avoid this.

        The classnames of blacklisted items on a player are logged in the server rpt for a later lookup.
*/

// Extension list of allowed arsenal gear
KPLIB_arsenalAllowedExtension = [
    //"ACE_Chemlight_Shield_Blue",
    //"ACE_Chemlight_Shield_Green",
    //"ACE_Chemlight_Shield_Orange",
    //"ACE_Chemlight_Shield_Red",
    //"ACE_Chemlight_Shield_White",
    //"ACE_Chemlight_Shield_Yellow",
	//Cancer
	"murshun_cigs_matches",
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
    //"ACE_launch_NLAW_Used_F",
    "ACE_PreloadedMissileDummy_CUP",
    "ACE_PreloadedMissileDummy_Igla_CUP",
    "ACE_PreloadedMissileDummy_M72A6_CUP",
    "ACE_PreloadedMissileDummy_NLAW_CUP",
    "ACE_PreloadedMissileDummy_RPG18_CUP",
    "ACE_PreloadedMissileDummy_Stinger_CUP",
    "ACE_PreloadedMissileDummy_Strela_2_CUP",
    "ACE_ReserveParachute",
	//ACE Start
	"ACE_CableTie",
	"ToolKit",
	"ACE_EarPlugs",
	"ACE_wirecutter",
	"ACE_MapTools",
	"ACE_fieldDressing",
	"ACE_bloodIV",
	"ACE_bloodIV_250",
	"ACE_bloodIV_500",
	"ACE_bodyBag",
	"ACE_epinephrine",
	"ACE_morphine",
	"ACE_personalAidKit",
	"ACE_Sandbag_empty",
	"ACE_tourniquet",
	"ACE_SpareBarrel",
	"ACE_EntrenchingTool",
	"ACE_rope12", 
	"ACE_rope15",
	"ACE_rope18",
	"ACE_rope27",
	"ACE_rope36",
	"ACE_elasticBandage",
	"ACE_packingBandage",
	"ACE_quikclot",
	"ACE_splint",
	"ACE_surgicalKit",
	//ACE End
    "BWA3_acc_LLM01_flash_tan",
    "BWA3_acc_LLM01_flash_underbarrel",
    "BWA3_acc_LLM01_flash",
    "BWA3_acc_LLM01_laser_tan",
    "BWA3_acc_LLM01_laser_underbarrel",
    "BWA3_acc_LLM01_laser",
    "BWA3_acc_VarioRay_flash",
    "BWA3_acc_VarioRay_laser",
    "BWA3_Bunkerfaust",
    "BWA3_G36A2_pip",
    "BWA3_G36A2_tan_pip",
    "BWA3_optic_CompM2_G36A2",
    "BWA3_optic_CompM2_tan_G36A2",
    "BWA3_optic_EOTech_G36A2",
    "BWA3_optic_EOTech_Mag_Off",
    "BWA3_optic_EOTech_Mag_On",
    "BWA3_optic_EOTech_sand_G36A2",
    "BWA3_optic_EOTech_tan_Mag_Off",
    "BWA3_optic_EOTech_tan_Mag_On",
    "BWA3_optic_EOTech552_G36A2",
    "BWA3_optic_EOTech552_tan_G36A2",
    "BWA3_optic_Hensoldt_NSV",
    "BWA3_optic_M5Xi_MSR_MicroT2_pip",
    "BWA3_optic_M5Xi_MSR_pip",
    "BWA3_optic_M5Xi_Tremor3_MicroT2_pip",
    "BWA3_optic_M5Xi_Tremor3_pip",
    "BWA3_optic_MicroT1_G36A2",
    "BWA3_optic_MicroT2_G36A2",
    "BWA3_optic_NSA80_G36",
    "BWA3_optic_PMII_DMR_MicroT1_front_NSV_pip",
    "BWA3_optic_PMII_DMR_MicroT1_front_NSV",
    "BWA3_optic_PMII_DMR_MicroT1_front_pip",
    "BWA3_optic_PMII_DMR_MicroT1_rear_NSV_pip",
    "BWA3_optic_PMII_DMR_MicroT1_rear_NSV",
    "BWA3_optic_PMII_DMR_MicroT1_rear_pip",
    "BWA3_optic_PMII_DMR_NSV_pip",
    "BWA3_optic_PMII_DMR_NSV",
    "BWA3_optic_PMII_DMR_pip",
    "BWA3_optic_PMII_ShortdotCC_pip",
    "BWA3_optic_RSAS_brown_G36A2",
    "BWA3_optic_RSAS_G36A2",
    "BWA3_optic_RSAS_sand_G36A2",
    "BWA3_optic_RSAS_tan_G36A2",
    "BWA3_optic_ZO4x30_brown_IRV",
    "BWA3_optic_ZO4x30_brown_NSV",
    "BWA3_optic_ZO4x30_brown_pip",
    "BWA3_optic_ZO4x30_brown_RSAS_IRV_pip",
    "BWA3_optic_ZO4x30_brown_RSAS_IRV",
    "BWA3_optic_ZO4x30_brown_RSAS_NSV_pip",
    "BWA3_optic_ZO4x30_brown_RSAS_NSV",
    "BWA3_optic_ZO4x30_brown_RSAS_pip",
    "BWA3_optic_ZO4x30_IRV",
    "BWA3_optic_ZO4x30_MicroT2_brown_IRV",
    "BWA3_optic_ZO4x30_MicroT2_brown_NSV",
    "BWA3_optic_ZO4x30_MicroT2_IRV",
    "BWA3_optic_ZO4x30_MicroT2_NSV",
    "BWA3_optic_ZO4x30_NSV",
    "BWA3_optic_ZO4x30_pip",
    "BWA3_optic_ZO4x30_RSAS_IRV_pip",
    "BWA3_optic_ZO4x30_RSAS_IRV",
    "BWA3_optic_ZO4x30_RSAS_NSV_pip",
    "BWA3_optic_ZO4x30_RSAS_NSV",
    "BWA3_optic_ZO4x30_RSAS_pip",
    "BWA3_optic_ZO4x30i_MicroT2_pip",
    "BWA3_optic_ZO4x30i_MicroT2_sand_pip",
    "BWA3_optic_ZO4x30i_pip",
    "BWA3_optic_ZO4x30i_RSAS_pip",
    "BWA3_optic_ZO4x30i_RSAS_sand_pip",
    "BWA3_optic_ZO4x30i_sand_pip",
    "BWA3_PzF3_Used",
    "BWA3_PzF3",
    "BWA3_RGW90_Used",
    "BWA3_RGW90",
    "ItemRadioAcreFlagged",
    //"rhs_acc_ekp8_18b",
    //"rhs_acc_ekp8_18c",
    //"rhs_acc_ekp8_18d",
    "rhs_m136_hedp_mag",
    "rhs_m136_hp_mag",
    "rhs_m136_mag",
    "rhs_m72a7_mag",
    "rhs_rpg26_mag",
    "rhs_rshg2_mag",
    //"rhs_weap_M136_used",
    "rhsusf_acc_anpeq15_bk_light_h",
    //"rhsusf_acc_g33_T1_flip",
    //"rhsusf_acc_g33_xps3_flip",
    //"rhsusf_acc_g33_xps3_tan_flip",
    "sma_spitfire_03_rds_low_ard_red",
    "UK3CB_BAF_AT4_CS_AP_Mag",
    "UK3CB_BAF_Javelin_Launcher"
];
