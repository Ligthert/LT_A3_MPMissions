while {playersNear == 0} do {
  _units = ["CUP_O_INS_Soldier_AK74","CUP_O_INS_Soldier_Engineer","CUP_O_INS_Soldier","CUP_O_INS_Soldier_Ammo","CUP_O_INS_Soldier_GL","CUP_O_INS_Officer","CUP_O_INS_Medic","CUP_O_INS_Commander","CUP_O_INS_Soldier_AR","CUP_O_INS_Soldier_MG","CUP_O_INS_Soldier_AT","CUP_O_INS_Sniper","CUP_O_INS_Soldier_Exp"];

  _grp = [east,6,getMarkerPos "patrol",_units] call lt_fnc_createGroup;
  null = [_grp] execVM "scripts\managePatrols.sqf";
  sleep 180;
};
