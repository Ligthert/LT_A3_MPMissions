// Set the starting time
setDate [2010, 10, 11, (paramsArray select 1), 00];

// Set time Acceleration
if (paramsArray select 3 != 1) then {
	setTimeMultiplier (paramsArray select 2);
};

ryanzombiesitemschance = paramsArray select 4;
ryanzombiesitemschanceSoldier = paramsArray select 4;
ryanzombiesmagazineschance = paramsArray select 5;
ryanzombiesmagazineschanceSoldier = paramsArray select 5;
ryanzombiesweaponschance = paramsArray select 6;
ryanzombiesweaponschanceSoldier = paramsArray select 6;

// Disable Saving
enableSaving [ false, false ];

// zombies = ["RyanZombieC_man_1slowOpfor", "RyanZombieC_man_polo_1_FslowOpfor", "RyanZombieC_man_polo_2_FslowOpfor", "RyanZombieC_man_polo_4_FslowOpfor", "RyanZombieC_man_polo_5_FslowOpfor", "RyanZombieC_man_polo_6_FslowOpfor", "RyanZombieC_man_p_fugitive_FslowOpfor", "RyanZombieC_man_w_worker_FslowOpfor", "RyanZombieC_scientist_FslowOpfor", "RyanZombieC_man_hunter_1_FslowOpfor", "RyanZombieC_man_pilot_FslowOpfor", "RyanZombieC_journalist_FslowOpfor", "RyanZombieC_OrestesslowOpfor", "RyanZombieC_NikosslowOpfor", "RyanZombieB_Soldier_02_fslowOpfor", "RyanZombieB_Soldier_02_f_1slowOpfor", "RyanZombieB_Soldier_02_f_1_1slowOpfor", "RyanZombieB_Soldier_03_fslowOpfor", "RyanZombieB_Soldier_03_f_1slowOpfor", "RyanZombieB_Soldier_03_f_1_1slowOpfor", "RyanZombieB_Soldier_04_fslowOpfor", "RyanZombieB_Soldier_04_f_1slowOpfor", "RyanZombieB_Soldier_04_f_1_1slowOpfor", "RyanZombieB_Soldier_lite_FslowOpfor", "RyanZombieB_Soldier_lite_F_1slowOpfor"];
zombies = ["RyanZombieC_man_1slowOpfor", "RyanZombieC_man_polo_1_FslowOpfor", "RyanZombieC_man_polo_2_FslowOpfor", "RyanZombieC_man_polo_4_FslowOpfor", "RyanZombieC_man_polo_5_FslowOpfor", "RyanZombieC_man_polo_6_FslowOpfor", "RyanZombieC_man_p_fugitive_FslowOpfor", "RyanZombieC_man_w_worker_FslowOpfor", "RyanZombieC_scientist_FslowOpfor", "RyanZombieC_man_hunter_1_FslowOpfor", "RyanZombieC_man_pilot_FslowOpfor", "RyanZombieC_journalist_FslowOpfor", "RyanZombieC_OrestesslowOpfor", "RyanZombieC_NikosslowOpfor", "RyanZombieB_Soldier_02_fslowOpfor", "RyanZombieB_Soldier_02_f_1slowOpfor"];

rndVehicles = ["C_Offroad_01_F","C_Offroad_01_repair_F","C_Offroad_01_red_F","C_Offroad_01_sand_F","C_Offroad_01_white_F","C_Offroad_01_blue_F","C_Offroad_01_darkred_F","C_Offroad_01_bluecustom_F","C_Offroad_luxe_F","C_Offroad_default_F","C_Offroad_stripped_F","C_Hatchback_01_F","C_Hatchback_01_grey_F","C_Hatchback_01_green_F","C_Hatchback_01_blue_F","C_Hatchback_01_bluecustom_F","C_Hatchback_01_beigecustom_F","C_Hatchback_01_yellow_F","C_Hatchback_01_white_F","C_Hatchback_01_black_F","C_Hatchback_01_dark_F","C_SUV_01_F","SUV_01_base_red_F","SUV_01_base_black_F","SUV_01_base_grey_F","SUV_01_base_orange_F","C_Van_01_transport_F","C_Van_01_box_F","B_G_Offroad_01_repair_F","B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_Quadbike_01_F","B_G_Quadbike_01_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","B_Truck_01_Repair_F","B_Truck_01_ammo_F","B_Truck_01_medical_F","B_Truck_01_fuel_F"];

fortifications = ["Land_BagBunker_Large_F","Land_BagBunker_Small_F","Land_BagBunker_Tower_F","Land_BagFence_Corner_F","Land_BagFence_End_F","Land_BagFence_Long_F","Land_BagFence_Round_F","Land_BagFence_Short_F","Land_HBarrier_1_F","Land_HBarrier_3_F","Land_HBarrier_5_F","Land_HBarrierBig_F","Land_HBarrier_Big_F","Land_HBarrierTower_F","Land_HBarrierWall_corner_F","Land_HBarrierWall_corridor_F","Land_HBarrierWall4_F","Land_HBarrierWall6_F","Land_Razorwire_F"];

// { _x addCuratorEditableObjects [zombies,true]  } forEach allCurators;
// { _x addCuratorEditableObjects [rndVehicles,true]  } forEach allCurators;

alive_units = [];
loclist = [];

execVM "functions.sqf";
sleep 1;
execVM "manageZombies.sqf";
execVM "spawnAssets.sqf";