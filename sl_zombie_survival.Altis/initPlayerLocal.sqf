// Configure TFR
tf_no_auto_long_range_radio = true;
TF_terrain_interception_coefficient = 0;
tf_same_sw_frequencies_for_side = false;
tf_same_lr_frequencies_for_side = false;
TF_give_microdagr_to_soldier = false;

sl_init_player = {
	// Strip the player from his precious goodies
	player unassignItem "ItemMap";
	player removeItem "ItemMap";
	player unassignItem "ItemCompass";
	player removeItem "ItemCompass";
	player unassignItem "ItemWatch";
	player removeItem "ItemWatch";

	_rnd = round (random 4);
	if (_rnd == 0) then { player addMagazines ["9Rnd_45ACP_Mag",(1 + (round (random 3)))]; player addWeapon "hgun_ACPC2_F"; };
	if (_rnd == 1) then { player addMagazines ["16Rnd_9x21_Mag",(1 + (round (random 3)))]; player addWeapon "hgun_P07_F"; };
	if (_rnd == 2) then { player addMagazines ["11Rnd_45ACP_Mag",(1 + (round (random 3)))]; player addWeapon "hgun_Pistol_heavy_01_F"; };
	if (_rnd == 3) then { player addMagazines ["6Rnd_45ACP_Cylinder",(1 + (round (random 3)))]; player addWeapon "hgun_Pistol_heavy_02_F"; };
	if (_rnd == 4) then { player addMagazines ["16Rnd_9x21_Mag",(1 + (round (random 3)))]; player addWeapon "hgun_Rook40_F"; };

	// Excellent Hacks to smooth out development
	if ( paramsArray select 0 == 1 ) then {
		player setCustomAimCoef 0;
		player setUnitRecoilCoefficient 0;
		player enableFatigue false;
		player enableStamina false;
		player allowSprint true;
	};

};

// Allow repacking of ammo
[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";

// Turn on R3F logistics
execVM "R3F_LOG\init.sqf";

// Init the player
call sl_init_player;