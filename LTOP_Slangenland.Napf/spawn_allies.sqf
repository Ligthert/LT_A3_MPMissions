// Spawn allies and start pushing them through the town

LT_NLD_WDL_units = ["NLD_WLD_Ammo","NLD_WLD_AA","NLD_WLD_AAA","NLD_WLD_AAR","NLD_WLD_AMAT","NLD_WLD_AMMG","NLD_WLD_AR","NLD_WLD_CLS","NLD_WLD_SLA","NLD_WLD_ENGI","NLD_WLD_EXPL","NLD_WLD_GL","NLD_WLD_JTAC","NLD_WLD_MAT","NLD_WLD_MMG","NLD_WLD_OFF","NLD_WLD_rifleman","NLD_WLD_LAT","NLD_WLD_SL","NLD_WLD_TL","NLD_WLD_UAV"];
LT_NLD_WDL_car = ["NLD_WLD_Fennek","NLD_WLD_Fennek_GMG","NLD_WLD_Fennek_HMG"];
LT_NLD_WDL_ifv = ["NLD_WLD_CV9035NL","NLD_WLD_Buffel","NLD_WLD_YPR","NLD_WLD_PRTL"];

sl_fnc_addWaypoints = {
  _grp = _this select 0;
  _grp addWaypoint [getMarkerPos "wp1", 0];
  _grp addWaypoint [getMarkerPos "wp2", 0];
  _grp addWaypoint [getMarkerPos "wp3", 0];
  _grp addWaypoint [getMarkerPos "desto", 0];
};

// Dit moet circa 45 minuten duren.
for "_i" from 1 to 12 do {

  _tmp_pos = ["g_spawn"] call CBA_fnc_randPosArea;
  _tmp_pos = [_tmp_pos,0,50,3,0,1,0] call BIS_fnc_findSafePos;
  _veh = [_tmp_pos,0, (selectRandom LT_NLD_WDL_car), WEST] call BIS_fnc_spawnVehicle;
  (_veh select 0) allowCrewInImmobile true;
  [_veh select 2] call sl_fnc_addWaypoints;

  if (_i >= 6) then {
    _tmp_pos = ["g_spawn"] call CBA_fnc_randPosArea;
    _tmp_pos = [_tmp_pos,0,50,3,0,1,0] call BIS_fnc_findSafePos;
    _veh = [_tmp_pos,0, (selectRandom LT_NLD_WDL_ifv), WEST] call BIS_fnc_spawnVehicle;
    (_veh select 0) allowCrewInImmobile true;
    [_veh select 2] call sl_fnc_addWaypoints;
  };

  if (_i == 12) then {
    _tmp_pos = ["g_spawn"] call CBA_fnc_randPosArea;
    _tmp_pos = [_tmp_pos,0,50,3,0,1,0] call BIS_fnc_findSafePos;
    _veh = [_tmp_pos,0, "NLD_WLD_Leo2", WEST] call BIS_fnc_spawnVehicle;
    (_veh select 0) allowCrewInImmobile true;
    [_veh select 2] call sl_fnc_addWaypoints;
  };

  sleep 225;
};
