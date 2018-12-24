private ["_units","_startn","_starts","_grps","_grpn"];

_units = ["CUP_O_INS_Soldier_AK74","CUP_O_INS_Soldier_Engineer","CUP_O_INS_Soldier","CUP_O_INS_Soldier_Ammo","CUP_O_INS_Soldier_GL","CUP_O_INS_Officer","CUP_O_INS_Medic","CUP_O_INS_Commander","CUP_O_INS_Soldier_AR","CUP_O_INS_Soldier_MG","CUP_O_INS_Soldier_AT","CUP_O_INS_Sniper","CUP_O_INS_Soldier_Exp","CUP_O_INS_Saboteur","CUP_O_INS_Worker2","CUP_O_INS_Woodlander1","CUP_O_INS_Woodlander2","CUP_O_INS_Woodlander3","CUP_O_INS_Villager3","CUP_O_INS_Villager4"];

_starts = getMarkerPos (_this select 0);
_center = getMarkerPos (_this select 1);
_startn = getMarkerPos (_this select 2);

_grps = [west,6,_starts,_units] call lt_fnc_createGroup;
[_grps,_center] call CBA_fnc_taskAttack;
_grpn = [east,6,_startn,_units] call lt_fnc_createGroup;
[_grpn,_center] call CBA_fnc_taskAttack;

while {true} do {
  waitUntil {count units _grps <= 2 or count units _grpn <= 2};
  { deleteVehicle  _x } foreach units _grps;
  { deleteVehicle  _x } foreach units _grpn;
  _grps = [west,6,_starts,_units] call lt_fnc_createGroup;
  [_grps,_center] call CBA_fnc_taskAttack;
  _grpn = [east,6,_startn,_units] call lt_fnc_createGroup;
  [_grpn,_center] call CBA_fnc_taskAttack;
};
