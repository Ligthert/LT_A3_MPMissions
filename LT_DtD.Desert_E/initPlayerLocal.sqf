// No LR Radio please
tf_no_auto_long_range_radio = true;

// Add MapTools for the players
player addItem "ACE_MapTools";

// Start with Earbuds in
player setVariable ["ACE_hasEarPlugsIn", true, true];

// Start with Weapon lowered
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Have a nice flashlight for night-ops
player addItem "ACE_Flashlight_XL50";

// Disable G-forces on the pilots
player setVariable ["ACE_GForceCoef", 0];

// Allow for suicide -- because fuck life
murshun_easywayout_canSuicide = true;
