private _objects_to_build = [
    [ "Land_ControlTower_01_F", [-5.7, 3.42, 0], 0 ],
    [ "Land_HBarrierBig_F", [-0.8, -6.62, 0], 0.11 ],
    [ "Land_PaperBox_open_empty_F", [5.84, -3.25, 0], 332.09 ],
    [ "Land_HBarrierBig_F", [7.84, -6.52, 0], 359.62 ],
    [ "Land_PaperBox_closed_F", [10.77, -2.11, 0], 90.97 ],
    [ KPLIB_o_flag, [2.46, 10.93, 0], 90 ],
    [ "Land_HBarrierBig_F", [-9.22, -6.62, 0], 0.11 ],
    [ KPLIB_o_transportTruck, [4.9, -10.96, -0.03], 272.46 ],
    [ "Land_HBarrierBig_F", [-1.17, 12.94, 0], 0.25 ],
    [ KPLIB_o_transportTruck, [-8.91, -11.52, -0.03], 266.11 ],
    [ "Land_HBarrierWall_corridor_F", [-14.26, 3.18, 0], 180.24 ],
    [ "Land_PaperBox_open_full_F", [11.39, 9.16, 0], 302.69 ],
    [ "Land_HBarrierBig_F", [-14.52, -3.07, 0], 89.68 ],
    [ "Land_HBarrierBig_F", [7.22, 13.02, 0], 359.82 ],
    [ "Land_HBarrierBig_F", [-9.58, 12.94, 0], 0.25 ],
    [ "Land_HBarrierBig_F", [14.88, -6.47, 0], 0.11 ],
    [ "Land_HBarrier_1_F", [-16.19, -4.29, 0], 179.54 ],
    [ "Land_HBarrierBig_F", [-14.55, 9.47, 0], 89.68 ],
    [ "Land_HBarrierBig_F", [17.26, -0.38, 0], 89.87 ],
    [ "Land_HBarrierBig_F", [13.25, 13.06, 0], 359.82 ],
    [ "Land_HBarrierBig_F", [-0.52, 18.6, 0], 359.5 ],
    [ "Land_HBarrier_1_F", [-18.56, -4.33, 0], 179.54 ],
    [ "Land_HBarrierBig_F", [17.2, 8.48, 0], 88.84 ],
    [ "Land_HBarrierBig_F", [8.34, 18.55, 0], 0.52 ],
    [ "Land_HBarrierBig_F", [-9.38, 18.42, 0], 359.5 ],
    [ "Land_HBarrier_1_F", [-21.07, -4.36, 0], 179.54 ],
    [ KPLIB_o_mrapArmed, [-13.81, -17.08, 0.01], 254.24 ],
    [ "Land_HBarrierBig_F", [-1.71, -21.88, 0], 179.75 ],
    [ "Land_HBarrierBig_F", [22.65, -1.94, 0], 89.87 ],
    [ KPLIB_o_flag, [-21.18, -9.33, 0], 90 ],
    [ "Land_HBarrierBig_F", [7.15, -21.71, 0], 179.75 ],
    [ "Land_Strazni_vez", [17.02, -16.67, 0], 359.51 ],
    [ "Land_HBarrierBig_F", [-22.85, 1.21, 0], 269.41 ],
    [ "Land_HBarrierBig_F", [22.51, 6.8, 0], 89.87 ],
    [ "Land_HBarrierBig_F", [-22.77, -7.28, 0], 269.41 ],
    [ KPLIB_o_flag, [-11.36, -21.78, 0], 90 ],
    [ "Land_HBarrierBig_F", [-13.12, 20.99, 0], 90.15 ],
    [ "Land_HBarrierBig_F", [-10.02, -22.67, 0], 347.15 ],
    [ "Land_HBarrierBig_F", [-22.81, 10.07, 0], 270.43 ],
    [ "Land_HBarrierBig_F", [22.74, -10.58, 0], 89.87 ],
    [ "Land_HBarrierBig_F", [17.1, 18.61, 0], 0.52 ],
    [ "Land_Strazni_vez", [-18.01, 19.63, 0], 180.02 ],
    [ "Land_CncBarrierMedium4_F", [-23.12, -12.98, 0], 235.1 ],
    [ "Land_HBarrierBig_F", [15.93, -21.54, 0], 179.75 ],
    [ KPLIB_o_flag, [20.64, 16.83, 0], 90 ],
    [ "Land_BarGate_F", [-19.55, -17.64, 0], 235.1 ],
    [ "Land_HBarrierBig_F", [22.45, 15.67, 0], 88.84 ],
    [ "Land_HBarrierBig_F", [22.23, -18.72, 0], 277.09 ],
    [ "Land_HBarrierBig_F", [-22.89, 18.81, 0], 270.43 ],
    [ "Land_HBarrierBig_F", [-18.23, 24.37, 0], 0.12 ],
    [ "Land_Pallet_MilBoxes_F", [12.11, 6.54, 0], 235.35 ],
    [ "Land_Pallet_MilBoxes_F", [8.96, 2.73, 0], 127.39 ],
    [ "Land_Pallet_MilBoxes_F", [11.85, 1.74, 0], 347.11 ],
    [ "Land_Pallet_MilBoxes_F", [13.39, 8.21, 0], 25.62 ]
];

