call compile preprocessFile "FAR_revive\FAR_revive_init.sqf";

// TFR settings
tf_no_auto_long_range_radio = true;

// lazyness
player enableFatigue false;

// Silence the players
enableSaving [false, false];
enableSentences false;
0 fadeRadio 0;
player setVariable ["BIS_noCoreConversations", true];


// Outlaw magrepack
[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";