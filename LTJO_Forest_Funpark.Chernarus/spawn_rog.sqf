private ["_pos","_grp","_veh","_counter"];

_grp = [east, 20, (getMarkerPos "location_rog"), chdkz_units] call lt_fnc_spawnGroup;
null = [leader _grp, 100, true, [100,3], true] execVM "Garrison_script.sqf";

_grp = [east, 20, (getMarkerPos "location_rog"), chdkz_units] call lt_fnc_spawnGroup;
nul = [leader _grp, "location_rog","STAG COLUMN", "AWARE", "NOFOLLOW", "RANDOM","NOFOLLOW","RADIORANGE:",500] execVM "scripts\upsmon.sqf";

_counter = 0;
while { _counter <= 17 } do {
  _grp = [east, 4, ["patrol_rog"] call CBA_fnc_randPosArea, chdkz_units] call lt_fnc_spawnGroup;
  nul = [leader _grp, "patrol_rog","STAG COLUMN", "AWARE", "NOFOLLOW", "RANDOM","RADIORANGE:",300] execVM "scripts\upsmon.sqf";
  sleep 2;
  _counter = _counter + 1;
};

_veh = [ getMarkerPos "veh_rog", random 360, selectRandom chdkz_car, east ] call BIS_fnc_spawnVehicle;
nul = [leader (_veh select 2),"patrol_rog", "AWARE", "LIMITED", "NOFOLLOW", "ONROAD", "RADIORANGE:", 600] execVM "scripts\upsmon.sqf";
