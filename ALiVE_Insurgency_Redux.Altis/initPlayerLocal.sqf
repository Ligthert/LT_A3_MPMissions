// No LR Radio please
tf_no_auto_long_range_radio = true;
TF_terrain_interception_coefficient = 0;

// Sync op radio frequencies
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;

// Start with Weapon lowered
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Have a nice flashlight for night-ops
player addItem "ACE_Flashlight_XL50";

player setVariable ["ACE_GForceCoef", 0];
