private ["_pos","_grp","_veh","_counter"];

SL_AI_SPOTDIST = 1;
SL_AI_SPOTTIME = 1;
SL_AI_CMNDS = 1;
SL_AI_AIMACC = 0.4;

_grp = [east, 10, (getMarkerPos "location_msta"), ru_emr_units] call lt_fnc_spawnGroup;
null = [leader _grp, 100, true, [100,3], true] execVM "Garrison_script.sqf";

_counter = 0;
while { _counter <= 5 } do {
  _grp = [east, 8, ["patrol_msta"] call CBA_fnc_randPosArea, ru_emr_units] call lt_fnc_spawnGroup;
  nul = [leader _grp, "patrol_msta","STAG COLUMN", "AWARE", "NOFOLLOW", "RANDOM","RADIORANGE:",300] execVM "scripts\upsmon.sqf";
  sleep 2;
  _counter = _counter + 1;
};

_veh = [ getMarkerPos "location_msta", random 360, selectRandom ru_emr_units, east ] call BIS_fnc_spawnVehicle;
nul = [leader (_veh select 2),"patrol_msta", "AWARE", "NOFOLLOW", "LIMITED", "ONROAD", "RADIORANGE:", 600] execVM "scripts\upsmon.sqf";
