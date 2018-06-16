// TFR settings
tf_no_auto_long_range_radio = true;


// AGM Settings
player addItem "AGM_EarBuds";
player addItem "AGM_MapTools";

if (isDedicated or isServer) then {

    sleep 10;

	while {alive lead_truck} do {
		[lead_truck,"fdp"] call CBA_fnc_globalSay3d;
		sleep 343;
	};

};