private _objectives_to_build = [
    [ KPLIB_o_ammoContainer, [-3.32, 3.11, 0], 270.02 ],
    [ KPLIB_o_ammoContainer, [6.28, 8, 0], 270.25 ]
];

private _defenders_to_build = [
    [ KPLIB_o_sentry, [3.35, -3.18, 0], 285.5 ],
    [ KPLIB_o_machinegunner, [-4.14, 3.26, 4.64], 155.19 ],
    [ KPLIB_o_marksman, [-1.97, 5.92, 17.89], 39.77 ],
    [ KPLIB_o_sentry, [-5.07, 4.03, 13.02], 288.05 ],
    [ KPLIB_o_teamLeader, [-6.25, 3.04, 15.37], 288.05 ],
    [ KPLIB_o_sentry, [5.03, 5.17, 0], 245.18 ],
    [ KPLIB_o_sentry, [7.48, 0.16, 0], 140.42 ],
    [ KPLIB_o_sentry, [-7.52, 2.19, 15.37], 53.89 ],
    [ KPLIB_o_rifleman, [-6.91, 4.18, 12.77], 105.44 ],
    [ KPLIB_o_rifleman, [8.29, -1.01, 0], 15.07 ],
    [ KPLIB_o_sentry, [-7.72, 3.47, 15.37], 129.9 ],
    [ KPLIB_o_aaSpecialist, [-8.16, -3.53, 17.79], 162.03 ],
    [ KPLIB_o_rifleman, [-7.69, 5.02, 8.59], 339.29 ],
    [ KPLIB_o_engineer, [9.66, -0.3, 0], 270.08 ],
    [ KPLIB_o_heavyGunner, [-9.94, -3.52, 17.79], 197.2 ],
    [ KPLIB_o_aaSpecialist, [-8.92, 7.21, 17.89], 17.44 ],
    [ KPLIB_o_sentry, [-12.71, -1.34, 0], 70.65 ],
    [ KPLIB_o_sentry, [-0.21, -13.35, 0], 222.75 ],
    [ KPLIB_o_sentry, [12.7, 4.78, 0], 245.18 ],
    [ KPLIB_o_sentry, [-12.62, 7.78, 0], 95.16 ],
    [ KPLIB_o_heavyGunner, [-17.46, 1.05, 0], 191.23 ],
    [ KPLIB_o_sentry, [-15.52, -9.95, 0], 222.75 ],
    [ KPLIB_o_sentry, [-20.07, 1.58, 0], 162.91 ],
    [ KPLIB_o_heavyGunner, [15.94, -17.43, 4.35], 264.53 ],
    [ KPLIB_o_riflemanLAT, [-19.21, -14.96, 0], 184.12 ],
    [ KPLIB_o_marksman, [18.17, -16.98, 4.35], 120.79 ],
    [ KPLIB_o_machinegunner, [-15.66, -20.49, 0], 272.29 ],
    [ KPLIB_o_heavyGunner, [-16.9, 20.39, 4.35], 85.04 ],
    [ KPLIB_o_marksman, [-19.16, 19.94, 4.35], 301.3 ]
];

private _base_corners = [
    [35,35,0],
    [35,-35,0],
    [-35,-35,0],
    [-35,35,0]
];

[_objects_to_build, _objectives_to_build, _defenders_to_build, _base_corners]
