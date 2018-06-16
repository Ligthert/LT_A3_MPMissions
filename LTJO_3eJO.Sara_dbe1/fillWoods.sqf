diag_log "======= Starting fillWoods.sqf";

private ["_round"];

_round = 0;

// Fill the forest
_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest1"), 50];
_grp setBehaviour "STEALTH";
[_grp,0] setWaypointType "SAD";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;

sleep 5;

_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest2"), 50];
_grp setBehaviour "STEALTH";
[_grp,0] setWaypointType "SAD";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;

sleep 5;

_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest3"), 50];
[_grp,0] setWaypointType "SAD";
_grp setBehaviour "STEALTH";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;

sleep 5;

_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest4"), 50];
[_grp,0] setWaypointType "SAD";
_grp setBehaviour "STEALTH";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;

sleep 5;

_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest5"), 50];
[_grp,0] setWaypointType "SAD";
_grp setBehaviour "STEALTH";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;

sleep 5;

_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest6"), 50];
[_grp,0] setWaypointType "SAD";
_grp setBehaviour "STEALTH";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;

sleep 5;

_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest7"), 50];
[_grp,0] setWaypointType "SAD";
_grp setBehaviour "STEALTH";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;

sleep 5;

_grp = [getMarkerPos "part2sad", EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
_grp addWaypoint [(getMarkerPos "dest8"), 50];
[_grp,0] setWaypointType "SAD";
_grp setBehaviour "STEALTH";

{
	_x allowSprint true;
	_x enableFatigue false;
	_x enableStamina false;
	_x allowFleeing 0;
} forEach units _grp;


// Do some counter-attack setUnitRecoilCoefficient
while { _round <= 8 } do {
	_grp = [[getMarkerPos "ao1", 700, _round * 32] call BIS_fnc_relPos, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "ORG_InfSquad")] call BIS_fnc_spawnGroup;
	// _grp setBehaviour "COMBAT";
  _grp addWaypoint [(getMarkerPos "ao1"), 250];
  [_grp,0] setWaypointType "SAD";

	{
		_x allowSprint true;
		_x enableFatigue false;
		_x enableStamina false;
		_x allowFleeing 0;
	} forEach units _grp;

	sleep 5;

	_round = _round + 1;
};
