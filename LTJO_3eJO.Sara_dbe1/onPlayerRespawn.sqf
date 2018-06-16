// Lowlands Tactical -- Custom stuff

// Because we want to start with the weapon lowered
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Start with Earbuds in
player setVariable ["ACE_hasEarPlugsIn", true, true];

// Make sure the radios are fine!
[] execVM "f\radios\radio_init.sqf";

// Prevent fatique
player enableFatigue false;
player enableStamina false;
player allowSprint true;

// Fuck chat
showChat false;

// Extend the range of the radio.
TF_terrain_interception_coefficient = 0;
