// TFR settings
tf_no_auto_long_range_radio = true;

// ACE3 Settings
// player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player setVariable ["ACE_hasEarPlugsIn", true, true];
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";


player unassignItem("pmc_earpiece");
player removeItem("pmc_earpiece");
player disableTIEquipment true;
player enableFatigue false;