private _objects_to_build = [
    [ "Land_HelipadCircle_F", [-1.31, 11.44, 0], 0 ],
    [ KPLIB_o_transportHeli, [-1.31, 11.45, 0], 134.19 ],
    [ "Land_Strazni_vez", [17.36, 1.08, 0], 269.81 ],
    [ "Land_Workshop_01_grey_F", [15.93, -7.13, 0], 90.12 ],
    [ "Land_GuardHouse_02_grey_F", [-11.82, -13.91, 0], 89.97 ],
    [ KPLIB_o_transportTruck, [-17.59, 5.76, -0.03], 310.87 ],
    [ KPLIB_o_flag, [-20.4, -2.8, 0], 90 ],
    [ "Land_PaperBox_open_full_F", [12.36, -16.46, 0], 228.14 ],
    [ KPLIB_o_flag, [20.06, 6.22, 0], 90 ],
    [ "Land_PaperBox_open_empty_F", [14.86, -16.08, 0], 2.94 ],
    [ "Land_PaperBox_closed_F", [13.68, -18.27, 0], 287.62 ],
    [ "Land_HBarrierBig_F", [-22.99, -3.72, 0], 89.34 ],
    [ "CamoNet_wdl_open_F", [14.88, -18.51, 0], 0 ],
    [ "Land_HBarrierBig_F", [22.88, 3.58, 0], 89.34 ],
    [ KPLIB_o_mrap, [17.18, 16.24, 0.01], 326.13 ],
    [ "Land_HBarrierBig_F", [23.08, -5.21, 0], 89.34 ],
    [ "Land_HBarrierBig_F", [0.66, -24.24, 0], 0.36 ],
    [ "Land_HBarrierBig_F", [-8.2, -24.3, 0], 0.36 ],
    [ "Land_HBarrierBig_F", [-22.79, -12.51, 0], 89.34 ],
    [ "Land_HBarrierBig_F", [9.52, -24.42, 0], 1.39 ],
    [ "Land_HBarrierBig_F", [23.35, -14.06, 0], 89.34 ],
    [ KPLIB_o_flag, [19.21, -21.72, 0], 90 ],
    [ "Land_HBarrierBig_F", [-16.97, -24.38, 0], 0.36 ],
    [ "Land_HBarrierBig_F", [18.28, -24.49, 0], 1.39 ],
    [ "Land_HBarrierBig_F", [-22.52, -21.36, 0], 89.34 ],
    [ "Land_HBarrierBig_F", [22.45, -21.48, 0], 103.04 ]
];

private _objectives_to_build = [
    [ KPLIB_o_fuelContainer, [-16.82, 17.67, -0.01], 47.97 ],
    [ KPLIB_o_ammoContainer, [-0.42, -3.26, 0.02], 104.66 ],
    [ KPLIB_o_fuelContainer, [-9.52, -0.47, -0.04], 295.86 ],
    [ KPLIB_o_ammoContainer, [2.85, -14.48, 0], 0.69 ]
];

private _defenders_to_build = [
    [ KPLIB_o_engineer, [2.32, 3.25, 0], 10.12 ],
    [ KPLIB_o_engineer, [3.59, 3.89, 0], 288.05 ],
    [ KPLIB_o_engineer, [2.31, 4.93, 0], 158.22 ],
    [ KPLIB_o_rifleman, [3.96, -9.85, 0], 37.83 ],
    [ KPLIB_o_machinegunner, [-9.04, -11.04, 3.13], 48.56 ],
    [ KPLIB_o_teamLeader, [-12.46, -12.21, 0.6], 288.05 ],
    [ KPLIB_o_aaSpecialist, [-14.62, -9.64, 3.13], 335.85 ],
    [ KPLIB_o_sharpshooter, [17.7, 2.21, 4.35], 31.1 ],
    [ KPLIB_o_aaSpecialist, [-7.46, -16.48, 3.09], 124.01 ],
    [ KPLIB_o_heavyGunner, [18.14, -0.02, 4.35], 174.84 ],
    [ KPLIB_o_rifleman, [-13.89, -11.76, 0.6], 129.9 ],
    [ KPLIB_o_sentry, [-13.62, -13.03, 0.6], 53.89 ],
    [ KPLIB_o_sentry, [10.86, -15.42, 0], 348.81 ],
    [ KPLIB_o_sentry, [17.87, -6.07, 0.73], 294.41 ],
    [ KPLIB_o_rifleman, [12.59, -14.14, 0], 288.05 ],
    [ KPLIB_o_rifleman, [-10.49, -15.94, 0.6], 288.05 ],
    [ KPLIB_o_sentry, [-12.03, -15.74, 0.6], 105.44 ],
    [ KPLIB_o_sentry, [17.96, -8.4, 0.73], 294.41 ],
    [ KPLIB_o_sentry, [-2.5, 20.13, 0], 288.05 ],
    [ KPLIB_o_grenadier, [-5.17, 20.37, 0], 84.75 ],
    [ KPLIB_o_engineer, [-17.83, 11.21, 0], 288.05 ],
    [ KPLIB_o_atSpecialist, [-13.21, -18.42, 3.13], 196.73 ],
    [ KPLIB_o_sentry, [-20.27, 11.9, 0], 112.14 ],
    [ KPLIB_o_sentry, [13.03, 19.64, 0], 348.81 ],
    [ KPLIB_o_rifleman, [14.76, 20.92, 0], 288.05 ]
];

private _base_corners = [
    [30,40,0],
    [30,-40,0],
    [-30,-40,0],
    [-30,40,0]
];

[_objects_to_build, _objectives_to_build, _defenders_to_build, _base_corners]
