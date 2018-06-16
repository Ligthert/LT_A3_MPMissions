// Lowlands Tactical -- Custom stuff

// Because we don't want to black out in airplanes
player setVariable ["ACE_GForceCoef", 0];

// Because we want to commit suicide
murshun_easywayout_canSuicide = true;

// Because we want to start with the weapon lowered
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Start with Earbuds in
player setVariable ["ACE_hasEarPlugsIn", true, true];

// Make sure the radios are fine!
[] execVM "f\radios\radio_init.sqf";

// Fuck chat
showChat false;

// Extend the range of the radio.
TF_terrain_interception_coefficient = 0;
