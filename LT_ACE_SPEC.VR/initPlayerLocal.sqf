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