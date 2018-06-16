// spawn
// marker
// waypoints[]
// class config (configfile >> "CfgGroups" >> "EAST" >> "caf_ag_me_t" >> "Infantry" >> "4_men_me_t")
// delay

// classes:
// configfile >> "CfgGroups" >> "EAST" >> "caf_ag_me_t" >> "Infantry" >> "4_men_me_t"
// configfile >> "CfgGroups" >> "EAST" >> "caf_ag_me_t" >> "Infantry" >> "8_men_me_t"
// configfile >> "CfgGroups" >> "EAST" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam"
// configfile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam"

// example:
// null = [getPos checkpoint1,"checkpoint1",["wp11","wp12","wp13"],(configFile >> "CfgGroups" >> "EAST" >> "caf_ag_me_t" >> "Infantry" >> "4_men_me_t"),60] execVM "startRush.sqf";
// null = [getPos checkpoint2,"checkpoint2",["wp21","wp22","wp23"],(configFile >> "CfgGroups" >> "EAST" >> "caf_ag_me_t" >> "Infantry" >> "8_men_me_t"),60] execVM "startRush.sqf";
// null = [getPos checkpoint3,"checkpoint3",["wp31","wp32","wp33"],(configFile >> "CfgGroups" >> "EAST" >> "OPF_G_F" >> "Infantry" >> "ORG_InfTeam"),60] execVM "startRush.sqf";
// null = [getPos checkpoint4,"checkpoint4",["wp41","wp42","wp43"],(configFile >> "CfgGroups" >> "EAST" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam"),60] execVM "startRush.sqf";


fnc_closestPlayer = {

	private ["_return"];

	_return = true;

	{
		if (alive _x and (_x distance _spawn) < 50 ) then {
			_return = false;
		};
	} forEach playableUnits;

	_return;
};

private ["_spawn","_marker","_waypoints","_config","_delay","_wp","_grp","_n"];

_spawn = _this select 0;
_marker = _this select 1;
_waypoints = _this select 2;
_config = _this select 3;
_delay = _this select 4;
_trg = _this select 5;

while {call fnc_closestPlayer} do {


	_grp = [getMarkerPos _marker, EAST, _config] call BIS_fnc_spawnGroup;

	_n = 0;
	{
		_wp = _grp addWaypoint [getMarkerPos _x,50,_n];
		[_grp, _n] setWaypointCombatMode "RED";
		[_grp, _n] setWaypointFormation "LINE";

		_n = _n + 1;
	} forEach _waypoints;

	sleep _delay;

};

// Trigger
// "checkpoint" setMarkerColor "ColorGreen"
// etc