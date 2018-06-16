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

zombies = ["RyanZombieC_man_1slowOpfor", "RyanZombieC_man_polo_1_FslowOpfor", "RyanZombieC_man_polo_2_FslowOpfor", "RyanZombieC_man_polo_4_FslowOpfor", "RyanZombieC_man_polo_5_FslowOpfor", "RyanZombieC_man_polo_6_FslowOpfor", "RyanZombieC_man_p_fugitive_FslowOpfor", "RyanZombieC_man_w_worker_FslowOpfor", "RyanZombieC_scientist_FslowOpfor", "RyanZombieC_man_hunter_1_FslowOpfor", "RyanZombieC_man_pilot_FslowOpfor", "RyanZombieC_journalist_FslowOpfor", "RyanZombieC_OrestesslowOpfor", "RyanZombieC_NikosslowOpfor"];
someSoldiers = ["RyanZombieB_Soldier_02_fslowOpfor", "RyanZombieB_Soldier_02_f_1slowOpfor"];
Soldiers = ["RyanZombieB_Soldier_02_fslowOpfor", "RyanZombieB_Soldier_02_f_1slowOpfor", "RyanZombieB_Soldier_02_f_1_1slowOpfor", "RyanZombieB_Soldier_03_fslowOpfor", "RyanZombieB_Soldier_03_f_1slowOpfor", "RyanZombieB_Soldier_03_f_1_1slowOpfor", "RyanZombieB_Soldier_04_fslowOpfor", "RyanZombieB_Soldier_04_f_1slowOpfor", "RyanZombieB_Soldier_04_f_1_1slowOpfor", "RyanZombieB_Soldier_lite_FslowOpfor", "RyanZombieB_Soldier_lite_F_1slowOpfor"];

if (paramsArray select 13 == 1) then { zombies = zombies + someSoldiers; };
if (paramsArray select 13 == 2) then { zombies = Soldiers; };


// Vehicle types
rndVehicles = ["C_Offroad_01_F","C_Offroad_01_repair_F","C_Offroad_01_red_F","C_Offroad_01_sand_F","C_Offroad_01_white_F","C_Offroad_01_blue_F","C_Offroad_01_darkred_F","C_Offroad_01_bluecustom_F","C_Offroad_luxe_F","C_Offroad_default_F","C_Offroad_stripped_F","C_Hatchback_01_F","C_Hatchback_01_grey_F","C_Hatchback_01_green_F","C_Hatchback_01_blue_F","C_Hatchback_01_bluecustom_F","C_Hatchback_01_beigecustom_F","C_Hatchback_01_yellow_F","C_Hatchback_01_white_F","C_Hatchback_01_black_F","C_Hatchback_01_dark_F","C_SUV_01_F","SUV_01_base_red_F","SUV_01_base_black_F","SUV_01_base_grey_F","SUV_01_base_orange_F","C_Van_01_transport_F","C_Van_01_box_F"];
milVehicles = ["B_G_Offroad_01_repair_F","B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_Quadbike_01_F","B_G_Quadbike_01_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","B_Truck_01_Repair_F","B_Truck_01_ammo_F","B_Truck_01_medical_F","B_Truck_01_fuel_F"];

if (paramsArray select 11 == 1 ) then { rndVehicles = rndVehicles + milVehicles; };
if (paramsArray select 11 == 2 ) then { rndVehicles = milVehicles; };


// Fortification options
fortifications = ["Land_BagFence_Corner_F","Land_BagFence_End_F","Land_BagFence_Long_F","Land_BagFence_Round_F","Land_BagFence_Short_F","Land_HBarrier_1_F","Land_HBarrier_3_F","Land_HBarrier_5_F","Land_HBarrierBig_F","Land_HBarrier_Big_F","Land_HBarrierTower_F","Land_HBarrierWall_corner_F","Land_HBarrierWall4_F","Land_HBarrierWall6_F","Land_Razorwire_F"];
bunkers = ["Land_BagBunker_Large_F","Land_BagBunker_Small_F","Land_BagBunker_Tower_F"];

if (paramsArray select 12 == 1 ) then { fortifications = fortifications + bunkers; };

