[] spawn {call compile preprocessFileLineNumbers "EPD\Ied_Init.sqf";};

tf_no_auto_long_range_radio = true;
player addItem "AGM_EarBuds";
player addItem "AGM_MapTools";

{ _x disableTIEquipment true; } foreach vehicles;
player disableTIEquipment true;