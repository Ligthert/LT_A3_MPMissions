// TFR settings
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;

// AGM Settings
player addItem "AGM_EarBuds";
player addItem "AGM_MapTools";


// VCOM AI Settings
VCOM_AIWarnDistance = 100;
VCOM_AIHelmet = 0;
VCOM_AIKnockingOut = 1;
VCOM_USESMOKE = 1;
VCOM_PermaDown = 1;
VCOM_Artillery = 0;

{ _x disableTIEquipment true; } foreach vehicles;
player disableTIEquipment true;