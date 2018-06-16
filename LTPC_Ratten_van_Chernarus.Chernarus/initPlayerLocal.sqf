// No LR Radio please
tf_no_auto_long_range_radio = true;

// Start with Weapon lowered
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Disable G-forces on the pilots
player setVariable ["ACE_GForceCoef", 0];

// Allow for suicide -- because fuck life
murshun_easywayout_canSuicide = true;