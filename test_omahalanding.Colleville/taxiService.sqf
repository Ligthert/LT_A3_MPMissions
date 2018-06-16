// Taxi Service (for the dying)
// 1. Spawn units
// 2. Put units into each other
// 3. Send them off
// 4. Fuck'em when they get there
//
// Example: null = [ getMarkerPos "ride1start", getMarkerPos "ride1stop", "B_APC_Wheeled_01_cannon_F", "B_Soldier_F", west, 300] execVM "taxiService.sqf";

if (!isServer) exitWith{};

private ["_strt","_stop","_veh","_crw","_dir","_veh_arr","_veh_obj","_grp"];

_strt = _this select 0;
_stop = _this select 1;
_veh = _this select 2;
_crw = _this select 3;
_side= _this select 4;
_dir = _this select 5;

while {true} do {

	_veh_arr = [_strt, _dir, _veh, _side ] call bis_fnc_spawnVehicle;

	_veh_obj = _veh_arr select 0;
	_grp = _veh_arr select 2;

	_crw createUnit [_strt, _grp, "this moveInCargo (vehicle (leader this))"];
	_crw createUnit [_strt, _grp, "this moveInCargo (vehicle (leader this))"];
	_crw createUnit [_strt, _grp, "this moveInCargo (vehicle (leader this))"];
	_crw createUnit [_strt, _grp, "this moveInCargo (vehicle (leader this))"];
	_crw createUnit [_strt, _grp, "this moveInCargo (vehicle (leader this))"];
	_crw createUnit [_strt, _grp, "this moveInCargo (vehicle (leader this))"];

	sleep 5;

	_grp addWaypoint [_stop, 10];
	[_grp,0] setWaypointSpeed "FULL";
	[_grp,0] setWaypointCombatMode "RED";
	[_grp,0] setWaypointType "MOVE";

	waitUntil { (leader _grp) distance _stop <= 30 };

	null = "M_Mo_82mm_AT_LG" createVehicle getPos leader _grp;
	vehicle leader _grp setDamage 1;

};