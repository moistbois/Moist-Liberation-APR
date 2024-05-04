
private _objects_to_build = [
    [ "Land_HBarrierWall_corridor_F", [-0.11, 4.98, 0], 270.45 ],
    [ "Land_HBarrierBig_F", [-3.24, 5.12, 0], 90.35 ],
    [ "CamoNet_BLUFOR_open_F", [-1.91, 5.06, 0], 0 ],
    [ "Land_HBarrierBig_F", [3.27, 5.52, 0], 90.35 ],
    [ "Land_HBarrierBig_F", [8.17, 5.21, 0], 181.2 ],
    [ "Land_HBarrierBig_F", [-8.76, 5.21, 0], 0.69 ],
    [ "Land_HelipadSquare_F", [-0.84, -11.68, 0], 270.25 ],
    [ "Land_Cargo_Patrol_V2_F", [15.5, -0.02, 0], 178.97 ],
    [ "Land_Cargo_Patrol_V2_F", [-17.12, -0.35, 0], 179.97 ],
    [ "CamoNet_BLUFOR_open_F", [13.71, -11.54, 0], 270.25 ],
    [ "Land_HBarrierBig_F", [16.94, 5.18, 0], 181.2 ],
    [ "Land_Cargo_House_V2_F", [-16.03, -9.69, 0], 269.88 ],
    [ KPLIB_o_transportTruck, [-10.4, 14.9, -0.02], 181.03 ],
    [ "Land_HBarrierBig_F", [-17.6, 5.28, 0], 359.67 ],
    [ "Land_Cargo_HQ_V2_F", [11.25, 14.59, 0], 89.97 ],
    [ "Land_HBarrierBig_F", [20.42, 1.73, 0], 89.37 ],
    [ "Land_HBarrierBig_F", [-1.65, -21.15, 0], 0.36 ],
    [ KPLIB_o_flag, [-20.59, 7.5, 0], 90 ],
    [ "Land_HBarrierBig_F", [21.02, -7.36, 0], 90.4 ],
    [ "Land_HBarrierBig_F", [7.21, -21.33, 0], 1.39 ],
    [ "Land_HBarrierBig_F", [-22.71, 1.71, 0], 91.24 ],
    [ KPLIB_o_mrapArmed, [-17.33, 14.88, 0.01], 359.22 ],
    [ "Land_HBarrierBig_F", [20.76, 10.25, 0], 89.37 ],
    [ "Land_HBarrierBig_F", [-10.52, -21.21, 0], 0.36 ],
    [ "Land_HBarrierBig_F", [-22.91, -6.7, 0], 270.29 ],
    [ "Land_HBarrierBig_F", [-23.19, 10.11, 0], 89.68 ],
    [ "Land_HBarrierBig_F", [21.1, -16.14, 0], 90.4 ],
    [ "Land_HBarrierBig_F", [15.97, -21.41, 0], 1.39 ],
    [ KPLIB_o_flag, [18.67, -19.05, 0], 90 ],
    [ KPLIB_o_mrap, [11.09, 25.14, 0.01], 268.69 ],
    [ KPLIB_o_flag, [-20.66, -18.6, 0], 90 ],
    [ "Land_HBarrierBig_F", [-23.05, -15.49, 0], 271.36 ],
    [ "Land_HBarrierBig_F", [20.55, 19.13, 0], 89.37 ],
    [ "Land_HBarrierBig_F", [-19.29, -21.29, 0], 0.36 ],
    [ "Land_HBarrierBig_F", [-23.27, 18.53, 0], 89.68 ]
];

private _objectives_to_build = [
    [ KPLIB_o_fuelContainer, [2.64, -13.76, -0.04], 0.35 ],
    [ KPLIB_o_ammoContainer, [-3.69, -14.92, 0], 180.33 ],
    [ KPLIB_o_fuelContainer, [2.7, -5.53, -0.04], 358.03 ],
    [ KPLIB_o_ammoContainer, [-3.96, -5.86, 0], 180.38 ]
];

private _defenders_to_build = [
    [ KPLIB_o_rifleman, [-6.54, 2.05, 0], 157.41 ],
    [ KPLIB_o_sentry, [6.66, 2.1, 0], 192.72 ],
    [ KPLIB_o_rifleman, [-3.64, 12.06, 0], 339.29 ],
    [ KPLIB_o_sentry, [-10.31, -7.7, 0], 122.29 ],
    [ KPLIB_o_marksman, [14.38, 0.22, 4.35], 346.89 ],
    [ KPLIB_o_grenadier, [-2.56, 14.33, 0], 228.17 ],
    [ KPLIB_o_machinegunner, [-4.79, 14.33, 0], 155.19 ],
    [ KPLIB_o_heavyGunner, [-16.04, 0.4, 4.35], 84.99 ],
    [ KPLIB_o_heavyGunner, [16.6, 0.75, 4.35], 83.99 ],
    [ KPLIB_o_rifleman, [10.82, 12.69, 0.6], 105.44 ],
    [ KPLIB_o_sentry, [12.36, 12.48, 0.6], 288.05 ],
    [ KPLIB_o_machinegunner, [14.41, -10.39, 0], 183.06 ],
    [ KPLIB_o_engineer, [9.45, 15.46, 0.6], 53.89 ],
    [ KPLIB_o_sharpshooter, [-18.26, -0.02, 4.35], 301.25 ],
    [ KPLIB_o_sentry, [13.86, -12.54, 0], 348.81 ],
    [ KPLIB_o_engineer, [15.06, -11.78, 0], 288.05 ],
    [ KPLIB_o_rifleman, [9.24, 16.75, 0.6], 129.9 ],
    [ KPLIB_o_teamLeader, [10.71, 16.31, 0.6], 288.05 ],
    [ KPLIB_o_aaSpecialist, [15.62, 12.01, 3.09], 124.01 ],
    [ KPLIB_o_sentry, [-17.92, -8.58, 0.73], 122.29 ],
    [ KPLIB_o_aaSpecialist, [8.45, 18.85, 3.13], 335.85 ],
    [ KPLIB_o_sentry, [-18, -11.54, 0.73], 122.29 ],
    [ KPLIB_o_sentry, [-13.77, 16.65, 0], 339.29 ],
    [ KPLIB_o_heavyGunner, [14.04, 17.46, 3.13], 48.56 ],
    [ KPLIB_o_riflemanLAT, [12.44, 18.69, 3.13], 16.72 ]
];

private _base_corners = [
    [35,35,0],
    [35,-35,0],
    [-35,-35,0],
    [-35,35,0]
];

[_objects_to_build, _objectives_to_build, _defenders_to_build, _base_corners]
