private ["_pos","_grp","_veh","_counter"];

_grp = [east, 20, (getMarkerPos "location_pusta"), chdkz_units] call lt_fnc_spawnGroup;
null = [leader _grp, 100, true, [100,3], true] execVM "Garrison_script.sqf";

_counter = 0;
while { _counter <= 25 } do {
  _grp = [east, 4, ["patrol_pusta"] call CBA_fnc_randPosArea, chdkz_units] call lt_fnc_spawnGroup;
  nul = [leader _grp, "patrol_pusta","STAG COLUMN", "AWARE", "NOFOLLOW", "RANDOM","RADIORANGE:",300] execVM "scripts\upsmon.sqf";
  sleep 2;
  _counter = _counter + 1;
};

_veh = [ getMarkerPos "veh_pusta1", random 360, selectRandom chdkz_car, east ] call BIS_fnc_spawnVehicle;
nul = [leader (_veh select 2),"patrol_pusta", "AWARE", "NOFOLLOW", "LIMITED", "ONROAD", "RADIORANGE:", 600] execVM "scripts\upsmon.sqf";

sleep 2;

_veh = [ getMarkerPos "veh_pusta2", random 360, selectRandom chdkz_car, east ] call BIS_fnc_spawnVehicle;
nul = [leader (_veh select 2),"patrol_pusta", "AWARE", "NOFOLLOW", "LIMITED", "ONROAD", "RADIORANGE:", 600] execVM "scripts\upsmon.sqf";
