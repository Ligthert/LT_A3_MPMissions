// _grp = [getMarkerPos "ao1", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam")] call BIS_fnc_spawnGroup;

for "_i" from 1 to 8 do {

  _grp = [getMarkerPos "spawn1", WEST, (configfile >> "CfgGroups" >> "Indep" >> "CUP_I_TK_GUE" >> "Infantry" >> "CUP_I_TK_GUE_GroupWeapons")] call BIS_fnc_spawnGroup;
  _grp addWaypoint [getMarkerPos "ao", 30];
  [_grp,0] setWaypointType "SAD";
  sleep 30;

};
