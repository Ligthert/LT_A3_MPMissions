diag_log "======= Starting sendassault.sqf";

private ["_round"];

_round = 0;

while { _round <= 16 and STOPSPAM == 0} do {
	_grp = [getMarkerPos "part2start", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
  _grp addWaypoint [(getMarkerPos "part2sad"), 200];
  [_grp,0] setWaypointType "SAD";

	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 60;

	_round = _round + 1;
};
