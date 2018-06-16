private ["_pos","_grp","_veh","_counter"];

SL_AI_SPOTDIST = 1;
SL_AI_SPOTTIME = 1;
SL_AI_CMNDS = 1;
SL_AI_AIMACC = 0.4;

_grp = [east, 30, (getMarkerPos "location_staroye"), ru_emr_units] call lt_fnc_spawnGroup;
null = [leader _grp, 200, true, [100,3], true] execVM "Garrison_script.sqf";

_counter = 0;
while { _counter <= 10 } do {
  _grp = [east, 8, ["patrol_staroye"] call CBA_fnc_randPosArea, ru_emr_units] call lt_fnc_spawnGroup;
  nul = [leader _grp, "patrol_staroye","STAG COLUMN", "AWARE", "NOFOLLOW", "RANDOM","RADIORANGE:",300] execVM "scripts\upsmon.sqf";
  sleep 2;
  _counter = _counter + 1;
};

_veh = [ getMarkerPos "obj3", random 360, selectRandom ru_emr_ifv, east ] call BIS_fnc_spawnVehicle;
nul = [leader (_veh select 2),"patrol_staroye", "AWARE", "NOFOLLOW", "LIMITED", "ONROAD", "RADIORANGE:", 600] execVM "scripts\upsmon.sqf";