lootCivWeapons = ["hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_01_MRD_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F"];
lootCivMagazines = ["9Rnd_45ACP_Mag","16Rnd_9x21_Mag","30Rnd_9x21_Mag","11Rnd_45ACP_Mag","6Rnd_45ACP_Cylinder","16Rnd_9x21_Mag","30Rnd_9x21_Mag"];
lootCivItems = ["ItemMap","ItemCompass","ItemGPS","ItemWatch","Medikit","Toolkit","FirstAidKit","Binocular"];
lootMilWeapons = ["arifle_MXC_F","arifle_MX_F","arifle_MX_SW_F"];
lootMilMagazines = ["30Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag"];
lootMilItems = ["optic_Holosight_smg","optic_Holosight","acc_flashlight"];

if ( paramsArray select 14 == 0 ) then { lootWeapons = lootCivWeapons; lootMagazines = lootCivMagazines; lootItems = lootCivItems; };
if ( paramsArray select 14 == 1 ) then { lootWeapons = lootCivWeapons + lootMilWeapons; lootMagazines = lootCivMagazines + lootMilMagazines; lootItems = lootCivItems + lootMilItems; };
if ( paramsArray select 14 == 2 ) then { lootWeapons = lootMilWeapons; lootMagazines = lootMilMagazines; lootItems = lootCivItems + lootMilItems; };

ryanzombiesitems = lootItems;
ryanzombiesmagazines = lootMagazines;
ryanzombiesweapons = lootWeapons;
ryanzombiesitemsSoldier = lootItems;
ryanzombiesmagazinesSoldier = lootMagazines;
ryanzombiesweaponsSoldier = lootWeapons;


alive_units = [];
loclist = [];

execVM "functions.sqf";
sleep 1;
execVM "manageZombies.sqf";
execVM "spawnAssets.sqf";

// Respawn stuff - We need the spawnAssets.sqf because of the "Center" marker;
if ( paramsArray select 15 == 0 ) then {
	_pos = call findRandomSpawn;
	"respawn_civilian" setMarkerPos _pos;
};

if ( paramsArray select 15 == 1 ) then {
	while {true} do {
		_pos = call findRandomSpawn;
		"respawn_civilian" setMarkerPos _pos;
		sleep 15;
	};
};

if ( paramsArray select 15 == 2 ) then {
	_pos = [180,180] call findDirectionalSpawn;
	"respawn_civilian" setMarkerPos _pos;
};

if ( paramsArray select 15 == 3 ) then {
	_pos = [0,180] call findDirectionalSpawn;
	"respawn_civilian" setMarkerPos _pos;
};

if (paramsArray select 15 == 4 ) then {
	private ["_locations","_loc","_cityPos","_citySize","_citySizeArr","_spawnpos","_found"];
	_found = 0;
	_locations = nearestLocations [getMarkerPos "center",["nameCity","nameVillage","NameCityCapital"],40000];
	_loc = _locations call bis_fnc_selectRandom;
	_cityPos = locationPosition _loc;
	_citySizeArr = size _loc;
	// Since the city angle isn't in the config, we'll just assume the smallest axis is fine, which usually is.
	if (_citySizeArr select 0 >= _citySizeArr select 1) then {
		_citySize = _citySizeArr select 0;
	} else {
		_citySize = _citySizeArr select 1;
	};
	_spawnpos = [];
	while {_found == 0} do {
		_spawnpos = [_cityPos, ((_citySize/2)+(random (_citySize/2))) , random 360] call BIS_fnc_relPos;
		if ([_spawnpos] call positionCheck) then { _found = 1 };
	};
	"respawn_civilian" setMarkerPos _spawnpos;
};

if (paramsArray select 15 == 5 ) then {
	private ["_player","_found","_pos"];
	while {true} do {
		waitUntil { count allPlayers > 0 };
		_player = allPlayers call bis_fnc_selectRandom;
		_spawnpos = [];
		_found = 0;
		while {_found == 0} do {
			_spawnpos = [getPos _player, 100 + (random 200) , random 360] call BIS_fnc_relPos;
			if ([_spawnpos] call positionCheck) then { _found = 1 };
		};
		"respawn_civilian" setMarkerPos _spawnpos;
		sleep 15;
	};
};