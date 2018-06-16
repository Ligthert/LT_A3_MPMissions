// TFR settings
tf_no_auto_long_range_radio = true;

// AGM Settings
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";

if (isServer) then {
	execVM "Object_cleanup.sqf";
	execVM "fpscounter.sqf";
};